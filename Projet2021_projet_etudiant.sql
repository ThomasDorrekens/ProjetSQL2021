create table etudiant
(
    id_etudiant          serial
        constraint etudiant_pkey
            primary key,
    nom                  varchar(50)  not null
        constraint etudiant_nom_check
            check ((nom)::text ~ similar_escape('[A-Z][a-z]*'::text, NULL::text)),
    prenom               varchar(50)  not null
        constraint etudiant_prenom_check
            check ((prenom)::text ~ similar_escape('[A-Z][a-z]*'::text, NULL::text)),
    email                varchar(100) not null
        constraint etudiant_email_key
            unique
        constraint etudiant_email_check
            check ((email)::text ~
                   similar_escape('[a-zA-Z0-9_\-]+@([a-zA-Z0-9_\-]+\.)+(com|org|edu|nz|au)'::text, NULL::text)),
    mot_de_passe         varchar(100) not null,
    nombre_credit_valide integer      not null
        constraint etudiant_nombre_credit_valide_check
            check (nombre_credit_valide > '-1'::integer),
    code_bloc            bloc
);

alter table etudiant
    owner to postgres;

