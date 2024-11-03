-- Table: public.prestamo_x_recurso

DROP TABLE IF EXISTS public.prestamo_x_recurso;

CREATE TABLE IF NOT EXISTS public.prestamo_x_recurso
(
    code integer NOT NULL,
	codeResource integer NOT NULL,
    description character varying(255),    
    UNIQUE (code, codeResource) 
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prestamo_x_recurso
    OWNER to postgres;