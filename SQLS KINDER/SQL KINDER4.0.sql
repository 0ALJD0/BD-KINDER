/*==============================================================*/
/* DBMS name:      DBMS KÍNDER BY ARCE PONCE BRYAN WITH POWERDESIGNER */
/* Created on:     15/11/2021 16:34:48                          */
/*==============================================================*/
/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD (
   ID_ACTIVIDAD         SERIAL               not null,
   ID_PROGRAMA          INT4                 not null,
   NOMBRE_AVTIVI        VARCHAR(60)          not null,
   DESCRIPCION_ACTIVI   TEXT                 not null,
   DURACION_ACTIVI      INT4                 not null,
   constraint PK_ACTIVIDAD primary key (ID_ACTIVIDAD)
);

/*==============================================================*/
/* Index: ACTIVIDAD_PK                                          */
/*==============================================================*/
create unique index ACTIVIDAD_PK on ACTIVIDAD (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create  index PERTENECE_FK on ACTIVIDAD (
ID_PROGRAMA
);

/*==============================================================*/
/* Table: ALERGIAS                                              */
/*==============================================================*/
create table ALERGIAS (
   ID_ALERGIA           SERIAL               not null,
   NOMBRE_ALERGIA       VARCHAR(30)          not null,
   constraint PK_ALERGIAS primary key (ID_ALERGIA)
);

/*==============================================================*/
/* Index: ALERGIAS_PK                                           */
/*==============================================================*/
create unique index ALERGIAS_PK on ALERGIAS (
ID_ALERGIA
);

/*==============================================================*/
/* Table: ANO_LECTIVO                                           */
/*==============================================================*/
create table ANO_LECTIVO (
   ID_ANO_LECTIVO       SERIAL               not null,
   ANO                  VARCHAR(4)           not null,
   constraint PK_ANO_LECTIVO primary key (ID_ANO_LECTIVO)
);

/*==============================================================*/
/* Index: ANO_LECTIVO_PK                                        */
/*==============================================================*/
create unique index ANO_LECTIVO_PK on ANO_LECTIVO (
ID_ANO_LECTIVO
);

/*==============================================================*/
/* Table: CREADO                                                */
/*==============================================================*/
create table CREADO (
   ID_ANO_LECTIVO       INT4                 not null,
   ID_ACTIVIDAD         INT4                 not null,
   constraint PK_CREADO primary key (ID_ANO_LECTIVO, ID_ACTIVIDAD)
);

/*==============================================================*/
/* Index: CREADO_PK                                             */
/*==============================================================*/
create unique index CREADO_PK on CREADO (
ID_ANO_LECTIVO,
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: CREADO2_FK                                            */
/*==============================================================*/
create  index CREADO2_FK on CREADO (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: CREADO_FK                                             */
/*==============================================================*/
create  index CREADO_FK on CREADO (
ID_ANO_LECTIVO
);

/*==============================================================*/
/* Table: EMPLEA                                                */
/*==============================================================*/
create table EMPLEA (
   ID_MATERIAL          INT4                 not null,
   ID_ACTIVIDAD         INT4                 not null,
   constraint PK_EMPLEA primary key (ID_MATERIAL, ID_ACTIVIDAD)
);

/*==============================================================*/
/* Index: EMPLEA_PK                                             */
/*==============================================================*/
create unique index EMPLEA_PK on EMPLEA (
ID_MATERIAL,
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: EMPLEA2_FK                                            */
/*==============================================================*/
create  index EMPLEA2_FK on EMPLEA (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: EMPLEA_FK                                             */
/*==============================================================*/
create  index EMPLEA_FK on EMPLEA (
ID_MATERIAL
);

/*==============================================================*/
/* Table: ESTADO_SALUD                                          */
/*==============================================================*/
create table ESTADO_SALUD (
   ID_SALUD_STAT        SERIAL               not null,
   ID_NINIO             INT4                 not null,
   ULTIMA_FECHA_ENFERMO DATE                 not null,
   DIAGNOSTICO          TEXT                 not null,
   DOCTOR_TRATANTE      VARCHAR(60)          not null,
   constraint PK_ESTADO_SALUD primary key (ID_SALUD_STAT)
);

/*==============================================================*/
/* Index: ESTADO_SALUD_PK                                       */
/*==============================================================*/
create unique index ESTADO_SALUD_PK on ESTADO_SALUD (
ID_SALUD_STAT
);

/*==============================================================*/
/* Index: POSEE_FK                                              */
/*==============================================================*/
create  index POSEE_FK on ESTADO_SALUD (
ID_NINIO
);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   ID_GENERO            SERIAL               not null,
   NOMBRE_GENERO        VARCHAR(30)          not null,
   constraint PK_GENERO primary key (ID_GENERO)
);

/*==============================================================*/
/* Index: GENERO_PK                                             */
/*==============================================================*/
create unique index GENERO_PK on GENERO (
ID_GENERO
);

/*==============================================================*/
/* Table: MATERIAL                                              */
/*==============================================================*/
create table MATERIAL (
   ID_MATERIAL          SERIAL               not null,
   NOMBRE_MATERIAL      VARCHAR(30)          not null,
   constraint PK_MATERIAL primary key (ID_MATERIAL)
);

/*==============================================================*/
/* Index: MATERIAL_PK                                           */
/*==============================================================*/
create unique index MATERIAL_PK on MATERIAL (
ID_MATERIAL
);

/*==============================================================*/
/* Table: MATRICULA                                             */
/*==============================================================*/
create table MATRICULA (
   ID_MATRICULA         SERIAL               not null,
   ID_NINIO             INT4                 not null,
   ID_ACTIVIDAD         INT4                 not null,
   ESTADO_MATRICULA     BOOL                 not null,
   PRECIO_MATRICULA     INT4                 not null,
   constraint PK_MATRICULA primary key (ID_MATRICULA)
);

/*==============================================================*/
/* Index: MATRICULA_PK                                          */
/*==============================================================*/
create unique index MATRICULA_PK on MATRICULA (
ID_MATRICULA
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on MATRICULA (
ID_NINIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on MATRICULA (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Table: MEDICAMENTO                                           */
/*==============================================================*/
create table MEDICAMENTO (
   ID_MEDICAMENTO       SERIAL               not null,
   NOMBRE_MEDICAMENTO   VARCHAR(30)          not null,
   DESCRIPTION_MEDICAMENTO TEXT                 not null,
   constraint PK_MEDICAMENTO primary key (ID_MEDICAMENTO)
);

/*==============================================================*/
/* Index: MEDICAMENTO_PK                                        */
/*==============================================================*/
create unique index MEDICAMENTO_PK on MEDICAMENTO (
ID_MEDICAMENTO
);

/*==============================================================*/
/* Table: NACIONALIDAD                                          */
/*==============================================================*/
create table NACIONALIDAD (
   ID_NACIONALIDAD      SERIAL               not null,
   NOMBRE_NACIONALIDAD  VARCHAR(30)          not null,
   constraint PK_NACIONALIDAD primary key (ID_NACIONALIDAD)
);

/*==============================================================*/
/* Index: NACIONALIDAD_PK                                       */
/*==============================================================*/
create unique index NACIONALIDAD_PK on NACIONALIDAD (
ID_NACIONALIDAD
);

/*==============================================================*/
/* Table: NINIO                                                 */
/*==============================================================*/
create table NINIO (
   ID_NINIO             SERIAL               not null,
   ID_NACIONALIDAD      INT4                 not null,
   ID_GENERO            INT4                 not null,
   ID_TALLA_ZAPATO      INT4                 not null,
   ID_TALLA_VESTIMENTA  INT4                 not null,
   CI_NINIO             VARCHAR(10)          not null,
   NOMBRE_NINIO         VARCHAR(30)          not null,
   APELLIDO_NINIO       VARCHAR(30)          not null,
   NACIMIENTO_DATE      DATE                 not null,
   constraint PK_NINIO primary key (ID_NINIO)
);

/*==============================================================*/
/* Index: NINIO_PK                                              */
/*==============================================================*/
create unique index NINIO_PK on NINIO (
ID_NINIO
);

/*==============================================================*/
/* Index: TIENEN_NACIONALIDAD_FK                                */
/*==============================================================*/
create  index TIENEN_NACIONALIDAD_FK on NINIO (
ID_NACIONALIDAD
);

/*==============================================================*/
/* Index: POSEE_UN_GENERO_FK                                    */
/*==============================================================*/
create  index POSEE_UN_GENERO_FK on NINIO (
ID_GENERO
);

/*==============================================================*/
/* Index: PRESENTAN_UNA_FK                                      */
/*==============================================================*/
create  index PRESENTAN_UNA_FK on NINIO (
ID_TALLA_ZAPATO
);

/*==============================================================*/
/* Index: PRESENTA_UNA_FK                                       */
/*==============================================================*/
create  index PRESENTA_UNA_FK on NINIO (
ID_TALLA_VESTIMENTA
);

/*==============================================================*/
/* Table: PADRE                                                 */
/*==============================================================*/
create table PADRE (
   ID_PADRE             SERIAL               not null,
   ID_GENERO            INT4                 not null,
   ID_NACIONALIDAD      INT4                 not null,
   NOMBRE_PADRE         VARCHAR(30)          not null,
   APELLIDO_PADRE       VARCHAR(30)          not null,
   CI_PADRE             VARCHAR(10)          not null,
   DIRECCION_PADRE      VARCHAR(30)          not null,
   TELEFONO_PADRE       VARCHAR(10)          not null,
   DOMICILIO_PADRE      VARCHAR(30)          not null,
   constraint PK_PADRE primary key (ID_PADRE)
);

/*==============================================================*/
/* Index: PADRE_PK                                              */
/*==============================================================*/
create unique index PADRE_PK on PADRE (
ID_PADRE
);

/*==============================================================*/
/* Index: POSEE_UN_GENERO___FK                                  */
/*==============================================================*/
create  index POSEE_UN_GENERO___FK on PADRE (
ID_GENERO
);

/*==============================================================*/
/* Index: POSEE_UNA_NACIONALIDAD___FK                           */
/*==============================================================*/
create  index POSEE_UNA_NACIONALIDAD___FK on PADRE (
ID_NACIONALIDAD
);

/*==============================================================*/
/* Table: PROFESIONAL                                           */
/*==============================================================*/
create table PROFESIONAL (
   ID_PROF              SERIAL               not null,
   ID_ACTIVIDAD         INT4                 not null,
   ID_GENERO            INT4                 not null,
   ID_NACIONALIDAD      INT4                 not null,
   NOMBRES_PROF         VARCHAR(30)          not null,
   APELLIDOS_PROF       VARCHAR(30)          not null,
   CI_PROF              VARCHAR(10)          not null,
   DIRECCION_PROF       VARCHAR(60)          not null,
   TELEFONO_PROF        VARCHAR(10)          not null,
   NO_CERTIFI_SENECYT   CHAR(15)             not null,
   constraint PK_PROFESIONAL primary key (ID_PROF)
);

/*==============================================================*/
/* Index: PROFESIONAL_PK                                        */
/*==============================================================*/
create unique index PROFESIONAL_PK on PROFESIONAL (
ID_PROF
);

/*==============================================================*/
/* Index: PROPONE_FK                                            */
/*==============================================================*/
create  index PROPONE_FK on PROFESIONAL (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: POSEE_UN_GENEROO_FK                                   */
/*==============================================================*/
create  index POSEE_UN_GENEROO_FK on PROFESIONAL (
ID_GENERO
);

/*==============================================================*/
/* Index: TIENE_MACIONALIDAD_FK                                 */
/*==============================================================*/
create  index TIENE_MACIONALIDAD_FK on PROFESIONAL (
ID_NACIONALIDAD
);

/*==============================================================*/
/* Table: PROGRAMA                                              */
/*==============================================================*/
create table PROGRAMA (
   ID_PROGRAMA          SERIAL               not null,
   NOMBRE_PROGRAMA      VARCHAR(60)          not null,
   constraint PK_PROGRAMA primary key (ID_PROGRAMA)
);

/*==============================================================*/
/* Index: PROGRAMA_PK                                           */
/*==============================================================*/
create unique index PROGRAMA_PK on PROGRAMA (
ID_PROGRAMA
);

/*==============================================================*/
/* Table: RELACION                                              */
/*==============================================================*/
create table RELACION (
   ID_PARENTESCO        SERIAL               not null,
   NOMBRE_PARENTESCO    VARCHAR(30)          not null,
   constraint PK_RELACION primary key (ID_PARENTESCO)
);

/*==============================================================*/
/* Index: RELACION_PK                                           */
/*==============================================================*/
create unique index RELACION_PK on RELACION (
ID_PARENTESCO
);

/*==============================================================*/
/* Table: RELATIONSHIP_15                                       */
/*==============================================================*/
create table RELATIONSHIP_15 (
   ID_PADRE             INT4                 not null,
   ID_NINIO             INT4                 not null,
   constraint PK_RELATIONSHIP_15 primary key (ID_PADRE, ID_NINIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_PK                                    */
/*==============================================================*/
create unique index RELATIONSHIP_15_PK on RELATIONSHIP_15 (
ID_PADRE,
ID_NINIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on RELATIONSHIP_15 (
ID_NINIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on RELATIONSHIP_15 (
ID_PADRE
);

/*==============================================================*/
/* Table: RENDIMIENTO                                           */
/*==============================================================*/
create table RENDIMIENTO (
   ID_RENDIMIENTO       SERIAL               not null,
   ID_ACTIVIDAD         INT4                 not null,
   ID_NINIO             INT4                 not null,
   ID_TIPO_RENDIMIENT   INT4                 not null,
   OBSERVACIONES        TEXT                 not null,
   constraint PK_RENDIMIENTO primary key (ID_RENDIMIENTO)
);

/*==============================================================*/
/* Index: RENDIMIENTO_PK                                        */
/*==============================================================*/
create unique index RENDIMIENTO_PK on RENDIMIENTO (
ID_RENDIMIENTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on RENDIMIENTO (
ID_ACTIVIDAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on RENDIMIENTO (
ID_NINIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on RENDIMIENTO (
ID_TIPO_RENDIMIENT
);

/*==============================================================*/
/* Table: SALUD_ALERGIAS_RELATION                               */
/*==============================================================*/
create table SALUD_ALERGIAS_RELATION (
   ID_ALERGIA           INT4                 not null,
   ID_SALUD_STAT        INT4                 not null,
   constraint PK_SALUD_ALERGIAS_RELATION primary key (ID_ALERGIA, ID_SALUD_STAT)
);

/*==============================================================*/
/* Index: SALUD_ALERGIAS_RELATION_PK                            */
/*==============================================================*/
create unique index SALUD_ALERGIAS_RELATION_PK on SALUD_ALERGIAS_RELATION (
ID_ALERGIA,
ID_SALUD_STAT
);

/*==============================================================*/
/* Index: SALUD_ALERGIAS_RELATION2_FK                           */
/*==============================================================*/
create  index SALUD_ALERGIAS_RELATION2_FK on SALUD_ALERGIAS_RELATION (
ID_SALUD_STAT
);

/*==============================================================*/
/* Index: SALUD_ALERGIAS_RELATION_FK                            */
/*==============================================================*/
create  index SALUD_ALERGIAS_RELATION_FK on SALUD_ALERGIAS_RELATION (
ID_ALERGIA
);

/*==============================================================*/
/* Table: SALUD_MEDICAMENT_RELATION                             */
/*==============================================================*/
create table SALUD_MEDICAMENT_RELATION (
   ID_MEDICAMENTO       INT4                 not null,
   ID_SALUD_STAT        INT4                 not null,
   constraint PK_SALUD_MEDICAMENT_RELATION primary key (ID_MEDICAMENTO, ID_SALUD_STAT)
);

/*==============================================================*/
/* Index: SALUD_MEDICAMENT_RELATION_PK                          */
/*==============================================================*/
create unique index SALUD_MEDICAMENT_RELATION_PK on SALUD_MEDICAMENT_RELATION (
ID_MEDICAMENTO,
ID_SALUD_STAT
);

/*==============================================================*/
/* Index: SALUD_MEDICAMENT_RELATION2_FK                         */
/*==============================================================*/
create  index SALUD_MEDICAMENT_RELATION2_FK on SALUD_MEDICAMENT_RELATION (
ID_SALUD_STAT
);

/*==============================================================*/
/* Index: SALUD_MEDICAMENT_RELATION_FK                          */
/*==============================================================*/
create  index SALUD_MEDICAMENT_RELATION_FK on SALUD_MEDICAMENT_RELATION (
ID_MEDICAMENTO
);

/*==============================================================*/
/* Table: TALLA_VESTIMENTA                                      */
/*==============================================================*/
create table TALLA_VESTIMENTA (
   ID_TALLA_VESTIMENTA  SERIAL               not null,
   NUMERO_TALLA         DECIMAL(4)           not null,
   constraint PK_TALLA_VESTIMENTA primary key (ID_TALLA_VESTIMENTA)
);

/*==============================================================*/
/* Index: TALLA_VESTIMENTA_PK                                   */
/*==============================================================*/
create unique index TALLA_VESTIMENTA_PK on TALLA_VESTIMENTA (
ID_TALLA_VESTIMENTA
);

/*==============================================================*/
/* Table: TALLA_ZAPATO                                          */
/*==============================================================*/
create table TALLA_ZAPATO (
   ID_TALLA_ZAPATO      SERIAL               not null,
   NUMERO_TALLA         DECIMAL(4)           not null,
   constraint PK_TALLA_ZAPATO primary key (ID_TALLA_ZAPATO)
);

/*==============================================================*/
/* Index: TALLA_ZAPATO_PK                                       */
/*==============================================================*/
create unique index TALLA_ZAPATO_PK on TALLA_ZAPATO (
ID_TALLA_ZAPATO
);

/*==============================================================*/
/* Table: TIPO_RENDIMIENTO                                      */
/*==============================================================*/
create table TIPO_RENDIMIENTO (
   ID_TIPO_RENDIMIENT   SERIAL               not null,
   NOMBRE_RENDIMIENT    VARCHAR(20)          not null,
   constraint PK_TIPO_RENDIMIENTO primary key (ID_TIPO_RENDIMIENT)
);

/*==============================================================*/
/* Index: TIPO_RENDIMIENTO_PK                                   */
/*==============================================================*/
create unique index TIPO_RENDIMIENTO_PK on TIPO_RENDIMIENTO (
ID_TIPO_RENDIMIENT
);

/*==============================================================*/
/* Table: TUTOR                                                 */
/*==============================================================*/
create table TUTOR (
   ID_TUTOR             SERIAL               not null,
   ID_NACIONALIDAD      INT4                 not null,
   ID_GENERO            INT4                 not null,
   ID_PARENTESCO        INT4                 not null,
   NOMBRE_TUTOR         VARCHAR(30)          not null,
   APELLIDO_TUTOR       VARCHAR(30)          not null,
   CI_TUTOR             VARCHAR(10)          not null,
   DIRECCION_TUTOR      VARCHAR(30)          not null,
   TELEFONO_TUTOR       VARCHAR(10)          not null,
   DOMICILIO_TUTOR      VARCHAR(30)          not null,
   MOTIVO               TEXT                 null,
   constraint PK_TUTOR primary key (ID_TUTOR)
);

/*==============================================================*/
/* Index: TUTOR_PK                                              */
/*==============================================================*/
create unique index TUTOR_PK on TUTOR (
ID_TUTOR
);

/*==============================================================*/
/* Index: TIENEN_NACIONALIDAD__FK                               */
/*==============================================================*/
create  index TIENEN_NACIONALIDAD__FK on TUTOR (
ID_NACIONALIDAD
);

/*==============================================================*/
/* Index: POSEE_UN_GENERO__FK                                   */
/*==============================================================*/
create  index POSEE_UN_GENERO__FK on TUTOR (
ID_GENERO
);

/*==============================================================*/
/* Index: MANTIENE_UNA_RELACION_DE_FK                           */
/*==============================================================*/
create  index MANTIENE_UNA_RELACION_DE_FK on TUTOR (
ID_PARENTESCO
);

/*==============================================================*/
/* Table: TUTORES_NINIOS_RELATION                               */
/*==============================================================*/
create table TUTORES_NINIOS_RELATION (
   ID_NINIO             INT4                 not null,
   ID_TUTOR             INT4                 not null,
   constraint PK_TUTORES_NINIOS_RELATION primary key (ID_NINIO, ID_TUTOR)
);

/*==============================================================*/
/* Index: TUTORES_NINIOS_RELATION_PK                            */
/*==============================================================*/
create unique index TUTORES_NINIOS_RELATION_PK on TUTORES_NINIOS_RELATION (
ID_NINIO,
ID_TUTOR
);

/*==============================================================*/
/* Index: TUTORES_NINIOS_RELATION2_FK                           */
/*==============================================================*/
create  index TUTORES_NINIOS_RELATION2_FK on TUTORES_NINIOS_RELATION (
ID_TUTOR
);

/*==============================================================*/
/* Index: TUTORES_NINIOS_RELATION_FK                            */
/*==============================================================*/
create  index TUTORES_NINIOS_RELATION_FK on TUTORES_NINIOS_RELATION (
ID_NINIO
);

alter table ACTIVIDAD
   add constraint FK_ACTIVIDA_PERTENECE_PROGRAMA foreign key (ID_PROGRAMA)
      references PROGRAMA (ID_PROGRAMA)
      on delete restrict on update restrict;

alter table CREADO
   add constraint FK_CREADO_CREADO_ANO_LECT foreign key (ID_ANO_LECTIVO)
      references ANO_LECTIVO (ID_ANO_LECTIVO)
      on delete restrict on update restrict;

alter table CREADO
   add constraint FK_CREADO_CREADO2_ACTIVIDA foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD)
      on delete restrict on update restrict;

alter table EMPLEA
   add constraint FK_EMPLEA_EMPLEA_MATERIAL foreign key (ID_MATERIAL)
      references MATERIAL (ID_MATERIAL)
      on delete restrict on update restrict;

alter table EMPLEA
   add constraint FK_EMPLEA_EMPLEA2_ACTIVIDA foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD)
      on delete restrict on update restrict;

alter table ESTADO_SALUD
   add constraint FK_ESTADO_S_POSEE_NINIO foreign key (ID_NINIO)
      references NINIO (ID_NINIO)
      on delete restrict on update restrict;

alter table MATRICULA
   add constraint FK_MATRICUL_RELATIONS_NINIO foreign key (ID_NINIO)
      references NINIO (ID_NINIO)
      on delete restrict on update restrict;

alter table MATRICULA
   add constraint FK_MATRICUL_RELATIONS_ACTIVIDA foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD)
      on delete restrict on update restrict;

alter table NINIO
   add constraint FK_NINIO_POSEE_UN__GENERO foreign key (ID_GENERO)
      references GENERO (ID_GENERO)
      on delete restrict on update restrict;

alter table NINIO
   add constraint FK_NINIO_PRESENTAN_TALLA_ZA foreign key (ID_TALLA_ZAPATO)
      references TALLA_ZAPATO (ID_TALLA_ZAPATO)
      on delete restrict on update restrict;

alter table NINIO
   add constraint FK_NINIO_PRESENTA__TALLA_VE foreign key (ID_TALLA_VESTIMENTA)
      references TALLA_VESTIMENTA (ID_TALLA_VESTIMENTA)
      on delete restrict on update restrict;

alter table NINIO
   add constraint FK_NINIO_TIENEN_NA_NACIONAL foreign key (ID_NACIONALIDAD)
      references NACIONALIDAD (ID_NACIONALIDAD)
      on delete restrict on update restrict;

alter table PADRE
   add constraint FK_PADRE_POSEE_UNA_NACIONAL foreign key (ID_NACIONALIDAD)
      references NACIONALIDAD (ID_NACIONALIDAD)
      on delete restrict on update restrict;

alter table PADRE
   add constraint FK_PADRE_POSEE_UN__GENERO foreign key (ID_GENERO)
      references GENERO (ID_GENERO)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_POSEE_UN__GENERO foreign key (ID_GENERO)
      references GENERO (ID_GENERO)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_PROPONE_ACTIVIDA foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_TIENE_MAC_NACIONAL foreign key (ID_NACIONALIDAD)
      references NACIONALIDAD (ID_NACIONALIDAD)
      on delete restrict on update restrict;

alter table RELATIONSHIP_15
   add constraint FK_RELATION_RELATIONS_PADRE foreign key (ID_PADRE)
      references PADRE (ID_PADRE)
      on delete restrict on update restrict;

alter table RELATIONSHIP_15
   add constraint FK_RELATION_RELATIONS_NINIO foreign key (ID_NINIO)
      references NINIO (ID_NINIO)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_ACTIVIDA foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_NINIO foreign key (ID_NINIO)
      references NINIO (ID_NINIO)
      on delete restrict on update restrict;

alter table RENDIMIENTO
   add constraint FK_RENDIMIE_RELATIONS_TIPO_REN foreign key (ID_TIPO_RENDIMIENT)
      references TIPO_RENDIMIENTO (ID_TIPO_RENDIMIENT)
      on delete restrict on update restrict;

alter table SALUD_ALERGIAS_RELATION
   add constraint FK_SALUD_AL_SALUD_ALE_ALERGIAS foreign key (ID_ALERGIA)
      references ALERGIAS (ID_ALERGIA)
      on delete restrict on update restrict;

alter table SALUD_ALERGIAS_RELATION
   add constraint FK_SALUD_AL_SALUD_ALE_ESTADO_S foreign key (ID_SALUD_STAT)
      references ESTADO_SALUD (ID_SALUD_STAT)
      on delete restrict on update restrict;

alter table SALUD_MEDICAMENT_RELATION
   add constraint FK_SALUD_ME_SALUD_MED_MEDICAME foreign key (ID_MEDICAMENTO)
      references MEDICAMENTO (ID_MEDICAMENTO)
      on delete restrict on update restrict;

alter table SALUD_MEDICAMENT_RELATION
   add constraint FK_SALUD_ME_SALUD_MED_ESTADO_S foreign key (ID_SALUD_STAT)
      references ESTADO_SALUD (ID_SALUD_STAT)
      on delete restrict on update restrict;

alter table TUTOR
   add constraint FK_TUTOR_MANTIENE__RELACION foreign key (ID_PARENTESCO)
      references RELACION (ID_PARENTESCO)
      on delete restrict on update restrict;

alter table TUTOR
   add constraint FK_TUTOR_POSEE_UN__GENERO foreign key (ID_GENERO)
      references GENERO (ID_GENERO)
      on delete restrict on update restrict;

alter table TUTOR
   add constraint FK_TUTOR_TIENEN_NA_NACIONAL foreign key (ID_NACIONALIDAD)
      references NACIONALIDAD (ID_NACIONALIDAD)
      on delete restrict on update restrict;

alter table TUTORES_NINIOS_RELATION
   add constraint FK_TUTORES__TUTORES_N_NINIO foreign key (ID_NINIO)
      references NINIO (ID_NINIO)
      on delete restrict on update restrict;

alter table TUTORES_NINIOS_RELATION
   add constraint FK_TUTORES__TUTORES_N_TUTOR foreign key (ID_TUTOR)
      references TUTOR (ID_TUTOR)
      on delete restrict on update restrict;

