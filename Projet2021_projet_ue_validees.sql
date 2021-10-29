create table ue_validees
(
    id_etudiant integer  not null
        constraint ue_validees_id_etudiant_fkey
            references etudiant,
    code_ue     char(10) not null
        constraint ue_validees_code_ue_fkey
            references ues,
    constraint ue_validees_pkey
        primary key (id_etudiant, code_ue)
);

alter table ue_validees
    owner to postgres;

