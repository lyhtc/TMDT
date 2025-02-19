PGDMP                        |            web1    16.1    16.1 :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    web1    DATABASE        CREATE DATABASE web1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE web1;
                postgres    false            �            1259    16466 
   categories    TABLE       CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16465    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    223            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    222            �            1259    16400    kh    TABLE     W   CREATE TABLE public.kh (
    makh integer NOT NULL,
    tenkh character varying(50)
);
    DROP TABLE public.kh;
       public         heap    postgres    false            �            1259    16399    kh_makh_seq    SEQUENCE     �   CREATE SEQUENCE public.kh_makh_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.kh_makh_seq;
       public          postgres    false    216            �           0    0    kh_makh_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.kh_makh_seq OWNED BY public.kh.makh;
          public          postgres    false    215            �            1259    16407 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16406    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    218            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    217            �            1259    24578    order    TABLE     �  CREATE TABLE public."order" (
    id bigint NOT NULL,
    customer_name character varying(255) NOT NULL,
    customer_phone character varying(255) NOT NULL,
    customer_addres character varying(255) NOT NULL,
    total_price double precision NOT NULL,
    voucher character varying(255),
    total_quantity integer NOT NULL,
    status integer NOT NULL,
    note text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    24587    order_detail    TABLE     �  CREATE TABLE public.order_detail (
    id bigint NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    original_price double precision NOT NULL,
    price double precision NOT NULL,
    total_price double precision NOT NULL,
    note text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false            �            1259    24586    order_detail_id_seq    SEQUENCE     |   CREATE SEQUENCE public.order_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_detail_id_seq;
       public          postgres    false    229            �           0    0    order_detail_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_detail_id_seq OWNED BY public.order_detail.id;
          public          postgres    false    228            �            1259    24577    order_id_seq    SEQUENCE     u   CREATE SEQUENCE public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          postgres    false    227            �           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
          public          postgres    false    226            �            1259    16424    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    16490    products    TABLE     �  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    category_id bigint NOT NULL,
    inventory integer NOT NULL,
    description text,
    image character varying(255),
    status character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    promotion numeric(10,2),
    promotion_type character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16489    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    225            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    224            �            1259    16414    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16413    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    220            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    219            ?           2604    16469    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            <           2604    16403    kh makh    DEFAULT     b   ALTER TABLE ONLY public.kh ALTER COLUMN makh SET DEFAULT nextval('public.kh_makh_seq'::regclass);
 6   ALTER TABLE public.kh ALTER COLUMN makh DROP DEFAULT;
       public          postgres    false    215    216    216            =           2604    16410    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            A           2604    24581    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            B           2604    24590    order_detail id    DEFAULT     r   ALTER TABLE ONLY public.order_detail ALTER COLUMN id SET DEFAULT nextval('public.order_detail_id_seq'::regclass);
 >   ALTER TABLE public.order_detail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            @           2604    16493    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            >           2604    16417    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    16466 
   categories 
   TABLE DATA           [   COPY public.categories (id, name, description, status, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ,B       �          0    16400    kh 
   TABLE DATA           )   COPY public.kh (makh, tenkh) FROM stdin;
    public          postgres    false    216   �B       �          0    16407 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    218   C       �          0    24578    order 
   TABLE DATA           �   COPY public."order" (id, customer_name, customer_phone, customer_addres, total_price, voucher, total_quantity, status, note, created_at, updated_at) FROM stdin;
    public          postgres    false    227   �C       �          0    24587    order_detail 
   TABLE DATA           �   COPY public.order_detail (id, order_id, product_id, quantity, original_price, price, total_price, note, created_at, updated_at) FROM stdin;
    public          postgres    false    229   �C       �          0    16424    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    221   �C       �          0    16490    products 
   TABLE DATA           �   COPY public.products (id, name, category_id, inventory, description, image, status, price, promotion, promotion_type, created_at, updated_at) FROM stdin;
    public          postgres    false    225   D       �          0    16414    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    220   ;H                   0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 30, true);
          public          postgres    false    222                       0    0    kh_makh_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.kh_makh_seq', 1, false);
          public          postgres    false    215                       0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);
          public          postgres    false    217                       0    0    order_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_detail_id_seq', 1, false);
          public          postgres    false    228                       0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 1, false);
          public          postgres    false    226                       0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 26, true);
          public          postgres    false    224                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    219            M           2606    16473    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    223            D           2606    16405 
   kh kh_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.kh
    ADD CONSTRAINT kh_pkey PRIMARY KEY (makh);
 4   ALTER TABLE ONLY public.kh DROP CONSTRAINT kh_pkey;
       public            postgres    false    216            F           2606    16412    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    218            S           2606    24594    order_detail order_detail_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_pkey;
       public            postgres    false    229            Q           2606    24585    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    227            O           2606    16497    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    225            H           2606    16423    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    220            J           2606    16421    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            K           1259    16429    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    221            T           2606    16498 %   products products_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id);
 O   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_foreign;
       public          postgres    false    223    225    4685            �   �   x�32�<2!����<������fr�ޢP�p�b�#Q%9��Ltu��ͬ�Ͱ�qYM}�{r^�B���E�$�a����961.c� ���
�`!�+@�0����} 1.#N�Ă���I9�
 tC�,�L,��q��qqq �'e^      �      x�3��K/�L�SK�Sp������ D_w      �   �   x�]�Q
� ��z�a���]��ltj��g�jgE��	4J�&����h
l�9DJv\���!T�mc���(p�tFp�${�jy�yaG/?�\g�4I����ry�0�h/zh���[�T�9iGҠ������+:���|!�Ԣ�@��
:N����7!�_bo      �      x������ � �      �      x������ � �      �      x������ � �      �     x���M��H��p
.�ՙ�?;QT�"f��X��\��3G��+̪f1���M��ю�Ҏ�2_`��d���b��+����i�]��3�&:c��0����"ʗ�D��:��(��]���y�J��Zq�h/�Guw���x_/{+3V�hzt�]<Ļ50D�<h> `���	�����D��k�!��O ~B��@ I�?�h2�8|yz����97�{��C��H�PW�t#�|���r9�)n-z��2^>gpȵ�}��!��B>���h޽�<F�.�nW�2��쯼�d�3%r��n��X�ۊM�ͅ�iG�r�܅\�Y��D�@Z���}�)Ikve�
 ����o��jiÚ��(����;�K`�6�͗�A�����b_�\��K�&�Y�O`�����c�5�ʁ-ڞ	�����X3�)������(p-� I������_�Df/�F����5>n�OD�5��������L��j~T�iv�O���p���&XS������b4j!�y/¾����a��W�iS?�{l��N����~�U�)�ꉲa͏Hj��I�LƉ\@��A��jD {-�(!l,ӈgeOF�GAђ�g��2��L'�����vG����~xZ;O+���w'�9�Cp7;-  ����m�7�jE�>�LKޠ�V����N��N��y�f]%���h��9���uf���pɷ����t:!ܦ���V�>��9t�`�'�FT��d��d��#��a������ �5�}���u�-���~�呑����.���#��^sA�j��:q7�I��~H�i���GvnQ6P�yw�%�{S�j4\�!G���}�r�^����n:R ߷����̚;
�39AZ��"Jv7q޳�4<B���ʄ�
b_ը�c���.k��M� ��o�p����A���E�-ER�r���F
t�%���;Z��Q�:���g�]���U�@��f8d~Y�`��c@���1��Z�%�0�G�ӠBJ~`����G��H��N �[3������+      �      x������ � �     