SPOOL C:\temp\Execution04.log

-- 1.CONNEXION SYSTEM ET CREATION DES UTILISATEURS METIERS

connect system/Pise2025

SHOW USER

-- creation des utilisateurs metiers

CREATE USER gestionnaire_stock IDENTIFIED BY stock123;
GRANT connect TO gestionnaire_stock;

CREATE USER commercial IDENTIFIED BY commercial123;
GRANT connect TO commercial;

CREATE USER service_client IDENTIFIED BY client123;
GRANT connect TO service_client;

CREATE USER preparateur IDENTIFIED BY prep123;
GRANT connect TO preparateur;

-- On ne cree pas un utilisateur ADMINISTRATEUR ici, car il a deja ete cree au debut du projet.

-- 2.CONNEXION ADMINISTRATEUR ET ATTRIBUTION DES DROITS

connect administrateur/admin123

SHOW USER

/*
   -- DROITS POUR GESTIONNAIRE_STOCK --

   Droit de consultation SELECT :
   - consulter le referentiel produit : PRODUIT, VARIANTE, MARQUE, CATEGORIE_PRODUIT, STATUT_PRODUIT ;
   - consulter les entrepots et les types de mouvements ;
   - consulter les fournisseurs, commandes fournisseurs et receptions ;
   - consulter les vues de pilotage du stock.

   Droits INSERT et UPDATE :
   - enregistrer ou corriger les quantites de stock ;
   - enregistrer les mouvements de stock ;
   - enregistrer les inventaires ;
   - enregistrer les transferts inter-entrepots.

   Aucun droit DELETE n'est donne, afin de conserver la tracabilite des operations.
*/

GRANT SELECT ON PRODUIT TO gestionnaire_stock;
GRANT SELECT ON VARIANTE TO gestionnaire_stock;
GRANT SELECT ON MARQUE TO gestionnaire_stock;
GRANT SELECT ON CATEGORIE_PRODUIT TO gestionnaire_stock;
GRANT SELECT ON STATUT_PRODUIT TO gestionnaire_stock;
GRANT SELECT ON ENTREPOT TO gestionnaire_stock;
GRANT SELECT ON TYPE_MVMT_STOCK TO gestionnaire_stock;
GRANT SELECT ON FOURNISSEUR TO gestionnaire_stock;
GRANT SELECT ON FOURNIR TO gestionnaire_stock;
GRANT SELECT ON COMMANDE_FOURNISSEUR TO gestionnaire_stock;
GRANT SELECT ON LIGNE_CDE_FOUR TO gestionnaire_stock;
GRANT SELECT ON RECEPTION_CDE_FOUR TO gestionnaire_stock;
GRANT SELECT ON STATUT_CDE_FOUR TO gestionnaire_stock;
GRANT SELECT ON AVOIR_STT_CDE TO gestionnaire_stock;

GRANT SELECT ON STOCKER TO gestionnaire_stock;
GRANT INSERT ON STOCKER TO gestionnaire_stock;
GRANT UPDATE ON STOCKER TO gestionnaire_stock;

GRANT SELECT ON MOUVEMENT_STOCK TO gestionnaire_stock;
GRANT INSERT ON MOUVEMENT_STOCK TO gestionnaire_stock;
GRANT UPDATE ON MOUVEMENT_STOCK TO gestionnaire_stock;

GRANT SELECT ON INVENTAIRE_STOCK TO gestionnaire_stock;
GRANT INSERT ON INVENTAIRE_STOCK TO gestionnaire_stock;
GRANT UPDATE ON INVENTAIRE_STOCK TO gestionnaire_stock;

GRANT SELECT ON AVOIR_POUR_INVENTAIRE TO gestionnaire_stock;
GRANT INSERT ON AVOIR_POUR_INVENTAIRE TO gestionnaire_stock;
GRANT UPDATE ON AVOIR_POUR_INVENTAIRE TO gestionnaire_stock;

GRANT SELECT ON TRANSFERT_INTERENTREPOT TO gestionnaire_stock;
GRANT INSERT ON TRANSFERT_INTERENTREPOT TO gestionnaire_stock;
GRANT UPDATE ON TRANSFERT_INTERENTREPOT TO gestionnaire_stock;

GRANT SELECT ON v_stock_global TO gestionnaire_stock;
GRANT SELECT ON v_produits_rupture TO gestionnaire_stock;

/* 
   -- DROITS POUR COMMERCIAL --

   Droit de consultation SELECT :
   - consulter le catalogue produits, les variantes, marques, categories, images, tags et attributs ;
   - consulter les commandes clients, lignes de commandes, factures, clients et segments ;
   - consulter les vues commerciales : meilleures ventes, chiffre d'affaires mensuel,
     panier moyen et avis produits.

   Droits INSERT et UPDATE :
   - creer ou modifier les promotions ;
   - creer ou modifier les conditions de promotion ;
   - rattacher une promotion a une commande, un produit, une categorie, une marque ou un catalogue.

   Aucun droit DELETE n'est donne pour eviter la suppression d'historique commercial.
*/

GRANT SELECT ON PRODUIT TO commercial;
GRANT SELECT ON VARIANTE TO commercial;
GRANT SELECT ON MARQUE TO commercial;
GRANT SELECT ON CATEGORIE_PRODUIT TO commercial;
GRANT SELECT ON CATALOGUE TO commercial;
GRANT SELECT ON APPARTENANCE_CATALOGUE TO commercial;
GRANT SELECT ON IMAGE_PRODUIT TO commercial;
GRANT SELECT ON ETIQUETTE_PRODUIT TO commercial;
GRANT SELECT ON AVOIR_ETIQUETTE TO commercial;
GRANT SELECT ON ATTRIBUT_PRODUIT TO commercial;
GRANT SELECT ON AVOIR_POUR_ATTRIBUT TO commercial;

GRANT SELECT ON TYPE_PROMOTION TO commercial;
GRANT SELECT ON PROMOTION TO commercial;
GRANT INSERT ON PROMOTION TO commercial;
GRANT UPDATE ON PROMOTION TO commercial;

GRANT SELECT ON CONDITIONS_PROMO TO commercial;
GRANT INSERT ON CONDITIONS_PROMO TO commercial;
GRANT UPDATE ON CONDITIONS_PROMO TO commercial;

GRANT SELECT ON AVOIR_CONDITION_PROMO TO commercial;
GRANT INSERT ON AVOIR_CONDITION_PROMO TO commercial;
GRANT UPDATE ON AVOIR_CONDITION_PROMO TO commercial;

GRANT SELECT ON APPLIQUE_CDE_PROMO TO commercial;
GRANT INSERT ON APPLIQUE_CDE_PROMO TO commercial;
GRANT UPDATE ON APPLIQUE_CDE_PROMO TO commercial;

GRANT SELECT ON APPLIQUE_PROMO_CAT TO commercial;
GRANT INSERT ON APPLIQUE_PROMO_CAT TO commercial;
GRANT UPDATE ON APPLIQUE_PROMO_CAT TO commercial;

GRANT SELECT ON APPLIQUE_PROMO_MARQUE TO commercial;
GRANT INSERT ON APPLIQUE_PROMO_MARQUE TO commercial;
GRANT UPDATE ON APPLIQUE_PROMO_MARQUE TO commercial;

GRANT SELECT ON APPLIQUE_PROMO_CATALOG TO commercial;
GRANT INSERT ON APPLIQUE_PROMO_CATALOG TO commercial;
GRANT UPDATE ON APPLIQUE_PROMO_CATALOG TO commercial;

GRANT SELECT ON APPLIQUE_PROMO_PDT TO commercial;
GRANT INSERT ON APPLIQUE_PROMO_PDT TO commercial;
GRANT UPDATE ON APPLIQUE_PROMO_PDT TO commercial;

GRANT SELECT ON COMMANDE_CLIENT TO commercial;
GRANT SELECT ON LIGNE_CDE_CLIENT TO commercial;
GRANT SELECT ON FACTURE_CLIENT TO commercial;
GRANT SELECT ON GENERER_FACT TO commercial;
GRANT SELECT ON CLIENT TO commercial;
GRANT SELECT ON SEGMENT_CLIENT TO commercial;

GRANT SELECT ON v_top_ventes TO commercial;
GRANT SELECT ON v_ca_mensuel TO commercial;
GRANT SELECT ON v_panier_moyen TO commercial;
GRANT SELECT ON v_avis_produits TO commercial;

/* 
   -- DROITS POUR SERVICE_CLIENT --

   Droit de consultation SELECT :
   - consulter les clients, adresses, segments, statuts de commande, commandes, lignes de commande et factures ;
   - consulter les informations de fidelite, bons de reduction et avis clients ;
   - consulter les vues de panier moyen et de notes produits.

   Droits INSERT et UPDATE :
   - creer ou modifier un client et ses adresses ;
   - mettre a jour certaines informations de commande dans le cadre du suivi client ;
   - creer ou modifier le compte fidelite et les bons de reduction ;
   - enregistrer l'historique des points et l'historique de moderation d'avis.

   Aucun droit DELETE n'est donne pour conserver l'historique client, commercial et fidelite.
*/

GRANT SELECT ON CLIENT TO service_client;
GRANT INSERT ON CLIENT TO service_client;
GRANT UPDATE ON CLIENT TO service_client;

GRANT SELECT ON ADRESSE_CLIENT TO service_client;
GRANT INSERT ON ADRESSE_CLIENT TO service_client;
GRANT UPDATE ON ADRESSE_CLIENT TO service_client;

GRANT SELECT ON AVOIR_ADRESSE TO service_client;
GRANT INSERT ON AVOIR_ADRESSE TO service_client;
GRANT UPDATE ON AVOIR_ADRESSE TO service_client;

GRANT SELECT ON SEGMENT_CLIENT TO service_client;
GRANT SELECT ON STATUT_CDE_CLIENT TO service_client;
GRANT SELECT ON AVOIR_STATUT_CDE_CLIENT TO service_client;

GRANT SELECT ON COMMANDE_CLIENT TO service_client;
GRANT UPDATE ON COMMANDE_CLIENT TO service_client;

GRANT SELECT ON LIGNE_CDE_CLIENT TO service_client;
GRANT SELECT ON FACTURE_CLIENT TO service_client;
GRANT SELECT ON GENERER_FACT TO service_client;

GRANT SELECT ON COMPTE_FIDELITE TO service_client;
GRANT INSERT ON COMPTE_FIDELITE TO service_client;
GRANT UPDATE ON COMPTE_FIDELITE TO service_client;

GRANT SELECT ON HISTORIQUE_POINTS TO service_client;
GRANT INSERT ON HISTORIQUE_POINTS TO service_client;

GRANT SELECT ON BON_REDUCTION TO service_client;
GRANT INSERT ON BON_REDUCTION TO service_client;
GRANT UPDATE ON BON_REDUCTION TO service_client;

GRANT SELECT ON APPLIQUER_BON_REDUC TO service_client;
GRANT INSERT ON APPLIQUER_BON_REDUC TO service_client;

GRANT SELECT ON AVIS_CLIENT TO service_client;
GRANT UPDATE ON AVIS_CLIENT TO service_client;

GRANT SELECT ON MODERATION_AVIS TO service_client;
GRANT SELECT ON HISTORIQUE_MOD_AVIS TO service_client;
GRANT INSERT ON HISTORIQUE_MOD_AVIS TO service_client;

GRANT SELECT ON v_panier_moyen TO service_client;
GRANT SELECT ON v_avis_produits TO service_client;

/*
   -- DROITS POUR PREPARATEUR --

   Droit de consultation SELECT :
   - consulter les commandes et lignes de commande a preparer ;
   - consulter les stocks, entrepots, transporteurs, grilles tarifaires et colis ;
   - consulter les vues utiles a la preparation : commandes du jour et stock global.

   Droits INSERT et UPDATE :
   - creer ou modifier les colis ;
   - associer les lignes de commande aux colis ;
   - enregistrer les evenements de colis ;
   - enregistrer les mouvements de sortie de stock ;
   - mettre a jour les stocks et les informations logistiques des lignes de commande.

   Aucun droit DELETE n'est donne pour garder la tracabilite logistique.
*/

GRANT SELECT ON v_commandes_jour TO preparateur;
GRANT SELECT ON v_stock_global TO preparateur;

GRANT SELECT ON COMMANDE_CLIENT TO preparateur;
GRANT UPDATE ON COMMANDE_CLIENT TO preparateur;

GRANT SELECT ON LIGNE_CDE_CLIENT TO preparateur;
GRANT UPDATE ON LIGNE_CDE_CLIENT TO preparateur;

GRANT SELECT ON ENTREPOT TO preparateur;
GRANT SELECT ON STOCKER TO preparateur;
GRANT INSERT ON STOCKER TO preparateur;
GRANT UPDATE ON STOCKER TO preparateur;

GRANT SELECT ON TYPE_MVMT_STOCK TO preparateur;
GRANT SELECT ON MOUVEMENT_STOCK TO preparateur;
GRANT INSERT ON MOUVEMENT_STOCK TO preparateur;

GRANT SELECT ON TRANSPORTEUR TO preparateur;
GRANT SELECT ON GRILLE_TARIFAIRE_TPS TO preparateur;
GRANT SELECT ON PRIS_EN_CHARGE_TPS TO preparateur;
GRANT INSERT ON PRIS_EN_CHARGE_TPS TO preparateur;
GRANT UPDATE ON PRIS_EN_CHARGE_TPS TO preparateur;

GRANT SELECT ON COLIS TO preparateur;
GRANT INSERT ON COLIS TO preparateur;
GRANT UPDATE ON COLIS TO preparateur;

GRANT SELECT ON CONTENIR_COLIS TO preparateur;
GRANT INSERT ON CONTENIR_COLIS TO preparateur;
GRANT UPDATE ON CONTENIR_COLIS TO preparateur;

GRANT SELECT ON HISTORIQUE_EVENT_COLIS TO preparateur;
GRANT INSERT ON HISTORIQUE_EVENT_COLIS TO preparateur;

-- 3.TESTS DES DROITS

-- Test gestionnaire_stock
connect gestionnaire_stock/stock123

SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, stock_total, seuil_total, stock_securite_total
FROM administrateur.v_stock_global;

SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, stock_total, seuil_total
FROM administrateur.v_produits_rupture;

-- Test commercial
connect commercial/commercial123

SELECT SKU_produit, nom_produit, SKU_variante, libelle_variante, quantite_vendue, chiffre_affaires_ttc
FROM administrateur.v_top_ventes
ORDER BY quantite_vendue DESC;

SELECT mois, nb_factures, ca_ht, total_tva, ca_ttc
FROM administrateur.v_ca_mensuel;

-- Test service_client
connect service_client/client123

SELECT id_segment, libelle_segment, nb_commandes, panier_moyen_ttc
FROM administrateur.v_panier_moyen;

SELECT SKU_produit, nom_produit, nb_avis, moyenne_note
FROM administrateur.v_avis_produits;

-- Test preparateur
connect preparateur/prep123

SELECT num_cde_client, date_cde_client, email, statut_paiement, mode_paiement,
        total_ttc_cde_client, id_ligne_cde_client, SKU_variante, qte_cde_client, id_entrepot
FROM administrateur.v_commandes_jour;

/* pour v_commandes_jour
Le resultat peut afficher "aucune ligne selectionnee" car cette vue depend de SYSDATE. 
Elle ne retourne des lignes que si des commandes existent a la date exacte d'execution du script.
Cela confirme que la requete s'execute correctement, meme si aucune commande n'est a preparer aujourd'hui.
*/

SPOOL OFF ;
