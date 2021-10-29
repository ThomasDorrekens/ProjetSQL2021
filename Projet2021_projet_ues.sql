create table ues
(
    code           varchar(10) not null
        constraint ues_pkey
            primary key
        constraint ues_code_check
            check ((code)::text ~ similar_escape('BINV[1-3][0-9]*'::text, NULL::text)),
    nom            varchar(50) not null
        constraint ues_nom_check
            check ((nom)::text ~ similar_escape('[A-Z][a-z]*'::text, NULL::text)),
    credit         integer     not null
        constraint ues_credit_check
            check ((credit > '-1'::integer) AND (credit < 60)),
    code_bloc      bloc        not null,
    nombre_inscrit integer     not null
        constraint ues_nombre_inscrit_check
            check (nombre_inscrit > '-1'::integer)
);

alter table ues
    owner to postgres;

