SPOOL C:\temp\Execution03.log

-- 1 Stock consolide tous entrepots

CREATE VIEW v_stock_global AS
SELECT
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante,
    SUM(s.quantite_produit) AS stock_total,
    SUM(s.seuil_reapprovisionnement) AS seuil_total,
    SUM(s.stock_securite) AS stock_securite_total
FROM VARIANTE v
INNER JOIN PRODUIT p
    ON v.SKU_produit = p.SKU_produit
INNER JOIN STOCKER s
    ON v.SKU_variante = s.SKU_variante
GROUP BY
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante;


-- 2 Produits en rupture ou sous le seuil

CREATE VIEW v_produits_rupture AS
SELECT
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante,
    SUM(s.quantite_produit) AS stock_total,
    SUM(s.seuil_reapprovisionnement) AS seuil_total
FROM VARIANTE v
INNER JOIN PRODUIT p
    ON v.SKU_produit = p.SKU_produit
INNER JOIN STOCKER s
    ON v.SKU_variante = s.SKU_variante
GROUP BY
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante
HAVING
    SUM(s.quantite_produit) = 0
    OR SUM(s.quantite_produit) <= SUM(s.seuil_reapprovisionnement);


-- 3 Classement des meilleures ventes

CREATE VIEW v_top_ventes AS
SELECT
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante,
    SUM(l.qte_cde_client) AS quantite_vendue,
    SUM(l.totalttc_ligne_cdeclient) AS chiffre_affaires_ttc
FROM LIGNE_CDE_CLIENT l
INNER JOIN VARIANTE v
    ON l.SKU_variante = v.SKU_variante
INNER JOIN PRODUIT p
    ON v.SKU_produit = p.SKU_produit
GROUP BY
    p.SKU_produit,
    p.nom_produit,
    v.SKU_variante,
    v.libelle_variante;


-- 4 Commandes du jour a preparer

CREATE VIEW v_commandes_jour AS
SELECT
    c.num_cde_client,
    c.date_cde_client,
    c.email,
    c.statut_paiement,
    c.mode_paiement,
    c.total_ttc_cde_client,
    l.id_ligne_cde_client,
    l.SKU_variante,
    l.qte_cde_client,
    l.id_entrepot
FROM COMMANDE_CLIENT c
INNER JOIN LIGNE_CDE_CLIENT l
    ON c.num_cde_client = l.num_cde_client
WHERE
    TO_CHAR(c.date_cde_client, 'DD/MM/YYYY') = TO_CHAR(SYSDATE, 'DD/MM/YYYY');


-- 5 Chiffre d'affaires par mois

CREATE VIEW v_ca_mensuel AS
SELECT
    TO_CHAR(f.date_fact_client, 'MM/YYYY') AS mois,
    COUNT(*) AS nb_factures,
    SUM(f.total_ht) AS ca_ht,
    SUM(f.total_tva) AS total_tva,
    SUM(f.total_ttc) AS ca_ttc
FROM FACTURE_CLIENT f
GROUP BY
    TO_CHAR(f.date_fact_client, 'MM/YYYY');


-- 6 Panier moyen par segment client

CREATE VIEW v_panier_moyen AS
SELECT
    s.id_segment,
    s.libelle_segment,
    COUNT(c.num_cde_client) AS nb_commandes,
    AVG(c.total_ttc_cde_client) AS panier_moyen_ttc
FROM SEGMENT_CLIENT s
INNER JOIN CLIENT cl
    ON s.id_segment = cl.id_segment
INNER JOIN COMMANDE_CLIENT c
    ON cl.email = c.email
GROUP BY
    s.id_segment,
    s.libelle_segment;

-- 7 Moyenne des notes par produit

CREATE VIEW v_avis_produits AS
SELECT
    p.SKU_produit,
    p.nom_produit,
    COUNT(a.id_avis) AS nb_avis,
    AVG(a.note_avis) AS moyenne_note
FROM AVIS_CLIENT a
INNER JOIN VARIANTE v
    ON a.SKU_variante = v.SKU_variante
INNER JOIN PRODUIT p
    ON v.SKU_produit = p.SKU_produit
GROUP BY
    p.SKU_produit,
    p.nom_produit;


-- Exemples de test

-- parametrage des formats d'affichage
COLUMN SKU_PRODUIT FORMAT A12
COLUMN NOM_PRODUIT FORMAT A30
COLUMN SKU_VARIANTE FORMAT A12
COLUMN LIBELLE_VARIANTE FORMAT A30

COLUMN STOCK_TOTAL FORMAT 9999
COLUMN SEUIL_TOTAL FORMAT 9999
COLUMN STOCK_SECURITE_TOTAL FORMAT 9999

COLUMN QUANTITE_VENDUE FORMAT 9999
COLUMN CHIFFRE_AFFAIRES_TTC FORMAT 999999.99

COLUMN NUM_CDE_CLIENT FORMAT A15
COLUMN DATE_CDE_CLIENT FORMAT A12
COLUMN EMAIL FORMAT A30
COLUMN STATUT_PAIEMENT FORMAT A18
COLUMN MODE_PAIEMENT FORMAT A18
COLUMN TOTAL_TTC_CDE_CLIENT FORMAT 999999.99

COLUMN ID_LIGNE_CDE_CLIENT FORMAT A18
COLUMN QTE_CDE_CLIENT FORMAT 9999
COLUMN ID_ENTREPOT FORMAT A12

COLUMN MOIS FORMAT A10
COLUMN NB_FACTURES FORMAT 9999
COLUMN CA_HT FORMAT 999999.99
COLUMN TOTAL_TVA FORMAT 999999.99
COLUMN CA_TTC FORMAT 999999.99

COLUMN ID_SEGMENT FORMAT A12
COLUMN LIBELLE_SEGMENT FORMAT A25
COLUMN NB_COMMANDES FORMAT 9999
COLUMN PANIER_MOYEN_TTC FORMAT 999999.99

COLUMN NB_AVIS FORMAT 9999
COLUMN MOYENNE_NOTE FORMAT 999.99

-- montrer le stock consolide de tous les entrepots
SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, stock_total, seuil_total, stock_securite_total FROM v_stock_global;
-- identifier les produits dont le stock est nul ou inferieur ou egal au seuil de reapprovisionnement, ce sont des produits a commander
SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, stock_total, seuil_total FROM v_produits_rupture;
-- classer les meilleures ventes
SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, quantite_vendue, chiffre_affaires_ttc FROM v_top_ventes ORDER BY quantite_vendue DESC;
-- afficher les commandes dont la date correspond au jour courant
SELECT num_cde_client, date_cde_client, email, statut_paiement, mode_paiement, total_ttc_cde_client, id_ligne_cde_client, SKU_variante, qte_cde_client, id_entrepot FROM v_commandes_jour;
/* pour v_commandes_jour
Le resultat peut afficher "aucune ligne selectionnee" car cette vue depend de SYSDATE. 
Elle ne retourne des lignes que si des commandes existent a la date exacte d'execution du script.
Cela confirme que la requete s'execute correctement, meme si aucune commande n'est a preparer aujourd'hui.
*/
-- verifier le chffre d'affaire par mois
SELECT mois, nb_factures, ca_ht, total_tva, ca_ttc FROM v_ca_mensuel;
-- verifier le calcul du panier moyen par segment client, comparer les comportements d'achat parmi les differents segments
SELECT id_segment, libelle_segment, nb_commandes, panier_moyen_ttc FROM v_panier_moyen;
-- verifier le calcul du nombre d'avis et de la note moyenne par produit
SELECT SKU_produit, nom_produit, nb_avis, moyenne_note FROM v_avis_produits;

SPOOL OFF ;