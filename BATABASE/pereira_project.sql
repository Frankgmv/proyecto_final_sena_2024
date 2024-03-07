PGDMP  -                    |            pruebas    16.1    16.1    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    685200    pruebas    DATABASE     z   CREATE DATABASE pruebas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE pruebas;
                postgres    false            �            1259    1266792    Anuncios    TABLE     �   CREATE TABLE public."Anuncios" (
    id integer NOT NULL,
    titulo character varying(255),
    descripcion text,
    "imgPath" text,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer,
    "SeccionId" integer
);
    DROP TABLE public."Anuncios";
       public         heap    postgres    false            �            1259    1266791    Anuncios_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Anuncios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Anuncios_id_seq";
       public          postgres    false    247            �           0    0    Anuncios_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Anuncios_id_seq" OWNED BY public."Anuncios".id;
          public          postgres    false    246            �            1259    1266720    Archivos    TABLE     �   CREATE TABLE public."Archivos" (
    id integer NOT NULL,
    titulo character varying(255),
    archivo text,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Archivos";
       public         heap    postgres    false            �            1259    1266719    Archivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Archivos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Archivos_id_seq";
       public          postgres    false    237            �           0    0    Archivos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Archivos_id_seq" OWNED BY public."Archivos".id;
          public          postgres    false    236            �            1259    1266618 
   Categorias    TABLE     �   CREATE TABLE public."Categorias" (
    id integer NOT NULL,
    categoria character varying(255),
    "categoriaKey" character varying(255)
);
     DROP TABLE public."Categorias";
       public         heap    postgres    false            �            1259    1266615    Categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categorias_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categorias_id_seq";
       public          postgres    false    222            �           0    0    Categorias_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categorias_id_seq" OWNED BY public."Categorias".id;
          public          postgres    false    221            �            1259    1266697    Credenciales    TABLE       CREATE TABLE public."Credenciales" (
    id integer NOT NULL,
    correo character varying(255) NOT NULL,
    clave character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
 "   DROP TABLE public."Credenciales";
       public         heap    postgres    false            �            1259    1266696    Credenciales_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Credenciales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Credenciales_id_seq";
       public          postgres    false    233            �           0    0    Credenciales_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Credenciales_id_seq" OWNED BY public."Credenciales".id;
          public          postgres    false    232            �            1259    1266658    DetallePermisos    TABLE     �   CREATE TABLE public."DetallePermisos" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer,
    "PermisoId" integer
);
 %   DROP TABLE public."DetallePermisos";
       public         heap    postgres    false            �            1259    1266657    DetallePermisos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DetallePermisos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."DetallePermisos_id_seq";
       public          postgres    false    227            �           0    0    DetallePermisos_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."DetallePermisos_id_seq" OWNED BY public."DetallePermisos".id;
          public          postgres    false    226            �            1259    1266734    Eventos    TABLE     �   CREATE TABLE public."Eventos" (
    id integer NOT NULL,
    evento character varying(255),
    fecha timestamp with time zone
);
    DROP TABLE public."Eventos";
       public         heap    postgres    false            �            1259    1266733    Eventos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Eventos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Eventos_id_seq";
       public          postgres    false    239            �           0    0    Eventos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Eventos_id_seq" OWNED BY public."Eventos".id;
          public          postgres    false    238            �            1259    1266741    Galeria    TABLE     �   CREATE TABLE public."Galeria" (
    id integer NOT NULL,
    titulo character varying(255),
    "imgPath" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer,
    "EventoId" integer
);
    DROP TABLE public."Galeria";
       public         heap    postgres    false            �            1259    1266740    Galeria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Galeria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Galeria_id_seq";
       public          postgres    false    241            �           0    0    Galeria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Galeria_id_seq" OWNED BY public."Galeria".id;
          public          postgres    false    240            �            1259    1266644 	   Historial    TABLE     �   CREATE TABLE public."Historial" (
    id integer NOT NULL,
    cambio character varying(255),
    descripcion character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Historial";
       public         heap    postgres    false            �            1259    1266643    Historial_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Historial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Historial_id_seq";
       public          postgres    false    225            �           0    0    Historial_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Historial_id_seq" OWNED BY public."Historial".id;
          public          postgres    false    224            �            1259    1266817    Items    TABLE     �   CREATE TABLE public."Items" (
    id integer NOT NULL,
    titulo character varying(255),
    link text,
    "imgPath" text,
    estado boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Items";
       public         heap    postgres    false            �            1259    1266816    Items_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Items_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Items_id_seq";
       public          postgres    false    249            �           0    0    Items_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Items_id_seq" OWNED BY public."Items".id;
          public          postgres    false    248            �            1259    1266832    Links    TABLE     "  CREATE TABLE public."Links" (
    id integer NOT NULL,
    titulo character varying(255),
    link text,
    descripcion text,
    tipo character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer,
    "SeccionId" integer,
    "CategoriaId" integer
);
    DROP TABLE public."Links";
       public         heap    postgres    false            �            1259    1266831    Links_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Links_id_seq";
       public          postgres    false    251            �           0    0    Links_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Links_id_seq" OWNED BY public."Links".id;
          public          postgres    false    250            �            1259    1266856    Noticias    TABLE     A  CREATE TABLE public."Noticias" (
    id integer NOT NULL,
    titulo character varying(255),
    encabezado character varying(255),
    "imgPath" character varying(255),
    descripcion character varying(255),
    estado boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Noticias";
       public         heap    postgres    false            �            1259    1266855    Noticias_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Noticias_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Noticias_id_seq";
       public          postgres    false    253            �           0    0    Noticias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Noticias_id_seq" OWNED BY public."Noticias".id;
          public          postgres    false    252            �            1259    1266677    Notificaciones    TABLE     �   CREATE TABLE public."Notificaciones" (
    id integer NOT NULL,
    titulo character varying(255),
    descripcion character varying(255),
    estado boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."Notificaciones";
       public         heap    postgres    false            �            1259    1266676    Notificaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notificaciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Notificaciones_id_seq";
       public          postgres    false    229            �           0    0    Notificaciones_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Notificaciones_id_seq" OWNED BY public."Notificaciones".id;
          public          postgres    false    228            �            1259    1266588    Permisos    TABLE     �   CREATE TABLE public."Permisos" (
    id integer NOT NULL,
    permiso character varying(255),
    "permisoKey" character varying(255),
    "createdAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Permisos";
       public         heap    postgres    false            �            1259    1266587    Permisos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permisos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Permisos_id_seq";
       public          postgres    false    216            �           0    0    Permisos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Permisos_id_seq" OWNED BY public."Permisos".id;
          public          postgres    false    215            �            1259    1266687    Pqrs    TABLE     ~  CREATE TABLE public."Pqrs" (
    id integer NOT NULL,
    nombre character varying(255),
    apellido character varying(255),
    tipo character varying(255),
    remitente character varying(255),
    correo character varying(255),
    "numeroContacto" character varying(255),
    mensaje text,
    estado boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Pqrs";
       public         heap    postgres    false            �            1259    1266686    Pqrs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Pqrs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Pqrs_id_seq";
       public          postgres    false    231            �           0    0    Pqrs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Pqrs_id_seq" OWNED BY public."Pqrs".id;
          public          postgres    false    230            �            1259    1266605    Roles    TABLE     �   CREATE TABLE public."Roles" (
    id integer NOT NULL,
    rol character varying(255),
    "rolKey" character varying(255),
    estado boolean DEFAULT true
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            �            1259    1266602    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    220            �           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    219            �            1259    1266595 	   Secciones    TABLE     �   CREATE TABLE public."Secciones" (
    id integer NOT NULL,
    seccion character varying(255),
    "seccionKey" character varying(255)
);
    DROP TABLE public."Secciones";
       public         heap    postgres    false            �            1259    1266593    Secciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Secciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Secciones_id_seq";
       public          postgres    false    218            �           0    0    Secciones_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Secciones_id_seq" OWNED BY public."Secciones".id;
          public          postgres    false    217            �            1259    1266760    Slider    TABLE     �   CREATE TABLE public."Slider" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "ImagenId" integer
);
    DROP TABLE public."Slider";
       public         heap    postgres    false            �            1259    1266759    Slider_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Slider_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Slider_id_seq";
       public          postgres    false    243            �           0    0    Slider_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Slider_id_seq" OWNED BY public."Slider".id;
          public          postgres    false    242            �            1259    1266871    Tokens    TABLE       CREATE TABLE public."Tokens" (
    id integer NOT NULL,
    nombre character varying(255),
    token text,
    "tokenKey" character varying(255),
    tiempo character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Tokens";
       public         heap    postgres    false            �            1259    1266870    Tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tokens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Tokens_id_seq";
       public          postgres    false    255            �           0    0    Tokens_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Tokens_id_seq" OWNED BY public."Tokens".id;
          public          postgres    false    254            �            1259    1266628    Usuarios    TABLE     �  CREATE TABLE public."Usuarios" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    "fechaNacimiento" timestamp with time zone NOT NULL,
    correo text NOT NULL,
    celular character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    estado boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "RolId" integer
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false            �            1259    1266772    Videos    TABLE     �   CREATE TABLE public."Videos" (
    id integer NOT NULL,
    link text,
    titulo character varying(255),
    "imgPath" text,
    "createdAt" timestamp with time zone NOT NULL,
    "UsuarioId" integer
);
    DROP TABLE public."Videos";
       public         heap    postgres    false            �            1259    1266771    Videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Videos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Videos_id_seq";
       public          postgres    false    245            �           0    0    Videos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Videos_id_seq" OWNED BY public."Videos".id;
          public          postgres    false    244            �            1259    1266713    Vistas    TABLE     �   CREATE TABLE public."Vistas" (
    id integer NOT NULL,
    "vistasTotales" integer,
    "vistasMes" integer,
    "vistasDia" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Vistas";
       public         heap    postgres    false            �            1259    1266712    Vistas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Vistas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Vistas_id_seq";
       public          postgres    false    235            �           0    0    Vistas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Vistas_id_seq" OWNED BY public."Vistas".id;
          public          postgres    false    234            �           2604    1266795    Anuncios id    DEFAULT     n   ALTER TABLE ONLY public."Anuncios" ALTER COLUMN id SET DEFAULT nextval('public."Anuncios_id_seq"'::regclass);
 <   ALTER TABLE public."Anuncios" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    1266723    Archivos id    DEFAULT     n   ALTER TABLE ONLY public."Archivos" ALTER COLUMN id SET DEFAULT nextval('public."Archivos_id_seq"'::regclass);
 <   ALTER TABLE public."Archivos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    1266621    Categorias id    DEFAULT     r   ALTER TABLE ONLY public."Categorias" ALTER COLUMN id SET DEFAULT nextval('public."Categorias_id_seq"'::regclass);
 >   ALTER TABLE public."Categorias" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    1266700    Credenciales id    DEFAULT     v   ALTER TABLE ONLY public."Credenciales" ALTER COLUMN id SET DEFAULT nextval('public."Credenciales_id_seq"'::regclass);
 @   ALTER TABLE public."Credenciales" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    1266661    DetallePermisos id    DEFAULT     |   ALTER TABLE ONLY public."DetallePermisos" ALTER COLUMN id SET DEFAULT nextval('public."DetallePermisos_id_seq"'::regclass);
 C   ALTER TABLE public."DetallePermisos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    1266737 
   Eventos id    DEFAULT     l   ALTER TABLE ONLY public."Eventos" ALTER COLUMN id SET DEFAULT nextval('public."Eventos_id_seq"'::regclass);
 ;   ALTER TABLE public."Eventos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    1266744 
   Galeria id    DEFAULT     l   ALTER TABLE ONLY public."Galeria" ALTER COLUMN id SET DEFAULT nextval('public."Galeria_id_seq"'::regclass);
 ;   ALTER TABLE public."Galeria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    1266647    Historial id    DEFAULT     p   ALTER TABLE ONLY public."Historial" ALTER COLUMN id SET DEFAULT nextval('public."Historial_id_seq"'::regclass);
 =   ALTER TABLE public."Historial" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    1266820    Items id    DEFAULT     h   ALTER TABLE ONLY public."Items" ALTER COLUMN id SET DEFAULT nextval('public."Items_id_seq"'::regclass);
 9   ALTER TABLE public."Items" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    1266835    Links id    DEFAULT     h   ALTER TABLE ONLY public."Links" ALTER COLUMN id SET DEFAULT nextval('public."Links_id_seq"'::regclass);
 9   ALTER TABLE public."Links" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            �           2604    1266859    Noticias id    DEFAULT     n   ALTER TABLE ONLY public."Noticias" ALTER COLUMN id SET DEFAULT nextval('public."Noticias_id_seq"'::regclass);
 <   ALTER TABLE public."Noticias" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    1266680    Notificaciones id    DEFAULT     z   ALTER TABLE ONLY public."Notificaciones" ALTER COLUMN id SET DEFAULT nextval('public."Notificaciones_id_seq"'::regclass);
 B   ALTER TABLE public."Notificaciones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    1266591    Permisos id    DEFAULT     n   ALTER TABLE ONLY public."Permisos" ALTER COLUMN id SET DEFAULT nextval('public."Permisos_id_seq"'::regclass);
 <   ALTER TABLE public."Permisos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    1266690    Pqrs id    DEFAULT     f   ALTER TABLE ONLY public."Pqrs" ALTER COLUMN id SET DEFAULT nextval('public."Pqrs_id_seq"'::regclass);
 8   ALTER TABLE public."Pqrs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    1266609    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    1266598    Secciones id    DEFAULT     p   ALTER TABLE ONLY public."Secciones" ALTER COLUMN id SET DEFAULT nextval('public."Secciones_id_seq"'::regclass);
 =   ALTER TABLE public."Secciones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    1266763 	   Slider id    DEFAULT     j   ALTER TABLE ONLY public."Slider" ALTER COLUMN id SET DEFAULT nextval('public."Slider_id_seq"'::regclass);
 :   ALTER TABLE public."Slider" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    1266874 	   Tokens id    DEFAULT     j   ALTER TABLE ONLY public."Tokens" ALTER COLUMN id SET DEFAULT nextval('public."Tokens_id_seq"'::regclass);
 :   ALTER TABLE public."Tokens" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            �           2604    1266775 	   Videos id    DEFAULT     j   ALTER TABLE ONLY public."Videos" ALTER COLUMN id SET DEFAULT nextval('public."Videos_id_seq"'::regclass);
 :   ALTER TABLE public."Videos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    1266716 	   Vistas id    DEFAULT     j   ALTER TABLE ONLY public."Vistas" ALTER COLUMN id SET DEFAULT nextval('public."Vistas_id_seq"'::regclass);
 :   ALTER TABLE public."Vistas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �          0    1266792    Anuncios 
   TABLE DATA           o   COPY public."Anuncios" (id, titulo, descripcion, "imgPath", "createdAt", "UsuarioId", "SeccionId") FROM stdin;
    public          postgres    false    247   \[      �          0    1266720    Archivos 
   TABLE DATA           S   COPY public."Archivos" (id, titulo, archivo, "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    237   y[      y          0    1266618 
   Categorias 
   TABLE DATA           E   COPY public."Categorias" (id, categoria, "categoriaKey") FROM stdin;
    public          postgres    false    222   �[      �          0    1266697    Credenciales 
   TABLE DATA           b   COPY public."Credenciales" (id, correo, clave, "createdAt", "updatedAt", "UsuarioId") FROM stdin;
    public          postgres    false    233   W\      ~          0    1266658    DetallePermisos 
   TABLE DATA           V   COPY public."DetallePermisos" (id, "createdAt", "UsuarioId", "PermisoId") FROM stdin;
    public          postgres    false    227   �\      �          0    1266734    Eventos 
   TABLE DATA           6   COPY public."Eventos" (id, evento, fecha) FROM stdin;
    public          postgres    false    239   []      �          0    1266741    Galeria 
   TABLE DATA           `   COPY public."Galeria" (id, titulo, "imgPath", "createdAt", "UsuarioId", "EventoId") FROM stdin;
    public          postgres    false    241   �]      |          0    1266644 	   Historial 
   TABLE DATA           X   COPY public."Historial" (id, cambio, descripcion, "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    225   )^      �          0    1266817    Items 
   TABLE DATA           `   COPY public."Items" (id, titulo, link, "imgPath", estado, "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    249   F^      �          0    1266832    Links 
   TABLE DATA           |   COPY public."Links" (id, titulo, link, descripcion, tipo, "createdAt", "UsuarioId", "SeccionId", "CategoriaId") FROM stdin;
    public          postgres    false    251   c^      �          0    1266856    Noticias 
   TABLE DATA           v   COPY public."Noticias" (id, titulo, encabezado, "imgPath", descripcion, estado, "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    253   �^      �          0    1266677    Notificaciones 
   TABLE DATA           X   COPY public."Notificaciones" (id, titulo, descripcion, estado, "createdAt") FROM stdin;
    public          postgres    false    229   �^      s          0    1266588    Permisos 
   TABLE DATA           L   COPY public."Permisos" (id, permiso, "permisoKey", "createdAt") FROM stdin;
    public          postgres    false    216   �^      �          0    1266687    Pqrs 
   TABLE DATA              COPY public."Pqrs" (id, nombre, apellido, tipo, remitente, correo, "numeroContacto", mensaje, estado, "createdAt") FROM stdin;
    public          postgres    false    231   S`      w          0    1266605    Roles 
   TABLE DATA           <   COPY public."Roles" (id, rol, "rolKey", estado) FROM stdin;
    public          postgres    false    220   p`      u          0    1266595 	   Secciones 
   TABLE DATA           @   COPY public."Secciones" (id, seccion, "seccionKey") FROM stdin;
    public          postgres    false    218   �`      �          0    1266760    Slider 
   TABLE DATA           ?   COPY public."Slider" (id, "createdAt", "ImagenId") FROM stdin;
    public          postgres    false    243   Pb      �          0    1266871    Tokens 
   TABLE DATA           c   COPY public."Tokens" (id, nombre, token, "tokenKey", tiempo, "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    255   mb      z          0    1266628    Usuarios 
   TABLE DATA           �   COPY public."Usuarios" (id, nombre, apellido, "fechaNacimiento", correo, celular, password, estado, "createdAt", "RolId") FROM stdin;
    public          postgres    false    223   c      �          0    1266772    Videos 
   TABLE DATA           Y   COPY public."Videos" (id, link, titulo, "imgPath", "createdAt", "UsuarioId") FROM stdin;
    public          postgres    false    245   �c      �          0    1266713    Vistas 
   TABLE DATA           k   COPY public."Vistas" (id, "vistasTotales", "vistasMes", "vistasDia", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   �c      �           0    0    Anuncios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Anuncios_id_seq"', 1, false);
          public          postgres    false    246            �           0    0    Archivos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Archivos_id_seq"', 1, false);
          public          postgres    false    236            �           0    0    Categorias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Categorias_id_seq"', 8, true);
          public          postgres    false    221            �           0    0    Credenciales_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Credenciales_id_seq"', 1, true);
          public          postgres    false    232            �           0    0    DetallePermisos_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."DetallePermisos_id_seq"', 14, true);
          public          postgres    false    226            �           0    0    Eventos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Eventos_id_seq"', 1, true);
          public          postgres    false    238            �           0    0    Galeria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Galeria_id_seq"', 1, true);
          public          postgres    false    240            �           0    0    Historial_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Historial_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    Items_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Items_id_seq"', 1, false);
          public          postgres    false    248            �           0    0    Links_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Links_id_seq"', 1, false);
          public          postgres    false    250            �           0    0    Noticias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Noticias_id_seq"', 1, false);
          public          postgres    false    252            �           0    0    Notificaciones_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Notificaciones_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    Permisos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Permisos_id_seq"', 14, true);
          public          postgres    false    215            �           0    0    Pqrs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Pqrs_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    Roles_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Roles_id_seq"', 5, true);
          public          postgres    false    219            �           0    0    Secciones_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Secciones_id_seq"', 15, true);
          public          postgres    false    217            �           0    0    Slider_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Slider_id_seq"', 1, false);
          public          postgres    false    242            �           0    0    Tokens_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Tokens_id_seq"', 1, true);
          public          postgres    false    254            �           0    0    Videos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Videos_id_seq"', 1, false);
          public          postgres    false    244            �           0    0    Vistas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Vistas_id_seq"', 1, false);
          public          postgres    false    234            �           2606    1266799    Anuncios Anuncios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Anuncios"
    ADD CONSTRAINT "Anuncios_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Anuncios" DROP CONSTRAINT "Anuncios_pkey";
       public            postgres    false    247            �           2606    1266727    Archivos Archivos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Archivos"
    ADD CONSTRAINT "Archivos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Archivos" DROP CONSTRAINT "Archivos_pkey";
       public            postgres    false    237                        2606    1271488 &   Categorias Categorias_categoriaKey_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key" UNIQUE ("categoriaKey");
 T   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key";
       public            postgres    false    222                       2606    1271490 '   Categorias Categorias_categoriaKey_key1 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key1" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key1";
       public            postgres    false    222                       2606    1271500 (   Categorias Categorias_categoriaKey_key10 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key10" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key10";
       public            postgres    false    222                       2606    1271478 (   Categorias Categorias_categoriaKey_key11 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key11" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key11";
       public            postgres    false    222                       2606    1271476 (   Categorias Categorias_categoriaKey_key12 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key12" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key12";
       public            postgres    false    222            
           2606    1271502 (   Categorias Categorias_categoriaKey_key13 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key13" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key13";
       public            postgres    false    222                       2606    1271474 (   Categorias Categorias_categoriaKey_key14 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key14" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key14";
       public            postgres    false    222                       2606    1271504 (   Categorias Categorias_categoriaKey_key15 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key15" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key15";
       public            postgres    false    222                       2606    1271506 (   Categorias Categorias_categoriaKey_key16 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key16" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key16";
       public            postgres    false    222                       2606    1271472 (   Categorias Categorias_categoriaKey_key17 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key17" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key17";
       public            postgres    false    222                       2606    1271508 (   Categorias Categorias_categoriaKey_key18 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key18" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key18";
       public            postgres    false    222                       2606    1271470 (   Categorias Categorias_categoriaKey_key19 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key19" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key19";
       public            postgres    false    222                       2606    1271486 '   Categorias Categorias_categoriaKey_key2 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key2" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key2";
       public            postgres    false    222                       2606    1271510 (   Categorias Categorias_categoriaKey_key20 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key20" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key20";
       public            postgres    false    222                       2606    1271468 (   Categorias Categorias_categoriaKey_key21 
   CONSTRAINT     q   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key21" UNIQUE ("categoriaKey");
 V   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key21";
       public            postgres    false    222                       2606    1271484 '   Categorias Categorias_categoriaKey_key3 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key3" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key3";
       public            postgres    false    222                        2606    1271492 '   Categorias Categorias_categoriaKey_key4 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key4" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key4";
       public            postgres    false    222            "           2606    1271494 '   Categorias Categorias_categoriaKey_key5 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key5" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key5";
       public            postgres    false    222            $           2606    1271482 '   Categorias Categorias_categoriaKey_key6 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key6" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key6";
       public            postgres    false    222            &           2606    1271496 '   Categorias Categorias_categoriaKey_key7 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key7" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key7";
       public            postgres    false    222            (           2606    1271498 '   Categorias Categorias_categoriaKey_key8 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key8" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key8";
       public            postgres    false    222            *           2606    1271480 '   Categorias Categorias_categoriaKey_key9 
   CONSTRAINT     p   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_categoriaKey_key9" UNIQUE ("categoriaKey");
 U   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_categoriaKey_key9";
       public            postgres    false    222            ,           2606    1266625    Categorias Categorias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_pkey";
       public            postgres    false    222            f           2606    1271362 $   Credenciales Credenciales_correo_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key" UNIQUE (correo);
 R   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key";
       public            postgres    false    233            h           2606    1271360 %   Credenciales Credenciales_correo_key1 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key1" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key1";
       public            postgres    false    233            j           2606    1271370 &   Credenciales Credenciales_correo_key10 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key10" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key10";
       public            postgres    false    233            l           2606    1271348 &   Credenciales Credenciales_correo_key11 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key11" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key11";
       public            postgres    false    233            n           2606    1271372 &   Credenciales Credenciales_correo_key12 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key12" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key12";
       public            postgres    false    233            p           2606    1271346 &   Credenciales Credenciales_correo_key13 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key13" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key13";
       public            postgres    false    233            r           2606    1271344 &   Credenciales Credenciales_correo_key14 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key14" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key14";
       public            postgres    false    233            t           2606    1271374 &   Credenciales Credenciales_correo_key15 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key15" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key15";
       public            postgres    false    233            v           2606    1271342 &   Credenciales Credenciales_correo_key16 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key16" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key16";
       public            postgres    false    233            x           2606    1271376 &   Credenciales Credenciales_correo_key17 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key17" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key17";
       public            postgres    false    233            z           2606    1271340 &   Credenciales Credenciales_correo_key18 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key18" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key18";
       public            postgres    false    233            |           2606    1271378 &   Credenciales Credenciales_correo_key19 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key19" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key19";
       public            postgres    false    233            ~           2606    1271364 %   Credenciales Credenciales_correo_key2 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key2" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key2";
       public            postgres    false    233            �           2606    1271338 &   Credenciales Credenciales_correo_key20 
   CONSTRAINT     g   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key20" UNIQUE (correo);
 T   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key20";
       public            postgres    false    233            �           2606    1271366 %   Credenciales Credenciales_correo_key3 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key3" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key3";
       public            postgres    false    233            �           2606    1271358 %   Credenciales Credenciales_correo_key4 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key4" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key4";
       public            postgres    false    233            �           2606    1271356 %   Credenciales Credenciales_correo_key5 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key5" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key5";
       public            postgres    false    233            �           2606    1271368 %   Credenciales Credenciales_correo_key6 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key6" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key6";
       public            postgres    false    233            �           2606    1271354 %   Credenciales Credenciales_correo_key7 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key7" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key7";
       public            postgres    false    233            �           2606    1271352 %   Credenciales Credenciales_correo_key8 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key8" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key8";
       public            postgres    false    233            �           2606    1271350 %   Credenciales Credenciales_correo_key9 
   CONSTRAINT     f   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_correo_key9" UNIQUE (correo);
 S   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_correo_key9";
       public            postgres    false    233            �           2606    1266704    Credenciales Credenciales_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_pkey";
       public            postgres    false    233            ^           2606    1266665 7   DetallePermisos DetallePermisos_UsuarioId_PermisoId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."DetallePermisos"
    ADD CONSTRAINT "DetallePermisos_UsuarioId_PermisoId_key" UNIQUE ("UsuarioId", "PermisoId");
 e   ALTER TABLE ONLY public."DetallePermisos" DROP CONSTRAINT "DetallePermisos_UsuarioId_PermisoId_key";
       public            postgres    false    227    227            `           2606    1266663 $   DetallePermisos DetallePermisos_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."DetallePermisos"
    ADD CONSTRAINT "DetallePermisos_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."DetallePermisos" DROP CONSTRAINT "DetallePermisos_pkey";
       public            postgres    false    227            �           2606    1266739    Eventos Eventos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Eventos" DROP CONSTRAINT "Eventos_pkey";
       public            postgres    false    239            �           2606    1266748    Galeria Galeria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Galeria"
    ADD CONSTRAINT "Galeria_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Galeria" DROP CONSTRAINT "Galeria_pkey";
       public            postgres    false    241            \           2606    1266651    Historial Historial_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Historial"
    ADD CONSTRAINT "Historial_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Historial" DROP CONSTRAINT "Historial_pkey";
       public            postgres    false    225            �           2606    1266825    Items Items_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Items"
    ADD CONSTRAINT "Items_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Items" DROP CONSTRAINT "Items_pkey";
       public            postgres    false    249            �           2606    1266839    Links Links_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Links"
    ADD CONSTRAINT "Links_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Links" DROP CONSTRAINT "Links_pkey";
       public            postgres    false    251            �           2606    1266864    Noticias Noticias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Noticias"
    ADD CONSTRAINT "Noticias_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Noticias" DROP CONSTRAINT "Noticias_pkey";
       public            postgres    false    253            b           2606    1266685 "   Notificaciones Notificaciones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Notificaciones"
    ADD CONSTRAINT "Notificaciones_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Notificaciones" DROP CONSTRAINT "Notificaciones_pkey";
       public            postgres    false    229            �           2606    1266603    Permisos Permisos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Permisos"
    ADD CONSTRAINT "Permisos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Permisos" DROP CONSTRAINT "Permisos_pkey";
       public            postgres    false    216            d           2606    1266695    Pqrs Pqrs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Pqrs"
    ADD CONSTRAINT "Pqrs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Pqrs" DROP CONSTRAINT "Pqrs_pkey";
       public            postgres    false    231            �           2606    1266617    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    220            �           2606    1266606    Secciones Secciones_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_pkey";
       public            postgres    false    218            �           2606    1271434 "   Secciones Secciones_seccionKey_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key" UNIQUE ("seccionKey");
 P   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key";
       public            postgres    false    218            �           2606    1271436 #   Secciones Secciones_seccionKey_key1 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key1" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key1";
       public            postgres    false    218            �           2606    1271446 $   Secciones Secciones_seccionKey_key10 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key10" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key10";
       public            postgres    false    218            �           2606    1271424 $   Secciones Secciones_seccionKey_key11 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key11" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key11";
       public            postgres    false    218            �           2606    1271422 $   Secciones Secciones_seccionKey_key12 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key12" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key12";
       public            postgres    false    218            �           2606    1271448 $   Secciones Secciones_seccionKey_key13 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key13" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key13";
       public            postgres    false    218            �           2606    1271420 $   Secciones Secciones_seccionKey_key14 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key14" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key14";
       public            postgres    false    218            �           2606    1271418 $   Secciones Secciones_seccionKey_key15 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key15" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key15";
       public            postgres    false    218            �           2606    1271450 $   Secciones Secciones_seccionKey_key16 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key16" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key16";
       public            postgres    false    218            �           2606    1271416 $   Secciones Secciones_seccionKey_key17 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key17" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key17";
       public            postgres    false    218            �           2606    1271452 $   Secciones Secciones_seccionKey_key18 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key18" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key18";
       public            postgres    false    218            �           2606    1271414 $   Secciones Secciones_seccionKey_key19 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key19" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key19";
       public            postgres    false    218            �           2606    1271432 #   Secciones Secciones_seccionKey_key2 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key2" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key2";
       public            postgres    false    218            �           2606    1271454 $   Secciones Secciones_seccionKey_key20 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key20" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key20";
       public            postgres    false    218            �           2606    1271412 $   Secciones Secciones_seccionKey_key21 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key21" UNIQUE ("seccionKey");
 R   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key21";
       public            postgres    false    218            �           2606    1271438 #   Secciones Secciones_seccionKey_key3 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key3" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key3";
       public            postgres    false    218            �           2606    1271430 #   Secciones Secciones_seccionKey_key4 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key4" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key4";
       public            postgres    false    218            �           2606    1271440 #   Secciones Secciones_seccionKey_key5 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key5" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key5";
       public            postgres    false    218            �           2606    1271428 #   Secciones Secciones_seccionKey_key6 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key6" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key6";
       public            postgres    false    218            �           2606    1271442 #   Secciones Secciones_seccionKey_key7 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key7" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key7";
       public            postgres    false    218            �           2606    1271426 #   Secciones Secciones_seccionKey_key8 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key8" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key8";
       public            postgres    false    218            �           2606    1271444 #   Secciones Secciones_seccionKey_key9 
   CONSTRAINT     j   ALTER TABLE ONLY public."Secciones"
    ADD CONSTRAINT "Secciones_seccionKey_key9" UNIQUE ("seccionKey");
 Q   ALTER TABLE ONLY public."Secciones" DROP CONSTRAINT "Secciones_seccionKey_key9";
       public            postgres    false    218            �           2606    1266765    Slider Slider_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Slider"
    ADD CONSTRAINT "Slider_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Slider" DROP CONSTRAINT "Slider_pkey";
       public            postgres    false    243            �           2606    1266878    Tokens Tokens_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_pkey";
       public            postgres    false    255            �           2606    1271545    Tokens Tokens_tokenKey_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key" UNIQUE ("tokenKey");
 H   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key";
       public            postgres    false    255            �           2606    1271583    Tokens Tokens_tokenKey_key1 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key1" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key1";
       public            postgres    false    255            �           2606    1271575    Tokens Tokens_tokenKey_key10 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key10" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key10";
       public            postgres    false    255            �           2606    1271573    Tokens Tokens_tokenKey_key11 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key11" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key11";
       public            postgres    false    255            �           2606    1271555    Tokens Tokens_tokenKey_key12 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key12" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key12";
       public            postgres    false    255            �           2606    1271571    Tokens Tokens_tokenKey_key13 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key13" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key13";
       public            postgres    false    255            �           2606    1271557    Tokens Tokens_tokenKey_key14 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key14" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key14";
       public            postgres    false    255            �           2606    1271559    Tokens Tokens_tokenKey_key15 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key15" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key15";
       public            postgres    false    255            �           2606    1271569    Tokens Tokens_tokenKey_key16 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key16" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key16";
       public            postgres    false    255            �           2606    1271561    Tokens Tokens_tokenKey_key17 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key17" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key17";
       public            postgres    false    255            �           2606    1271567    Tokens Tokens_tokenKey_key18 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key18" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key18";
       public            postgres    false    255            �           2606    1271563    Tokens Tokens_tokenKey_key19 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key19" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key19";
       public            postgres    false    255            �           2606    1271547    Tokens Tokens_tokenKey_key2 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key2" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key2";
       public            postgres    false    255            �           2606    1271565    Tokens Tokens_tokenKey_key20 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key20" UNIQUE ("tokenKey");
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key20";
       public            postgres    false    255            �           2606    1271581    Tokens Tokens_tokenKey_key3 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key3" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key3";
       public            postgres    false    255            �           2606    1271549    Tokens Tokens_tokenKey_key4 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key4" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key4";
       public            postgres    false    255            �           2606    1271579    Tokens Tokens_tokenKey_key5 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key5" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key5";
       public            postgres    false    255            �           2606    1271551    Tokens Tokens_tokenKey_key6 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key6" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key6";
       public            postgres    false    255            �           2606    1271577    Tokens Tokens_tokenKey_key7 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key7" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key7";
       public            postgres    false    255            �           2606    1271543    Tokens Tokens_tokenKey_key8 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key8" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key8";
       public            postgres    false    255            �           2606    1271553    Tokens Tokens_tokenKey_key9 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_tokenKey_key9" UNIQUE ("tokenKey");
 I   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_tokenKey_key9";
       public            postgres    false    255            .           2606    1271292    Usuarios Usuarios_correo_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key" UNIQUE (correo);
 J   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key";
       public            postgres    false    223            0           2606    1271290    Usuarios Usuarios_correo_key1 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key1" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key1";
       public            postgres    false    223            2           2606    1271300    Usuarios Usuarios_correo_key10 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key10" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key10";
       public            postgres    false    223            4           2606    1271276    Usuarios Usuarios_correo_key11 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key11" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key11";
       public            postgres    false    223            6           2606    1271274    Usuarios Usuarios_correo_key12 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key12" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key12";
       public            postgres    false    223            8           2606    1271302    Usuarios Usuarios_correo_key13 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key13" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key13";
       public            postgres    false    223            :           2606    1271272    Usuarios Usuarios_correo_key14 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key14" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key14";
       public            postgres    false    223            <           2606    1271288    Usuarios Usuarios_correo_key15 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key15" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key15";
       public            postgres    false    223            >           2606    1271304    Usuarios Usuarios_correo_key16 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key16" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key16";
       public            postgres    false    223            @           2606    1271270    Usuarios Usuarios_correo_key17 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key17" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key17";
       public            postgres    false    223            B           2606    1271306    Usuarios Usuarios_correo_key18 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key18" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key18";
       public            postgres    false    223            D           2606    1271268    Usuarios Usuarios_correo_key19 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key19" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key19";
       public            postgres    false    223            F           2606    1271294    Usuarios Usuarios_correo_key2 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key2" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key2";
       public            postgres    false    223            H           2606    1271308    Usuarios Usuarios_correo_key20 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key20" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key20";
       public            postgres    false    223            J           2606    1271266    Usuarios Usuarios_correo_key21 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key21" UNIQUE (correo);
 L   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key21";
       public            postgres    false    223            L           2606    1271286    Usuarios Usuarios_correo_key3 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key3" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key3";
       public            postgres    false    223            N           2606    1271284    Usuarios Usuarios_correo_key4 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key4" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key4";
       public            postgres    false    223            P           2606    1271296    Usuarios Usuarios_correo_key5 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key5" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key5";
       public            postgres    false    223            R           2606    1271282    Usuarios Usuarios_correo_key6 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key6" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key6";
       public            postgres    false    223            T           2606    1271298    Usuarios Usuarios_correo_key7 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key7" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key7";
       public            postgres    false    223            V           2606    1271280    Usuarios Usuarios_correo_key8 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key8" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key8";
       public            postgres    false    223            X           2606    1271278    Usuarios Usuarios_correo_key9 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_correo_key9" UNIQUE (correo);
 K   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_correo_key9";
       public            postgres    false    223            Z           2606    1266635    Usuarios Usuarios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    223            �           2606    1266779    Videos Videos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Videos"
    ADD CONSTRAINT "Videos_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Videos" DROP CONSTRAINT "Videos_pkey";
       public            postgres    false    245            �           2606    1266718    Vistas Vistas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Vistas"
    ADD CONSTRAINT "Vistas_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Vistas" DROP CONSTRAINT "Vistas_pkey";
       public            postgres    false    235            �           2606    1271460     Anuncios Anuncios_SeccionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Anuncios"
    ADD CONSTRAINT "Anuncios_SeccionId_fkey" FOREIGN KEY ("SeccionId") REFERENCES public."Secciones"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Anuncios" DROP CONSTRAINT "Anuncios_SeccionId_fkey";
       public          postgres    false    4816    247    218            �           2606    1271455     Anuncios Anuncios_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Anuncios"
    ADD CONSTRAINT "Anuncios_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Anuncios" DROP CONSTRAINT "Anuncios_UsuarioId_fkey";
       public          postgres    false    4954    247    223            �           2606    1271384     Archivos Archivos_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Archivos"
    ADD CONSTRAINT "Archivos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Archivos" DROP CONSTRAINT "Archivos_UsuarioId_fkey";
       public          postgres    false    223    237    4954            �           2606    1271379 (   Credenciales Credenciales_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Credenciales"
    ADD CONSTRAINT "Credenciales_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Credenciales" DROP CONSTRAINT "Credenciales_UsuarioId_fkey";
       public          postgres    false    4954    223    233            �           2606    1271326 .   DetallePermisos DetallePermisos_PermisoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetallePermisos"
    ADD CONSTRAINT "DetallePermisos_PermisoId_fkey" FOREIGN KEY ("PermisoId") REFERENCES public."Permisos"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public."DetallePermisos" DROP CONSTRAINT "DetallePermisos_PermisoId_fkey";
       public          postgres    false    4814    216    227            �           2606    1271321 .   DetallePermisos DetallePermisos_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetallePermisos"
    ADD CONSTRAINT "DetallePermisos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public."DetallePermisos" DROP CONSTRAINT "DetallePermisos_UsuarioId_fkey";
       public          postgres    false    4954    227    223            �           2606    1271394    Galeria Galeria_EventoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Galeria"
    ADD CONSTRAINT "Galeria_EventoId_fkey" FOREIGN KEY ("EventoId") REFERENCES public."Eventos"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Galeria" DROP CONSTRAINT "Galeria_EventoId_fkey";
       public          postgres    false    241    5014    239            �           2606    1271389    Galeria Galeria_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Galeria"
    ADD CONSTRAINT "Galeria_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Galeria" DROP CONSTRAINT "Galeria_UsuarioId_fkey";
       public          postgres    false    223    241    4954            �           2606    1271316 "   Historial Historial_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Historial"
    ADD CONSTRAINT "Historial_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Historial" DROP CONSTRAINT "Historial_UsuarioId_fkey";
       public          postgres    false    223    225    4954            �           2606    1271513    Items Items_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Items"
    ADD CONSTRAINT "Items_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Items" DROP CONSTRAINT "Items_UsuarioId_fkey";
       public          postgres    false    249    4954    223            �           2606    1271528    Links Links_CategoriaId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Links"
    ADD CONSTRAINT "Links_CategoriaId_fkey" FOREIGN KEY ("CategoriaId") REFERENCES public."Categorias"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Links" DROP CONSTRAINT "Links_CategoriaId_fkey";
       public          postgres    false    222    4908    251            �           2606    1271523    Links Links_SeccionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Links"
    ADD CONSTRAINT "Links_SeccionId_fkey" FOREIGN KEY ("SeccionId") REFERENCES public."Secciones"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Links" DROP CONSTRAINT "Links_SeccionId_fkey";
       public          postgres    false    218    4816    251            �           2606    1271518    Links Links_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Links"
    ADD CONSTRAINT "Links_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Links" DROP CONSTRAINT "Links_UsuarioId_fkey";
       public          postgres    false    4954    251    223            �           2606    1271535     Noticias Noticias_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Noticias"
    ADD CONSTRAINT "Noticias_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Noticias" DROP CONSTRAINT "Noticias_UsuarioId_fkey";
       public          postgres    false    253    223    4954            �           2606    1271399    Slider Slider_ImagenId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Slider"
    ADD CONSTRAINT "Slider_ImagenId_fkey" FOREIGN KEY ("ImagenId") REFERENCES public."Galeria"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Slider" DROP CONSTRAINT "Slider_ImagenId_fkey";
       public          postgres    false    243    241    5016            �           2606    1271584    Tokens Tokens_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_UsuarioId_fkey";
       public          postgres    false    223    255    4954            �           2606    1271311    Usuarios Usuarios_RolId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_RolId_fkey" FOREIGN KEY ("RolId") REFERENCES public."Roles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_RolId_fkey";
       public          postgres    false    4862    220    223            �           2606    1271404    Videos Videos_UsuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Videos"
    ADD CONSTRAINT "Videos_UsuarioId_fkey" FOREIGN KEY ("UsuarioId") REFERENCES public."Usuarios"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Videos" DROP CONSTRAINT "Videos_UsuarioId_fkey";
       public          postgres    false    4954    223    245            �      x������ � �      �      x������ � �      y   �   x�=�M
�0FיSx��iH;eڥPBHH{3��������{V&�z�IL4%IY	Ԝ`;.�5ɛ��rN�Îeƾ|.�!�K��Mi-��{�ɻn0���J��HJ5
��80cz�n�GJ �E3GF�q�5N���}���4�*B��<�B0O7k��W	�5 |0�E      �   g   x�}�K� �1��@޽�D;r!NH��#���w��J���۴��Q��"����W7�M�{-����|�R͜�AQ���f��)�w+�_ :x�tZ�	/�      ~   }   x�uѻ�0�X��PC�ǟjQ�u�1����KUQ���G|���^ڥ�����M�,à��!9M�Yv�#����L�09��-�2���P�db�'L2�Q�I��_��I��xo _;�l      �   3   x�3�N�ITHIU�*MM�/�4202�50�52T0��20 "]S�=... �
C      �   {   x�%�A� F�5����? :=E`BHK*�
)M������˃��^�R�jr��v�l�WU^i��%��5&��ز�-uH���+I ��|d��g˫�sgɟ�ч�e�`� 0<���Ak��$(      |      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      s   �  x��RKn�0\ӧ�X��&�2��iU��
��>T!�$�����듌l�73�f����.d��f�4+��o�J��U�L�y��&�m��H.o���Eʪxc����#R���,c�K&���p�k��}#��κ�?���#<�u\6��G ���u�Ŷ�ڀ�_��;݊\�JĈ_؁��������v�o�,_�����3��0�[񨴌�\3�{4�M�P�ѫ7,G�{� �/}ǋ�]GI�z8��szo��Y7W�[T4Y�{�zO����W�Þ�ʣ���ˊ��C���b�S�#��18��Ne�&�e\�fd�Z|���FK]�!ah�:�}���h���|�U!��B��l�'Atsu��Im����U-�O��b�X�Ly��      �      x������ � �      w   v   x��;
�0@g�>A���cphY
A�5R+�j�_w|�#�f��X�|j;����cI`�QV�	b��0�6������r3E���q�����XD!�|��
3����Ha�oσs��d%�      u   J  x�M�[N� ��a]���xyd(NH:��ɤ��I0�2B�~\����	�Z}��89�C@�vt�j�II�%�p��ywYn}��Oτ�M��^8\/n/_�9���������a�:����3EUU��+�v�:�	�yfJ�\R�@xw4��#$��'����|�A�J�K�&=����~�V׹���l�L�w��݂�:��`[�J�p���P+Fp�c���Ȝ����	��TpyՄV�3ho]��ԏS�p�N-�d�!uQ�2E������Οt��.
\-f��h�s��3�@[�wo��!�o]�}$�|)�,����W��+      �      x������ � �      �   �   x��A�0���+<��{���j� X-F��#ke��{b:�w�ףm:��$E��΍m���z��X�z٧���y��V�c=��۫kN������`�5��V�AB�1&� �'9ˌhD�2�O8��8$9      z   �   x�=ͻ�@@�z�

�]gFޕ��@ <bLl	����^i���AD�5�h��ܪ��f2a��eQ�8�l�7�={^���ܚaSwEӊ���c��βI��w�)Wm*b�/�"�*�}�`һ{��C�Ӽ���Q�{au��V	]$Ma��Іr��|��-�      �      x������ � �      �      x������ � �     