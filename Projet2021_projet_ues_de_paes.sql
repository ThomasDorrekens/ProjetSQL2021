create table ues_de_paes
(
    id_etudiant integer  not null
        constraint ues_de_paes_id_etudiant_fkey
            references etudiant,
    code_ue     char(10) not null
        constraint ues_de_paes_code_ue_fkey
            references ues,
    constraint ues_de_paes_pkey
        primary key (id_etudiant, code_ue)
);

alter table ues_de_paes
    owner to postgres;

