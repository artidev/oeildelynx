/*==============================================================*/
/* Nom de SGBD :  H2                                  */
/* Date de création :  24/09/2013                      */
/*==============================================================*/


drop index ASSOCIATION_29_FK;

drop index AFFAIRE_PK;

drop table AFFAIRE;

drop index AFFAIRE_OBJET2_FK;

drop index AFFAIRE_OBJET_FK;

drop index AFFAIRE_OBJET_PK;

drop table AFFAIRE_OBJET;

drop index ASSOCIATION_37_FK;

drop index ARME_PK;

drop table ARME;

drop index ASSOCIATION_45_FK;

drop index ASSOCIATION_44_FK;

drop index ASSOCIATION_30_PK;

drop table ASSOCIATION_30;

drop index ASSOCIATION_40_FK;

drop index ASSOCIATION_39_FK;

drop index ASSOCIATION_33_PK;

drop table ASSOCIATION_33;

drop index ASSOCIATION_48_FK;

drop index ASSOCIATION_46_FK;

drop index ASSOCIATION_40_PK;

drop table ASSOCIATION_40;

drop index AUTRE_BIEN_PK;

drop table AUTRE_BIEN;

drop index BIENS_PK;

drop table BIENS;

drop index BIENS_RECHERCHES2_FK;

drop index BIENS_RECHERCHES_FK;

drop index BIENS_RECHERCHES_PK;

drop table BIENS_RECHERCHES;

drop index PROFIL_BIOMETRIQUE_PK;

drop table BIOMETRIE;

drop index ASSOCIATION_38_FK;

drop index ASSOCIATION_35_FK;

drop index ASSOCIATION_34_FK;

drop index ASSOCIATION_31_FK;

drop index PRONONCER_FK;

drop index CONDAMNATION_PK;

drop table CONDAMNATION;

drop index AVOIR1_FK;

drop index ETRE8_FK;

drop index CONTACT_PK;

drop table CONTACT;

drop index COULEUR_PK;

drop table COULEUR;

drop index ASSOCIATION_36_FK;

drop index CPC_PK;

drop table CPC;

drop index DATE_PK;

drop table DATE;

drop index REALISER_FK;

drop index REFERENCER_FK;

drop index DECOUVERTE_PK;

drop table DECOUVERTE;

drop index DECOUVERTE_DE_BIEN2_FK;

drop index DECOUVERTE_DE_BIEN_FK;

drop index DECOUVERTE_DE_BIEN_PK;

drop table DECOUVERTE_DE_BIEN;

drop index PERS_DECOUVERTE2_FK;

drop index PERS_DECOUVERTE_FK;

drop index PERS_DECOUVERTE_PK;

drop table DECOUVERTE_DE_PERSONNE;

drop index SIGNALER_FK;

drop index DISPARITION_PK;

drop table DISPARITION;

drop index ASSOCIATION_27_FK;

drop index ETAB_PENITENCIER_PK;

drop table ETAB_PENITENCIER;

drop index ETHNIE_PK;

drop table ETHNIE;

drop index FAMILLE_INFRACTION_PK;

drop table FAMILLE_INFRACTION;

drop index GENRE_PK;

drop table GENRE;

drop index SE_RAPPORTER_FK;

drop index IMAGE_DE_SCEENE_PK;

drop table IMAGE_DE_SCEENE;

drop index IMPLIQUER3_FK;

drop index IMPLIQUER2_FK;

drop index IMPLIQUER_FK;

drop index IMPLIQUER_PK;

drop table IMPLICATIONS;

drop index ASSOCIATION_28_FK;

drop index INDICE_PK;

drop table INDICE;

drop index CLASSER_FK;

drop index INFRACTION_PK;

drop table INFRACTION;

drop index LIER_FK;

drop index EFFECTUER_FK;

drop index PORTER_SUR_FK;

drop index INTERPELLATION_PK;

drop table INTERPELLATION;

drop index JUGEMENT_PK;

drop table JUGEMENT;

drop index ASSOCIATION_26_FK;

drop index JURIDICTION_PK;

drop table JURIDICTION;

drop index ASSOCIATION_47_FK;

drop index ASSOCIATION_33_FK;

drop index ASSOCIATION_25_FK;

drop index ASSOCIATION_25_PK;

drop table LISTE_DETENUS;

drop index SE_TROUVER_FK;

drop index DEPENDRE_FK;

drop index REGROUPER_FK;

drop index LOCALITE_PK;

drop table LOCALITE;

drop index ASSOCIATION_43_FK;

drop index ASSOCIATION_41_FK;

drop index MANDAT_PK;

drop table MANDAT;

drop index MARQUE_PK;

drop table MARQUE;

drop index COMPORTER_FK;

drop index MODELE_PK;

drop table MODELE;

drop index PAYS_PK;

drop table PAYS;

drop index AVOIR_NATIONALITE_FK;

drop index ETRE1_FK;

drop index ETRE_FK;

drop index EXERCER_FK;

drop index APPARTENIR_FK;

drop index PRATIQUER_FK;

drop index NAITRE_FK;

drop index PERSONNE_PK;

drop table PERSONNE;

drop index PERSONNES_RECHERCHEES2_FK;

drop index PERSONNES_RECHERCHEES_FK;

drop index PERSONNES_RECHERCHEES_PK;

drop table PERSONNES_RECHERCHEES;

drop index PROFESSION_PK;

drop table PROFESSION;

drop index DACTYLAIRE_BIOMETRIE2_FK;

drop index DACTYLAIRE_BIOMETRIE_FK;

drop index DACTYLAIRE_BIOMETRIE_PK;

drop table PROFIL_BIOMETRIQUE;

drop index PROFIL_PHOTO_PK;

drop table PROFIL_PHOTO;

drop index ETABLIR_FK;

drop index ASSOCIATION_32_FK;

drop index PV_PK;

drop table PV;

drop index RACE_PK;

drop table RACE;

drop index ASSOCIATION_39_FK2;

drop index LANCER_FK;

drop index RECHERCHE_PK;

drop table RECHERCHE;

drop index REGION_PK;

drop table REGION;

drop index ETRE2_FK;

drop index RELIGION_PK;

drop table RELIGION;

drop index RESIDER3_FK;

drop index RESIDER2_FK;

drop index RESIDER_FK;

drop index RESIDER_PK;

drop table RESIDENCE_PERSONNE;

drop index SIT_MATRIMONIALE_PK;

drop table SIT_MATRIMONIALE;

drop index TYPE_PK;

drop table TYPE;

drop index TYPE_ARME_PK;

drop table TYPE_ARME;

drop index TYPE_CONTACT_PK;

drop table TYPE_CONTACT;

drop index TYPE_MANDANT_PK;

drop table TYPE_MANDANT;

drop index RATTACHER_FK;

drop index SITUER_FK;

drop index UNITE_PK;

drop table UNITE;

drop index ETRE3_FK;

drop index ETRE4_FK;

drop index AVOIR_FK;

drop index VEHICULE_PK;

drop table VEHICULE;

/*==============================================================*/
/* Table : AFFAIRE                                              */
/*==============================================================*/
create table AFFAIRE (
   NUMERO_AFFAIRE       INT4                 not null,
   CODE_LOCALITE        INT4                 not null,
   LIBELLE_AFFAIRE      VARCHAR(100)         null,
   constraint PK_AFFAIRE primary key (NUMERO_AFFAIRE)
);

/*==============================================================*/
/* Index : AFFAIRE_PK                                           */
/*==============================================================*/
create unique index AFFAIRE_PK on AFFAIRE (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Index : ASSOCIATION_29_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_29_FK on AFFAIRE (
CODE_LOCALITE
);

/*==============================================================*/
/* Table : AFFAIRE_OBJET                                        */
/*==============================================================*/
create table AFFAIRE_OBJET (
   NUMERO_AFFAIRE       INT4                 not null,
   NUMERO_BIEN          INT4                 not null,
   constraint PK_AFFAIRE_OBJET primary key (NUMERO_AFFAIRE, NUMERO_BIEN)
);

/*==============================================================*/
/* Index : AFFAIRE_OBJET_PK                                     */
/*==============================================================*/
create unique index AFFAIRE_OBJET_PK on AFFAIRE_OBJET (
NUMERO_AFFAIRE,
NUMERO_BIEN
);

/*==============================================================*/
/* Index : AFFAIRE_OBJET_FK                                     */
/*==============================================================*/
create  index AFFAIRE_OBJET_FK on AFFAIRE_OBJET (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Index : AFFAIRE_OBJET2_FK                                    */
/*==============================================================*/
create  index AFFAIRE_OBJET2_FK on AFFAIRE_OBJET (
NUMERO_BIEN
);

/*==============================================================*/
/* Table : ARME                                                 */
/*==============================================================*/
create table ARME (
   NUMERO_BIEN          INT4                 not null,
   CODE_TYPE_ARME       INT2                 not null,
   DESIGNATION_BIEN     VARCHAR(30)          null,
   CALIBRE              DECIMAL(3,2)         null,
   constraint PK_ARME primary key (NUMERO_BIEN)
);

/*==============================================================*/
/* Index : ARME_PK                                              */
/*==============================================================*/
create unique index ARME_PK on ARME (
NUMERO_BIEN
);

/*==============================================================*/
/* Index : ASSOCIATION_37_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_37_FK on ARME (
CODE_TYPE_ARME
);

/*==============================================================*/
/* Table : ASSOCIATION_30                                       */
/*==============================================================*/
create table ASSOCIATION_30 (
   NUMERO_CPC           INT4                 not null,
   NUMERO_PERS          INT4                 not null,
   DATE_REGLEMENT       MONEY                null,
   constraint PK_ASSOCIATION_30 primary key (NUMERO_CPC, NUMERO_PERS)
);

/*==============================================================*/
/* Index : ASSOCIATION_30_PK                                    */
/*==============================================================*/
create unique index ASSOCIATION_30_PK on ASSOCIATION_30 (
NUMERO_CPC,
NUMERO_PERS
);

/*==============================================================*/
/* Index : ASSOCIATION_44_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_44_FK on ASSOCIATION_30 (
NUMERO_CPC
);

/*==============================================================*/
/* Index : ASSOCIATION_45_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_45_FK on ASSOCIATION_30 (
NUMERO_PERS
);

/*==============================================================*/
/* Table : ASSOCIATION_33                                       */
/*==============================================================*/
create table ASSOCIATION_33 (
   NUMERO_AFFAIRE       INT4                 not null,
   CODE_INFACTION       INT4                 not null,
   constraint PK_ASSOCIATION_33 primary key (NUMERO_AFFAIRE, CODE_INFACTION)
);

/*==============================================================*/
/* Index : ASSOCIATION_33_PK                                    */
/*==============================================================*/
create unique index ASSOCIATION_33_PK on ASSOCIATION_33 (
NUMERO_AFFAIRE,
CODE_INFACTION
);

/*==============================================================*/
/* Index : ASSOCIATION_39_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_39_FK on ASSOCIATION_33 (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Index : ASSOCIATION_40_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_40_FK on ASSOCIATION_33 (
CODE_INFACTION
);

/*==============================================================*/
/* Table : ASSOCIATION_40                                       */
/*==============================================================*/
create table ASSOCIATION_40 (
   NUMERO_PERS          INT4                 not null,
   CODE_PROFIL_PHOTO    INT2                 not null,
   PHOTO                CHAR(254)            null,
   constraint PK_ASSOCIATION_40 primary key (NUMERO_PERS, CODE_PROFIL_PHOTO)
);

/*==============================================================*/
/* Index : ASSOCIATION_40_PK                                    */
/*==============================================================*/
create unique index ASSOCIATION_40_PK on ASSOCIATION_40 (
NUMERO_PERS,
CODE_PROFIL_PHOTO
);

/*==============================================================*/
/* Index : ASSOCIATION_46_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_46_FK on ASSOCIATION_40 (
NUMERO_PERS
);

/*==============================================================*/
/* Index : ASSOCIATION_48_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_48_FK on ASSOCIATION_40 (
CODE_PROFIL_PHOTO
);

/*==============================================================*/
/* Table : AUTRE_BIEN                                           */
/*==============================================================*/
create table AUTRE_BIEN (
   NUMERO_BIEN          INT4                 not null,
   DESIGNATION_BIEN     VARCHAR(30)          null,
   constraint PK_AUTRE_BIEN primary key (NUMERO_BIEN)
);

/*==============================================================*/
/* Index : AUTRE_BIEN_PK                                        */
/*==============================================================*/
create unique index AUTRE_BIEN_PK on AUTRE_BIEN (
NUMERO_BIEN
);

/*==============================================================*/
/* Table : BIENS                                                */
/*==============================================================*/
create table BIENS (
   NUMERO_BIEN          INT4                 not null,
   DESIGNATION_BIEN     VARCHAR(30)          null,
   constraint PK_BIENS primary key (NUMERO_BIEN)
);

/*==============================================================*/
/* Index : BIENS_PK                                             */
/*==============================================================*/
create unique index BIENS_PK on BIENS (
NUMERO_BIEN
);

/*==============================================================*/
/* Table : BIENS_RECHERCHES                                     */
/*==============================================================*/
create table BIENS_RECHERCHES (
   NUMERO_BIEN          INT4                 not null,
   NUMERO_RECHERCHE     INT4                 not null,
   ETAT_BIEN_RECHERCHE  VARCHAR(10)          null,
   constraint PK_BIENS_RECHERCHES primary key (NUMERO_BIEN, NUMERO_RECHERCHE)
);

/*==============================================================*/
/* Index : BIENS_RECHERCHES_PK                                  */
/*==============================================================*/
create unique index BIENS_RECHERCHES_PK on BIENS_RECHERCHES (
NUMERO_BIEN,
NUMERO_RECHERCHE
);

/*==============================================================*/
/* Index : BIENS_RECHERCHES_FK                                  */
/*==============================================================*/
create  index BIENS_RECHERCHES_FK on BIENS_RECHERCHES (
NUMERO_BIEN
);

/*==============================================================*/
/* Index : BIENS_RECHERCHES2_FK                                 */
/*==============================================================*/
create  index BIENS_RECHERCHES2_FK on BIENS_RECHERCHES (
NUMERO_RECHERCHE
);

/*==============================================================*/
/* Table : BIOMETRIE                                            */
/*==============================================================*/
create table BIOMETRIE (
   CODE_MARQUAGE        INT2                 not null,
   NOM_MARQUAGE         VARCHAR(15)          null,
   constraint PK_BIOMETRIE primary key (CODE_MARQUAGE)
);

/*==============================================================*/
/* Index : PROFIL_BIOMETRIQUE_PK                                */
/*==============================================================*/
create unique index PROFIL_BIOMETRIQUE_PK on BIOMETRIE (
CODE_MARQUAGE
);

/*==============================================================*/
/* Table : CONDAMNATION                                         */
/*==============================================================*/
create table CONDAMNATION (
   NUM_CONDAMNATION     INT8                 not null,
   NUMERO_PERS          INT4                 not null,
   CODE_JURIDICTION     INT2                 not null,
   CODE_JUGEMENT        INT2                 not null,
   CODE_INFACTION       INT4                 not null,
   NUMERO_AFFAIRE       INT4                 null,
   PEINE                VARCHAR(10)          null,
   MONTANT_AMENDE       MONEY                null,
   DATE_CONDAMANATION   DATE                 null,
   constraint PK_CONDAMNATION primary key (NUM_CONDAMNATION)
);

/*==============================================================*/
/* Index : CONDAMNATION_PK                                      */
/*==============================================================*/
create unique index CONDAMNATION_PK on CONDAMNATION (
NUM_CONDAMNATION
);

/*==============================================================*/
/* Index : PRONONCER_FK                                         */
/*==============================================================*/
create  index PRONONCER_FK on CONDAMNATION (
CODE_JURIDICTION
);

/*==============================================================*/
/* Index : ASSOCIATION_31_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_31_FK on CONDAMNATION (
CODE_INFACTION
);

/*==============================================================*/
/* Index : ASSOCIATION_34_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_34_FK on CONDAMNATION (
NUMERO_PERS
);

/*==============================================================*/
/* Index : ASSOCIATION_35_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_35_FK on CONDAMNATION (
CODE_JUGEMENT
);

/*==============================================================*/
/* Index : ASSOCIATION_38_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_38_FK on CONDAMNATION (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Table : CONTACT                                              */
/*==============================================================*/
create table CONTACT (
   NUMERO_CONTACT       INT4                 not null,
   CODE_TYPE_CONTACT    INT2                 not null,
   NUMERO_PERS          INT4                 not null,
   CONTACT              VARCHAR(20)          null,
   constraint PK_CONTACT primary key (NUMERO_CONTACT)
);

/*==============================================================*/
/* Index : CONTACT_PK                                           */
/*==============================================================*/
create unique index CONTACT_PK on CONTACT (
NUMERO_CONTACT
);

/*==============================================================*/
/* Index : ETRE8_FK                                             */
/*==============================================================*/
create  index ETRE8_FK on CONTACT (
CODE_TYPE_CONTACT
);

/*==============================================================*/
/* Index : AVOIR1_FK                                            */
/*==============================================================*/
create  index AVOIR1_FK on CONTACT (
NUMERO_PERS
);

/*==============================================================*/
/* Table : COULEUR                                              */
/*==============================================================*/
create table COULEUR (
   CODE_COULEUR         INT2                 not null,
   NOM_COULEUR          VARCHAR(10)          null,
   constraint PK_COULEUR primary key (CODE_COULEUR)
);

/*==============================================================*/
/* Index : COULEUR_PK                                           */
/*==============================================================*/
create unique index COULEUR_PK on COULEUR (
CODE_COULEUR
);

/*==============================================================*/
/* Table : CPC                                                  */
/*==============================================================*/
create table CPC (
   NUMERO_CPC           INT4                 not null,
   NUM_CONDAMNATION     INT8                 not null,
   MONTANT_CPC          MONEY                null,
   DATE_CPC             DATE                 null,
   constraint PK_CPC primary key (NUMERO_CPC)
);

/*==============================================================*/
/* Index : CPC_PK                                               */
/*==============================================================*/
create unique index CPC_PK on CPC (
NUMERO_CPC
);

/*==============================================================*/
/* Index : ASSOCIATION_36_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_36_FK on CPC (
NUM_CONDAMNATION
);

/*==============================================================*/
/* Table : DATE                                                 */
/*==============================================================*/
create table DATE (
   DATE                 DATE                 not null,
   constraint PK_DATE primary key (DATE)
);

/*==============================================================*/
/* Index : DATE_PK                                              */
/*==============================================================*/
create unique index DATE_PK on DATE (
DATE
);

/*==============================================================*/
/* Table : DECOUVERTE                                           */
/*==============================================================*/
create table DECOUVERTE (
   NUMERO_DECOUVERTE    VARCHAR(10)          not null,
   NUMERO_RECHERCHE     INT4                 not null,
   CODE_UNITE           INT4                 not null,
   DATE_DECOUVERTE      DATE                 null,
   OBSERVATIONS         VARCHAR(100)         null,
   constraint PK_DECOUVERTE primary key (NUMERO_DECOUVERTE)
);

/*==============================================================*/
/* Index : DECOUVERTE_PK                                        */
/*==============================================================*/
create unique index DECOUVERTE_PK on DECOUVERTE (
NUMERO_DECOUVERTE
);

/*==============================================================*/
/* Index : REFERENCER_FK                                        */
/*==============================================================*/
create  index REFERENCER_FK on DECOUVERTE (
NUMERO_RECHERCHE
);

/*==============================================================*/
/* Index : REALISER_FK                                          */
/*==============================================================*/
create  index REALISER_FK on DECOUVERTE (
CODE_UNITE
);

/*==============================================================*/
/* Table : DECOUVERTE_DE_BIEN                                   */
/*==============================================================*/
create table DECOUVERTE_DE_BIEN (
   NUMERO_DECOUVERTE    VARCHAR(10)          not null,
   NUMERO_BIEN          INT4                 not null,
   ETAT_BIEN_DECOUVERT  VARCHAR(10)          null,
   constraint PK_DECOUVERTE_DE_BIEN primary key (NUMERO_DECOUVERTE, NUMERO_BIEN)
);

/*==============================================================*/
/* Index : DECOUVERTE_DE_BIEN_PK                                */
/*==============================================================*/
create unique index DECOUVERTE_DE_BIEN_PK on DECOUVERTE_DE_BIEN (
NUMERO_DECOUVERTE,
NUMERO_BIEN
);

/*==============================================================*/
/* Index : DECOUVERTE_DE_BIEN_FK                                */
/*==============================================================*/
create  index DECOUVERTE_DE_BIEN_FK on DECOUVERTE_DE_BIEN (
NUMERO_DECOUVERTE
);

/*==============================================================*/
/* Index : DECOUVERTE_DE_BIEN2_FK                               */
/*==============================================================*/
create  index DECOUVERTE_DE_BIEN2_FK on DECOUVERTE_DE_BIEN (
NUMERO_BIEN
);

/*==============================================================*/
/* Table : DECOUVERTE_DE_PERSONNE                               */
/*==============================================================*/
create table DECOUVERTE_DE_PERSONNE (
   NUMERO_DECOUVERTE    VARCHAR(10)          not null,
   NUMERO_PERS          INT4                 not null,
   ETAT                 VARCHAR(10)          null,
   constraint PK_DECOUVERTE_DE_PERSONNE primary key (NUMERO_DECOUVERTE, NUMERO_PERS)
);

/*==============================================================*/
/* Index : PERS_DECOUVERTE_PK                                   */
/*==============================================================*/
create unique index PERS_DECOUVERTE_PK on DECOUVERTE_DE_PERSONNE (
NUMERO_DECOUVERTE,
NUMERO_PERS
);

/*==============================================================*/
/* Index : PERS_DECOUVERTE_FK                                   */
/*==============================================================*/
create  index PERS_DECOUVERTE_FK on DECOUVERTE_DE_PERSONNE (
NUMERO_DECOUVERTE
);

/*==============================================================*/
/* Index : PERS_DECOUVERTE2_FK                                  */
/*==============================================================*/
create  index PERS_DECOUVERTE2_FK on DECOUVERTE_DE_PERSONNE (
NUMERO_PERS
);

/*==============================================================*/
/* Table : DISPARITION                                          */
/*==============================================================*/
create table DISPARITION (
   NUMERO_DISPARITION   INT8                 not null,
   NUMERO_PERS          INT4                 not null,
   DATE_DISPARITION     DATE                 null,
   CONDITION_DISPARITION VARCHAR(50)          null,
   constraint PK_DISPARITION primary key (NUMERO_DISPARITION)
);

/*==============================================================*/
/* Index : DISPARITION_PK                                       */
/*==============================================================*/
create unique index DISPARITION_PK on DISPARITION (
NUMERO_DISPARITION
);

/*==============================================================*/
/* Index : SIGNALER_FK                                          */
/*==============================================================*/
create  index SIGNALER_FK on DISPARITION (
NUMERO_PERS
);

/*==============================================================*/
/* Table : ETAB_PENITENCIER                                     */
/*==============================================================*/
create table ETAB_PENITENCIER (
   CODE_PENITENCIER     INT2                 not null,
   CODE_LOCALITE        INT4                 not null,
   NOM_PENITENCIER      VARCHAR(40)          null,
   constraint PK_ETAB_PENITENCIER primary key (CODE_PENITENCIER)
);

/*==============================================================*/
/* Index : ETAB_PENITENCIER_PK                                  */
/*==============================================================*/
create unique index ETAB_PENITENCIER_PK on ETAB_PENITENCIER (
CODE_PENITENCIER
);

/*==============================================================*/
/* Index : ASSOCIATION_27_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_27_FK on ETAB_PENITENCIER (
CODE_LOCALITE
);

/*==============================================================*/
/* Table : ETHNIE                                               */
/*==============================================================*/
create table ETHNIE (
   CODE_ETHNIE          INT4                 not null,
   NOM_ETHNIE           VARCHAR(30)          null,
   constraint PK_ETHNIE primary key (CODE_ETHNIE)
);

/*==============================================================*/
/* Index : ETHNIE_PK                                            */
/*==============================================================*/
create unique index ETHNIE_PK on ETHNIE (
CODE_ETHNIE
);

/*==============================================================*/
/* Table : FAMILLE_INFRACTION                                   */
/*==============================================================*/
create table FAMILLE_INFRACTION (
   CODE_CATGORIE        INT4                 not null,
   LIBELLE_CATEGORIE    VARCHAR(50)          null,
   constraint PK_FAMILLE_INFRACTION primary key (CODE_CATGORIE)
);

/*==============================================================*/
/* Index : FAMILLE_INFRACTION_PK                                */
/*==============================================================*/
create unique index FAMILLE_INFRACTION_PK on FAMILLE_INFRACTION (
CODE_CATGORIE
);

/*==============================================================*/
/* Table : GENRE                                                */
/*==============================================================*/
create table GENRE (
   CODE_GENRE           INT4                 not null,
   NOM_GENRE            VARCHAR(8)           null,
   constraint PK_GENRE primary key (CODE_GENRE)
);

/*==============================================================*/
/* Index : GENRE_PK                                             */
/*==============================================================*/
create unique index GENRE_PK on GENRE (
CODE_GENRE
);

/*==============================================================*/
/* Table : IMAGE_DE_SCEENE                                      */
/*==============================================================*/
create table IMAGE_DE_SCEENE (
   NUMERO_IMG           INT8                 not null,
   NUMERO_AFFAIRE       INT4                 not null,
   IMAGE                CHAR(254)            null,
   constraint PK_IMAGE_DE_SCEENE primary key (NUMERO_IMG)
);

/*==============================================================*/
/* Index : IMAGE_DE_SCEENE_PK                                   */
/*==============================================================*/
create unique index IMAGE_DE_SCEENE_PK on IMAGE_DE_SCEENE (
NUMERO_IMG
);

/*==============================================================*/
/* Index : SE_RAPPORTER_FK                                      */
/*==============================================================*/
create  index SE_RAPPORTER_FK on IMAGE_DE_SCEENE (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Table : IMPLICATIONS                                         */
/*==============================================================*/
create table IMPLICATIONS (
   NUMERO_PERS          INT4                 not null,
   CODE_UNITE           INT4                 not null,
   NUMERO_AFFAIRE       INT4                 not null,
   ROLE                 VARCHAR(30)          null,
   constraint PK_IMPLICATIONS primary key (NUMERO_PERS, CODE_UNITE, NUMERO_AFFAIRE)
);

/*==============================================================*/
/* Index : IMPLIQUER_PK                                         */
/*==============================================================*/
create unique index IMPLIQUER_PK on IMPLICATIONS (
NUMERO_PERS,
CODE_UNITE,
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Index : IMPLIQUER_FK                                         */
/*==============================================================*/
create  index IMPLIQUER_FK on IMPLICATIONS (
NUMERO_PERS
);

/*==============================================================*/
/* Index : IMPLIQUER2_FK                                        */
/*==============================================================*/
create  index IMPLIQUER2_FK on IMPLICATIONS (
CODE_UNITE
);

/*==============================================================*/
/* Index : IMPLIQUER3_FK                                        */
/*==============================================================*/
create  index IMPLIQUER3_FK on IMPLICATIONS (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Table : INDICE                                               */
/*==============================================================*/
create table INDICE (
   NUMERO_INDICE        INT4                 not null,
   NUMERO_AFFAIRE       INT4                 not null,
   CODE_INDICE          INT4                 null,
   IMAGE_INDICE         CHAR(254)            null,
   constraint PK_INDICE primary key (NUMERO_INDICE)
);

/*==============================================================*/
/* Index : INDICE_PK                                            */
/*==============================================================*/
create unique index INDICE_PK on INDICE (
NUMERO_INDICE
);

/*==============================================================*/
/* Index : ASSOCIATION_28_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_28_FK on INDICE (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Table : INFRACTION                                           */
/*==============================================================*/
create table INFRACTION (
   CODE_INFACTION       INT4                 not null,
   CODE_CATGORIE        INT4                 not null,
   LIBELLE_INFRACTIO    VARCHAR(100)         null,
   constraint PK_INFRACTION primary key (CODE_INFACTION)
);

/*==============================================================*/
/* Index : INFRACTION_PK                                        */
/*==============================================================*/
create unique index INFRACTION_PK on INFRACTION (
CODE_INFACTION
);

/*==============================================================*/
/* Index : CLASSER_FK                                           */
/*==============================================================*/
create  index CLASSER_FK on INFRACTION (
CODE_CATGORIE
);

/*==============================================================*/
/* Table : INTERPELLATION                                       */
/*==============================================================*/
create table INTERPELLATION (
   NUMERO_INTERP        INT8                 not null,
   CODE_UNITE           INT4                 not null,
   NUMERO_PERS          INT4                 not null,
   NUMERO_AFFAIRE       INT4                 not null,
   DATE_DEBUT_INTERP    DATE                 null,
   DATE_FIN_INTERP      DATE                 null,
   DEFERER              BOOL                 null,
   constraint PK_INTERPELLATION primary key (NUMERO_INTERP)
);

/*==============================================================*/
/* Index : INTERPELLATION_PK                                    */
/*==============================================================*/
create unique index INTERPELLATION_PK on INTERPELLATION (
NUMERO_INTERP
);

/*==============================================================*/
/* Index : PORTER_SUR_FK                                        */
/*==============================================================*/
create  index PORTER_SUR_FK on INTERPELLATION (
NUMERO_PERS
);

/*==============================================================*/
/* Index : EFFECTUER_FK                                         */
/*==============================================================*/
create  index EFFECTUER_FK on INTERPELLATION (
CODE_UNITE
);

/*==============================================================*/
/* Index : LIER_FK                                              */
/*==============================================================*/
create  index LIER_FK on INTERPELLATION (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Table : JUGEMENT                                             */
/*==============================================================*/
create table JUGEMENT (
   CODE_JUGEMENT        INT2                 not null,
   LIBELLE_JUGEMENT     VARCHAR(15)          null,
   constraint PK_JUGEMENT primary key (CODE_JUGEMENT)
);

/*==============================================================*/
/* Index : JUGEMENT_PK                                          */
/*==============================================================*/
create unique index JUGEMENT_PK on JUGEMENT (
CODE_JUGEMENT
);

/*==============================================================*/
/* Table : JURIDICTION                                          */
/*==============================================================*/
create table JURIDICTION (
   CODE_JURIDICTION     INT2                 not null,
   CODE_LOCALITE        INT4                 not null,
   NOM_JURIDICTION      VARCHAR(40)          null,
   constraint PK_JURIDICTION primary key (CODE_JURIDICTION)
);

/*==============================================================*/
/* Index : JURIDICTION_PK                                       */
/*==============================================================*/
create unique index JURIDICTION_PK on JURIDICTION (
CODE_JURIDICTION
);

/*==============================================================*/
/* Index : ASSOCIATION_26_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_26_FK on JURIDICTION (
CODE_LOCALITE
);

/*==============================================================*/
/* Table : LISTE_DETENUS                                        */
/*==============================================================*/
create table LISTE_DETENUS (
   NUMERO_PERS          INT4                 not null,
   CODE_PENITENCIER     INT2                 not null,
   NUMERO_MANDAT        VARCHAR(25)          not null,
   DATE_DEBUT_          DATE                 null,
   DATE_FIN_DETENTION   DATE                 null,
   constraint PK_LISTE_DETENUS primary key (NUMERO_PERS, CODE_PENITENCIER, NUMERO_MANDAT)
);

/*==============================================================*/
/* Index : ASSOCIATION_25_PK                                    */
/*==============================================================*/
create unique index ASSOCIATION_25_PK on LISTE_DETENUS (
NUMERO_PERS,
CODE_PENITENCIER,
NUMERO_MANDAT
);

/*==============================================================*/
/* Index : ASSOCIATION_25_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_25_FK on LISTE_DETENUS (
NUMERO_PERS
);

/*==============================================================*/
/* Index : ASSOCIATION_33_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_33_FK on LISTE_DETENUS (
CODE_PENITENCIER
);

/*==============================================================*/
/* Index : ASSOCIATION_47_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_47_FK on LISTE_DETENUS (
NUMERO_MANDAT
);

/*==============================================================*/
/* Table : LOCALITE                                             */
/*==============================================================*/
create table LOCALITE (
   CODE_LOCALITE        INT4                 not null,
   LOC_CODE_LOCALITE    INT4                 null,
   CODE_PAYS            INT4                 not null,
   CODE_REGION          INT2                 null,
   NOM_LOCALITE         VARCHAR(30)          null,
   constraint PK_LOCALITE primary key (CODE_LOCALITE)
);

/*==============================================================*/
/* Index : LOCALITE_PK                                          */
/*==============================================================*/
create unique index LOCALITE_PK on LOCALITE (
CODE_LOCALITE
);

/*==============================================================*/
/* Index : REGROUPER_FK                                         */
/*==============================================================*/
create  index REGROUPER_FK on LOCALITE (
CODE_REGION
);

/*==============================================================*/
/* Index : DEPENDRE_FK                                          */
/*==============================================================*/
create  index DEPENDRE_FK on LOCALITE (
LOC_CODE_LOCALITE
);

/*==============================================================*/
/* Index : SE_TROUVER_FK                                        */
/*==============================================================*/
create  index SE_TROUVER_FK on LOCALITE (
CODE_PAYS
);

/*==============================================================*/
/* Table : MANDAT                                               */
/*==============================================================*/
create table MANDAT (
   NUMERO_MANDAT        VARCHAR(25)          not null,
   CODE_TYPE_MANDAR     INT2                 not null,
   NUM_CONDAMNATION     INT8                 null,
   DATE_MANDAT          DATE                 null,
   ARCHIVE_MANDAT       CHAR(254)            null,
   constraint PK_MANDAT primary key (NUMERO_MANDAT)
);

/*==============================================================*/
/* Index : MANDAT_PK                                            */
/*==============================================================*/
create unique index MANDAT_PK on MANDAT (
NUMERO_MANDAT
);

/*==============================================================*/
/* Index : ASSOCIATION_41_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_41_FK on MANDAT (
NUM_CONDAMNATION
);

/*==============================================================*/
/* Index : ASSOCIATION_43_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_43_FK on MANDAT (
CODE_TYPE_MANDAR
);

/*==============================================================*/
/* Table : MARQUE                                               */
/*==============================================================*/
create table MARQUE (
   CODE_MARQUE          INT2                 not null,
   NOM_MARQUE           VARCHAR(1)           null,
   constraint PK_MARQUE primary key (CODE_MARQUE)
);

/*==============================================================*/
/* Index : MARQUE_PK                                            */
/*==============================================================*/
create unique index MARQUE_PK on MARQUE (
CODE_MARQUE
);

/*==============================================================*/
/* Table : MODELE                                               */
/*==============================================================*/
create table MODELE (
   CODE_MODELE          INT2                 not null,
   CODE_MARQUE          INT2                 not null,
   NOM_MODELE           VARCHAR(10)          null,
   constraint PK_MODELE primary key (CODE_MODELE)
);

/*==============================================================*/
/* Index : MODELE_PK                                            */
/*==============================================================*/
create unique index MODELE_PK on MODELE (
CODE_MODELE
);

/*==============================================================*/
/* Index : COMPORTER_FK                                         */
/*==============================================================*/
create  index COMPORTER_FK on MODELE (
CODE_MARQUE
);

/*==============================================================*/
/* Table : PAYS                                                 */
/*==============================================================*/
create table PAYS (
   CODE_PAYS            INT4                 not null,
   NOM_PAYS             VARCHAR(30)          null,
   CITOYENETE           VARCHAR(35)          null,
   constraint PK_PAYS primary key (CODE_PAYS)
);

/*==============================================================*/
/* Index : PAYS_PK                                              */
/*==============================================================*/
create unique index PAYS_PK on PAYS (
CODE_PAYS
);

/*==============================================================*/
/* Table : PERSONNE                                             */
/*==============================================================*/
create table PERSONNE (
   NUMERO_PERS          INT4                 not null,
   CODE_PROFESSION      INT4                 not null,
   CODE_ETHNIE          INT4                 not null,
   CODE_LOCALITE        INT4                 not null,
   CODE_RELIGION        INT2                 not null,
   CODE_GENRE           INT4                 not null,
   CODE_PAYS            INT4                 not null,
   CODE_SITUATION       INT2                 not null,
   NOM_PERS             VARCHAR(20)          null,
   PRENOMS_PERS         VARCHAR(40)          null,
   DATE_NAISSANCE_PERSONNE DATE                 null,
   NOM_PRENOMS_PERE     VARCHAR(60)          null,
   NOM_PRENOMS_MERE     VARCHAR(60)          null,
   constraint PK_PERSONNE primary key (NUMERO_PERS)
);

/*==============================================================*/
/* Index : PERSONNE_PK                                          */
/*==============================================================*/
create unique index PERSONNE_PK on PERSONNE (
NUMERO_PERS
);

/*==============================================================*/
/* Index : NAITRE_FK                                            */
/*==============================================================*/
create  index NAITRE_FK on PERSONNE (
CODE_LOCALITE
);

/*==============================================================*/
/* Index : PRATIQUER_FK                                         */
/*==============================================================*/
create  index PRATIQUER_FK on PERSONNE (
CODE_RELIGION
);

/*==============================================================*/
/* Index : APPARTENIR_FK                                        */
/*==============================================================*/
create  index APPARTENIR_FK on PERSONNE (
CODE_ETHNIE
);

/*==============================================================*/
/* Index : EXERCER_FK                                           */
/*==============================================================*/
create  index EXERCER_FK on PERSONNE (
CODE_PROFESSION
);

/*==============================================================*/
/* Index : ETRE_FK                                              */
/*==============================================================*/
create  index ETRE_FK on PERSONNE (
CODE_SITUATION
);

/*==============================================================*/
/* Index : ETRE1_FK                                             */
/*==============================================================*/
create  index ETRE1_FK on PERSONNE (
CODE_GENRE
);

/*==============================================================*/
/* Index : AVOIR_NATIONALITE_FK                                 */
/*==============================================================*/
create  index AVOIR_NATIONALITE_FK on PERSONNE (
CODE_PAYS
);

/*==============================================================*/
/* Table : PERSONNES_RECHERCHEES                                */
/*==============================================================*/
create table PERSONNES_RECHERCHEES (
   NUMERO_RECHERCHE     INT4                 not null,
   NUMERO_PERS          INT4                 not null,
   constraint PK_PERSONNES_RECHERCHEES primary key (NUMERO_RECHERCHE, NUMERO_PERS)
);

/*==============================================================*/
/* Index : PERSONNES_RECHERCHEES_PK                             */
/*==============================================================*/
create unique index PERSONNES_RECHERCHEES_PK on PERSONNES_RECHERCHEES (
NUMERO_RECHERCHE,
NUMERO_PERS
);

/*==============================================================*/
/* Index : PERSONNES_RECHERCHEES_FK                             */
/*==============================================================*/
create  index PERSONNES_RECHERCHEES_FK on PERSONNES_RECHERCHEES (
NUMERO_RECHERCHE
);

/*==============================================================*/
/* Index : PERSONNES_RECHERCHEES2_FK                            */
/*==============================================================*/
create  index PERSONNES_RECHERCHEES2_FK on PERSONNES_RECHERCHEES (
NUMERO_PERS
);

/*==============================================================*/
/* Table : PROFESSION                                           */
/*==============================================================*/
create table PROFESSION (
   CODE_PROFESSION      INT4                 not null,
   LIBELLE_PROFESSION   VARCHAR(30)          null,
   constraint PK_PROFESSION primary key (CODE_PROFESSION)
);

/*==============================================================*/
/* Index : PROFESSION_PK                                        */
/*==============================================================*/
create unique index PROFESSION_PK on PROFESSION (
CODE_PROFESSION
);

/*==============================================================*/
/* Table : PROFIL_BIOMETRIQUE                                   */
/*==============================================================*/
create table PROFIL_BIOMETRIQUE (
   CODE_MARQUAGE        INT2                 not null,
   NUMERO_PERS          INT4                 not null,
   VALEUR               INT8                 null,
   IMAGE_PROFILE        CHAR(254)            null,
   constraint PK_PROFIL_BIOMETRIQUE primary key (CODE_MARQUAGE, NUMERO_PERS)
);

/*==============================================================*/
/* Index : DACTYLAIRE_BIOMETRIE_PK                              */
/*==============================================================*/
create unique index DACTYLAIRE_BIOMETRIE_PK on PROFIL_BIOMETRIQUE (
CODE_MARQUAGE,
NUMERO_PERS
);

/*==============================================================*/
/* Index : DACTYLAIRE_BIOMETRIE_FK                              */
/*==============================================================*/
create  index DACTYLAIRE_BIOMETRIE_FK on PROFIL_BIOMETRIQUE (
CODE_MARQUAGE
);

/*==============================================================*/
/* Index : DACTYLAIRE_BIOMETRIE2_FK                             */
/*==============================================================*/
create  index DACTYLAIRE_BIOMETRIE2_FK on PROFIL_BIOMETRIQUE (
NUMERO_PERS
);

/*==============================================================*/
/* Table : PROFIL_PHOTO                                         */
/*==============================================================*/
create table PROFIL_PHOTO (
   CODE_PROFIL_PHOTO    INT2                 not null,
   LIBELLE_PROFIL_PHOTO VARCHAR(10)          null,
   constraint PK_PROFIL_PHOTO primary key (CODE_PROFIL_PHOTO)
);

/*==============================================================*/
/* Index : PROFIL_PHOTO_PK                                      */
/*==============================================================*/
create unique index PROFIL_PHOTO_PK on PROFIL_PHOTO (
CODE_PROFIL_PHOTO
);

/*==============================================================*/
/* Table : PV                                                   */
/*==============================================================*/
create table PV (
   NUMERO_PV            VARCHAR(10)          not null,
   NUMERO_AFFAIRE       INT4                 not null,
   CODE_UNITE           INT4                 not null,
   ANALYSE_PV           VARCHAR(100)         null,
   DATE_PV              DATE                 null,
   ARCHIVE_PV           CHAR(254)            null,
   constraint PK_PV primary key (NUMERO_PV)
);

/*==============================================================*/
/* Index : PV_PK                                                */
/*==============================================================*/
create unique index PV_PK on PV (
NUMERO_PV
);

/*==============================================================*/
/* Index : ASSOCIATION_32_FK                                    */
/*==============================================================*/
create  index ASSOCIATION_32_FK on PV (
NUMERO_AFFAIRE
);

/*==============================================================*/
/* Index : ETABLIR_FK                                           */
/*==============================================================*/
create  index ETABLIR_FK on PV (
CODE_UNITE
);

/*==============================================================*/
/* Table : RACE                                                 */
/*==============================================================*/
create table RACE (
   CODE_RACE            INT2                 not null,
   LIBELLE_RACE         VARCHAR(10)          null,
   constraint PK_RACE primary key (CODE_RACE)
);

/*==============================================================*/
/* Index : RACE_PK                                              */
/*==============================================================*/
create unique index RACE_PK on RACE (
CODE_RACE
);

/*==============================================================*/
/* Table : RECHERCHE                                            */
/*==============================================================*/
create table RECHERCHE (
   NUMERO_RECHERCHE     INT4                 not null,
   CODE_INFACTION       INT4                 null,
   NUMERO_MANDAT        VARCHAR(25)          null,
   CODE_UNITE           INT4                 null,
   DATE_LANCEMENT       DATE                 null,
   CAS_DECOUVERTE       VARCHAR(100)         null,
   constraint PK_RECHERCHE primary key (NUMERO_RECHERCHE)
);

/*==============================================================*/
/* Index : RECHERCHE_PK                                         */
/*==============================================================*/
create unique index RECHERCHE_PK on RECHERCHE (
NUMERO_RECHERCHE
);

/*==============================================================*/
/* Index : LANCER_FK                                            */
/*==============================================================*/
create  index LANCER_FK on RECHERCHE (
CODE_UNITE
);

/*==============================================================*/
/* Index : ASSOCIATION_39_FK2                                   */
/*==============================================================*/
create  index ASSOCIATION_39_FK2 on RECHERCHE (
CODE_INFACTION
);

/*==============================================================*/
/* Table : REGION                                               */
/*==============================================================*/
create table REGION (
   CODE_REGION          INT2                 not null,
   NOM_REGION           VARCHAR(15)          null,
   constraint PK_REGION primary key (CODE_REGION)
);

/*==============================================================*/
/* Index : REGION_PK                                            */
/*==============================================================*/
create unique index REGION_PK on REGION (
CODE_REGION
);

/*==============================================================*/
/* Table : RELIGION                                             */
/*==============================================================*/
create table RELIGION (
   CODE_RELIGION        INT2                 not null,
   CODE_RACE            INT2                 not null,
   LIBELLE_RELIGION     VARCHAR(15)          null,
   constraint PK_RELIGION primary key (CODE_RELIGION)
);

/*==============================================================*/
/* Index : RELIGION_PK                                          */
/*==============================================================*/
create unique index RELIGION_PK on RELIGION (
CODE_RELIGION
);

/*==============================================================*/
/* Index : ETRE2_FK                                             */
/*==============================================================*/
create  index ETRE2_FK on RELIGION (
CODE_RACE
);

/*==============================================================*/
/* Table : RESIDENCE_PERSONNE                                   */
/*==============================================================*/
create table RESIDENCE_PERSONNE (
   NUMERO_PERS          INT4                 not null,
   CODE_LOCALITE        INT4                 not null,
   DATE                 DATE                 not null,
   constraint PK_RESIDENCE_PERSONNE primary key (NUMERO_PERS, CODE_LOCALITE, DATE)
);

/*==============================================================*/
/* Index : RESIDER_PK                                           */
/*==============================================================*/
create unique index RESIDER_PK on RESIDENCE_PERSONNE (
NUMERO_PERS,
CODE_LOCALITE,
DATE
);

/*==============================================================*/
/* Index : RESIDER_FK                                           */
/*==============================================================*/
create  index RESIDER_FK on RESIDENCE_PERSONNE (
NUMERO_PERS
);

/*==============================================================*/
/* Index : RESIDER2_FK                                          */
/*==============================================================*/
create  index RESIDER2_FK on RESIDENCE_PERSONNE (
CODE_LOCALITE
);

/*==============================================================*/
/* Index : RESIDER3_FK                                          */
/*==============================================================*/
create  index RESIDER3_FK on RESIDENCE_PERSONNE (
DATE
);

/*==============================================================*/
/* Table : SIT_MATRIMONIALE                                     */
/*==============================================================*/
create table SIT_MATRIMONIALE (
   CODE_SITUATION       INT2                 not null,
   NOM_SITUATION        VARCHAR(11)          null,
   constraint PK_SIT_MATRIMONIALE primary key (CODE_SITUATION)
);

/*==============================================================*/
/* Index : SIT_MATRIMONIALE_PK                                  */
/*==============================================================*/
create unique index SIT_MATRIMONIALE_PK on SIT_MATRIMONIALE (
CODE_SITUATION
);

/*==============================================================*/
/* Table : TYPE                                                 */
/*==============================================================*/
create table TYPE (
   CODE_TYPE            INT2                 not null,
   NOM_TYPE             VARCHAR(10)          null,
   constraint PK_TYPE primary key (CODE_TYPE)
);

/*==============================================================*/
/* Index : TYPE_PK                                              */
/*==============================================================*/
create unique index TYPE_PK on TYPE (
CODE_TYPE
);

/*==============================================================*/
/* Table : TYPE_ARME                                            */
/*==============================================================*/
create table TYPE_ARME (
   CODE_TYPE_ARME       INT2                 not null,
   NOM_TYPE_ARME        VARCHAR(1)           null,
   constraint PK_TYPE_ARME primary key (CODE_TYPE_ARME)
);

/*==============================================================*/
/* Index : TYPE_ARME_PK                                         */
/*==============================================================*/
create unique index TYPE_ARME_PK on TYPE_ARME (
CODE_TYPE_ARME
);

/*==============================================================*/
/* Table : TYPE_CONTACT                                         */
/*==============================================================*/
create table TYPE_CONTACT (
   CODE_TYPE_CONTACT    INT2                 not null,
   NOM_TYPE_CONTACT     VARCHAR(20)          null,
   constraint PK_TYPE_CONTACT primary key (CODE_TYPE_CONTACT)
);

/*==============================================================*/
/* Index : TYPE_CONTACT_PK                                      */
/*==============================================================*/
create unique index TYPE_CONTACT_PK on TYPE_CONTACT (
CODE_TYPE_CONTACT
);

/*==============================================================*/
/* Table : TYPE_MANDANT                                         */
/*==============================================================*/
create table TYPE_MANDANT (
   CODE_TYPE_MANDAR     INT2                 not null,
   NOM_TYPE_MANDAT      VARCHAR(10)          null,
   constraint PK_TYPE_MANDANT primary key (CODE_TYPE_MANDAR)
);

/*==============================================================*/
/* Index : TYPE_MANDANT_PK                                      */
/*==============================================================*/
create unique index TYPE_MANDANT_PK on TYPE_MANDANT (
CODE_TYPE_MANDAR
);

/*==============================================================*/
/* Table : UNITE                                                */
/*==============================================================*/
create table UNITE (
   CODE_UNITE           INT4                 not null,
   UNI_CODE_UNITE       INT4                 null,
   CODE_LOCALITE        INT4                 not null,
   NOM_UNITE            VARCHAR(50)          null,
   constraint PK_UNITE primary key (CODE_UNITE)
);

/*==============================================================*/
/* Index : UNITE_PK                                             */
/*==============================================================*/
create unique index UNITE_PK on UNITE (
CODE_UNITE
);

/*==============================================================*/
/* Index : SITUER_FK                                            */
/*==============================================================*/
create  index SITUER_FK on UNITE (
CODE_LOCALITE
);

/*==============================================================*/
/* Index : RATTACHER_FK                                         */
/*==============================================================*/
create  index RATTACHER_FK on UNITE (
UNI_CODE_UNITE
);

/*==============================================================*/
/* Table : VEHICULE                                             */
/*==============================================================*/
create table VEHICULE (
   NUMERO_BIEN          INT4                 not null,
   CODE_TYPE            INT2                 not null,
   CODE_COULEUR         INT2                 not null,
   CODE_MODELE          INT2                 not null,
   DESIGNATION_BIEN     VARCHAR(30)          null,
   IMMATRICULATION      VARCHAR(10)          not null,
   NUMERO_CHASSIS       VARCHAR(10)          null,
   constraint PK_VEHICULE primary key (NUMERO_BIEN)
);

/*==============================================================*/
/* Index : VEHICULE_PK                                          */
/*==============================================================*/
create unique index VEHICULE_PK on VEHICULE (
NUMERO_BIEN
);

/*==============================================================*/
/* Index : AVOIR_FK                                             */
/*==============================================================*/
create  index AVOIR_FK on VEHICULE (
CODE_COULEUR
);

/*==============================================================*/
/* Index : ETRE4_FK                                             */
/*==============================================================*/
create  index ETRE4_FK on VEHICULE (
CODE_TYPE
);

/*==============================================================*/
/* Index : ETRE3_FK                                             */
/*==============================================================*/
create  index ETRE3_FK on VEHICULE (
CODE_MODELE
);

alter table AFFAIRE
   add constraint FK_AFFAIRE_ASSOCIATI_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table AFFAIRE_OBJET
   add constraint FK_AFFAIRE__AFFAIRE_O_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table AFFAIRE_OBJET
   add constraint FK_AFFAIRE__AFFAIRE_O_BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

alter table ARME
   add constraint FK_ARME_ASSOCIATI_TYPE_ARM foreign key (CODE_TYPE_ARME)
      references TYPE_ARME (CODE_TYPE_ARME)
      on delete restrict on update restrict;

alter table ARME
   add constraint FK_ARME_HERITAGE__BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

alter table ASSOCIATION_30
   add constraint FK_ASSOCIAT_ASSOCIATI_CPC foreign key (NUMERO_CPC)
      references CPC (NUMERO_CPC)
      on delete restrict on update restrict;

alter table ASSOCIATION_30
   add constraint FK_ASSOCIAT_ASSOCIATI_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table ASSOCIATION_33
   add constraint FK_ASSOCIAT_ASSOCIATI_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table ASSOCIATION_33
   add constraint FK_ASSOCIAT_ASSOCIATI_INFRACTI foreign key (CODE_INFACTION)
      references INFRACTION (CODE_INFACTION)
      on delete restrict on update restrict;

alter table ASSOCIATION_40
   add constraint FK_ASSOCIAT_ASSOCIATI_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table ASSOCIATION_40
   add constraint FK_ASSOCIAT_ASSOCIATI_PROFIL_P foreign key (CODE_PROFIL_PHOTO)
      references PROFIL_PHOTO (CODE_PROFIL_PHOTO)
      on delete restrict on update restrict;

alter table AUTRE_BIEN
   add constraint FK_AUTRE_BI_HERITAGE__BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

alter table BIENS_RECHERCHES
   add constraint FK_BIENS_RE_BIENS_REC_BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

alter table BIENS_RECHERCHES
   add constraint FK_BIENS_RE_BIENS_REC_RECHERCH foreign key (NUMERO_RECHERCHE)
      references RECHERCHE (NUMERO_RECHERCHE)
      on delete restrict on update restrict;

alter table CONDAMNATION
   add constraint FK_CONDAMNA_ASSOCIATI_INFRACTI foreign key (CODE_INFACTION)
      references INFRACTION (CODE_INFACTION)
      on delete restrict on update restrict;

alter table CONDAMNATION
   add constraint FK_CONDAMNA_ASSOCIATI_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table CONDAMNATION
   add constraint FK_CONDAMNA_ASSOCIATI_JUGEMENT foreign key (CODE_JUGEMENT)
      references JUGEMENT (CODE_JUGEMENT)
      on delete restrict on update restrict;

alter table CONDAMNATION
   add constraint FK_CONDAMNA_ASSOCIATI_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table CONDAMNATION
   add constraint FK_CONDAMNA_PRONONCER_JURIDICT foreign key (CODE_JURIDICTION)
      references JURIDICTION (CODE_JURIDICTION)
      on delete restrict on update restrict;

alter table CONTACT
   add constraint FK_CONTACT_AVOIR1_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table CONTACT
   add constraint FK_CONTACT_ETRE8_TYPE_CON foreign key (CODE_TYPE_CONTACT)
      references TYPE_CONTACT (CODE_TYPE_CONTACT)
      on delete restrict on update restrict;

alter table CPC
   add constraint FK_CPC_ASSOCIATI_CONDAMNA foreign key (NUM_CONDAMNATION)
      references CONDAMNATION (NUM_CONDAMNATION)
      on delete restrict on update restrict;

alter table DECOUVERTE
   add constraint FK_DECOUVER_REALISER_UNITE foreign key (CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table DECOUVERTE
   add constraint FK_DECOUVER_REFERENCE_RECHERCH foreign key (NUMERO_RECHERCHE)
      references RECHERCHE (NUMERO_RECHERCHE)
      on delete restrict on update restrict;

alter table DECOUVERTE_DE_BIEN
   add constraint FK_DECOUVER_DECOUVERT_DECOUVER foreign key (NUMERO_DECOUVERTE)
      references DECOUVERTE (NUMERO_DECOUVERTE)
      on delete restrict on update restrict;

alter table DECOUVERTE_DE_BIEN
   add constraint FK_DECOUVER_DECOUVERT_BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

alter table DECOUVERTE_DE_PERSONNE
   add constraint FK_DECOUVER_DECOUVERT_DECOUVER foreign key (NUMERO_DECOUVERTE)
      references DECOUVERTE (NUMERO_DECOUVERTE)
      on delete restrict on update restrict;

alter table DECOUVERTE_DE_PERSONNE
   add constraint FK_DECOUVER_DECOUVERT_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table DISPARITION
   add constraint FK_DISPARIT_SIGNALER_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table ETAB_PENITENCIER
   add constraint FK_ETAB_PEN_ASSOCIATI_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table IMAGE_DE_SCEENE
   add constraint FK_IMAGE_DE_SE_RAPPOR_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table IMPLICATIONS
   add constraint FK_IMPLICAT_IMPLICATI_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table IMPLICATIONS
   add constraint FK_IMPLICAT_IMPLICATI_UNITE foreign key (CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table IMPLICATIONS
   add constraint FK_IMPLICAT_IMPLICATI_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table INDICE
   add constraint FK_INDICE_ASSOCIATI_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table INFRACTION
   add constraint FK_INFRACTI_CLASSER_FAMILLE_ foreign key (CODE_CATGORIE)
      references FAMILLE_INFRACTION (CODE_CATGORIE)
      on delete restrict on update restrict;

alter table INTERPELLATION
   add constraint FK_INTERPEL_EFFECTUER_UNITE foreign key (CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table INTERPELLATION
   add constraint FK_INTERPEL_LIER_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table INTERPELLATION
   add constraint FK_INTERPEL_PORTER_SU_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table JURIDICTION
   add constraint FK_JURIDICT_ASSOCIATI_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table LISTE_DETENUS
   add constraint FK_LISTE_DE_LISTE_DET_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table LISTE_DETENUS
   add constraint FK_LISTE_DE_LISTE_DET_ETAB_PEN foreign key (CODE_PENITENCIER)
      references ETAB_PENITENCIER (CODE_PENITENCIER)
      on delete restrict on update restrict;

alter table LISTE_DETENUS
   add constraint FK_LISTE_DE_LISTE_DET_MANDAT foreign key (NUMERO_MANDAT)
      references MANDAT (NUMERO_MANDAT)
      on delete restrict on update restrict;

alter table LOCALITE
   add constraint FK_LOCALITE_DEPENDRE_LOCALITE foreign key (LOC_CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table LOCALITE
   add constraint FK_LOCALITE_REGROUPER_REGION foreign key (CODE_REGION)
      references REGION (CODE_REGION)
      on delete restrict on update restrict;

alter table LOCALITE
   add constraint FK_LOCALITE_SE_TROUVE_PAYS foreign key (CODE_PAYS)
      references PAYS (CODE_PAYS)
      on delete restrict on update restrict;

alter table MANDAT
   add constraint FK_MANDAT_ASSOCIATI_CONDAMNA foreign key (NUM_CONDAMNATION)
      references CONDAMNATION (NUM_CONDAMNATION)
      on delete restrict on update restrict;

alter table MANDAT
   add constraint FK_MANDAT_ASSOCIATI_TYPE_MAN foreign key (CODE_TYPE_MANDAR)
      references TYPE_MANDANT (CODE_TYPE_MANDAR)
      on delete restrict on update restrict;

alter table MODELE
   add constraint FK_MODELE_COMPORTER_MARQUE foreign key (CODE_MARQUE)
      references MARQUE (CODE_MARQUE)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_APPARTENI_ETHNIE foreign key (CODE_ETHNIE)
      references ETHNIE (CODE_ETHNIE)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_AVOIR_NAT_PAYS foreign key (CODE_PAYS)
      references PAYS (CODE_PAYS)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_ETRE_SIT_MATR foreign key (CODE_SITUATION)
      references SIT_MATRIMONIALE (CODE_SITUATION)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_ETRE1_GENRE foreign key (CODE_GENRE)
      references GENRE (CODE_GENRE)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_EXERCER_PROFESSI foreign key (CODE_PROFESSION)
      references PROFESSION (CODE_PROFESSION)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_NAITRE_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table PERSONNE
   add constraint FK_PERSONNE_PRATIQUER_RELIGION foreign key (CODE_RELIGION)
      references RELIGION (CODE_RELIGION)
      on delete restrict on update restrict;

alter table PERSONNES_RECHERCHEES
   add constraint FK_RECHERCH_RECHERCHE_RECHERCH2 foreign key (NUMERO_RECHERCHE)
      references RECHERCHE (NUMERO_RECHERCHE)
      on delete restrict on update restrict;

alter table PERSONNES_RECHERCHEES
   add constraint FK_PERSONNE_PERSONNES_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table PROFIL_BIOMETRIQUE
   add constraint FK_PROFIL_B_PROFIL_BI_BIOMETRI foreign key (CODE_MARQUAGE)
      references BIOMETRIE (CODE_MARQUAGE)
      on delete restrict on update restrict;

alter table PROFIL_BIOMETRIQUE
   add constraint FK_PROFIL_B_PROFIL_BI_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table PV
   add constraint FK_PV_ASSOCIATI_AFFAIRE foreign key (NUMERO_AFFAIRE)
      references AFFAIRE (NUMERO_AFFAIRE)
      on delete restrict on update restrict;

alter table PV
   add constraint FK_PV_ETABLIR_UNITE foreign key (CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table RECHERCHE
   add constraint FK_RECHERCH_ASSOCIATI_INFRACTI foreign key (CODE_INFACTION)
      references INFRACTION (CODE_INFACTION)
      on delete restrict on update restrict;

alter table RECHERCHE
   add constraint FK_RECHERCH_ASSOCIATI_MANDAT foreign key (NUMERO_MANDAT)
      references MANDAT (NUMERO_MANDAT)
      on delete restrict on update restrict;

alter table RECHERCHE
   add constraint FK_RECHERCH_LANCER_UNITE foreign key (CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table RELIGION
   add constraint FK_RELIGION_ETRE2_RACE foreign key (CODE_RACE)
      references RACE (CODE_RACE)
      on delete restrict on update restrict;

alter table RESIDENCE_PERSONNE
   add constraint FK_RESIDENC_RESIDENCE_PERSONNE foreign key (NUMERO_PERS)
      references PERSONNE (NUMERO_PERS)
      on delete restrict on update restrict;

alter table RESIDENCE_PERSONNE
   add constraint FK_RESIDENC_RESIDENCE_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table RESIDENCE_PERSONNE
   add constraint FK_RESIDENC_RESIDENCE_DATE foreign key (DATE)
      references DATE (DATE)
      on delete restrict on update restrict;

alter table UNITE
   add constraint FK_UNITE_RATTACHER_UNITE foreign key (UNI_CODE_UNITE)
      references UNITE (CODE_UNITE)
      on delete restrict on update restrict;

alter table UNITE
   add constraint FK_UNITE_SITUER_LOCALITE foreign key (CODE_LOCALITE)
      references LOCALITE (CODE_LOCALITE)
      on delete restrict on update restrict;

alter table VEHICULE
   add constraint FK_VEHICULE_AVOIR_COULEUR foreign key (CODE_COULEUR)
      references COULEUR (CODE_COULEUR)
      on delete restrict on update restrict;

alter table VEHICULE
   add constraint FK_VEHICULE_ETRE3_MODELE foreign key (CODE_MODELE)
      references MODELE (CODE_MODELE)
      on delete restrict on update restrict;

alter table VEHICULE
   add constraint FK_VEHICULE_ETRE4_TYPE foreign key (CODE_TYPE)
      references TYPE (CODE_TYPE)
      on delete restrict on update restrict;

alter table VEHICULE
   add constraint FK_VEHICULE_HERITAGE__BIENS foreign key (NUMERO_BIEN)
      references BIENS (NUMERO_BIEN)
      on delete restrict on update restrict;

