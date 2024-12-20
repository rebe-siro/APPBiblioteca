PGDMP  $    2                |            APPBiblioteca    17.2    17.2 b    ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            a           1262    24576    APPBiblioteca    DATABASE     �   CREATE DATABASE "APPBiblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "APPBiblioteca";
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            b           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    5            �            1259    24577    autor    TABLE     d   CREATE TABLE public.autor (
    code integer NOT NULL,
    namea character varying(255) NOT NULL
);
    DROP TABLE public.autor;
       public         heap r       postgres    false    5            �            1259    24580    autor_code_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.autor_code_seq;
       public               postgres    false    217    5            c           0    0    autor_code_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.autor_code_seq OWNED BY public.autor.code;
          public               postgres    false    218            �            1259    24581    autor_x_recurso    TABLE     �   CREATE TABLE public.autor_x_recurso (
    codeautor integer NOT NULL,
    coderecurso integer NOT NULL,
    description character varying(255)
);
 #   DROP TABLE public.autor_x_recurso;
       public         heap r       postgres    false    5            �            1259    24584 
   biblioteca    TABLE     �   CREATE TABLE public.biblioteca (
    code integer NOT NULL,
    nameb character varying(255),
    dean character varying(255),
    deanery character varying(255),
    status boolean
);
    DROP TABLE public.biblioteca;
       public         heap r       postgres    false    5            �            1259    24589    carrera    TABLE     w   CREATE TABLE public.carrera (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.carrera;
       public         heap r       postgres    false    5            �            1259    24592    carrera_x_perfil    TABLE     �   CREATE TABLE public.carrera_x_perfil (
    codec integer NOT NULL,
    codep integer NOT NULL,
    description character varying(255)
);
 $   DROP TABLE public.carrera_x_perfil;
       public         heap r       postgres    false    5            �            1259    24595    carrera_x_usuario    TABLE     �   CREATE TABLE public.carrera_x_usuario (
    codec integer NOT NULL,
    codeu integer NOT NULL,
    description character varying(255)
);
 %   DROP TABLE public.carrera_x_usuario;
       public         heap r       postgres    false    5            �            1259    24598 	   categoria    TABLE     #   CREATE TABLE public.categoria (
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false    5            �            1259    24601    categoria_x_autor    TABLE     +   CREATE TABLE public.categoria_x_autor (
);
 %   DROP TABLE public.categoria_x_autor;
       public         heap r       postgres    false    5            �            1259    24604    categoria_x_recurso    TABLE     -   CREATE TABLE public.categoria_x_recurso (
);
 '   DROP TABLE public.categoria_x_recurso;
       public         heap r       postgres    false    5            �            1259    24607 	   extension    TABLE     �   CREATE TABLE public.extension (
    code integer NOT NULL,
    usercode integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    new_date date NOT NULL,
    userregister character varying(255),
    status character(1) NOT NULL
);
    DROP TABLE public.extension;
       public         heap r       postgres    false    5            �            1259    24610    perfil    TABLE       CREATE TABLE public.perfil (
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
       public         heap r       postgres    false    5            �            1259    24615    prestamo    TABLE     �   CREATE TABLE public.prestamo (
    code integer NOT NULL,
    userloan character(255) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
    userregister character varying(255) NOT NULL
);
    DROP TABLE public.prestamo;
       public         heap r       postgres    false    5            �            1259    24620    prestamo_code_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamo_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prestamo_code_seq;
       public               postgres    false    5    229            d           0    0    prestamo_code_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prestamo_code_seq OWNED BY public.prestamo.code;
          public               postgres    false    230            �            1259    24621    prestamo_x_recurso    TABLE     �   CREATE TABLE public.prestamo_x_recurso (
    code integer NOT NULL,
    coderesource integer NOT NULL,
    description character varying(255)
);
 &   DROP TABLE public.prestamo_x_recurso;
       public         heap r       postgres    false    5            �            1259    32799    recurso    TABLE     �   CREATE TABLE public.recurso (
    code integer NOT NULL,
    title character varying(255),
    author character varying(255),
    type integer NOT NULL,
    status boolean NOT NULL,
    available integer
);
    DROP TABLE public.recurso;
       public         heap r       postgres    false    5            �            1259    24629    recursos_x_biblioteca    TABLE     �   CREATE TABLE public.recursos_x_biblioteca (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
 )   DROP TABLE public.recursos_x_biblioteca;
       public         heap r       postgres    false    5            �            1259    24632    recursos_x_biblioteca_code_seq    SEQUENCE     �   CREATE SEQUENCE public.recursos_x_biblioteca_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recursos_x_biblioteca_code_seq;
       public               postgres    false    232    5            e           0    0    recursos_x_biblioteca_code_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recursos_x_biblioteca_code_seq OWNED BY public.recursos_x_biblioteca.code;
          public               postgres    false    233            �            1259    24633    sancion    TABLE     �   CREATE TABLE public.sancion (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.sancion;
       public         heap r       postgres    false    5            �            1259    32783    sancionados    TABLE     �   CREATE TABLE public.sancionados (
    code integer NOT NULL,
    code_tsanction integer,
    code_user integer,
    star_date date,
    end_date date,
    status boolean
);
    DROP TABLE public.sancionados;
       public         heap r       postgres    false    5            �            1259    32782    sancionados_code_seq    SEQUENCE     �   CREATE SEQUENCE public.sancionados_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sancionados_code_seq;
       public               postgres    false    5    244            f           0    0    sancionados_code_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sancionados_code_seq OWNED BY public.sancionados.code;
          public               postgres    false    243            �            1259    24636    tipo_perfil    TABLE     {   CREATE TABLE public.tipo_perfil (
    code integer NOT NULL,
    description character varying(255),
    status boolean
);
    DROP TABLE public.tipo_perfil;
       public         heap r       postgres    false    5            �            1259    24639    tipo_recurso    TABLE     �   CREATE TABLE public.tipo_recurso (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status character(1) NOT NULL
);
     DROP TABLE public.tipo_recurso;
       public         heap r       postgres    false    5            �            1259    24642    tipo_recurso_code_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_recurso_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_recurso_code_seq;
       public               postgres    false    5    236            g           0    0    tipo_recurso_code_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_recurso_code_seq OWNED BY public.tipo_recurso.code;
          public               postgres    false    237            �            1259    32776    tipo_sancion    TABLE     �   CREATE TABLE public.tipo_sancion (
    code integer NOT NULL,
    namesanction character varying(255),
    days integer,
    status boolean
);
     DROP TABLE public.tipo_sancion;
       public         heap r       postgres    false    5            �            1259    32775    tipo_sancion_code_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_sancion_code_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_sancion_code_seq;
       public               postgres    false    5    242            h           0    0    tipo_sancion_code_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_sancion_code_seq OWNED BY public.tipo_sancion.code;
          public               postgres    false    241            �            1259    24643    tipo_usuario    TABLE     �   CREATE TABLE public.tipo_usuario (
    code integer NOT NULL,
    description character varying(255) NOT NULL,
    status boolean
);
     DROP TABLE public.tipo_usuario;
       public         heap r       postgres    false    5            �            1259    24646    universidad    TABLE     ~   CREATE TABLE public.universidad (
    code integer NOT NULL,
    nameu character varying(255) NOT NULL,
    status boolean
);
    DROP TABLE public.universidad;
       public         heap r       postgres    false    5            �            1259    24649    usuario    TABLE     B  CREATE TABLE public.usuario (
    code integer NOT NULL,
    name character varying(255),
    lastname character varying(255),
    identification character varying(255),
    career character varying(255),
    typeuser integer NOT NULL,
    status boolean,
    password character varying,
    username character varying
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    5            ~           2604    24654 
   autor code    DEFAULT     h   ALTER TABLE ONLY public.autor ALTER COLUMN code SET DEFAULT nextval('public.autor_code_seq'::regclass);
 9   ALTER TABLE public.autor ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    218    217                       2604    24655    prestamo code    DEFAULT     n   ALTER TABLE ONLY public.prestamo ALTER COLUMN code SET DEFAULT nextval('public.prestamo_code_seq'::regclass);
 <   ALTER TABLE public.prestamo ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    230    229            �           2604    24656    recursos_x_biblioteca code    DEFAULT     �   ALTER TABLE ONLY public.recursos_x_biblioteca ALTER COLUMN code SET DEFAULT nextval('public.recursos_x_biblioteca_code_seq'::regclass);
 I   ALTER TABLE public.recursos_x_biblioteca ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    233    232            �           2604    32786    sancionados code    DEFAULT     t   ALTER TABLE ONLY public.sancionados ALTER COLUMN code SET DEFAULT nextval('public.sancionados_code_seq'::regclass);
 ?   ALTER TABLE public.sancionados ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    244    243    244            �           2604    24657    tipo_recurso code    DEFAULT     v   ALTER TABLE ONLY public.tipo_recurso ALTER COLUMN code SET DEFAULT nextval('public.tipo_recurso_code_seq'::regclass);
 @   ALTER TABLE public.tipo_recurso ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    237    236            �           2604    32779    tipo_sancion code    DEFAULT     v   ALTER TABLE ONLY public.tipo_sancion ALTER COLUMN code SET DEFAULT nextval('public.tipo_sancion_code_seq'::regclass);
 @   ALTER TABLE public.tipo_sancion ALTER COLUMN code DROP DEFAULT;
       public               postgres    false    242    241    242            ?          0    24577    autor 
   TABLE DATA           ,   COPY public.autor (code, namea) FROM stdin;
    public               postgres    false    217   p       A          0    24581    autor_x_recurso 
   TABLE DATA           N   COPY public.autor_x_recurso (codeautor, coderecurso, description) FROM stdin;
    public               postgres    false    219   mp       B          0    24584 
   biblioteca 
   TABLE DATA           H   COPY public.biblioteca (code, nameb, dean, deanery, status) FROM stdin;
    public               postgres    false    220   �p       C          0    24589    carrera 
   TABLE DATA           <   COPY public.carrera (code, description, status) FROM stdin;
    public               postgres    false    221   �p       D          0    24592    carrera_x_perfil 
   TABLE DATA           E   COPY public.carrera_x_perfil (codec, codep, description) FROM stdin;
    public               postgres    false    222   �p       E          0    24595    carrera_x_usuario 
   TABLE DATA           F   COPY public.carrera_x_usuario (codec, codeu, description) FROM stdin;
    public               postgres    false    223   �p       F          0    24598 	   categoria 
   TABLE DATA           #   COPY public.categoria  FROM stdin;
    public               postgres    false    224   �p       G          0    24601    categoria_x_autor 
   TABLE DATA           +   COPY public.categoria_x_autor  FROM stdin;
    public               postgres    false    225   q       H          0    24604    categoria_x_recurso 
   TABLE DATA           -   COPY public.categoria_x_recurso  FROM stdin;
    public               postgres    false    226   8q       I          0    24607 	   extension 
   TABLE DATA           i   COPY public.extension (code, usercode, start_date, end_date, new_date, userregister, status) FROM stdin;
    public               postgres    false    227   Uq       J          0    24610    perfil 
   TABLE DATA           h   COPY public.perfil (code, namep, career, deanery, identification, passwordp, typep, status) FROM stdin;
    public               postgres    false    228   rq       K          0    24615    prestamo 
   TABLE DATA           ^   COPY public.prestamo (code, userloan, start_date, end_date, status, userregister) FROM stdin;
    public               postgres    false    229   �q       M          0    24621    prestamo_x_recurso 
   TABLE DATA           M   COPY public.prestamo_x_recurso (code, coderesource, description) FROM stdin;
    public               postgres    false    231   |r       [          0    32799    recurso 
   TABLE DATA           O   COPY public.recurso (code, title, author, type, status, available) FROM stdin;
    public               postgres    false    245   .s       N          0    24629    recursos_x_biblioteca 
   TABLE DATA           J   COPY public.recursos_x_biblioteca (code, description, status) FROM stdin;
    public               postgres    false    232   �s       P          0    24633    sancion 
   TABLE DATA           <   COPY public.sancion (code, description, status) FROM stdin;
    public               postgres    false    234   �s       Z          0    32783    sancionados 
   TABLE DATA           c   COPY public.sancionados (code, code_tsanction, code_user, star_date, end_date, status) FROM stdin;
    public               postgres    false    244   �s       Q          0    24636    tipo_perfil 
   TABLE DATA           @   COPY public.tipo_perfil (code, description, status) FROM stdin;
    public               postgres    false    235   t       R          0    24639    tipo_recurso 
   TABLE DATA           A   COPY public.tipo_recurso (code, description, status) FROM stdin;
    public               postgres    false    236   ,t       X          0    32776    tipo_sancion 
   TABLE DATA           H   COPY public.tipo_sancion (code, namesanction, days, status) FROM stdin;
    public               postgres    false    242   `t       T          0    24643    tipo_usuario 
   TABLE DATA           A   COPY public.tipo_usuario (code, description, status) FROM stdin;
    public               postgres    false    238   }t       U          0    24646    universidad 
   TABLE DATA           :   COPY public.universidad (code, nameu, status) FROM stdin;
    public               postgres    false    239   �t       V          0    24649    usuario 
   TABLE DATA           u   COPY public.usuario (code, name, lastname, identification, career, typeuser, status, password, username) FROM stdin;
    public               postgres    false    240   �t       i           0    0    autor_code_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.autor_code_seq', 5, true);
          public               postgres    false    218            j           0    0    prestamo_code_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prestamo_code_seq', 48, true);
          public               postgres    false    230            k           0    0    recursos_x_biblioteca_code_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.recursos_x_biblioteca_code_seq', 1, false);
          public               postgres    false    233            l           0    0    sancionados_code_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sancionados_code_seq', 1, false);
          public               postgres    false    243            m           0    0    tipo_recurso_code_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_recurso_code_seq', 1, false);
          public               postgres    false    237            n           0    0    tipo_sancion_code_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_sancion_code_seq', 1, false);
          public               postgres    false    241            �           2606    24659    autor autor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (code);
 :   ALTER TABLE ONLY public.autor DROP CONSTRAINT autor_pkey;
       public                 postgres    false    217            �           2606    24661 9   autor_x_recurso autor_x_recurso_codeautor_coderecurso_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.autor_x_recurso
    ADD CONSTRAINT autor_x_recurso_codeautor_coderecurso_key UNIQUE (codeautor, coderecurso);
 c   ALTER TABLE ONLY public.autor_x_recurso DROP CONSTRAINT autor_x_recurso_codeautor_coderecurso_key;
       public                 postgres    false    219    219            �           2606    24663    biblioteca biblioteca_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY (code);
 D   ALTER TABLE ONLY public.biblioteca DROP CONSTRAINT biblioteca_pkey;
       public                 postgres    false    220            �           2606    24665    carrera carrera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public                 postgres    false    221            �           2606    24667 1   carrera_x_perfil carrera_x_perfil_codec_codep_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.carrera_x_perfil
    ADD CONSTRAINT carrera_x_perfil_codec_codep_key UNIQUE (codec, codep);
 [   ALTER TABLE ONLY public.carrera_x_perfil DROP CONSTRAINT carrera_x_perfil_codec_codep_key;
       public                 postgres    false    222    222            �           2606    24669 3   carrera_x_usuario carrera_x_usuario_codec_codeu_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.carrera_x_usuario
    ADD CONSTRAINT carrera_x_usuario_codec_codeu_key UNIQUE (codec, codeu);
 ]   ALTER TABLE ONLY public.carrera_x_usuario DROP CONSTRAINT carrera_x_usuario_codec_codeu_key;
       public                 postgres    false    223    223            �           2606    24671    extension extension_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.extension
    ADD CONSTRAINT extension_pkey UNIQUE (code, usercode);
 B   ALTER TABLE ONLY public.extension DROP CONSTRAINT extension_pkey;
       public                 postgres    false    227    227            �           2606    24673    perfil perfil_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT perfil_pkey PRIMARY KEY (code);
 <   ALTER TABLE ONLY public.perfil DROP CONSTRAINT perfil_pkey;
       public                 postgres    false    228            �           2606    24675    prestamo prestamo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (code);
 @   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pkey;
       public                 postgres    false    229            �           2606    24677 ;   prestamo_x_recurso prestamo_x_recurso_code_coderesource_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.prestamo_x_recurso
    ADD CONSTRAINT prestamo_x_recurso_code_coderesource_key UNIQUE (code, coderesource);
 e   ALTER TABLE ONLY public.prestamo_x_recurso DROP CONSTRAINT prestamo_x_recurso_code_coderesource_key;
       public                 postgres    false    231    231            �           2606    32805    recurso recurso_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.recurso DROP CONSTRAINT recurso_pkey;
       public                 postgres    false    245            �           2606    24681 0   recursos_x_biblioteca recursos_x_biblioteca_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.recursos_x_biblioteca
    ADD CONSTRAINT recursos_x_biblioteca_pkey PRIMARY KEY (code);
 Z   ALTER TABLE ONLY public.recursos_x_biblioteca DROP CONSTRAINT recursos_x_biblioteca_pkey;
       public                 postgres    false    232            �           2606    24683    sancion sancion_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sancion
    ADD CONSTRAINT sancion_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.sancion DROP CONSTRAINT sancion_pkey;
       public                 postgres    false    234            �           2606    32788    sancionados sancionados_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sancionados
    ADD CONSTRAINT sancionados_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.sancionados DROP CONSTRAINT sancionados_pkey;
       public                 postgres    false    244            �           2606    24685    tipo_perfil tipo_perfil_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_perfil
    ADD CONSTRAINT tipo_perfil_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.tipo_perfil DROP CONSTRAINT tipo_perfil_pkey;
       public                 postgres    false    235            �           2606    24687    tipo_recurso tipo_recurso_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_recurso
    ADD CONSTRAINT tipo_recurso_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_recurso DROP CONSTRAINT tipo_recurso_pkey;
       public                 postgres    false    236            �           2606    32781    tipo_sancion tipo_sancion_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_sancion
    ADD CONSTRAINT tipo_sancion_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_sancion DROP CONSTRAINT tipo_sancion_pkey;
       public                 postgres    false    242            �           2606    24689    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (code);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public                 postgres    false    238            �           2606    24691    universidad universidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.universidad
    ADD CONSTRAINT universidad_pkey PRIMARY KEY (code);
 F   ALTER TABLE ONLY public.universidad DROP CONSTRAINT universidad_pkey;
       public                 postgres    false    239            �           2606    24693    usuario usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (code);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    240            �           2606    32789 +   sancionados sancionados_code_tsanction_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sancionados
    ADD CONSTRAINT sancionados_code_tsanction_fkey FOREIGN KEY (code_tsanction) REFERENCES public.tipo_sancion(code);
 U   ALTER TABLE ONLY public.sancionados DROP CONSTRAINT sancionados_code_tsanction_fkey;
       public               postgres    false    4775    244    242            �           2606    32794 &   sancionados sancionados_code_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sancionados
    ADD CONSTRAINT sancionados_code_user_fkey FOREIGN KEY (code_user) REFERENCES public.usuario(code);
 P   ALTER TABLE ONLY public.sancionados DROP CONSTRAINT sancionados_code_user_fkey;
       public               postgres    false    4773    240    244            ?   K   x�3�q�2�,(*MMJT0�2�p��Wp��p���2�tMIO,Rp��I�S�O�2�t)RN--.����� R��      A      x������ � �      B      x������ � �      C      x������ � �      D      x������ � �      E      x������ � �      F      x������ � �      G      x������ � �      H      x������ � �      I      x������ � �      J      x������ � �      K   �   x���;�0��>(��}0"q�4T���Rh+q{��ʔf�����_�+:����a�%eRfB/�0��u�C]�o���lI���wKƤ�*x��q�dL�	����Ȗ���wK�,**��** }�2��tBH�;��4�q�s�dL�'� ��꓃1�=?����T@]��9�	.H%Xk�+r&�\�*���m�y�M�e�:������w�,      M   �   x��P�� >�O�,S�ذư 5LM����c�0O��[��7U=� i�B���,��w^P��К$�##W�7�L�͔����۲��n��)�@C;���(���|�ȯ�������]���V�jy*�냠˄�v>��!��f��'��D� �4u�      [   z   x�]ʱ
�0 ���+�Bk�t-5�HA\��A���K
~����=�¼�\��[�fJ��Y$BF�4�K��ϗ�2]|0s89�v���������W���s�Jiq@�E/ʟ����W&@      N      x������ � �      P      x������ � �      Z      x������ � �      Q      x������ � �      R   $   x�3���L*��4�2��-�)��MM�Lrc���� T�      X      x������ � �      T      x������ � �      U      x������ � �      V   �   x�}α
�0����}C��-�B���Q�E�uзqt�)�b������?Ψ,W�P��M���=�~c��E.���#�x~c�(��x����4L�jca{<	���E��A�C;��=�X���01�����wpp��Zd^~��5-�ZY�P��w��8J!��Ix     