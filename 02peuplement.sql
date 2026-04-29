SPOOL C:\temp\Execution02.log

-- ROLE_UTILISATEUR
INSERT INTO ROLE_UTILISATEUR (id_role_user, libelle_role_user) VALUES ('RU001', 'administrateur');
INSERT INTO ROLE_UTILISATEUR (id_role_user, libelle_role_user) VALUES ('RU002', 'gestionnaire_stock');
INSERT INTO ROLE_UTILISATEUR (id_role_user, libelle_role_user) VALUES ('RU003', 'commercial');
INSERT INTO ROLE_UTILISATEUR (id_role_user, libelle_role_user) VALUES ('RU004', 'service_client');
INSERT INTO ROLE_UTILISATEUR (id_role_user, libelle_role_user) VALUES ('RU005', 'preparateur');

-- UTILISATEURS
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR001', 'Alexis Ongagna');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR002', 'Hang Do');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR003', 'Yuan Ding');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR004', 'Christophe Darmangeat');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR005', 'Eva Racine');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR006', 'Nazma Hussain');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR007', 'Jean Michel');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR008', 'Sarah Morel');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR009', 'Karim Benali');
INSERT INTO UTILISATEURS (id_utilisateur, nom_utilisateur) VALUES ('USR010', 'Julie Martin');

-- AVOIR_ROLE_USER
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR001', 'RU001');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR002', 'RU002');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR003', 'RU003');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR004', 'RU004');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR005', 'RU005');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR006', 'RU002');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR007', 'RU003');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR008', 'RU004');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR009', 'RU005');
INSERT INTO AVOIR_ROLE_USER (id_utilisateur, id_role_user) VALUES ('USR010', 'RU003');

-- MARQUE
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK001', 'Apple');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK002', 'Samsung');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK003', 'Xiaomi');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK004', 'Sony');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK005', 'Logitech');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK006', 'Philips');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK007', 'Dell');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK008', 'HP');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK009', 'Canon');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK010', 'Epson');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK011', 'Asus');
INSERT INTO MARQUE (id_marque, nom_marque) VALUES ('MRK012', 'Lenovo');

-- CATEGORIE_PRODUIT
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT001', 'Smartphones', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT002', 'Ordinateurs portables', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT003', 'Tablettes', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT004', 'Audio', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT005', 'Objets connectes', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT006', 'Accessoires informatiques', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT007', 'Maison connectee', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT008', 'Photo et video', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT009', 'Impression', NULL);
INSERT INTO CATEGORIE_PRODUIT (id_cat_produit, libelle_cat_produit, id_cat_produit_PARENT) VALUES ('CAT010', 'Gaming', NULL);

-- PRODUIT
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD001', 'iPhone 15', 'Smartphone Apple 128 Go', 650, 829, 20, 'CAT001', 'MRK001');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD002', 'Galaxy S24', 'Smartphone Samsung 256 Go', 590, 799, 20, 'CAT001', 'MRK002');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD003', 'Redmi Note 13', 'Smartphone Xiaomi 128 Go', 180, 279, 20, 'CAT001', 'MRK003');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD004', 'MacBook Air M3', 'Ordinateur portable 13 pouces', 950, 1299, 20, 'CAT002', 'MRK001');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD005', 'Dell XPS 13', 'Ordinateur ultrabook professionnel', 880, 1199, 20, 'CAT002', 'MRK007');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD006', 'Lenovo ThinkPad E14', 'Ordinateur portable bureautique', 620, 849, 20, 'CAT002', 'MRK012');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD007', 'iPad Air', 'Tablette Apple 11 pouces', 510, 699, 20, 'CAT003', 'MRK001');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD008', 'Galaxy Tab S9', 'Tablette Android haut de gamme', 560, 759, 20, 'CAT003', 'MRK002');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD009', 'Xiaomi Pad 6', 'Tablette multimedia', 280, 399, 20, 'CAT003', 'MRK003');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD010', 'Sony WH-1000XM5', 'Casque audio reduction de bruit', 250, 379, 20, 'CAT004', 'MRK004');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD011', 'AirPods Pro 2', 'Ecouteurs sans fil Apple', 180, 279, 20, 'CAT004', 'MRK001');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD012', 'Logitech Zone Vibe', 'Casque bureau sans fil', 75, 119, 20, 'CAT004', 'MRK005');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD013', 'Apple Watch Series 9', 'Montre connectee GPS', 310, 449, 20, 'CAT005', 'MRK001');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD014', 'Galaxy Watch 6', 'Montre connectee Android', 190, 299, 20, 'CAT005', 'MRK002');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD015', 'Mi Smart Band 8', 'Bracelet connecte sport', 28, 49, 20, 'CAT005', 'MRK003');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD016', 'Logitech MX Master 3S', 'Souris ergonomique sans fil', 68, 109, 20, 'CAT006', 'MRK005');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD017', 'Logitech MX Keys', 'Clavier bureautique sans fil', 72, 119, 20, 'CAT006', 'MRK005');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD018', 'HP USB-C Dock', 'Station accueil USB-C', 105, 169, 20, 'CAT006', 'MRK008');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD019', 'Philips Hue Starter Kit', 'Kit ampoules connectees', 95, 149, 20, 'CAT007', 'MRK006');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD020', 'Xiaomi Smart Camera C300', 'Camera connectee interieure', 35, 59, 20, 'CAT007', 'MRK003');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD021', 'Samsung SmartTag2', 'Balise connectee Bluetooth', 18, 34, 20, 'CAT007', 'MRK002');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD022', 'Canon EOS R50', 'Appareil photo hybride', 530, 749, 20, 'CAT008', 'MRK009');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD023', 'Sony ZV-1 II', 'Camera vlog compacte', 610, 849, 20, 'CAT008', 'MRK004');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD024', 'Canon RF 50mm', 'Objectif photo fixe', 130, 199, 20, 'CAT008', 'MRK009');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD025', 'Epson EcoTank ET-2850', 'Imprimante jet encre rechargeable', 190, 279, 20, 'CAT009', 'MRK010');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD026', 'HP LaserJet M234', 'Imprimante laser monochrome', 125, 189, 20, 'CAT009', 'MRK008');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD027', 'Canon Selphy CP1500', 'Imprimante photo compacte', 95, 149, 20, 'CAT009', 'MRK009');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD028', 'Asus ROG Strix G16', 'PC portable gaming', 1050, 1499, 20, 'CAT010', 'MRK011');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD029', 'Sony DualSense', 'Manette PlayStation 5', 42, 69, 20, 'CAT010', 'MRK004');
INSERT INTO PRODUIT (SKU_produit, nom_produit, description_produit, prix_achat_ht, prix_vente_ht, taux_tva, id_cat_produit, id_marque) VALUES ('PRD030', 'Logitech G Pro X', 'Casque gaming filaire', 78, 129, 20, 'CAT010', 'MRK005');

-- VARIANTE
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR001', 'Blanc standard', 1.25, 'PRD001');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR002', 'Bleu standard', 0.45, 'PRD002');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR003', 'Graphite standard', 0.3, 'PRD003');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR004', 'Noir standard', 0.08, 'PRD004');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR005', 'Blanc standard', 0.9, 'PRD005');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR006', 'Bleu standard', 0.65, 'PRD006');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR007', 'Graphite standard', 2.1, 'PRD007');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR008', 'Noir standard', 0.18, 'PRD008');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR009', 'Blanc standard', 1.25, 'PRD009');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR010', 'Bleu standard', 0.45, 'PRD010');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR011', 'Graphite standard', 0.3, 'PRD011');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR012', 'Noir standard', 0.08, 'PRD012');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR013', 'Blanc standard', 0.9, 'PRD013');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR014', 'Bleu standard', 0.65, 'PRD014');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR015', 'Graphite standard', 2.1, 'PRD015');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR016', 'Noir standard', 0.18, 'PRD016');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR017', 'Blanc standard', 1.25, 'PRD017');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR018', 'Bleu standard', 0.45, 'PRD018');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR019', 'Graphite standard', 0.3, 'PRD019');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR020', 'Noir standard', 0.08, 'PRD020');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR021', 'Blanc standard', 0.9, 'PRD021');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR022', 'Bleu standard', 0.65, 'PRD022');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR023', 'Graphite standard', 2.1, 'PRD023');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR024', 'Noir standard', 0.18, 'PRD024');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR025', 'Blanc standard', 1.25, 'PRD025');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR026', 'Bleu standard', 0.45, 'PRD026');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR027', 'Graphite standard', 0.3, 'PRD027');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR028', 'Noir standard', 0.08, 'PRD028');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR029', 'Blanc standard', 0.9, 'PRD029');
INSERT INTO VARIANTE (SKU_variante, libelle_variante, poids_unitaire_variante, SKU_produit) VALUES ('VAR030', 'Bleu standard', 0.65, 'PRD030');

-- IMAGE_PRODUIT
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG001', 'image_prd001.jpg', '/images/produits/prd001.jpg', 'PRD001');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG002', 'image_prd002.jpg', '/images/produits/prd002.jpg', 'PRD002');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG003', 'image_prd003.jpg', '/images/produits/prd003.jpg', 'PRD003');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG004', 'image_prd004.jpg', '/images/produits/prd004.jpg', 'PRD004');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG005', 'image_prd005.jpg', '/images/produits/prd005.jpg', 'PRD005');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG006', 'image_prd006.jpg', '/images/produits/prd006.jpg', 'PRD006');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG007', 'image_prd007.jpg', '/images/produits/prd007.jpg', 'PRD007');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG008', 'image_prd008.jpg', '/images/produits/prd008.jpg', 'PRD008');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG009', 'image_prd009.jpg', '/images/produits/prd009.jpg', 'PRD009');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG010', 'image_prd010.jpg', '/images/produits/prd010.jpg', 'PRD010');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG011', 'image_prd011.jpg', '/images/produits/prd011.jpg', 'PRD011');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG012', 'image_prd012.jpg', '/images/produits/prd012.jpg', 'PRD012');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG013', 'image_prd013.jpg', '/images/produits/prd013.jpg', 'PRD013');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG014', 'image_prd014.jpg', '/images/produits/prd014.jpg', 'PRD014');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG015', 'image_prd015.jpg', '/images/produits/prd015.jpg', 'PRD015');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG016', 'image_prd016.jpg', '/images/produits/prd016.jpg', 'PRD016');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG017', 'image_prd017.jpg', '/images/produits/prd017.jpg', 'PRD017');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG018', 'image_prd018.jpg', '/images/produits/prd018.jpg', 'PRD018');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG019', 'image_prd019.jpg', '/images/produits/prd019.jpg', 'PRD019');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG020', 'image_prd020.jpg', '/images/produits/prd020.jpg', 'PRD020');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG021', 'image_prd021.jpg', '/images/produits/prd021.jpg', 'PRD021');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG022', 'image_prd022.jpg', '/images/produits/prd022.jpg', 'PRD022');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG023', 'image_prd023.jpg', '/images/produits/prd023.jpg', 'PRD023');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG024', 'image_prd024.jpg', '/images/produits/prd024.jpg', 'PRD024');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG025', 'image_prd025.jpg', '/images/produits/prd025.jpg', 'PRD025');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG026', 'image_prd026.jpg', '/images/produits/prd026.jpg', 'PRD026');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG027', 'image_prd027.jpg', '/images/produits/prd027.jpg', 'PRD027');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG028', 'image_prd028.jpg', '/images/produits/prd028.jpg', 'PRD028');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG029', 'image_prd029.jpg', '/images/produits/prd029.jpg', 'PRD029');
INSERT INTO IMAGE_PRODUIT (id_image, nom_image, emplacement_image, SKU_produit) VALUES ('IMG030', 'image_prd030.jpg', '/images/produits/prd030.jpg', 'PRD030');

-- AVOIR_IMAGE
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD001', 'IMG001', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD002', 'IMG002', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD003', 'IMG003', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD004', 'IMG004', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD005', 'IMG005', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD006', 'IMG006', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD007', 'IMG007', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD008', 'IMG008', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD009', 'IMG009', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD010', 'IMG010', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD011', 'IMG011', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD012', 'IMG012', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD013', 'IMG013', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD014', 'IMG014', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD015', 'IMG015', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD016', 'IMG016', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD017', 'IMG017', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD018', 'IMG018', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD019', 'IMG019', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD020', 'IMG020', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD021', 'IMG021', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD022', 'IMG022', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD023', 'IMG023', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD024', 'IMG024', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD025', 'IMG025', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD026', 'IMG026', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD027', 'IMG027', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD028', 'IMG028', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD029', 'IMG029', 1);
INSERT INTO AVOIR_IMAGE (SKU_produit, id_image, est_principale) VALUES ('PRD030', 'IMG030', 1);

-- ETIQUETTE_PRODUIT
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG001', 'nouveaute');
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG002', 'meilleure_vente');
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG003', 'eco_responsable');
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG004', 'promotion');
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG005', 'professionnel');
INSERT INTO ETIQUETTE_PRODUIT (id_tag_produit, libelle_tag_produit) VALUES ('TAG006', 'premium');

-- AVOIR_ETIQUETTE
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD001', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD002', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD003', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD004', 'TAG006');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD005', 'TAG006');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD006', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD007', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD008', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD009', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD010', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD011', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD012', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD013', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD014', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD015', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD016', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD017', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD018', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD019', 'TAG003');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD020', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD021', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD022', 'TAG006');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD023', 'TAG006');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD024', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD025', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD026', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD027', 'TAG001');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD028', 'TAG006');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD029', 'TAG002');
INSERT INTO AVOIR_ETIQUETTE (SKU_produit, id_tag_produit) VALUES ('PRD030', 'TAG001');

-- ATTRIBUT_PRODUIT
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT001', 'Couleur', 'Noir');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT002', 'Couleur', 'Blanc');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT003', 'Couleur', 'Bleu');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT004', 'Stockage', '128 Go');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT005', 'Stockage', '256 Go');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT006', 'Memoire', '16 Go');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT007', 'Format', 'Standard');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT008', 'Usage', 'Professionnel');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT009', 'Usage', 'Gaming');
INSERT INTO ATTRIBUT_PRODUIT (id_attribut_pdt, type_attribut_pdt, valeur_attribut_pdt) VALUES ('ATT010', 'Connexion', 'Bluetooth');

-- AVOIR_POUR_ATTRIBUT
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR001', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR001', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR002', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR002', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR003', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR003', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR004', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR004', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR005', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR005', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR006', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR006', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR007', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR007', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR008', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR008', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR009', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR009', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR010', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR010', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR011', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR011', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR012', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR012', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR013', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR013', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR014', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR014', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR015', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR015', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR016', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR016', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR017', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR017', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR018', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR018', 'ATT008');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR019', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR019', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR020', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR020', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR021', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR021', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR022', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR022', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR023', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR023', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR024', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR024', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR025', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR025', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR026', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR026', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR027', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR027', 'ATT007');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR028', 'ATT002');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR028', 'ATT009');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR029', 'ATT003');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR029', 'ATT009');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR030', 'ATT001');
INSERT INTO AVOIR_POUR_ATTRIBUT (SKU_variante, id_attribut_pdt) VALUES ('VAR030', 'ATT009');

-- CATALOGUE
INSERT INTO CATALOGUE (id_catalogue, libelle_catalogue, date_catalogue) VALUES ('CTL001', 'Catalogue printemps 2025', TO_DATE('01/03/2025', 'DD/MM/YYYY'));
INSERT INTO CATALOGUE (id_catalogue, libelle_catalogue, date_catalogue) VALUES ('CTL002', 'Catalogue rentree 2025', TO_DATE('01/09/2025', 'DD/MM/YYYY'));
INSERT INTO CATALOGUE (id_catalogue, libelle_catalogue, date_catalogue) VALUES ('CTL003', 'Catalogue hiver 2025', TO_DATE('01/12/2025', 'DD/MM/YYYY'));
INSERT INTO CATALOGUE (id_catalogue, libelle_catalogue, date_catalogue) VALUES ('CTL004', 'Catalogue printemps 2026', TO_DATE('01/03/2026', 'DD/MM/YYYY'));
INSERT INTO CATALOGUE (id_catalogue, libelle_catalogue, date_catalogue) VALUES ('CTL005', 'Offres avril 2026', TO_DATE('01/04/2026', 'DD/MM/YYYY'));

-- APPARTENANCE_CATALOGUE
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD001', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD002', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD003', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD004', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD005', 'CTL005');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD006', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD007', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD008', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD009', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD010', 'CTL005');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD011', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD012', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD013', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD014', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD015', 'CTL005');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD016', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD017', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD018', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD019', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD020', 'CTL005');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD021', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD022', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD023', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD024', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD025', 'CTL005');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD026', 'CTL001');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD027', 'CTL002');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD028', 'CTL003');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD029', 'CTL004');
INSERT INTO APPARTENANCE_CATALOGUE (SKU_produit, id_catalogue) VALUES ('PRD030', 'CTL005');

-- STATUT_PRODUIT
INSERT INTO STATUT_PRODUIT (id_statut_produit, libelle_statut_produit) VALUES ('STP001', 'actif');
INSERT INTO STATUT_PRODUIT (id_statut_produit, libelle_statut_produit) VALUES ('STP002', 'en_rupture');
INSERT INTO STATUT_PRODUIT (id_statut_produit, libelle_statut_produit) VALUES ('STP003', 'inactif');

-- AVOIR_STATUT_STOCK
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR001');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR002');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR003');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR004');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR005');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR006');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR007');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR008');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR009');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR010');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR011');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR012');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR013');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP002', 'VAR014');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR015');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR016');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR017');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR018');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR019');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR020');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR021');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR022');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR023');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR024');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR025');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR026');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP002', 'VAR027');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR028');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR029');
INSERT INTO AVOIR_STATUT_STOCK (id_statut_produit, SKU_variante) VALUES ('STP001', 'VAR030');

-- ENTREPOT
INSERT INTO ENTREPOT (id_entrepot, nom_entrepot, adresse_entrepot) VALUES ('ENT001', 'Entrepot Paris Sud', '270 Boulevard Raspail, Paris');
INSERT INTO ENTREPOT (id_entrepot, nom_entrepot, adresse_entrepot) VALUES ('ENT002', 'Entrepot Lyon Ouest', '4 Passage du Coteau, Lyon');
INSERT INTO ENTREPOT (id_entrepot, nom_entrepot, adresse_entrepot) VALUES ('ENT003', 'Entrepot Marseille Nord', '18 Rue de Lyon, Marseille');

-- STOCKER
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR001', 11, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR001', 8, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR001', 11, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR002', 18, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR002', 13, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR002', 20, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR003', 25, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR003', 18, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR003', 4, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR004', 32, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR004', 23, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR004', 13, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR005', 39, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR005', 28, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR005', 22, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR006', 8, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR006', 3, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR006', 6, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR007', 15, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR007', 8, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR007', 15, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR008', 22, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR008', 13, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR008', 24, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR009', 29, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR009', 18, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR009', 8, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR010', 36, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR010', 23, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR010', 17, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR011', 5, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR011', 28, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR011', 26, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR012', 12, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR012', 3, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR012', 10, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR013', 19, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR013', 8, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR013', 19, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR014', 0, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR014', 1, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR014', 0, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR015', 33, 6, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR015', 18, 6, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR015', 12, 6, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR016', 40, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR016', 23, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR016', 21, 8, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR017', 9, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR017', 28, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR017', 5, 10, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR018', 16, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR018', 3, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR018', 14, 12, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR019', 23, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR019', 8, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR019', 23, 14, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR020', 30, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR020', 13, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR020', 7, 6, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR021', 37, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR021', 18, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR021', 16, 8, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR022', 6, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR022', 23, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR022', 25, 10, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR023', 13, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR023', 28, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR023', 9, 12, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR024', 20, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR024', 3, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR024', 18, 14, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR025', 27, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR025', 8, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR025', 2, 6, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR026', 34, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR026', 13, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR026', 11, 8, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR027', 1, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR027', 0, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR027', 1, 10, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR028', 10, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR028', 23, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR028', 4, 12, 3);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR029', 17, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR029', 28, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR029', 13, 14, 4);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT001', 'VAR030', 24, 6, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT002', 'VAR030', 3, 6, 2);
INSERT INTO STOCKER (id_entrepot, SKU_variante, quantite_produit, seuil_reapprovisionnement, stock_securite) VALUES ('ENT003', 'VAR030', 22, 6, 2);

-- TYPE_MVMT_STOCK
INSERT INTO TYPE_MVMT_STOCK (id_type_mvmt_stock, libelle_type_mvmt_stock) VALUES ('TMS001', 'entree_fournisseur');
INSERT INTO TYPE_MVMT_STOCK (id_type_mvmt_stock, libelle_type_mvmt_stock) VALUES ('TMS002', 'sortie_commande');
INSERT INTO TYPE_MVMT_STOCK (id_type_mvmt_stock, libelle_type_mvmt_stock) VALUES ('TMS003', 'transfert');
INSERT INTO TYPE_MVMT_STOCK (id_type_mvmt_stock, libelle_type_mvmt_stock) VALUES ('TMS004', 'correction_inventaire');

-- MOUVEMENT_STOCK
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT001', 11, TO_DATE('02/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR001', 'ENT001', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT002', 12, TO_DATE('03/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR002', 'ENT002', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT003', 13, TO_DATE('04/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR003', 'ENT003', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT004', 14, TO_DATE('05/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR004', 'ENT001', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT005', 15, TO_DATE('06/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR005', 'ENT002', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT006', 16, TO_DATE('07/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR006', 'ENT003', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT007', 17, TO_DATE('08/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR007', 'ENT001', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT008', 18, TO_DATE('09/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR008', 'ENT002', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT009', 19, TO_DATE('10/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR009', 'ENT003', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT010', 20, TO_DATE('11/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR010', 'ENT001', 'TMS001', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT011', 21, TO_DATE('12/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR011', 'ENT002', 'TMS004', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT012', 22, TO_DATE('13/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR012', 'ENT003', 'TMS004', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT013', 23, TO_DATE('14/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR013', 'ENT001', 'TMS004', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT014', 24, TO_DATE('15/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR014', 'ENT002', 'TMS004', 'USR002');
INSERT INTO MOUVEMENT_STOCK (id_mouvement_stock, quantite_mouvement, date_mouvement_stock, motif_mouvement_stock, SKU_variante, id_entrepot, id_type_mvmt_stock, id_utilisateur) VALUES ('MVT015', 25, TO_DATE('16/03/2026', 'DD/MM/YYYY'), 'Mouvement initial de stock', 'VAR015', 'ENT003', 'TMS004', 'USR002');

-- INVENTAIRE_STOCK
INSERT INTO INVENTAIRE_STOCK (id_inventaire, periode_inventaire, id_entrepot, id_utilisateur, SKU_variante) VALUES ('INV001', 'Avril 2026', 'ENT001', 'USR002', 'VAR001');

-- AVOIR_POUR_INVENTAIRE
INSERT INTO AVOIR_POUR_INVENTAIRE (id_inventaire, SKU_variante, stock_theorique, stock_physique) VALUES ('INV001', 'VAR001', 21, 20);
INSERT INTO INVENTAIRE_STOCK (id_inventaire, periode_inventaire, id_entrepot, id_utilisateur, SKU_variante) VALUES ('INV002', 'Avril 2026', 'ENT002', 'USR002', 'VAR002');
INSERT INTO AVOIR_POUR_INVENTAIRE (id_inventaire, SKU_variante, stock_theorique, stock_physique) VALUES ('INV002', 'VAR002', 22, 21);
INSERT INTO INVENTAIRE_STOCK (id_inventaire, periode_inventaire, id_entrepot, id_utilisateur, SKU_variante) VALUES ('INV003', 'Avril 2026', 'ENT003', 'USR002', 'VAR003');
INSERT INTO AVOIR_POUR_INVENTAIRE (id_inventaire, SKU_variante, stock_theorique, stock_physique) VALUES ('INV003', 'VAR003', 23, 22);

-- TRANSFERT_INTERENTREPOT
INSERT INTO TRANSFERT_INTERENTREPOT (id_transfert, date_demande_transfert, date_reception_transfert, id_entrepot_SOURCE_TRANSFERT, id_entrepot_DEST_TRANSFERT, id_mouvement_stock) VALUES ('TRF001', TO_DATE('05/04/2026', 'DD/MM/YYYY'), TO_DATE('07/04/2026', 'DD/MM/YYYY'), 'ENT001', 'ENT002', 'MVT011');

-- FOURNISSEUR
INSERT INTO FOURNISSEUR (ref_fournisseur, nom_fournisseur, adresse_fournisseur, SIRET, num_tva_intracomm) VALUES ('FOU001', 'TechData France', '5 Avenue de la Logistique, Lyon', 55212022233344, 'FR12552120222');
INSERT INTO FOURNISSEUR (ref_fournisseur, nom_fournisseur, adresse_fournisseur, SIRET, num_tva_intracomm) VALUES ('FOU002', 'Ingram Micro France', '12 Rue des Grossistes, Paris', 44321098765432, 'FR44443210987');
INSERT INTO FOURNISSEUR (ref_fournisseur, nom_fournisseur, adresse_fournisseur, SIRET, num_tva_intracomm) VALUES ('FOU003', 'Also France', '9 Zone Industrielle, Lille', 32165498712345, 'FR23321654987');
INSERT INTO FOURNISSEUR (ref_fournisseur, nom_fournisseur, adresse_fournisseur, SIRET, num_tva_intracomm) VALUES ('FOU004', 'Epson Distribution Europe', '44 Route des Imprimeurs, Nantes', 78945612300011, 'FR55789456123');
INSERT INTO FOURNISSEUR (ref_fournisseur, nom_fournisseur, adresse_fournisseur, SIRET, num_tva_intracomm) VALUES ('FOU005', 'Photo Pro Supply', '16 Rue de la Photo, Bordeaux', 65498732100022, 'FR78654987321');

-- FOURNIR
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR001', 650, 6, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR002', 590, 7, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR003', 180, 8, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR004', 950, 9, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR005', 880, 10, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR006', 620, 5, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR007', 510, 6, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR008', 560, 7, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR009', 280, 8, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR010', 250, 9, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR011', 180, 10, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR012', 75, 5, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR013', 310, 6, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR014', 190, 7, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR015', 28, 8, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR016', 68, 9, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR017', 72, 10, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR018', 105, 5, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR019', 95, 6, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR020', 35, 7, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR021', 18, 8, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR022', 530, 9, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR023', 610, 10, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR024', 130, 5, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR025', 190, 6, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU001', 'VAR026', 125, 7, 4);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU002', 'VAR027', 95, 8, 5);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU003', 'VAR028', 1050, 9, 2);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU004', 'VAR029', 42, 10, 3);
INSERT INTO FOURNIR (ref_fournisseur, SKU_variante, prix_achat_produit, delai_livraison, quantite_min_cde) VALUES ('FOU005', 'VAR030', 78, 5, 4);

-- STATUT_CDE_FOUR
INSERT INTO STATUT_CDE_FOUR (id_statut_cde, libelle_statut_cde) VALUES ('SCF001', 'cree');
INSERT INTO STATUT_CDE_FOUR (id_statut_cde, libelle_statut_cde) VALUES ('SCF002', 'validee');
INSERT INTO STATUT_CDE_FOUR (id_statut_cde, libelle_statut_cde) VALUES ('SCF003', 'recue');
INSERT INTO STATUT_CDE_FOUR (id_statut_cde, libelle_statut_cde) VALUES ('SCF004', 'annulee');

-- COMMANDE_FOURNISSEUR
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD001', TO_DATE('05/01/2026', 'DD/MM/YYYY'), 3540.00, 708.00, 4248.00, 'FOU001', 'USR002');

-- AVOIR_STT_CDE
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD001', 'SCF003', TO_DATE('05/01/2026', 'DD/MM/YYYY'));

-- LIGNE_CDE_FOUR
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF001', 6, 'CFD001', 'VAR002');

-- RECEPTION_CDE_FOUR
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR002', 'LCF001', TO_DATE('05/01/2026', 'DD/MM/YYYY'), 6);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD002', TO_DATE('06/02/2026', 'DD/MM/YYYY'), 6160.00, 1232.00, 7392.00, 'FOU002', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD002', 'SCF003', TO_DATE('06/02/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF002', 7, 'CFD002', 'VAR005');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR005', 'LCF002', TO_DATE('06/02/2026', 'DD/MM/YYYY'), 7);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD003', TO_DATE('07/03/2026', 'DD/MM/YYYY'), 4480.00, 896.00, 5376.00, 'FOU003', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD003', 'SCF003', TO_DATE('07/03/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF003', 8, 'CFD003', 'VAR008');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR008', 'LCF003', TO_DATE('07/03/2026', 'DD/MM/YYYY'), 8);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD004', TO_DATE('08/04/2026', 'DD/MM/YYYY'), 1620.00, 324.00, 1944.00, 'FOU004', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD004', 'SCF003', TO_DATE('08/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF004', 9, 'CFD004', 'VAR011');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR011', 'LCF004', TO_DATE('08/04/2026', 'DD/MM/YYYY'), 9);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD005', TO_DATE('09/05/2026', 'DD/MM/YYYY'), 1900.00, 380.00, 2280.00, 'FOU005', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD005', 'SCF003', TO_DATE('09/05/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF005', 10, 'CFD005', 'VAR014');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR014', 'LCF005', TO_DATE('09/05/2026', 'DD/MM/YYYY'), 10);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD006', TO_DATE('10/06/2026', 'DD/MM/YYYY'), 792.00, 158.40, 950.40, 'FOU001', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD006', 'SCF003', TO_DATE('10/06/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF006', 11, 'CFD006', 'VAR017');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR017', 'LCF006', TO_DATE('10/06/2026', 'DD/MM/YYYY'), 11);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD007', TO_DATE('10/07/2025', 'DD/MM/YYYY'), 420.00, 84.00, 504.00, 'FOU002', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD007', 'SCF003', TO_DATE('10/07/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF007', 12, 'CFD007', 'VAR020');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR020', 'LCF007', TO_DATE('10/07/2025', 'DD/MM/YYYY'), 12);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD008', TO_DATE('11/08/2025', 'DD/MM/YYYY'), 7930.00, 1586.00, 9516.00, 'FOU003', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD008', 'SCF003', TO_DATE('11/08/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF008', 13, 'CFD008', 'VAR023');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR023', 'LCF008', TO_DATE('11/08/2025', 'DD/MM/YYYY'), 13);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD009', TO_DATE('12/09/2025', 'DD/MM/YYYY'), 1750.00, 350.00, 2100.00, 'FOU004', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD009', 'SCF003', TO_DATE('12/09/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF009', 14, 'CFD009', 'VAR026');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR026', 'LCF009', TO_DATE('12/09/2025', 'DD/MM/YYYY'), 14);
INSERT INTO COMMANDE_FOURNISSEUR (id_commande_four, date_commande, total_ht_cde_fournisseur, total_tva_cde_fournisseur, total_ttc_cde_fournisseur, ref_fournisseur, id_utilisateur) VALUES ('CFD010', TO_DATE('13/10/2025', 'DD/MM/YYYY'), 630.00, 126.00, 756.00, 'FOU005', 'USR002');
INSERT INTO AVOIR_STT_CDE (id_commande_four, id_statut_cde, date_changement_statut) VALUES ('CFD010', 'SCF003', TO_DATE('13/10/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_FOUR (id_ligne_cde_four, qte_cde_fournisseur, id_commande_four, SKU_variante) VALUES ('LCF010', 15, 'CFD010', 'VAR029');
INSERT INTO RECEPTION_CDE_FOUR (SKU_variante, id_ligne_cde_four, date_reception_four, quantite_reception) VALUES ('VAR029', 'LCF010', TO_DATE('13/10/2025', 'DD/MM/YYYY'), 15);

-- SEGMENT_CLIENT
INSERT INTO SEGMENT_CLIENT (id_segment, libelle_segment, est_defaut) VALUES ('SEG001', 'particulier', 1);
INSERT INTO SEGMENT_CLIENT (id_segment, libelle_segment, est_defaut) VALUES ('SEG002', 'premium', 0);
INSERT INTO SEGMENT_CLIENT (id_segment, libelle_segment, est_defaut) VALUES ('SEG003', 'professionnel', 0);
INSERT INTO SEGMENT_CLIENT (id_segment, libelle_segment, est_defaut) VALUES ('SEG004', 'etudiant', 0);

-- CLIENT
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('emma.bernard@example.com', 'hash001', 'Bernard', 'Emma', TO_DATE('04/01/2025', 'DD/MM/YYYY'), 'SEG001');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('hugo.martin@example.com', 'hash002', 'Martin', 'Hugo', TO_DATE('05/01/2025', 'DD/MM/YYYY'), 'SEG002');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('lea.dubois@example.com', 'hash003', 'Dubois', 'Lea', TO_DATE('06/01/2025', 'DD/MM/YYYY'), 'SEG001');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('nathan.moreau@example.com', 'hash004', 'Moreau', 'Nathan', TO_DATE('07/01/2025', 'DD/MM/YYYY'), 'SEG003');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('chloe.leroy@example.com', 'hash005', 'Leroy', 'Chloe', TO_DATE('08/01/2025', 'DD/MM/YYYY'), 'SEG004');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('lucas.fournier@example.com', 'hash006', 'Fournier', 'Lucas', TO_DATE('09/01/2025', 'DD/MM/YYYY'), 'SEG001');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('ines.garcia@example.com', 'hash007', 'Garcia', 'Ines', TO_DATE('10/01/2025', 'DD/MM/YYYY'), 'SEG002');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('adam.robert@example.com', 'hash008', 'Robert', 'Adam', TO_DATE('11/01/2025', 'DD/MM/YYYY'), 'SEG003');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('jade.petit@example.com', 'hash009', 'Petit', 'Jade', TO_DATE('12/01/2025', 'DD/MM/YYYY'), 'SEG004');
INSERT INTO CLIENT (email, mdp_hashe, nom_client, prenom_client, date_inscription, id_segment) VALUES ('noah.roux@example.com', 'hash010', 'Roux', 'Noah', TO_DATE('13/01/2025', 'DD/MM/YYYY'), 'SEG001');

-- ADRESSE_CLIENT
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR001', '11', 'Rue des Clients', '75001', 'Paris', 'France', NULL);

-- AVOIR_ADRESSE
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('emma.bernard@example.com', 'ADR001', 'livraison_facturation', 1);

-- COMPTE_FIDELITE
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID001', 120, 180, 'emma.bernard@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR002', '12', 'Rue des Clients', '75002', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('hugo.martin@example.com', 'ADR002', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID002', 140, 210, 'hugo.martin@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR003', '13', 'Rue des Clients', '75003', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('lea.dubois@example.com', 'ADR003', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID003', 160, 240, 'lea.dubois@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR004', '14', 'Rue des Clients', '75004', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('nathan.moreau@example.com', 'ADR004', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID004', 180, 270, 'nathan.moreau@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR005', '15', 'Rue des Clients', '75005', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('chloe.leroy@example.com', 'ADR005', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID005', 200, 300, 'chloe.leroy@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR006', '16', 'Rue des Clients', '75006', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('lucas.fournier@example.com', 'ADR006', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID006', 220, 330, 'lucas.fournier@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR007', '17', 'Rue des Clients', '75007', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('ines.garcia@example.com', 'ADR007', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID007', 240, 360, 'ines.garcia@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR008', '18', 'Rue des Clients', '75008', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('adam.robert@example.com', 'ADR008', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID008', 260, 390, 'adam.robert@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR009', '19', 'Rue des Clients', '75009', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('jade.petit@example.com', 'ADR009', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID009', 280, 420, 'jade.petit@example.com');
INSERT INTO ADRESSE_CLIENT (id_adresse, numero_adr, nom_rue, code_postale_adr, ville_adr, pays_adr, complement_adr) VALUES ('ADR010', '20', 'Rue des Clients', '75000', 'Paris', 'France', NULL);
INSERT INTO AVOIR_ADRESSE (email, id_adresse, type_adresse, est_defaut) VALUES ('noah.roux@example.com', 'ADR010', 'livraison_facturation', 1);
INSERT INTO COMPTE_FIDELITE (id_compte_fid, solde_points_fid, total_points_fid, email) VALUES ('FID010', 300, 450, 'noah.roux@example.com');

-- STATUT_CDE_CLIENT
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC001', 'cree');
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC002', 'payee');
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC003', 'preparee');
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC004', 'expediee');
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC005', 'livree');
INSERT INTO STATUT_CDE_CLIENT (id_statut_cde_client, libelle_statut_cde_client) VALUES ('SCC006', 'annulee');

-- COMMANDE_CLIENT
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE001', TO_DATE('02/05/2024', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00, 'paye', 'carte_bancaire', TO_DATE('02/05/2024', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'ADR001', 'ADR001', 'USR003');

-- AVOIR_STATUT_CDE_CLIENT
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE001', 'SCC002', TO_DATE('02/05/2024', 'DD/MM/YYYY'));

-- LIGNE_CDE_CLIENT
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC001', 2, 334.80, 669.60, 111.60, 'CDE001', 'VAR003', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC002', 3, 454.80, 1364.40, 227.40, 'CDE001', 'VAR010', 'ENT003');

-- FACTURE_CLIENT
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC001', TO_DATE('02/05/2024', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00);

-- GENERER_FACT
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC001', 'CDE001');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE002', TO_DATE('03/06/2024', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80, 'paye', 'carte_bancaire', TO_DATE('03/06/2024', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'ADR002', 'ADR002', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE002', 'SCC002', TO_DATE('03/06/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC003', 3, 1438.80, 4316.40, 719.40, 'CDE002', 'VAR005', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC004', 1, 142.80, 142.80, 23.80, 'CDE002', 'VAR012', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC005', 2, 178.80, 357.60, 59.60, 'CDE002', 'VAR019', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC002', TO_DATE('03/06/2024', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC002', 'CDE002');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE003', TO_DATE('04/07/2024', 'DD/MM/YYYY'), 699.00, 139.80, 838.80, 'paye', 'carte_bancaire', TO_DATE('04/07/2024', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'ADR003', 'ADR003', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE003', 'SCC002', TO_DATE('04/07/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC006', 1, 838.80, 838.80, 139.80, 'CDE003', 'VAR007', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC003', TO_DATE('04/07/2024', 'DD/MM/YYYY'), 699.00, 139.80, 838.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC003', 'CDE003');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE004', TO_DATE('05/08/2024', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00, 'paye', 'carte_bancaire', TO_DATE('05/08/2024', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'ADR004', 'ADR004', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE004', 'SCC002', TO_DATE('05/08/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC007', 2, 478.80, 957.60, 159.60, 'CDE004', 'VAR009', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC008', 3, 130.80, 392.40, 65.40, 'CDE004', 'VAR016', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC004', TO_DATE('05/08/2024', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC004', 'CDE004');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE005', TO_DATE('06/09/2024', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80, 'paye', 'carte_bancaire', TO_DATE('06/09/2024', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'ADR005', 'ADR005', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE005', 'SCC002', TO_DATE('06/09/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC009', 3, 334.80, 1004.40, 167.40, 'CDE005', 'VAR011', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC010', 1, 202.80, 202.80, 33.80, 'CDE005', 'VAR018', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC011', 2, 334.80, 669.60, 111.60, 'CDE005', 'VAR025', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC005', TO_DATE('06/09/2024', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC005', 'CDE005');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE006', TO_DATE('07/10/2024', 'DD/MM/YYYY'), 449.00, 89.80, 538.80, 'paye', 'carte_bancaire', TO_DATE('07/10/2024', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'ADR006', 'ADR006', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE006', 'SCC002', TO_DATE('07/10/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC012', 1, 538.80, 538.80, 89.80, 'CDE006', 'VAR013', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC006', TO_DATE('07/10/2024', 'DD/MM/YYYY'), 449.00, 89.80, 538.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC006', 'CDE006');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE007', TO_DATE('08/11/2024', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00, 'paye', 'carte_bancaire', TO_DATE('08/11/2024', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'ADR007', 'ADR007', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE007', 'SCC002', TO_DATE('08/11/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC013', 2, 58.80, 117.60, 19.60, 'CDE007', 'VAR015', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC014', 3, 898.80, 2696.40, 449.40, 'CDE007', 'VAR022', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC007', TO_DATE('08/11/2024', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC007', 'CDE007');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE008', TO_DATE('09/12/2024', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80, 'paye', 'carte_bancaire', TO_DATE('09/12/2024', 'DD/MM/YYYY'), 'adam.robert@example.com', 'ADR008', 'ADR008', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE008', 'SCC002', TO_DATE('09/12/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC015', 3, 142.80, 428.40, 71.40, 'CDE008', 'VAR017', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC016', 1, 238.80, 238.80, 39.80, 'CDE008', 'VAR024', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC017', 2, 994.80, 1989.60, 331.60, 'CDE008', 'VAR001', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC008', TO_DATE('09/12/2024', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC008', 'CDE008');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE009', TO_DATE('10/05/2024', 'DD/MM/YYYY'), 149.00, 29.80, 178.80, 'paye', 'carte_bancaire', TO_DATE('10/05/2024', 'DD/MM/YYYY'), 'jade.petit@example.com', 'ADR009', 'ADR009', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE009', 'SCC002', TO_DATE('10/05/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC018', 1, 178.80, 178.80, 29.80, 'CDE009', 'VAR019', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC009', TO_DATE('10/05/2024', 'DD/MM/YYYY'), 149.00, 29.80, 178.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC009', 'CDE009');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE010', TO_DATE('11/06/2024', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00, 'paye', 'carte_bancaire', TO_DATE('11/06/2024', 'DD/MM/YYYY'), 'noah.roux@example.com', 'ADR010', 'ADR010', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE010', 'SCC002', TO_DATE('11/06/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC019', 2, 40.80, 81.60, 13.60, 'CDE010', 'VAR021', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC020', 3, 1798.80, 5396.40, 899.40, 'CDE010', 'VAR028', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC010', TO_DATE('11/06/2024', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC010', 'CDE010');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE011', TO_DATE('12/07/2024', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80, 'paye', 'carte_bancaire', TO_DATE('12/07/2024', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'ADR001', 'ADR001', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE011', 'SCC002', TO_DATE('12/07/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC021', 3, 1018.80, 3056.40, 509.40, 'CDE011', 'VAR023', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC022', 1, 154.80, 154.80, 25.80, 'CDE011', 'VAR030', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC023', 2, 838.80, 1677.60, 279.60, 'CDE011', 'VAR007', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC011', TO_DATE('12/07/2024', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC011', 'CDE011');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE012', TO_DATE('13/08/2024', 'DD/MM/YYYY'), 279.00, 55.80, 334.80, 'paye', 'carte_bancaire', TO_DATE('13/08/2024', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'ADR002', 'ADR002', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE012', 'SCC002', TO_DATE('13/08/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC024', 1, 334.80, 334.80, 55.80, 'CDE012', 'VAR025', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC012', TO_DATE('13/08/2024', 'DD/MM/YYYY'), 279.00, 55.80, 334.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC012', 'CDE012');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE013', TO_DATE('14/09/2024', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00, 'paye', 'carte_bancaire', TO_DATE('14/09/2024', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'ADR003', 'ADR003', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE013', 'SCC002', TO_DATE('14/09/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC025', 2, 178.80, 357.60, 59.60, 'CDE013', 'VAR027', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC026', 3, 1558.80, 4676.40, 779.40, 'CDE013', 'VAR004', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC013', TO_DATE('14/09/2024', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC013', 'CDE013');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE014', TO_DATE('15/10/2024', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80, 'paye', 'carte_bancaire', TO_DATE('15/10/2024', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'ADR004', 'ADR004', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE014', 'SCC002', TO_DATE('15/10/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC027', 3, 82.80, 248.40, 41.40, 'CDE014', 'VAR029', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC028', 1, 1018.80, 1018.80, 169.80, 'CDE014', 'VAR006', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC029', 2, 538.80, 1077.60, 179.60, 'CDE014', 'VAR013', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC014', TO_DATE('15/10/2024', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC014', 'CDE014');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE015', TO_DATE('16/11/2024', 'DD/MM/YYYY'), 829.00, 165.80, 994.80, 'paye', 'carte_bancaire', TO_DATE('16/11/2024', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'ADR005', 'ADR005', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE015', 'SCC002', TO_DATE('16/11/2024', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC030', 1, 994.80, 994.80, 165.80, 'CDE015', 'VAR001', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC015', TO_DATE('16/11/2024', 'DD/MM/YYYY'), 829.00, 165.80, 994.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC015', 'CDE015');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE016', TO_DATE('02/01/2025', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00, 'paye', 'carte_bancaire', TO_DATE('02/01/2025', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'ADR006', 'ADR006', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE016', 'SCC002', TO_DATE('02/01/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC031', 2, 334.80, 669.60, 111.60, 'CDE016', 'VAR003', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC032', 3, 454.80, 1364.40, 227.40, 'CDE016', 'VAR010', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC016', TO_DATE('02/01/2025', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC016', 'CDE016');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE017', TO_DATE('03/02/2025', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80, 'paye', 'carte_bancaire', TO_DATE('03/02/2025', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'ADR007', 'ADR007', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE017', 'SCC002', TO_DATE('03/02/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC033', 3, 1438.80, 4316.40, 719.40, 'CDE017', 'VAR005', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC034', 1, 142.80, 142.80, 23.80, 'CDE017', 'VAR012', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC035', 2, 178.80, 357.60, 59.60, 'CDE017', 'VAR019', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC017', TO_DATE('03/02/2025', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC017', 'CDE017');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE018', TO_DATE('04/03/2025', 'DD/MM/YYYY'), 699.00, 139.80, 838.80, 'paye', 'carte_bancaire', TO_DATE('04/03/2025', 'DD/MM/YYYY'), 'adam.robert@example.com', 'ADR008', 'ADR008', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE018', 'SCC002', TO_DATE('04/03/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC036', 1, 838.80, 838.80, 139.80, 'CDE018', 'VAR007', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC018', TO_DATE('04/03/2025', 'DD/MM/YYYY'), 699.00, 139.80, 838.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC018', 'CDE018');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE019', TO_DATE('05/04/2025', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00, 'paye', 'carte_bancaire', TO_DATE('05/04/2025', 'DD/MM/YYYY'), 'jade.petit@example.com', 'ADR009', 'ADR009', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE019', 'SCC002', TO_DATE('05/04/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC037', 2, 478.80, 957.60, 159.60, 'CDE019', 'VAR009', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC038', 3, 130.80, 392.40, 65.40, 'CDE019', 'VAR016', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC019', TO_DATE('05/04/2025', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC019', 'CDE019');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE020', TO_DATE('06/05/2025', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80, 'paye', 'carte_bancaire', TO_DATE('06/05/2025', 'DD/MM/YYYY'), 'noah.roux@example.com', 'ADR010', 'ADR010', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE020', 'SCC002', TO_DATE('06/05/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC039', 3, 334.80, 1004.40, 167.40, 'CDE020', 'VAR011', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC040', 1, 202.80, 202.80, 33.80, 'CDE020', 'VAR018', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC041', 2, 334.80, 669.60, 111.60, 'CDE020', 'VAR025', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC020', TO_DATE('06/05/2025', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC020', 'CDE020');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE021', TO_DATE('07/06/2025', 'DD/MM/YYYY'), 449.00, 89.80, 538.80, 'paye', 'carte_bancaire', TO_DATE('07/06/2025', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'ADR001', 'ADR001', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE021', 'SCC002', TO_DATE('07/06/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC042', 1, 538.80, 538.80, 89.80, 'CDE021', 'VAR013', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC021', TO_DATE('07/06/2025', 'DD/MM/YYYY'), 449.00, 89.80, 538.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC021', 'CDE021');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE022', TO_DATE('08/07/2025', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00, 'paye', 'carte_bancaire', TO_DATE('08/07/2025', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'ADR002', 'ADR002', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE022', 'SCC002', TO_DATE('08/07/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC043', 2, 58.80, 117.60, 19.60, 'CDE022', 'VAR015', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC044', 3, 898.80, 2696.40, 449.40, 'CDE022', 'VAR022', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC022', TO_DATE('08/07/2025', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC022', 'CDE022');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE023', TO_DATE('09/08/2025', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80, 'paye', 'carte_bancaire', TO_DATE('09/08/2025', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'ADR003', 'ADR003', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE023', 'SCC002', TO_DATE('09/08/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC045', 3, 142.80, 428.40, 71.40, 'CDE023', 'VAR017', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC046', 1, 238.80, 238.80, 39.80, 'CDE023', 'VAR024', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC047', 2, 994.80, 1989.60, 331.60, 'CDE023', 'VAR001', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC023', TO_DATE('09/08/2025', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC023', 'CDE023');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE024', TO_DATE('10/09/2025', 'DD/MM/YYYY'), 149.00, 29.80, 178.80, 'paye', 'carte_bancaire', TO_DATE('10/09/2025', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'ADR004', 'ADR004', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE024', 'SCC002', TO_DATE('10/09/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC048', 1, 178.80, 178.80, 29.80, 'CDE024', 'VAR019', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC024', TO_DATE('10/09/2025', 'DD/MM/YYYY'), 149.00, 29.80, 178.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC024', 'CDE024');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE025', TO_DATE('11/10/2025', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00, 'paye', 'carte_bancaire', TO_DATE('11/10/2025', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'ADR005', 'ADR005', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE025', 'SCC002', TO_DATE('11/10/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC049', 2, 40.80, 81.60, 13.60, 'CDE025', 'VAR021', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC050', 3, 1798.80, 5396.40, 899.40, 'CDE025', 'VAR028', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC025', TO_DATE('11/10/2025', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC025', 'CDE025');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE026', TO_DATE('12/11/2025', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80, 'paye', 'carte_bancaire', TO_DATE('12/11/2025', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'ADR006', 'ADR006', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE026', 'SCC002', TO_DATE('12/11/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC051', 3, 1018.80, 3056.40, 509.40, 'CDE026', 'VAR023', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC052', 1, 154.80, 154.80, 25.80, 'CDE026', 'VAR030', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC053', 2, 838.80, 1677.60, 279.60, 'CDE026', 'VAR007', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC026', TO_DATE('12/11/2025', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC026', 'CDE026');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE027', TO_DATE('13/12/2025', 'DD/MM/YYYY'), 279.00, 55.80, 334.80, 'paye', 'carte_bancaire', TO_DATE('13/12/2025', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'ADR007', 'ADR007', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE027', 'SCC002', TO_DATE('13/12/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC054', 1, 334.80, 334.80, 55.80, 'CDE027', 'VAR025', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC027', TO_DATE('13/12/2025', 'DD/MM/YYYY'), 279.00, 55.80, 334.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC027', 'CDE027');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE028', TO_DATE('14/01/2025', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00, 'paye', 'carte_bancaire', TO_DATE('14/01/2025', 'DD/MM/YYYY'), 'adam.robert@example.com', 'ADR008', 'ADR008', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE028', 'SCC002', TO_DATE('14/01/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC055', 2, 178.80, 357.60, 59.60, 'CDE028', 'VAR027', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC056', 3, 1558.80, 4676.40, 779.40, 'CDE028', 'VAR004', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC028', TO_DATE('14/01/2025', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC028', 'CDE028');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE029', TO_DATE('15/02/2025', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80, 'paye', 'carte_bancaire', TO_DATE('15/02/2025', 'DD/MM/YYYY'), 'jade.petit@example.com', 'ADR009', 'ADR009', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE029', 'SCC002', TO_DATE('15/02/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC057', 3, 82.80, 248.40, 41.40, 'CDE029', 'VAR029', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC058', 1, 1018.80, 1018.80, 169.80, 'CDE029', 'VAR006', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC059', 2, 538.80, 1077.60, 179.60, 'CDE029', 'VAR013', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC029', TO_DATE('15/02/2025', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC029', 'CDE029');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE030', TO_DATE('16/03/2025', 'DD/MM/YYYY'), 829.00, 165.80, 994.80, 'paye', 'carte_bancaire', TO_DATE('16/03/2025', 'DD/MM/YYYY'), 'noah.roux@example.com', 'ADR010', 'ADR010', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE030', 'SCC002', TO_DATE('16/03/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC060', 1, 994.80, 994.80, 165.80, 'CDE030', 'VAR001', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC030', TO_DATE('16/03/2025', 'DD/MM/YYYY'), 829.00, 165.80, 994.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC030', 'CDE030');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE031', TO_DATE('17/04/2025', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00, 'paye', 'carte_bancaire', TO_DATE('17/04/2025', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'ADR001', 'ADR001', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE031', 'SCC002', TO_DATE('17/04/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC061', 2, 334.80, 669.60, 111.60, 'CDE031', 'VAR003', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC062', 3, 454.80, 1364.40, 227.40, 'CDE031', 'VAR010', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC031', TO_DATE('17/04/2025', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC031', 'CDE031');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE032', TO_DATE('18/05/2025', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80, 'paye', 'carte_bancaire', TO_DATE('18/05/2025', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'ADR002', 'ADR002', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE032', 'SCC002', TO_DATE('18/05/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC063', 3, 1438.80, 4316.40, 719.40, 'CDE032', 'VAR005', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC064', 1, 142.80, 142.80, 23.80, 'CDE032', 'VAR012', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC065', 2, 178.80, 357.60, 59.60, 'CDE032', 'VAR019', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC032', TO_DATE('18/05/2025', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC032', 'CDE032');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE033', TO_DATE('19/06/2025', 'DD/MM/YYYY'), 699.00, 139.80, 838.80, 'paye', 'carte_bancaire', TO_DATE('19/06/2025', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'ADR003', 'ADR003', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE033', 'SCC002', TO_DATE('19/06/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC066', 1, 838.80, 838.80, 139.80, 'CDE033', 'VAR007', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC033', TO_DATE('19/06/2025', 'DD/MM/YYYY'), 699.00, 139.80, 838.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC033', 'CDE033');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE034', TO_DATE('20/07/2025', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00, 'paye', 'carte_bancaire', TO_DATE('20/07/2025', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'ADR004', 'ADR004', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE034', 'SCC002', TO_DATE('20/07/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC067', 2, 478.80, 957.60, 159.60, 'CDE034', 'VAR009', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC068', 3, 130.80, 392.40, 65.40, 'CDE034', 'VAR016', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC034', TO_DATE('20/07/2025', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC034', 'CDE034');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE035', TO_DATE('21/08/2025', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80, 'paye', 'carte_bancaire', TO_DATE('21/08/2025', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'ADR005', 'ADR005', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE035', 'SCC002', TO_DATE('21/08/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC069', 3, 334.80, 1004.40, 167.40, 'CDE035', 'VAR011', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC070', 1, 202.80, 202.80, 33.80, 'CDE035', 'VAR018', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC071', 2, 334.80, 669.60, 111.60, 'CDE035', 'VAR025', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC035', TO_DATE('21/08/2025', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC035', 'CDE035');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE036', TO_DATE('22/09/2025', 'DD/MM/YYYY'), 449.00, 89.80, 538.80, 'paye', 'carte_bancaire', TO_DATE('22/09/2025', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'ADR006', 'ADR006', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE036', 'SCC002', TO_DATE('22/09/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC072', 1, 538.80, 538.80, 89.80, 'CDE036', 'VAR013', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC036', TO_DATE('22/09/2025', 'DD/MM/YYYY'), 449.00, 89.80, 538.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC036', 'CDE036');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE037', TO_DATE('23/10/2025', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00, 'paye', 'carte_bancaire', TO_DATE('23/10/2025', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'ADR007', 'ADR007', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE037', 'SCC002', TO_DATE('23/10/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC073', 2, 58.80, 117.60, 19.60, 'CDE037', 'VAR015', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC074', 3, 898.80, 2696.40, 449.40, 'CDE037', 'VAR022', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC037', TO_DATE('23/10/2025', 'DD/MM/YYYY'), 2345.00, 469.00, 2814.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC037', 'CDE037');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE038', TO_DATE('24/11/2025', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80, 'paye', 'carte_bancaire', TO_DATE('24/11/2025', 'DD/MM/YYYY'), 'adam.robert@example.com', 'ADR008', 'ADR008', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE038', 'SCC002', TO_DATE('24/11/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC075', 3, 142.80, 428.40, 71.40, 'CDE038', 'VAR017', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC076', 1, 238.80, 238.80, 39.80, 'CDE038', 'VAR024', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC077', 2, 994.80, 1989.60, 331.60, 'CDE038', 'VAR001', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC038', TO_DATE('24/11/2025', 'DD/MM/YYYY'), 2214.00, 442.80, 2656.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC038', 'CDE038');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE039', TO_DATE('25/12/2025', 'DD/MM/YYYY'), 149.00, 29.80, 178.80, 'paye', 'carte_bancaire', TO_DATE('25/12/2025', 'DD/MM/YYYY'), 'jade.petit@example.com', 'ADR009', 'ADR009', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE039', 'SCC002', TO_DATE('25/12/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC078', 1, 178.80, 178.80, 29.80, 'CDE039', 'VAR019', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC039', TO_DATE('25/12/2025', 'DD/MM/YYYY'), 149.00, 29.80, 178.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC039', 'CDE039');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE040', TO_DATE('26/01/2025', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00, 'paye', 'carte_bancaire', TO_DATE('26/01/2025', 'DD/MM/YYYY'), 'noah.roux@example.com', 'ADR010', 'ADR010', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE040', 'SCC002', TO_DATE('26/01/2025', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC079', 2, 40.80, 81.60, 13.60, 'CDE040', 'VAR021', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC080', 3, 1798.80, 5396.40, 899.40, 'CDE040', 'VAR028', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC040', TO_DATE('26/01/2025', 'DD/MM/YYYY'), 4565.00, 913.00, 5478.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC040', 'CDE040');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE041', TO_DATE('05/01/2026', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80, 'paye', 'carte_bancaire', TO_DATE('05/01/2026', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'ADR001', 'ADR001', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE041', 'SCC002', TO_DATE('05/01/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC081', 3, 1018.80, 3056.40, 509.40, 'CDE041', 'VAR023', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC082', 1, 154.80, 154.80, 25.80, 'CDE041', 'VAR030', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC083', 2, 838.80, 1677.60, 279.60, 'CDE041', 'VAR007', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC041', TO_DATE('05/01/2026', 'DD/MM/YYYY'), 4074.00, 814.80, 4888.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC041', 'CDE041');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE042', TO_DATE('14/02/2026', 'DD/MM/YYYY'), 279.00, 55.80, 334.80, 'paye', 'carte_bancaire', TO_DATE('14/02/2026', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'ADR002', 'ADR002', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE042', 'SCC002', TO_DATE('14/02/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC084', 1, 334.80, 334.80, 55.80, 'CDE042', 'VAR025', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC042', TO_DATE('14/02/2026', 'DD/MM/YYYY'), 279.00, 55.80, 334.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC042', 'CDE042');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE043', TO_DATE('20/03/2026', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00, 'paye', 'carte_bancaire', TO_DATE('20/03/2026', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'ADR003', 'ADR003', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE043', 'SCC002', TO_DATE('20/03/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC085', 2, 178.80, 357.60, 59.60, 'CDE043', 'VAR027', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC086', 3, 1558.80, 4676.40, 779.40, 'CDE043', 'VAR004', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC043', TO_DATE('20/03/2026', 'DD/MM/YYYY'), 4195.00, 839.00, 5034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC043', 'CDE043');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE044', TO_DATE('10/04/2026', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80, 'paye', 'carte_bancaire', TO_DATE('10/04/2026', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'ADR004', 'ADR004', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE044', 'SCC002', TO_DATE('10/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC087', 3, 82.80, 248.40, 41.40, 'CDE044', 'VAR029', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC088', 1, 1018.80, 1018.80, 169.80, 'CDE044', 'VAR006', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC089', 2, 538.80, 1077.60, 179.60, 'CDE044', 'VAR013', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC044', TO_DATE('10/04/2026', 'DD/MM/YYYY'), 1954.00, 390.80, 2344.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC044', 'CDE044');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE045', TO_DATE('15/04/2026', 'DD/MM/YYYY'), 829.00, 165.80, 994.80, 'paye', 'carte_bancaire', TO_DATE('15/04/2026', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'ADR005', 'ADR005', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE045', 'SCC002', TO_DATE('15/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC090', 1, 994.80, 994.80, 165.80, 'CDE045', 'VAR001', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC045', TO_DATE('15/04/2026', 'DD/MM/YYYY'), 829.00, 165.80, 994.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC045', 'CDE045');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE046', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00, 'paye', 'carte_bancaire', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'ADR006', 'ADR006', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE046', 'SCC002', TO_DATE('29/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC091', 2, 334.80, 669.60, 111.60, 'CDE046', 'VAR003', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC092', 3, 454.80, 1364.40, 227.40, 'CDE046', 'VAR010', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC046', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1695.00, 339.00, 2034.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC046', 'CDE046');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE047', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80, 'paye', 'carte_bancaire', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'ADR007', 'ADR007', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE047', 'SCC002', TO_DATE('29/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC093', 3, 1438.80, 4316.40, 719.40, 'CDE047', 'VAR005', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC094', 1, 142.80, 142.80, 23.80, 'CDE047', 'VAR012', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC095', 2, 178.80, 357.60, 59.60, 'CDE047', 'VAR019', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC047', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 4014.00, 802.80, 4816.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC047', 'CDE047');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE048', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 699.00, 139.80, 838.80, 'paye', 'carte_bancaire', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'adam.robert@example.com', 'ADR008', 'ADR008', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE048', 'SCC002', TO_DATE('29/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC096', 1, 838.80, 838.80, 139.80, 'CDE048', 'VAR007', 'ENT001');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC048', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 699.00, 139.80, 838.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC048', 'CDE048');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE049', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00, 'paye', 'carte_bancaire', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'jade.petit@example.com', 'ADR009', 'ADR009', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE049', 'SCC002', TO_DATE('29/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC097', 2, 478.80, 957.60, 159.60, 'CDE049', 'VAR009', 'ENT002');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC098', 3, 130.80, 392.40, 65.40, 'CDE049', 'VAR016', 'ENT003');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC049', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1125.00, 225.00, 1350.00);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC049', 'CDE049');
INSERT INTO COMMANDE_CLIENT (num_cde_client, date_cde_client, total_ht_cde_client, total_tva_cde_client, total_ttc_cde_client, statut_paiement, mode_paiement, date_paiement, email, id_adresse_LIVRER_A, id_adresse_FACTURER_A, id_utilisateur) VALUES ('CDE050', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80, 'paye', 'carte_bancaire', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'noah.roux@example.com', 'ADR010', 'ADR010', 'USR003');
INSERT INTO AVOIR_STATUT_CDE_CLIENT (num_cde_client, id_statut_cde_client, date_changement_statut_cde_client) VALUES ('CDE050', 'SCC002', TO_DATE('29/04/2026', 'DD/MM/YYYY'));
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC099', 3, 334.80, 1004.40, 167.40, 'CDE050', 'VAR011', 'ENT003');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC100', 1, 202.80, 202.80, 33.80, 'CDE050', 'VAR018', 'ENT001');
INSERT INTO LIGNE_CDE_CLIENT (id_ligne_cde_client, qte_cde_client, prix_unitaire_ttc, totalttc_ligne_cdeclient, totaltva_ligne_cdeclient, num_cde_client, SKU_variante, id_entrepot) VALUES ('LCC101', 2, 334.80, 669.60, 111.60, 'CDE050', 'VAR025', 'ENT002');
INSERT INTO FACTURE_CLIENT (num_fact_client, date_fact_client, total_ht, total_tva, total_ttc) VALUES ('FAC050', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 1564.00, 312.80, 1876.80);
INSERT INTO GENERER_FACT (num_fact_client, num_cde_client) VALUES ('FAC050', 'CDE050');

-- HISTORIQUE_POINTS
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT001', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 21, 'Points apres achat', 'FID001', 'FAC001');

-- BON_REDUCTION
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD001', 10, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID001', 'HPT001');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT002', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 22, 'Points apres achat', 'FID002', 'FAC002');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD002', 15, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID002', 'HPT002');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT003', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 23, 'Points apres achat', 'FID003', 'FAC003');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD003', 5, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID003', 'HPT003');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT004', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 24, 'Points apres achat', 'FID004', 'FAC004');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD004', 10, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID004', 'HPT004');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT005', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 25, 'Points apres achat', 'FID005', 'FAC005');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD005', 15, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID005', 'HPT005');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT006', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 26, 'Points apres achat', 'FID006', 'FAC006');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD006', 5, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID006', 'HPT006');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT007', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 27, 'Points apres achat', 'FID007', 'FAC007');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD007', 10, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID007', 'HPT007');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT008', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 28, 'Points apres achat', 'FID008', 'FAC008');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD008', 15, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID008', 'HPT008');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT009', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 29, 'Points apres achat', 'FID009', 'FAC009');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD009', 5, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID009', 'HPT009');
INSERT INTO HISTORIQUE_POINTS (id_historique_pts_fid, date_event_pts_fid, type_mvmt_pts_fid, nb_pts_fid, motif_mvmt_pts_fid, id_compte_fid, num_fact_client) VALUES ('HPT010', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'credit', 30, 'Points apres achat', 'FID010', 'FAC010');
INSERT INTO BON_REDUCTION (id_bon_reduction, montant_bon_reduc, date_emission_bon_reduc, date_limite_bon_reduc, id_compte_fid, id_historique_pts_fid) VALUES ('BRD010', 10, TO_DATE('29/04/2026', 'DD/MM/YYYY'), TO_DATE('28/07/2026', 'DD/MM/YYYY'), 'FID010', 'HPT010');

-- APPLIQUER_BON_REDUC
INSERT INTO APPLIQUER_BON_REDUC (num_cde_client, id_bon_reduction) VALUES ('CDE041', 'BRD001');
INSERT INTO APPLIQUER_BON_REDUC (num_cde_client, id_bon_reduction) VALUES ('CDE042', 'BRD002');
INSERT INTO APPLIQUER_BON_REDUC (num_cde_client, id_bon_reduction) VALUES ('CDE043', 'BRD003');
INSERT INTO APPLIQUER_BON_REDUC (num_cde_client, id_bon_reduction) VALUES ('CDE044', 'BRD004');
INSERT INTO APPLIQUER_BON_REDUC (num_cde_client, id_bon_reduction) VALUES ('CDE045', 'BRD005');

-- TYPE_PROMOTION
INSERT INTO TYPE_PROMOTION (id_type_promo, libelle_type_promo) VALUES ('TPR001', 'pourcentage');
INSERT INTO TYPE_PROMOTION (id_type_promo, libelle_type_promo) VALUES ('TPR002', 'montant_fixe');
INSERT INTO TYPE_PROMOTION (id_type_promo, libelle_type_promo) VALUES ('TPR003', 'livraison_offerte');

-- PROMOTION
INSERT INTO PROMOTION (code_promo, montant_promo, date_debut, date_fin, quantite_limite, usage_code_promo, id_type_promo) VALUES ('PROMO10', 10, TO_DATE('01/04/2026', 'DD/MM/YYYY'), TO_DATE('30/04/2026', 'DD/MM/YYYY'), 500, 120, 'TPR001');
INSERT INTO PROMOTION (code_promo, montant_promo, date_debut, date_fin, quantite_limite, usage_code_promo, id_type_promo) VALUES ('WELCOME5', 5, TO_DATE('01/01/2026', 'DD/MM/YYYY'), TO_DATE('31/12/2026', 'DD/MM/YYYY'), 1000, 230, 'TPR002');
INSERT INTO PROMOTION (code_promo, montant_promo, date_debut, date_fin, quantite_limite, usage_code_promo, id_type_promo) VALUES ('FREESHIP', 0, TO_DATE('01/03/2026', 'DD/MM/YYYY'), TO_DATE('31/05/2026', 'DD/MM/YYYY'), 300, 45, 'TPR003');

-- CONDITIONS_PROMO
INSERT INTO CONDITIONS_PROMO (id_condition_promo, libelle_condition_promo, detail_condition_promo) VALUES ('CPR001', 'montant minimum', 'Commande superieure a 100 euros');
INSERT INTO CONDITIONS_PROMO (id_condition_promo, libelle_condition_promo, detail_condition_promo) VALUES ('CPR002', 'categorie eligible', 'Selon categorie produit');
INSERT INTO CONDITIONS_PROMO (id_condition_promo, libelle_condition_promo, detail_condition_promo) VALUES ('CPR003', 'client inscrit', 'Compte client obligatoire');

-- AVOIR_CONDITION_PROMO
INSERT INTO AVOIR_CONDITION_PROMO (code_promo, id_condition_promo) VALUES ('PROMO10', 'CPR001');
INSERT INTO AVOIR_CONDITION_PROMO (code_promo, id_condition_promo) VALUES ('PROMO10', 'CPR002');
INSERT INTO AVOIR_CONDITION_PROMO (code_promo, id_condition_promo) VALUES ('WELCOME5', 'CPR003');
INSERT INTO AVOIR_CONDITION_PROMO (code_promo, id_condition_promo) VALUES ('FREESHIP', 'CPR001');

-- APPLIQUE_CDE_PROMO
INSERT INTO APPLIQUE_CDE_PROMO (code_promo, num_cde_client) VALUES ('PROMO10', 'CDE045');
INSERT INTO APPLIQUE_CDE_PROMO (code_promo, num_cde_client) VALUES ('WELCOME5', 'CDE046');
INSERT INTO APPLIQUE_CDE_PROMO (code_promo, num_cde_client) VALUES ('FREESHIP', 'CDE047');

-- APPLIQUE_PROMO_CAT
INSERT INTO APPLIQUE_PROMO_CAT (id_cat_produit, code_promo) VALUES ('CAT004', 'PROMO10');

-- APPLIQUE_PROMO_MARQUE
INSERT INTO APPLIQUE_PROMO_MARQUE (id_marque, code_promo) VALUES ('MRK005', 'PROMO10');

-- APPLIQUE_PROMO_CATALOG
INSERT INTO APPLIQUE_PROMO_CATALOG (id_catalogue, code_promo) VALUES ('CTL005', 'FREESHIP');

-- APPLIQUE_PROMO_PDT
INSERT INTO APPLIQUE_PROMO_PDT (code_promo, SKU_produit) VALUES ('WELCOME5', 'PRD001');

-- TRANSPORTEUR
INSERT INTO TRANSPORTEUR (id_transporteur, nom_transporteur, adr_transporteur) VALUES ('TPS001', 'Colissimo', '9 Rue du Courrier, Paris');
INSERT INTO TRANSPORTEUR (id_transporteur, nom_transporteur, adr_transporteur) VALUES ('TPS002', 'Chronopost', '3 Avenue Express, Lyon');
INSERT INTO TRANSPORTEUR (id_transporteur, nom_transporteur, adr_transporteur) VALUES ('TPS003', 'Mondial Relay', '7 Rue Relais, Lille');

-- GRILLE_TARIFAIRE_TPS
INSERT INTO GRILLE_TARIFAIRE_TPS (id_tarif_tps, poids_min_tps, poids_max_tps, zone_geo_tps, prix_tps_ht, prix_tps_ttc, prix_tps_tva, id_transporteur) VALUES ('GRT001', 0, 5, 'France', 6, 7.20, 1.20, 'TPS001');
INSERT INTO GRILLE_TARIFAIRE_TPS (id_tarif_tps, poids_min_tps, poids_max_tps, zone_geo_tps, prix_tps_ht, prix_tps_ttc, prix_tps_tva, id_transporteur) VALUES ('GRT002', 0, 5, 'France', 7, 8.40, 1.40, 'TPS002');
INSERT INTO GRILLE_TARIFAIRE_TPS (id_tarif_tps, poids_min_tps, poids_max_tps, zone_geo_tps, prix_tps_ht, prix_tps_ttc, prix_tps_tva, id_transporteur) VALUES ('GRT003', 0, 5, 'France', 8, 9.60, 1.60, 'TPS003');

-- COLIS
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS001', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 0.60, 'USR005', 'TPS001');

-- CONTENIR_COLIS
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS001', 'LCC001', 1);

-- PRIS_EN_CHARGE_TPS
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS001', 'TPS001', 8);

-- HISTORIQUE_EVENT_COLIS
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC001', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS001');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS002', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 0.70, 'USR005', 'TPS002');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS002', 'LCC002', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS002', 'TPS002', 9);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC002', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS002');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS003', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 0.80, 'USR005', 'TPS003');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS003', 'LCC003', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS003', 'TPS003', 10);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC003', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS003');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS004', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 0.90, 'USR005', 'TPS001');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS004', 'LCC004', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS004', 'TPS001', 11);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC004', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS004');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS005', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.00, 'USR005', 'TPS002');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS005', 'LCC005', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS005', 'TPS002', 12);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC005', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS005');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS006', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.10, 'USR005', 'TPS003');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS006', 'LCC006', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS006', 'TPS003', 13);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC006', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS006');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS007', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.20, 'USR005', 'TPS001');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS007', 'LCC007', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS007', 'TPS001', 14);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC007', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS007');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS008', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.30, 'USR005', 'TPS002');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS008', 'LCC008', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS008', 'TPS002', 15);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC008', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS008');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS009', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.40, 'USR005', 'TPS003');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS009', 'LCC009', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS009', 'TPS003', 16);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC009', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS009');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS010', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.50, 'USR005', 'TPS001');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS010', 'LCC010', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS010', 'TPS001', 17);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC010', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS010');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS011', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.60, 'USR005', 'TPS002');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS011', 'LCC011', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS011', 'TPS002', 18);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC011', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS011');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS012', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.70, 'USR005', 'TPS003');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS012', 'LCC012', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS012', 'TPS003', 19);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC012', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS012');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS013', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.80, 'USR005', 'TPS001');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS013', 'LCC013', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS013', 'TPS001', 20);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC013', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS013');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS014', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 1.90, 'USR005', 'TPS002');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS014', 'LCC014', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS014', 'TPS002', 21);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC014', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS014');
INSERT INTO COLIS (num_suivi_colis, date_envoi_colis, date_reception_colis, poids_colis, id_utilisateur, id_transporteur) VALUES ('CLS015', TO_DATE('29/04/2026', 'DD/MM/YYYY'), NULL, 2.00, 'USR005', 'TPS003');
INSERT INTO CONTENIR_COLIS (num_suivi_colis, id_ligne_cde_client, qte_expediee_client) VALUES ('CLS015', 'LCC015', 1);
INSERT INTO PRIS_EN_CHARGE_TPS (num_suivi_colis, id_transporteur, tarif_tps_colis) VALUES ('CLS015', 'TPS003', 22);
INSERT INTO HISTORIQUE_EVENT_COLIS (id_event_colis, type_event_colis, date_event_colis, commentaire_event_colis, num_suivi_colis) VALUES ('HEC015', 'pris_en_charge', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'Colis remis au transporteur', 'CLS015');

-- AVIS_CLIENT
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI001', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('02/04/2026', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'VAR002');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI002', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('03/04/2026', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'VAR006');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI003', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('04/04/2026', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'VAR010');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI004', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('05/04/2026', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'VAR014');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI005', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('06/04/2026', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'VAR018');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI006', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('07/04/2026', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'VAR022');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI007', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('08/04/2026', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'VAR026');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI008', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('09/04/2026', 'DD/MM/YYYY'), 'adam.robert@example.com', 'VAR030');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI009', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('10/04/2026', 'DD/MM/YYYY'), 'jade.petit@example.com', 'VAR004');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI010', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('11/04/2026', 'DD/MM/YYYY'), 'noah.roux@example.com', 'VAR008');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI011', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('12/04/2026', 'DD/MM/YYYY'), 'emma.bernard@example.com', 'VAR012');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI012', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('13/04/2026', 'DD/MM/YYYY'), 'hugo.martin@example.com', 'VAR016');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI013', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('14/04/2026', 'DD/MM/YYYY'), 'lea.dubois@example.com', 'VAR020');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI014', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('15/04/2026', 'DD/MM/YYYY'), 'nathan.moreau@example.com', 'VAR024');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI015', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('16/04/2026', 'DD/MM/YYYY'), 'chloe.leroy@example.com', 'VAR028');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI016', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('17/04/2026', 'DD/MM/YYYY'), 'lucas.fournier@example.com', 'VAR002');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI017', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('18/04/2026', 'DD/MM/YYYY'), 'ines.garcia@example.com', 'VAR006');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI018', 3, 'Avis client', 'Produit conforme a la description', TO_DATE('19/04/2026', 'DD/MM/YYYY'), 'adam.robert@example.com', 'VAR010');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI019', 4, 'Avis client', 'Produit conforme a la description', TO_DATE('20/04/2026', 'DD/MM/YYYY'), 'jade.petit@example.com', 'VAR014');
INSERT INTO AVIS_CLIENT (id_avis, note_avis, titre_avis, commentaire_avis, date_avis, email, SKU_variante) VALUES ('AVI020', 5, 'Avis client', 'Produit conforme a la description', TO_DATE('21/04/2026', 'DD/MM/YYYY'), 'noah.roux@example.com', 'VAR018');

-- MODERATION_AVIS
INSERT INTO MODERATION_AVIS (id_type_mod_avis, libelle_type_mod_avis) VALUES ('MOD001', 'en_attente');
INSERT INTO MODERATION_AVIS (id_type_mod_avis, libelle_type_mod_avis) VALUES ('MOD002', 'valide');
INSERT INTO MODERATION_AVIS (id_type_mod_avis, libelle_type_mod_avis) VALUES ('MOD003', 'rejete');

-- HISTORIQUE_MOD_AVIS
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA001', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI001', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA002', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI002', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA003', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI003', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA004', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI004', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA005', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI005', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA006', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI006', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA007', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI007', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA008', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI008', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA009', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI009', 'MOD002', 'USR004');
INSERT INTO HISTORIQUE_MOD_AVIS (id_histo_mod_avis, date_mod_avis, id_avis, id_type_mod_avis, id_utilisateur) VALUES ('HMA010', TO_DATE('29/04/2026', 'DD/MM/YYYY'), 'AVI010', 'MOD002', 'USR004');

COMMIT;

SPOOL OFF ;
