-- Table: public.prestamo

DROP TABLE IF EXISTS public.prestamo;

CREATE TABLE IF NOT EXISTS public.prestamo
(
    code SERIAL,
    userLoan character(255) COLLATE pg_catalog."default" NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
	userRegister character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT prestamo_pkey PRIMARY KEY (code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prestamo
    OWNER to postgres;