toc.dat                                                                                             0000600 0004000 0002000 00000055641 14721507114 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
    |            BDLaboratorio    17.0    17.0 R    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         K           1262    32768    BDLaboratorio    DATABASE     �   CREATE DATABASE "BDLaboratorio" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "BDLaboratorio";
                     postgres    false                     2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false         L           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    5         �            1259    57473    autor    TABLE     d   CREATE TABLE public.autor (
    code integer NOT NULL,
    namea character varying(255) NOT NULL
);
    DROP TABLE public.autor;
       public         heap r       postgres    false    5         �            1259    57472    autor_code_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.autor_code_seq;
       public               postgres    false    241    5         M           0    0    autor_code_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.autor_code_seq OWNED BY public.autor.code;
          public               postgres    false    240         �            1259    49280    autor_x_recurso    TABLE     �   CREATE TABLE public.autor_x_recurso (
    codeautor integer NOT NULL,
    coderecurso integer NOT NULL,
    description character varying(255)
);
 #   DROP TABLE public.autor_x_recurso;
       public         heap r       postgres    false    5         �            1259    32769 
   biblioteca    TABLE     �   CREATE TABLE public.biblioteca (
    code integer NOT NULL,
    nameb character varying(255),
    dean character varying(255),
    deanery character varying(255),
    status boolean
);
    DROP TABLE public.biblioteca;
       public         heap r       postgres    false    5         �            1259    32774    carrera    TABLE     w   CREATE TABLE public.carrera (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.carrera;
       public         heap r       postgres    false    5         �            1259    32777    carrera_x_perfil    TABLE     �   CREATE TABLE public.carrera_x_perfil (
    codec integer NOT NULL,
    codep integer NOT NULL,
    description character varying(255)
);
 $   DROP TABLE public.carrera_x_perfil;
       public         heap r       postgres    false    5         �            1259    32780    carrera_x_usuario    TABLE     �   CREATE TABLE public.carrera_x_usuario (
    codec integer NOT NULL,
    codeu integer NOT NULL,
    description character varying(255)
);
 %   DROP TABLE public.carrera_x_usuario;
       public         heap r       postgres    false    5         �            1259    32888 	   categoria    TABLE     #   CREATE TABLE public.categoria (
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false    5         �            1259    32885    categoria_x_autor    TABLE     +   CREATE TABLE public.categoria_x_autor (
);
 %   DROP TABLE public.categoria_x_autor;
       public         heap r       postgres    false    5         �            1259    32882    categoria_x_recurso    TABLE     -   CREATE TABLE public.categoria_x_recurso (
);
 '   DROP TABLE public.categoria_x_recurso;
       public         heap r       postgres    false    5         �            1259    32783 	   extension    TABLE     �   CREATE TABLE public.extension (
    code integer NOT NULL,
    usercode integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    new_date date NOT NULL,
    userregister character varying(255),
    status character(1) NOT NULL
);
    DROP TABLE public.extension;
       public         heap r       postgres    false    5         �            1259    32786    perfil    TABLE       CREATE TABLE public.perfil (
    code integer NOT NULL,
    namep character varying(255),
    career integer NOT NULL,
    deanery integer NOT NULL,
    identification integer NOT NULL,
    passwordp character varying(255),
    typep integer NOT NULL,
    status boolean
);
    DROP TABLE public.perfil;
       public         heap r       postgres    false    5         �            1259    32791    prestamo    TABLE     �   CREATE TABLE public.prestamo (
    code integer NOT NULL,
    userloan character(255) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
    userregister character varying(255) NOT NULL
);
    DROP TABLE public.prestamo;
       public         heap r       postgres    false    5         �            1259    32796    prestamo_code_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamo_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prestamo_code_seq;
       public               postgres    false    5    223         N           0    0    prestamo_code_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prestamo_code_seq OWNED BY public.prestamo.code;
          public               postgres    false    224         �            1259    32797    prestamo_x_recurso    TABLE     �   CREATE TABLE public.prestamo_x_recurso (
    code integer NOT NULL,
    coderesource integer NOT NULL,
    description character varying(255)
);
 &   DROP TABLE public.prestamo_x_recurso;
       public         heap r       postgres    false    5         �            1259    32800    recurso    TABLE     �   CREATE TABLE public.recurso (
    code integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    type integer NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.recurso;
       public         heap r       postgres    false    5         �            1259    32805    recursos_x_biblioteca    TABLE     �   CREATE TABLE public.recursos_x_biblioteca (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
 )   DROP TABLE public.recursos_x_biblioteca;
       public         heap r       postgres    false    5         �            1259    32808    recursos_x_biblioteca_code_seq    SEQUENCE     �   CREATE SEQUENCE public.recursos_x_biblioteca_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recursos_x_biblioteca_code_seq;
       public               postgres    false    227    5         O           0    0    recursos_x_biblioteca_code_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recursos_x_biblioteca_code_seq OWNED BY public.recursos_x_biblioteca.code;
          public               postgres    false    228         �            1259    32809    sancion    TABLE     �   CREATE TABLE public.sancion (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.sancion;
       public         heap r       postgres    false    5         �            1259    32812    tipo_perfil    TABLE     {   CREATE TABLE public.tipo_perfil (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.tipo_perfil;
       public         heap r       postgres    false    5         �            1259    32815    tipo_recurso    TABLE     �   CREATE TABLE public.tipo_recurso (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
     DROP TABLE public.tipo_recurso;
       public         heap r       postgres    false    5         �            1259    32818    tipo_recurso_code_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_recurso_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_recurso_code_seq;
       public               postgres    false    231    5         P           0    0    tipo_recurso_code_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_recurso_code_seq OWNED BY public.tipo_recurso.code;
          public               postgres    false    232         �            1259    32819    tipo_usuario    TABLE     �   CREATE TABLE public.tipo_usuario (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
     DROP TABLE public.tipo_usuario;
       public         heap r       postgres    false    5         �            1259    32822    universidad    TABLE     ~   CREATE TABLE public.universidad (
    code integer NOT NULL,
    nameu character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.universidad;
       public         heap r       postgres    false    5         �            1259    32825    usuario    TABLE       CREATE TABLE public.usuario (
    code integer NOT NULL,
    username character varying(255),
    lastname character varying(255),
    identification character varying(255),
    career character varying(255),
    typeuser integer NOT NULL,
    status boolean
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    5         w           2604    57476 
   autor code    DEFAULT     h   ALTER TABLE ONLY public.autor ALTER COLUMN code SET DEFAULT nextval('public.autor_code_seq'::regclass);
 9   ALTER TABLE public.autor ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    241    240    241         t           2604    32830    prestamo code    DEFAULT     n   ALTER TABLE ONLY public.prestamo ALTER COLUMN code SET DEFAULT nextval('public.prestamo_code_seq'::regclass);
 <   ALTER TABLE public.prestamo ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    224    223         u           2604    32831    recursos_x_biblioteca code    DEFAULT     �   ALTER TABLE ONLY public.recursos_x_biblioteca ALTER COLUMN code SET DEFAULT nextval('public.recursos_x_biblioteca_code_seq'::regclass);
 I   ALTER TABLE public.recursos_x_biblioteca ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    228    227         v           2604    32832    tipo_recurso code    DEFAULT     v   ALTER TABLE ONLY public.tipo_recurso ALTER COLUMN code SET DEFAULT nextval('public.tipo_recurso_code_seq'::regclass);
 @   ALTER TABLE public.tipo_recurso ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    232    231         E          0    57473    autor 
   TABLE DATA           ,   COPY public.autor (code, namea) FROM stdin;
    public               postgres    false    241       4933.dat C          0    49280    autor_x_recurso 
   TABLE DATA           N   COPY public.autor_x_recurso (codeautor, coderecurso, description) FROM stdin;
    public               postgres    false    239       4931.dat -          0    32769 
   biblioteca 
   TABLE DATA           H   COPY public.biblioteca (code, nameb, dean, deanery, status) FROM stdin;
    public               postgres    false    217       4909.dat .          0    32774    carrera 
   TABLE DATA           <   COPY public.carrera (code, description, status) FROM stdin;
    public               postgres    false    218       4910.dat /          0    32777    carrera_x_perfil 
   TABLE DATA           E   COPY public.carrera_x_perfil (codec, codep, description) FROM stdin;
    public               postgres    false    219       4911.dat 0          0    32780    carrera_x_usuario 
   TABLE DATA           F   COPY public.carrera_x_usuario (codec, codeu, description) FROM stdin;
    public               postgres    false    220       4912.dat B          0    32888 	   categoria 
   TABLE DATA           #   COPY public.categoria  FROM stdin;
    public               postgres    false    238       4930.dat A          0    32885    categoria_x_autor 
   TABLE DATA           +   COPY public.categoria_x_autor  FROM stdin;
    public               postgres    false    237       4929.dat @          0    32882    categoria_x_recurso 
   TABLE DATA           -   COPY public.categoria_x_recurso  FROM stdin;
    public               postgres    false    236       4928.dat 1          0    32783 	   extension 
   TABLE DATA           i   COPY public.extension (code, usercode, start_date, end_date, new_date, userregister, status) FROM stdin;
    public               postgres    false    221       4913.dat 2          0    32786    perfil 
   TABLE DATA           h   COPY public.perfil (code, namep, career, deanery, identification, passwordp, typep, status) FROM stdin;
    public               postgres    false    222       4914.dat 3          0    32791    prestamo 
   TABLE DATA           ^   COPY public.prestamo (code, userloan, start_date, end_date, status, userregister) FROM stdin;
    public               postgres    false    223       4915.dat 5          0    32797    prestamo_x_recurso 
   TABLE DATA           M   COPY public.prestamo_x_recurso (code, coderesource, description) FROM stdin;
    public               postgres    false    225       4917.dat 6          0    32800    recurso 
   TABLE DATA           D   COPY public.recurso (code, title, author, type, status) FROM stdin;
    public               postgres    false    226       4918.dat 7          0    32805    recursos_x_biblioteca 
   TABLE DATA           J   COPY public.recursos_x_biblioteca (code, description, status) FROM stdin;
    public               postgres    false    227       4919.dat 9          0    32809    sancion 
   TABLE DATA           <   COPY public.sancion (code, description, status) FROM stdin;
    public               postgres    false    229       4921.dat :          0    32812    tipo_perfil 
   TABLE DATA           @   COPY public.tipo_perfil (code, description, status) FROM stdin;
    public               postgres    false    230       4922.dat ;          0    32815    tipo_recurso 
   TABLE DATA           A   COPY public.tipo_recurso (code, description, status) FROM stdin;
    public               postgres    false    231       4923.dat =          0    32819    tipo_usuario 
   TABLE DATA           A   COPY public.tipo_usuario (code, description, status) FROM stdin;
    public               postgres    false    233       4925.dat >          0    32822    universidad 
   TABLE DATA           :   COPY public.universidad (code, nameu, status) FROM stdin;
    public               postgres    false    234       4926.dat ?          0    32825    usuario 
   TABLE DATA           e   COPY public.usuario (code, username, lastname, identification, career, typeuser, status) FROM stdin;
    public               postgres    false    235       4927.dat Q           0    0    autor_code_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.autor_code_seq', 3, true);
          public               postgres    false    240         R           0    0    prestamo_code_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prestamo_code_seq', 47, true);
          public               postgres    false    224         S           0    0    recursos_x_biblioteca_code_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.recursos_x_biblioteca_code_seq', 1, false);
          public               postgres    false    228         T           0    0    tipo_recurso_code_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_recurso_code_seq', 1, false);
          public               postgres    false    232         �           2606    57478    autor autor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (code);
 :   ALTER TABLE ONLY public.autor DROP CONSTRAINT autor_pkey;
       public                 postgres    false    241         �           2606    49284 9   autor_x_recurso autor_x_recurso_codeautor_coderecurso_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.autor_x_recurso
    ADD CONSTRAINT autor_x_recurso_codeautor_coderecurso_key UNIQUE (codeautor, coderecurso);
 c   ALTER TABLE ONLY public.autor_x_recurso DROP CONSTRAINT autor_x_recurso_codeautor_coderecurso_key;
       public                 postgres    false    239    239         y           2606    32834    biblioteca biblioteca_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY (code);
 D   ALTER TABLE ONLY public.biblioteca DROP CONSTRAINT biblioteca_pkey;
       public                 postgres    false    217         {           2606    32836    carrera carrera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public                 postgres    false    218         }           2606    32838 1   carrera_x_perfil carrera_x_perfil_codec_codep_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.carrera_x_perfil
    ADD CONSTRAINT carrera_x_perfil_codec_codep_key UNIQUE (codec, codep);
 [   ALTER TABLE ONLY public.carrera_x_perfil DROP CONSTRAINT carrera_x_perfil_codec_codep_key;
       public                 postgres    false    219    219                    2606    32840 3   carrera_x_usuario carrera_x_usuario_codec_codeu_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.carrera_x_usuario
    ADD CONSTRAINT carrera_x_usuario_codec_codeu_key UNIQUE (codec, codeu);
 ]   ALTER TABLE ONLY public.carrera_x_usuario DROP CONSTRAINT carrera_x_usuario_codec_codeu_key;
       public                 postgres    false    220    220         �           2606    32842    extension extension_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.extension
    ADD CONSTRAINT extension_pkey UNIQUE (code, usercode);
 B   ALTER TABLE ONLY public.extension DROP CONSTRAINT extension_pkey;
       public                 postgres    false    221    221         �           2606    32844    perfil perfil_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (code);
 <   ALTER TABLE ONLY public.perfil DROP CONSTRAINT perfil_pkey;
       public                 postgres    false    222         �           2606    32846    prestamo prestamo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (code);
 @   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pkey;
       public                 postgres    false    223         �           2606    32848 ;   prestamo_x_recurso prestamo_x_recurso_code_coderesource_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.prestamo_x_recurso
    ADD CONSTRAINT prestamo_x_recurso_code_coderesource_key UNIQUE (code, coderesource);
 e   ALTER TABLE ONLY public.prestamo_x_recurso DROP CONSTRAINT prestamo_x_recurso_code_coderesource_key;
       public                 postgres    false    225    225         �           2606    32850    recurso recurso_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.recurso DROP CONSTRAINT recurso_pkey;
       public                 postgres    false    226         �           2606    32852 0   recursos_x_biblioteca recursos_x_biblioteca_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.recursos_x_biblioteca
    ADD CONSTRAINT recursos_x_biblioteca_pkey PRIMARY KEY (code);
 Z   ALTER TABLE ONLY public.recursos_x_biblioteca DROP CONSTRAINT recursos_x_biblioteca_pkey;
       public                 postgres    false    227         �           2606    32854    sancion sancion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sancion
    ADD CONSTRAINT sancion_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.sancion DROP CONSTRAINT sancion_pkey;
       public                 postgres    false    229         �           2606    32856    tipo_perfil tipo_perfil_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_perfil
    ADD CONSTRAINT tipo_perfil_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.tipo_perfil DROP CONSTRAINT tipo_perfil_pkey;
       public                 postgres    false    230         �           2606    32858    tipo_recurso tipo_recurso_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_recurso
    ADD CONSTRAINT tipo_recurso_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_recurso DROP CONSTRAINT tipo_recurso_pkey;
       public                 postgres    false    231         �           2606    32860    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public                 postgres    false    233         �           2606    32862    universidad universidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.universidad
    ADD CONSTRAINT universidad_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.universidad DROP CONSTRAINT universidad_pkey;
       public                 postgres    false    234         �           2606    32864    usuario usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    235                                                                                                       4933.dat                                                                                            0000600 0004000 0002000 00000000046 14721507114 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	TEST
2	prueba 2
3	PAULO COHELO
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          4931.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4909.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4910.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4911.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4912.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4930.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4929.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4928.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4913.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4914.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4915.dat                                                                                            0000600 0004000 0002000 00000007246 14721507114 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        35	mary                                                                                                                                                                                                                                                           	2024-11-03	2024-11-10	t	admin
36	rebeca                                                                                                                                                                                                                                                         	2024-11-03	2024-11-10	t	admin
37	luis                                                                                                                                                                                                                                                           	2024-11-03	2024-11-10	t	admin
38	juan                                                                                                                                                                                                                                                           	2024-11-03	2024-11-10	t	
39	victor                                                                                                                                                                                                                                                         	2024-11-03	2024-11-10	t	admin
40	rebe                                                                                                                                                                                                                                                           	2024-11-25	2024-12-02	t	rebeca
41	rebeca                                                                                                                                                                                                                                                         	2024-11-25	2024-12-02	t	rebeca
42	rebe                                                                                                                                                                                                                                                           	2024-11-25	2024-12-02	t	rebv
43	ruth                                                                                                                                                                                                                                                           	2024-11-25	2024-12-02	t	ruth
44	ruth                                                                                                                                                                                                                                                           	2024-11-25	2024-12-02	t	ruth
45	aaa                                                                                                                                                                                                                                                            	2024-11-25	2024-12-02	t	aaa
46	bbb                                                                                                                                                                                                                                                            	2024-11-25	2024-12-02	t	bbb
47	ccc                                                                                                                                                                                                                                                            	2024-11-25	2024-12-02	t	ccc
\.


                                                                                                                                                                                                                                                                                                                                                          4917.dat                                                                                            0000600 0004000 0002000 00000000754 14721507114 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        35	1	ORGULLO Y PREJUICIO
36	7	PATRONES Y ANTIPATRONES DE PROGRAMACION
37	6	CALCULO VECTORIAL
38	4	1984
39	2	ECONOMIA DE VENEZUELA
40	6	CALCULO VECTORIAL
41	1	ORGULLO Y PREJUICIO
42	1	ORGULLO Y PREJUICIO
42	7	PATRONES Y ANTIPATRONES DE PROGRAMACION
43	4	1984
43	6	CALCULO VECTORIAL
44	4	1984
44	6	CALCULO VECTORIAL
45	6	CALCULO VECTORIAL
45	7	PATRONES Y ANTIPATRONES DE PROGRAMACION
46	4	1984
46	6	CALCULO VECTORIAL
47	2	ECONOMIA DE VENEZUELA
47	7	PATRONES Y ANTIPATRONES DE PROGRAMACION
\.


                    4918.dat                                                                                            0000600 0004000 0002000 00000000570 14721507114 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ORGULLO Y PREJUICIO	JANE AUSTEN	1	t
2	ECONOMIA DE VENEZUELA	ECONOMITECH	2	t
3	GAME OF THRONES	GEORGE RR MARTIN	1	f
4	1984	GEORGE ORWELL	1	t
5	MANIFIESTO COMUNISTA	KARL MARX	2	f
6	CALCULO VECTORIAL	JORGE SAENZ	1	t
7	PATRONES Y ANTIPATRONES DE PROGRAMACION	YESSEA PARRA	2	t
8	FUNDAMENTOS DE LA LIBERTAD	FRIEDRICH VON HAYEK	1	f
9	MATRIMONIO DE SABUESOS	AGATHA CRISTIE	1	f
\.


                                                                                                                                        4919.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4921.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4922.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4923.dat                                                                                            0000600 0004000 0002000 00000000036 14721507114 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Libro	1
2	Multimedia	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4925.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4926.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4927.dat                                                                                            0000600 0004000 0002000 00000000005 14721507114 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000046217 14721507114 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "BDLaboratorio";
--
-- Name: BDLaboratorio; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "BDLaboratorio" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';


ALTER DATABASE "BDLaboratorio" OWNER TO postgres;

\connect "BDLaboratorio"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: autor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autor (
    code integer NOT NULL,
    namea character varying(255) NOT NULL
);


ALTER TABLE public.autor OWNER TO postgres;

--
-- Name: autor_code_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.autor_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.autor_code_seq OWNER TO postgres;

--
-- Name: autor_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.autor_code_seq OWNED BY public.autor.code;


--
-- Name: autor_x_recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autor_x_recurso (
    codeautor integer NOT NULL,
    coderecurso integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.autor_x_recurso OWNER TO postgres;

--
-- Name: biblioteca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.biblioteca (
    code integer NOT NULL,
    nameb character varying(255),
    dean character varying(255),
    deanery character varying(255),
    status boolean
);


ALTER TABLE public.biblioteca OWNER TO postgres;

--
-- Name: carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);


ALTER TABLE public.carrera OWNER TO postgres;

--
-- Name: carrera_x_perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera_x_perfil (
    codec integer NOT NULL,
    codep integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.carrera_x_perfil OWNER TO postgres;

--
-- Name: carrera_x_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera_x_usuario (
    codec integer NOT NULL,
    codeu integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.carrera_x_usuario OWNER TO postgres;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_x_autor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_x_autor (
);


ALTER TABLE public.categoria_x_autor OWNER TO postgres;

--
-- Name: categoria_x_recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_x_recurso (
);


ALTER TABLE public.categoria_x_recurso OWNER TO postgres;

--
-- Name: extension; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.extension (
    code integer NOT NULL,
    usercode integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    new_date date NOT NULL,
    userregister character varying(255),
    status character(1) NOT NULL
);


ALTER TABLE public.extension OWNER TO postgres;

--
-- Name: perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perfil (
    code integer NOT NULL,
    namep character varying(255),
    career integer NOT NULL,
    deanery integer NOT NULL,
    identification integer NOT NULL,
    passwordp character varying(255),
    typep integer NOT NULL,
    status boolean
);


ALTER TABLE public.perfil OWNER TO postgres;

--
-- Name: prestamo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestamo (
    code integer NOT NULL,
    userloan character(255) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
    userregister character varying(255) NOT NULL
);


ALTER TABLE public.prestamo OWNER TO postgres;

--
-- Name: prestamo_code_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestamo_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prestamo_code_seq OWNER TO postgres;

--
-- Name: prestamo_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestamo_code_seq OWNED BY public.prestamo.code;


--
-- Name: prestamo_x_recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestamo_x_recurso (
    code integer NOT NULL,
    coderesource integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.prestamo_x_recurso OWNER TO postgres;

--
-- Name: recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recurso (
    code integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    type integer NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.recurso OWNER TO postgres;

--
-- Name: recursos_x_biblioteca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recursos_x_biblioteca (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);


ALTER TABLE public.recursos_x_biblioteca OWNER TO postgres;

--
-- Name: recursos_x_biblioteca_code_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recursos_x_biblioteca_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recursos_x_biblioteca_code_seq OWNER TO postgres;

--
-- Name: recursos_x_biblioteca_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recursos_x_biblioteca_code_seq OWNED BY public.recursos_x_biblioteca.code;


--
-- Name: sancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sancion (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);


ALTER TABLE public.sancion OWNER TO postgres;

--
-- Name: tipo_perfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_perfil (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);


ALTER TABLE public.tipo_perfil OWNER TO postgres;

--
-- Name: tipo_recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_recurso (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);


ALTER TABLE public.tipo_recurso OWNER TO postgres;

--
-- Name: tipo_recurso_code_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_recurso_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_recurso_code_seq OWNER TO postgres;

--
-- Name: tipo_recurso_code_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_recurso_code_seq OWNED BY public.tipo_recurso.code;


--
-- Name: tipo_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_usuario (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);


ALTER TABLE public.tipo_usuario OWNER TO postgres;

--
-- Name: universidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.universidad (
    code integer NOT NULL,
    nameu character varying(255) NOT NULL,
    status boolean
);


ALTER TABLE public.universidad OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    code integer NOT NULL,
    username character varying(255),
    lastname character varying(255),
    identification character varying(255),
    career character varying(255),
    typeuser integer NOT NULL,
    status boolean
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: autor code; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor ALTER COLUMN code SET DEFAULT nextval('public.autor_code_seq'::regclass);


--
-- Name: prestamo code; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo ALTER COLUMN code SET DEFAULT nextval('public.prestamo_code_seq'::regclass);


--
-- Name: recursos_x_biblioteca code; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recursos_x_biblioteca ALTER COLUMN code SET DEFAULT nextval('public.recursos_x_biblioteca_code_seq'::regclass);


--
-- Name: tipo_recurso code; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_recurso ALTER COLUMN code SET DEFAULT nextval('public.tipo_recurso_code_seq'::regclass);


--
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.autor (code, namea) FROM stdin;
\.
COPY public.autor (code, namea) FROM '$$PATH$$/4933.dat';

--
-- Data for Name: autor_x_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.autor_x_recurso (codeautor, coderecurso, description) FROM stdin;
\.
COPY public.autor_x_recurso (codeautor, coderecurso, description) FROM '$$PATH$$/4931.dat';

--
-- Data for Name: biblioteca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.biblioteca (code, nameb, dean, deanery, status) FROM stdin;
\.
COPY public.biblioteca (code, nameb, dean, deanery, status) FROM '$$PATH$$/4909.dat';

--
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera (code, description, status) FROM stdin;
\.
COPY public.carrera (code, description, status) FROM '$$PATH$$/4910.dat';

--
-- Data for Name: carrera_x_perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera_x_perfil (codec, codep, description) FROM stdin;
\.
COPY public.carrera_x_perfil (codec, codep, description) FROM '$$PATH$$/4911.dat';

--
-- Data for Name: carrera_x_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera_x_usuario (codec, codeu, description) FROM stdin;
\.
COPY public.carrera_x_usuario (codec, codeu, description) FROM '$$PATH$$/4912.dat';

--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria  FROM stdin;
\.
COPY public.categoria  FROM '$$PATH$$/4930.dat';

--
-- Data for Name: categoria_x_autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_x_autor  FROM stdin;
\.
COPY public.categoria_x_autor  FROM '$$PATH$$/4929.dat';

--
-- Data for Name: categoria_x_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_x_recurso  FROM stdin;
\.
COPY public.categoria_x_recurso  FROM '$$PATH$$/4928.dat';

--
-- Data for Name: extension; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.extension (code, usercode, start_date, end_date, new_date, userregister, status) FROM stdin;
\.
COPY public.extension (code, usercode, start_date, end_date, new_date, userregister, status) FROM '$$PATH$$/4913.dat';

--
-- Data for Name: perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perfil (code, namep, career, deanery, identification, passwordp, typep, status) FROM stdin;
\.
COPY public.perfil (code, namep, career, deanery, identification, passwordp, typep, status) FROM '$$PATH$$/4914.dat';

--
-- Data for Name: prestamo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestamo (code, userloan, start_date, end_date, status, userregister) FROM stdin;
\.
COPY public.prestamo (code, userloan, start_date, end_date, status, userregister) FROM '$$PATH$$/4915.dat';

--
-- Data for Name: prestamo_x_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestamo_x_recurso (code, coderesource, description) FROM stdin;
\.
COPY public.prestamo_x_recurso (code, coderesource, description) FROM '$$PATH$$/4917.dat';

--
-- Data for Name: recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recurso (code, title, author, type, status) FROM stdin;
\.
COPY public.recurso (code, title, author, type, status) FROM '$$PATH$$/4918.dat';

--
-- Data for Name: recursos_x_biblioteca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recursos_x_biblioteca (code, description, status) FROM stdin;
\.
COPY public.recursos_x_biblioteca (code, description, status) FROM '$$PATH$$/4919.dat';

--
-- Data for Name: sancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sancion (code, description, status) FROM stdin;
\.
COPY public.sancion (code, description, status) FROM '$$PATH$$/4921.dat';

--
-- Data for Name: tipo_perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_perfil (code, description, status) FROM stdin;
\.
COPY public.tipo_perfil (code, description, status) FROM '$$PATH$$/4922.dat';

--
-- Data for Name: tipo_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_recurso (code, description, status) FROM stdin;
\.
COPY public.tipo_recurso (code, description, status) FROM '$$PATH$$/4923.dat';

--
-- Data for Name: tipo_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_usuario (code, description, status) FROM stdin;
\.
COPY public.tipo_usuario (code, description, status) FROM '$$PATH$$/4925.dat';

--
-- Data for Name: universidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.universidad (code, nameu, status) FROM stdin;
\.
COPY public.universidad (code, nameu, status) FROM '$$PATH$$/4926.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (code, username, lastname, identification, career, typeuser, status) FROM stdin;
\.
COPY public.usuario (code, username, lastname, identification, career, typeuser, status) FROM '$$PATH$$/4927.dat';

--
-- Name: autor_code_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autor_code_seq', 3, true);


--
-- Name: prestamo_code_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestamo_code_seq', 47, true);


--
-- Name: recursos_x_biblioteca_code_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recursos_x_biblioteca_code_seq', 1, false);


--
-- Name: tipo_recurso_code_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_recurso_code_seq', 1, false);


--
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (code);


--
-- Name: autor_x_recurso autor_x_recurso_codeautor_coderecurso_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor_x_recurso
    ADD CONSTRAINT autor_x_recurso_codeautor_coderecurso_key UNIQUE (codeautor, coderecurso);


--
-- Name: biblioteca biblioteca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY (code);


--
-- Name: carrera carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (code);


--
-- Name: carrera_x_perfil carrera_x_perfil_codec_codep_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera_x_perfil
    ADD CONSTRAINT carrera_x_perfil_codec_codep_key UNIQUE (codec, codep);


--
-- Name: carrera_x_usuario carrera_x_usuario_codec_codeu_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera_x_usuario
    ADD CONSTRAINT carrera_x_usuario_codec_codeu_key UNIQUE (codec, codeu);


--
-- Name: extension extension_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extension
    ADD CONSTRAINT extension_pkey UNIQUE (code, usercode);


--
-- Name: perfil perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (code);


--
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (code);


--
-- Name: prestamo_x_recurso prestamo_x_recurso_code_coderesource_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamo_x_recurso
    ADD CONSTRAINT prestamo_x_recurso_code_coderesource_key UNIQUE (code, coderesource);


--
-- Name: recurso recurso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (code);


--
-- Name: recursos_x_biblioteca recursos_x_biblioteca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recursos_x_biblioteca
    ADD CONSTRAINT recursos_x_biblioteca_pkey PRIMARY KEY (code);


--
-- Name: sancion sancion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sancion
    ADD CONSTRAINT sancion_pkey PRIMARY KEY (code);


--
-- Name: tipo_perfil tipo_perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_perfil
    ADD CONSTRAINT tipo_perfil_pkey PRIMARY KEY (code);


--
-- Name: tipo_recurso tipo_recurso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_recurso
    ADD CONSTRAINT tipo_recurso_pkey PRIMARY KEY (code);


--
-- Name: tipo_usuario tipo_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (code);


--
-- Name: universidad universidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidad
    ADD CONSTRAINT universidad_pkey PRIMARY KEY (code);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (code);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 