PGDMP             
    
        y         	   ecommerce    10.15    10.15 X    n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            q           1262    16483 	   ecommerce    DATABASE     �   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252' TABLESPACE = bootcampspace;
    DROP DATABASE ecommerce;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            r           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            s           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                        3079    16655 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                  false    4            t           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                       false    2            �            1259    16514    address    TABLE     �  CREATE TABLE public.address (
    addr_id integer NOT NULL,
    addr_email character varying(55),
    addr_fullname character varying(55),
    addr_phone_number character varying(18),
    adr_is_default boolean,
    addr_zipcode character varying(15),
    addr_street1 character varying(255),
    addr_street2 character varying(255),
    addr_city_id integer,
    addr_user_id integer
);
    DROP TABLE public.address;
       public         postgres    false    4            �            1259    16512    address_addr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_addr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.address_addr_id_seq;
       public       postgres    false    4    202            u           0    0    address_addr_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.address_addr_id_seq OWNED BY public.address.addr_id;
            public       postgres    false    201            �            1259    16577    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    cart_created_on timestamp without time zone,
    cart_is_closed boolean,
    cart_total integer,
    cart_user_id integer
);
    DROP TABLE public.cart;
       public         postgres    false    4            �            1259    16575    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       postgres    false    210    4            v           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
            public       postgres    false    209            �            1259    16590    category    TABLE     d   CREATE TABLE public.category (
    cate_id integer NOT NULL,
    cate_name character varying(25)
);
    DROP TABLE public.category;
       public         postgres    false    4            �            1259    16588    category_cate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_cate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.category_cate_id_seq;
       public       postgres    false    4    212            w           0    0    category_cate_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.category_cate_id_seq OWNED BY public.category.cate_id;
            public       postgres    false    211            �            1259    16496    city    TABLE     {   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100),
    city_prov_id integer
);
    DROP TABLE public.city;
       public         postgres    false    4            �            1259    16494    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public       postgres    false    4    200            x           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
            public       postgres    false    199            �            1259    16631    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    ordi_quantity integer,
    ordi_price integer,
    ordi_cart_id integer,
    ordi_prod_id integer,
    ordi_order_name character varying(55)
);
     DROP TABLE public.order_detail;
       public         postgres    false    4            �            1259    16565    orders    TABLE     �   CREATE TABLE public.orders (
    order_name character varying(55) NOT NULL,
    order_create_on timestamp without time zone,
    order_is_closed boolean,
    order_total integer,
    order_user_id integer,
    total_payment integer
);
    DROP TABLE public.orders;
       public         postgres    false    4            �            1259    16598    product    TABLE     X  CREATE TABLE public.product (
    prod_id integer NOT NULL,
    prod_title character varying(25),
    prod_description character varying(255),
    prod_stock integer,
    prod_price integer,
    prod_condition character varying(15),
    prod_manufacture character varying(25),
    prod_image character varying(100),
    prod_cate_id integer
);
    DROP TABLE public.product;
       public         postgres    false    4            �            1259    16681    product_images    TABLE     �   CREATE TABLE public.product_images (
    prim_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    prim_file_name character varying(255) NOT NULL,
    prim_path character varying(255),
    prim_prod_id integer NOT NULL
);
 "   DROP TABLE public.product_images;
       public         postgres    false    2    4    4            �            1259    16596    product_prod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_prod_id_seq;
       public       postgres    false    214    4            y           0    0    product_prod_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_prod_id_seq OWNED BY public.product.prod_id;
            public       postgres    false    213            �            1259    16486    province    TABLE     e   CREATE TABLE public.province (
    prov_id integer NOT NULL,
    prov_name character varying(100)
);
    DROP TABLE public.province;
       public         postgres    false    4            �            1259    16484    province_prov_id_seq    SEQUENCE     �   CREATE SEQUENCE public.province_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.province_prov_id_seq;
       public       postgres    false    4    198            z           0    0    province_prov_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.province_prov_id_seq OWNED BY public.province.prov_id;
            public       postgres    false    197            �            1259    16543    roles    TABLE     ]   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying
);
    DROP TABLE public.roles;
       public         postgres    false    4            �            1259    16541    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public       postgres    false    4    206            {           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
            public       postgres    false    205            �            1259    16552 
   user_roles    TABLE     M   CREATE TABLE public.user_roles (
    user_id integer,
    role_id integer
);
    DROP TABLE public.user_roles;
       public         postgres    false    4            �            1259    16530    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(55),
    user_email character varying(55),
    user_password character varying(255)
);
    DROP TABLE public.users;
       public         postgres    false    4            �            1259    16528    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    204    4            |           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    203            �
           2604    16517    address addr_id    DEFAULT     r   ALTER TABLE ONLY public.address ALTER COLUMN addr_id SET DEFAULT nextval('public.address_addr_id_seq'::regclass);
 >   ALTER TABLE public.address ALTER COLUMN addr_id DROP DEFAULT;
       public       postgres    false    201    202    202            �
           2604    16580    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public       postgres    false    209    210    210            �
           2604    16593    category cate_id    DEFAULT     t   ALTER TABLE ONLY public.category ALTER COLUMN cate_id SET DEFAULT nextval('public.category_cate_id_seq'::regclass);
 ?   ALTER TABLE public.category ALTER COLUMN cate_id DROP DEFAULT;
       public       postgres    false    212    211    212            �
           2604    16499    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public       postgres    false    199    200    200            �
           2604    16601    product prod_id    DEFAULT     r   ALTER TABLE ONLY public.product ALTER COLUMN prod_id SET DEFAULT nextval('public.product_prod_id_seq'::regclass);
 >   ALTER TABLE public.product ALTER COLUMN prod_id DROP DEFAULT;
       public       postgres    false    214    213    214            �
           2604    16489    province prov_id    DEFAULT     t   ALTER TABLE ONLY public.province ALTER COLUMN prov_id SET DEFAULT nextval('public.province_prov_id_seq'::regclass);
 ?   ALTER TABLE public.province ALTER COLUMN prov_id DROP DEFAULT;
       public       postgres    false    198    197    198            �
           2604    16546    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    16533    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    204    203    204            ]          0    16514    address 
   TABLE DATA               �   COPY public.address (addr_id, addr_email, addr_fullname, addr_phone_number, adr_is_default, addr_zipcode, addr_street1, addr_street2, addr_city_id, addr_user_id) FROM stdin;
    public       postgres    false    202   	e       e          0    16577    cart 
   TABLE DATA               b   COPY public.cart (cart_id, cart_created_on, cart_is_closed, cart_total, cart_user_id) FROM stdin;
    public       postgres    false    210   �e       g          0    16590    category 
   TABLE DATA               6   COPY public.category (cate_id, cate_name) FROM stdin;
    public       postgres    false    212   f       [          0    16496    city 
   TABLE DATA               @   COPY public.city (city_id, city_name, city_prov_id) FROM stdin;
    public       postgres    false    200   [f       j          0    16631    order_detail 
   TABLE DATA               n   COPY public.order_detail (ordi_quantity, ordi_price, ordi_cart_id, ordi_prod_id, ordi_order_name) FROM stdin;
    public       postgres    false    215   �f       c          0    16565    orders 
   TABLE DATA               y   COPY public.orders (order_name, order_create_on, order_is_closed, order_total, order_user_id, total_payment) FROM stdin;
    public       postgres    false    208   Kg       i          0    16598    product 
   TABLE DATA               �   COPY public.product (prod_id, prod_title, prod_description, prod_stock, prod_price, prod_condition, prod_manufacture, prod_image, prod_cate_id) FROM stdin;
    public       postgres    false    214   �g       k          0    16681    product_images 
   TABLE DATA               Z   COPY public.product_images (prim_id, prim_file_name, prim_path, prim_prod_id) FROM stdin;
    public       postgres    false    216   kh       Y          0    16486    province 
   TABLE DATA               6   COPY public.province (prov_id, prov_name) FROM stdin;
    public       postgres    false    198   �h       a          0    16543    roles 
   TABLE DATA               3   COPY public.roles (role_id, role_name) FROM stdin;
    public       postgres    false    206   i       b          0    16552 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    207   Ki       _          0    16530    users 
   TABLE DATA               N   COPY public.users (user_id, user_name, user_email, user_password) FROM stdin;
    public       postgres    false    204   ti       }           0    0    address_addr_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.address_addr_id_seq', 4, true);
            public       postgres    false    201            ~           0    0    cart_cart_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_cart_id_seq', 10, true);
            public       postgres    false    209                       0    0    category_cate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.category_cate_id_seq', 5, true);
            public       postgres    false    211            �           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 10, true);
            public       postgres    false    199            �           0    0    product_prod_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_prod_id_seq', 5, true);
            public       postgres    false    213            �           0    0    province_prov_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.province_prov_id_seq', 5, true);
            public       postgres    false    197            �           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 6, true);
            public       postgres    false    205            �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 5, true);
            public       postgres    false    203            �
           2606    16522    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addr_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public         postgres    false    202            �
           2606    16582    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public         postgres    false    210            �
           2606    16595    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cate_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public         postgres    false    212            �
           2606    16501    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public         postgres    false    200            �
           2606    16569    orders orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_name);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         postgres    false    208            �
           2606    16689 "   product_images product_images_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (prim_id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public         postgres    false    216            �
           2606    16603    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public         postgres    false    214            �
           2606    16491    province province_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (prov_id);
 @   ALTER TABLE ONLY public.province DROP CONSTRAINT province_pkey;
       public         postgres    false    198            �
           2606    16551    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    206            �
           2606    16535    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    204            �
           2606    16523 !   address address_addr_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_addr_city_id_fkey FOREIGN KEY (addr_city_id) REFERENCES public.city(city_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.address DROP CONSTRAINT address_addr_city_id_fkey;
       public       postgres    false    200    202    2754            �
           2606    16536 !   address address_addr_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_addr_user_id_fkey FOREIGN KEY (addr_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.address DROP CONSTRAINT address_addr_user_id_fkey;
       public       postgres    false    204    2758    202            �
           2606    16583    cart cart_cart_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_cart_user_id_fkey FOREIGN KEY (cart_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_cart_user_id_fkey;
       public       postgres    false    210    204    2758            �
           2606    16502    city city_city_prov_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_prov_id_fkey FOREIGN KEY (city_prov_id) REFERENCES public.province(prov_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_prov_id_fkey;
       public       postgres    false    198    2752    200            �
           2606    16634 +   order_detail order_detail_ordi_cart_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_cart_id_fkey FOREIGN KEY (ordi_cart_id) REFERENCES public.cart(cart_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_cart_id_fkey;
       public       postgres    false    2764    210    215            �
           2606    16644 .   order_detail order_detail_ordi_order_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_order_name_fkey FOREIGN KEY (ordi_order_name) REFERENCES public.orders(order_name) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_order_name_fkey;
       public       postgres    false    2762    208    215            �
           2606    16639 +   order_detail order_detail_ordi_prod_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_prod_id_fkey FOREIGN KEY (ordi_prod_id) REFERENCES public.product(prod_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_prod_id_fkey;
       public       postgres    false    2768    214    215            �
           2606    16570     orders orders_order_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_user_id_fkey FOREIGN KEY (order_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_user_id_fkey;
       public       postgres    false    208    2758    204            �
           2606    16690 /   product_images product_images_prim_prod_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_prim_prod_id_fkey FOREIGN KEY (prim_prod_id) REFERENCES public.product(prod_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_prim_prod_id_fkey;
       public       postgres    false    2768    216    214            �
           2606    16604 !   product product_prod_cate_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_prod_cate_id_fkey FOREIGN KEY (prod_cate_id) REFERENCES public.category(cate_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT product_prod_cate_id_fkey;
       public       postgres    false    212    214    2766            �
           2606    16560 "   user_roles user_roles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(role_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_fkey;
       public       postgres    false    206    207    2760            �
           2606    16555 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       public       postgres    false    207    2758    204            ]   �   x�Mο
�0���}��%X�M'���0 m�>�I������!,�@����$N��+��Bsq�-���O}����)�R�p�:/P�j����Dc�"'�P�
��l۶�#2�,���{p���{+�����r3��Y����e�Uo����jDl      e   C   x�3�4202�50�50V00�#�NcN#.r���\�9#d9#NC.C���pZh����� Hz�      g   <   x�3��I,(�/�2��H�K)���K�2�t�I,Q��I�(JLO�2��MM�L�J��qqq ���      [   k   x�3�t��M���4�2�tJ�N,1�9��RJ�ҁlSN���ԜD ǈˌ3���<?;��$�5�.-JLJ�L�4���NM�,�2-�z�:��L8�Ss� �c���� )�	      j   e   x�}�1�0�����Akuw7q����jq�Օ/�y ��Z��� ���/цX�bќK>r���%���J N��	��H�W���̛|�#������2�      c   c   x�u̽
�0����s%�kQ���ξ�#�
��B��%i]<H��T��3����N.���������Vu����Ɉ�fC[��;��<��|�s>�*�      i   �   x�U�M
�0���)r�Sܶ�BZ��n�&J�hh�^�A#�͛a�^���<Y~v�Õ�{�I�ாX��#j'kC�Bʲ]Uj��:�*��W���hȸe�yS�I&�Iɋ�Tx��M��m|�
4�*Ia�Z[�������d|��x�^c���G�      k   :   x��0731MI6�5OM5�51M5�MLM5�5�L,ML9KR�K8���!W� ��4      Y   ?   x�3��J,OTpJ,J,�2�pBR��3�������".N�Ĝ��ļ��<��ԜD ����� ���      a   7   x�3�t/M-.�2�tL����2�t*�L-�2�N��2L9�KR����1z\\\ ��      b      x�3�4�2�4�2�4����� b      _   K   x�3�,-N-�K�M5D��s3s���s9�����2H,5&\�p$�S.SΒ���"�P�$9KK�=... �w,�     