DROP TABLE IF EXISTS public.prestamo;

CREATE TABLE IF NOT EXISTS public.prestamo
(
    title character varying(255) COLLATE pg_catalog."default" NOT NULL,
    star_Date date,
	userName character varying(255) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prestamo
    OWNER to postgres;