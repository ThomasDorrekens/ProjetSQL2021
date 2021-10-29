create table paes
(
    id_etudiant   integer not null
        constraint paes_pkey
            primary key
        constraint paes_id_etudiant_fkey
            references etudiant,
    est_valide    boolean not null,
    nombre_credit integer not null
);

alter table paes
    owner to postgres;

