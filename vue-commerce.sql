PGDMP     0    ,                y            vue-ecommerce    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16406    vue-ecommerce    DATABASE     s   CREATE DATABASE "vue-ecommerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "vue-ecommerce";
                postgres    false            ?            1259    16409    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(200),
    category character varying(200),
    price numeric,
    description text,
    "createdAt" date,
    "updatedAt" date,
    "imageUrl" character varying(200)
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    16407    products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    201            ?           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    200            #           2604    16412    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    16409    products 
   TABLE DATA           q   COPY public.products (id, title, category, price, description, "createdAt", "updatedAt", "imageUrl") FROM stdin;
    public          postgres    false    201   @       ?           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 3, true);
          public          postgres    false    200            %           2606    16417    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    201            ?     x???OO?@???)?????ń??FԄ?Ak?,,?N?ۀ~z??Ϛ?7?L???G?\6WKov?xN?&9]em]?B?>?????1?hH??,?ڹ?^c????:?7?jT???8??j??B$ӌC?"Ζ%?˘??*ͻa?k??܊?~?z}???2-??Q??ЏOÖ?.+Ns????LZ??@?ː"??bH)!d??
??ߤ???u?A??h?P?b,??Q?Z?{?1??ʡS ??CV?su???o?TOoS?+-?2BС??o???o壙?     