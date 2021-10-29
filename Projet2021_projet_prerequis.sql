create table prerequis
(
    code_ue_prerequis char(10) not null
        constraint prerequis_code_ue_prerequis_fkey
            references ues,
    code_ue           char(10) not null
        constraint prerequis_code_ue_fkey
            references ues,
    constraint prerequis_pkey
        primary key (code_ue_prerequis, code_ue),
    constraint prerequis_check
        check (code_ue_prerequis <> code_ue)
);

alter table prerequis
    owner to postgres;

