PGDMP          	        
    |            BDLaboratorio    17.0    17.0 N    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            H           1262    32768    BDLaboratorio    DATABASE     �   CREATE DATABASE "BDLaboratorio" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "BDLaboratorio";
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            I           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    5            �            1259    32891    autor    TABLE     d   CREATE TABLE public.autor (
    code integer NOT NULL,
    namea character varying(255) NOT NULL
);
    DROP TABLE public.autor;
       public         heap r       postgres    false    5            �            1259    49280    autor_x_recurso    TABLE     �   CREATE TABLE public.autor_x_recurso (
    codeautor integer NOT NULL,
    coderecurso integer NOT NULL,
    description character varying(255)
);
 #   DROP TABLE public.autor_x_recurso;
       public         heap r       postgres    false    5            �            1259    32769 
   biblioteca    TABLE     �   CREATE TABLE public.biblioteca (
    code integer NOT NULL,
    nameb character varying(255),
    dean character varying(255),
    deanery character varying(255),
    status boolean
);
    DROP TABLE public.biblioteca;
       public         heap r       postgres    false    5            �            1259    32774    carrera    TABLE     w   CREATE TABLE public.carrera (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.carrera;
       public         heap r       postgres    false    5            �            1259    32777    carrera_x_perfil    TABLE     �   CREATE TABLE public.carrera_x_perfil (
    codec integer NOT NULL,
    codep integer NOT NULL,
    description character varying(255)
);
 $   DROP TABLE public.carrera_x_perfil;
       public         heap r       postgres    false    5            �            1259    32780    carrera_x_usuario    TABLE     �   CREATE TABLE public.carrera_x_usuario (
    codec integer NOT NULL,
    codeu integer NOT NULL,
    description character varying(255)
);
 %   DROP TABLE public.carrera_x_usuario;
       public         heap r       postgres    false    5            �            1259    32888 	   categoria    TABLE     #   CREATE TABLE public.categoria (
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false    5            �            1259    32885    categoria_x_autor    TABLE     +   CREATE TABLE public.categoria_x_autor (
);
 %   DROP TABLE public.categoria_x_autor;
       public         heap r       postgres    false    5            �            1259    32882    categoria_x_recurso    TABLE     -   CREATE TABLE public.categoria_x_recurso (
);
 '   DROP TABLE public.categoria_x_recurso;
       public         heap r       postgres    false    5            �            1259    32783 	   extension    TABLE     �   CREATE TABLE public.extension (
    code integer NOT NULL,
    usercode integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    new_date date NOT NULL,
    userregister character varying(255),
    status character(1) NOT NULL
);
    DROP TABLE public.extension;
       public         heap r       postgres    false    5            �            1259    32786    perfil    TABLE       CREATE TABLE public.perfil (
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
       public         heap r       postgres    false    5            �            1259    32791    prestamo    TABLE     �   CREATE TABLE public.prestamo (
    code integer NOT NULL,
    userloan character(255) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
    userregister character varying(255) NOT NULL
);
    DROP TABLE public.prestamo;
       public         heap r       postgres    false    5            �            1259    32796    prestamo_code_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamo_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prestamo_code_seq;
       public               postgres    false    223    5            J           0    0    prestamo_code_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prestamo_code_seq OWNED BY public.prestamo.code;
          public               postgres    false    224            �            1259    32797    prestamo_x_recurso    TABLE     �   CREATE TABLE public.prestamo_x_recurso (
    code integer NOT NULL,
    coderesource integer NOT NULL,
    description character varying(255)
);
 &   DROP TABLE public.prestamo_x_recurso;
       public         heap r       postgres    false    5            �            1259    32800    recurso    TABLE     �   CREATE TABLE public.recurso (
    code integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    type integer NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.recurso;
       public         heap r       postgres    false    5            �            1259    32805    recursos_x_biblioteca    TABLE     �   CREATE TABLE public.recursos_x_biblioteca (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
 )   DROP TABLE public.recursos_x_biblioteca;
       public         heap r       postgres    false    5            �            1259    32808    recursos_x_biblioteca_code_seq    SEQUENCE     �   CREATE SEQUENCE public.recursos_x_biblioteca_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recursos_x_biblioteca_code_seq;
       public               postgres    false    5    227            K           0    0    recursos_x_biblioteca_code_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recursos_x_biblioteca_code_seq OWNED BY public.recursos_x_biblioteca.code;
          public               postgres    false    228            �            1259    32809    sancion    TABLE     �   CREATE TABLE public.sancion (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.sancion;
       public         heap r       postgres    false    5            �            1259    32812    tipo_perfil    TABLE     {   CREATE TABLE public.tipo_perfil (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.tipo_perfil;
       public         heap r       postgres    false    5            �            1259    32815    tipo_recurso    TABLE     �   CREATE TABLE public.tipo_recurso (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
     DROP TABLE public.tipo_recurso;
       public         heap r       postgres    false    5            �            1259    32818    tipo_recurso_code_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_recurso_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_recurso_code_seq;
       public               postgres    false    231    5            L           0    0    tipo_recurso_code_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_recurso_code_seq OWNED BY public.tipo_recurso.code;
          public               postgres    false    232            �            1259    32819    tipo_usuario    TABLE     �   CREATE TABLE public.tipo_usuario (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
     DROP TABLE public.tipo_usuario;
       public         heap r       postgres    false    5            �            1259    32822    universidad    TABLE     ~   CREATE TABLE public.universidad (
    code integer NOT NULL,
    nameu character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.universidad;
       public         heap r       postgres    false    5            �            1259    32825    usuario    TABLE       CREATE TABLE public.usuario (
    code integer NOT NULL,
    username character varying(255),
    lastname character varying(255),
    identification character varying(255),
    career character varying(255),
    typeuser integer NOT NULL,
    status boolean
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    5            s           2604    32830    prestamo code    DEFAULT     n   ALTER TABLE ONLY public.prestamo ALTER COLUMN code SET DEFAULT nextval('public.prestamo_code_seq'::regclass);
 <   ALTER TABLE public.prestamo ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    224    223            t           2604    32831    recursos_x_biblioteca code    DEFAULT     �   ALTER TABLE ONLY public.recursos_x_biblioteca ALTER COLUMN code SET DEFAULT nextval('public.recursos_x_biblioteca_code_seq'::regclass);
 I   ALTER TABLE public.recursos_x_biblioteca ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    228    227            u           2604    32832    tipo_recurso code    DEFAULT     v   ALTER TABLE ONLY public.tipo_recurso ALTER COLUMN code SET DEFAULT nextval('public.tipo_recurso_code_seq'::regclass);
 @   ALTER TABLE public.tipo_recurso ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    232    231            A          0    32891    autor 
   TABLE DATA           ,   COPY public.autor (code, namea) FROM stdin;
    public               postgres    false    239   X       B          0    49280    autor_x_recurso 
   TABLE DATA           N   COPY public.autor_x_recurso (codeautor, coderecurso, description) FROM stdin;
    public               postgres    false    240   %X       +          0    32769 
   biblioteca 
   TABLE DATA           H   COPY public.biblioteca (code, nameb, dean, deanery, status) FROM stdin;
    public               postgres    false    217   BX       ,          0    32774    carrera 
   TABLE DATA           <   COPY public.carrera (code, description, status) FROM stdin;
    public               postgres    false    218   _X       -          0    32777    carrera_x_perfil 
   TABLE DATA           E   COPY public.carrera_x_perfil (codec, codep, description) FROM stdin;
    public               postgres    false    219   |X       .          0    32780    carrera_x_usuario 
   TABLE DATA           F   COPY public.carrera_x_usuario (codec, codeu, description) FROM stdin;
    public               postgres    false    220   �X       @          0    32888 	   categoria 
   TABLE DATA           #   COPY public.categoria  FROM stdin;
    public               postgres    false    238   �X       ?          0    32885    categoria_x_autor 
   TABLE DATA           +   COPY public.categoria_x_autor  FROM stdin;
    public               postgres    false    237   �X       >          0    32882    categoria_x_recurso 
   TABLE DATA           -   COPY public.categoria_x_recurso  FROM stdin;
    public               postgres    false    236   �X       /          0    32783 	   extension 
   TABLE DATA           i   COPY public.extension (code, usercode, start_date, end_date, new_date, userregister, status) FROM stdin;
    public               postgres    false    221   Y       0          0    32786    perfil 
   TABLE DATA           h   COPY public.perfil (code, namep, career, deanery, identification, passwordp, typep, status) FROM stdin;
    public               postgres    false    222   *Y       1          0    32791    prestamo 
   TABLE DATA           ^   COPY public.prestamo (code, userloan, start_date, end_date, status, userregister) FROM stdin;
    public               postgres    false    223   GY       3          0    32797    prestamo_x_recurso 
   TABLE DATA           M   COPY public.prestamo_x_recurso (code, coderesource, description) FROM stdin;
    public               postgres    false    225   �Y       4          0    32800    recurso 
   TABLE DATA           D   COPY public.recurso (code, title, author, type, status) FROM stdin;
    public               postgres    false    226   IZ       5          0    32805    recursos_x_biblioteca 
   TABLE DATA           J   COPY public.recursos_x_biblioteca (code, description, status) FROM stdin;
    public               postgres    false    227   U[       7          0    32809    sancion 
   TABLE DATA           <   COPY public.sancion (code, description, status) FROM stdin;
    public               postgres    false    229   r[       8          0    32812    tipo_perfil 
   TABLE DATA           @   COPY public.tipo_perfil (code, description, status) FROM stdin;
    public               postgres    false    230   �[       9          0    32815    tipo_recurso 
   TABLE DATA           A   COPY public.tipo_recurso (code, description, status) FROM stdin;
    public               postgres    false    231   �[       ;          0    32819    tipo_usuario 
   TABLE DATA           A   COPY public.tipo_usuario (code, description, status) FROM stdin;
    public               postgres    false    233   �[       <          0    32822    universidad 
   TABLE DATA           :   COPY public.universidad (code, nameu, status) FROM stdin;
    public               postgres    false    234   �[       =          0    32825    usuario 
   TABLE DATA           e   COPY public.usuario (code, username, lastname, identification, career, typeuser, status) FROM stdin;
    public               postgres    false    235   \       M           0    0    prestamo_code_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prestamo_code_seq', 39, true);
          public               postgres    false    224            N           0    0    recursos_x_biblioteca_code_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.recursos_x_biblioteca_code_seq', 1, false);
          public               postgres    false    228            O           0    0    tipo_recurso_code_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_recurso_code_seq', 1, false);
          public               postgres    false    232            �           2606    32895    autor autor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (code);
 :   ALTER TABLE ONLY public.autor DROP CONSTRAINT autor_pkey;
       public                 postgres    false    239            �           2606    49284 9   autor_x_recurso autor_x_recurso_codeautor_coderecurso_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.autor_x_recurso
    ADD CONSTRAINT autor_x_recurso_codeautor_coderecurso_key UNIQUE (codeautor, coderecurso);
 c   ALTER TABLE ONLY public.autor_x_recurso DROP CONSTRAINT autor_x_recurso_codeautor_coderecurso_key;
       public                 postgres    false    240    240            w           2606    32834    biblioteca biblioteca_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY (code);
 D   ALTER TABLE ONLY public.biblioteca DROP CONSTRAINT biblioteca_pkey;
       public                 postgres    false    217            y           2606    32836    carrera carrera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public                 postgres    false    218            {           2606    32838 1   carrera_x_perfil carrera_x_perfil_codec_codep_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.carrera_x_perfil
    ADD CONSTRAINT carrera_x_perfil_codec_codep_key UNIQUE (codec, codep);
 [   ALTER TABLE ONLY public.carrera_x_perfil DROP CONSTRAINT carrera_x_perfil_codec_codep_key;
       public                 postgres    false    219    219            }           2606    32840 3   carrera_x_usuario carrera_x_usuario_codec_codeu_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.carrera_x_usuario
    ADD CONSTRAINT carrera_x_usuario_codec_codeu_key UNIQUE (codec, codeu);
 ]   ALTER TABLE ONLY public.carrera_x_usuario DROP CONSTRAINT carrera_x_usuario_codec_codeu_key;
       public                 postgres    false    220    220                       2606    32842    extension extension_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.extension
    ADD CONSTRAINT extension_pkey UNIQUE (code, usercode);
 B   ALTER TABLE ONLY public.extension DROP CONSTRAINT extension_pkey;
       public                 postgres    false    221    221            �           2606    32844    perfil perfil_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (code);
 <   ALTER TABLE ONLY public.perfil DROP CONSTRAINT perfil_pkey;
       public                 postgres    false    222            �           2606    32846    prestamo prestamo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (code);
 @   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pkey;
       public                 postgres    false    223            �           2606    32848 ;   prestamo_x_recurso prestamo_x_recurso_code_coderesource_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.prestamo_x_recurso
    ADD CONSTRAINT prestamo_x_recurso_code_coderesource_key UNIQUE (code, coderesource);
 e   ALTER TABLE ONLY public.prestamo_x_recurso DROP CONSTRAINT prestamo_x_recurso_code_coderesource_key;
       public                 postgres    false    225    225            �           2606    32850    recurso recurso_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.recurso DROP CONSTRAINT recurso_pkey;
       public                 postgres    false    226            �           2606    32852 0   recursos_x_biblioteca recursos_x_biblioteca_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.recursos_x_biblioteca
    ADD CONSTRAINT recursos_x_biblioteca_pkey PRIMARY KEY (code);
 Z   ALTER TABLE ONLY public.recursos_x_biblioteca DROP CONSTRAINT recursos_x_biblioteca_pkey;
       public                 postgres    false    227            �           2606    32854    sancion sancion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sancion
    ADD CONSTRAINT sancion_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.sancion DROP CONSTRAINT sancion_pkey;
       public                 postgres    false    229            �           2606    32856    tipo_perfil tipo_perfil_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_perfil
    ADD CONSTRAINT tipo_perfil_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.tipo_perfil DROP CONSTRAINT tipo_perfil_pkey;
       public                 postgres    false    230            �           2606    32858    tipo_recurso tipo_recurso_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_recurso
    ADD CONSTRAINT tipo_recurso_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_recurso DROP CONSTRAINT tipo_recurso_pkey;
       public                 postgres    false    231            �           2606    32860    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public                 postgres    false    233            �           2606    32862    universidad universidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.universidad
    ADD CONSTRAINT universidad_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.universidad DROP CONSTRAINT universidad_pkey;
       public                 postgres    false    234            �           2606    32864    usuario usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    235            A      x������ � �      B      x������ � �      +      x������ � �      ,      x������ � �      -      x������ � �      .      x������ � �      @      x������ � �      ?      x������ � �      >      x������ � �      /      x������ � �      0      x������ � �      1   l   x�36��M,�T������D��P���44�,�LL����26�,JMJMNhw @�9������Ȃ3�41o�]9� g q[r�e&���H<1z\\\ ңǯ      3   v   x�=�K
�0�O��	
��]
W�
�h���Qw�������y�1z��j��xCJ����H*v�C��[�]���gLCm�SC�l���e ^q�O����&�T�B�� �C�      4   �   x�=�An1EמS�������xf�=r(�kN���!]�������5F��Χ*AN��Tsa��[�`jIG�+�+Gzm��M�3%F��,n�fn���ȋ<��6���u3�r���$R��s1��J.g����'���P[��b.�ԓ2��{��Tz��EZ�l�W��)Q#U�q�L��;u�=LUǆ�ź<F9�ar��%,x1Ņn|�D�V��$S��'ӱr�4SY�7��y���\�      5      x������ � �      7      x������ � �      8      x������ � �      9   $   x�3���L*��4�2��-�)��MM�Lrc���� T�      ;      x������ � �      <      x������ � �      =      x������ � �     