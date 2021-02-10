PGDMP     0        
    
        y            batch7    10.15    10.15 <    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            6           1262    16394    batch7    DATABASE     �   CREATE DATABASE batch7 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252' TABLESPACE = bootcampspace;
    DROP DATABASE batch7;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            7           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            8           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16403 	   countries    TABLE     �   CREATE TABLE public.countries (
    country_id character(2) NOT NULL,
    country_name character varying(40),
    region_id integer NOT NULL
);
    DROP TABLE public.countries;
       public         postgres    false    3            �            1259    16428    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    location_id integer
);
    DROP TABLE public.departments;
       public         postgres    false    3            �            1259    16426    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public       postgres    false    202    3            9           0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
            public       postgres    false    201            �            1259    16472 
   dependents    TABLE     �   CREATE TABLE public.dependents (
    dependent_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    relationship character varying(25) NOT NULL,
    employee_id integer NOT NULL
);
    DROP TABLE public.dependents;
       public         postgres    false    3            �            1259    16470    dependents_dependent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dependents_dependent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.dependents_dependent_id_seq;
       public       postgres    false    3    208            :           0    0    dependents_dependent_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.dependents_dependent_id_seq OWNED BY public.dependents.dependent_id;
            public       postgres    false    207            �            1259    16449 	   employees    TABLE     z  CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25) NOT NULL,
    email character varying(100) NOT NULL,
    phone_number character varying(20),
    hire_date date NOT NULL,
    job_id integer NOT NULL,
    salary numeric(8,2) NOT NULL,
    manager_id integer,
    department_id integer
);
    DROP TABLE public.employees;
       public         postgres    false    3            �            1259    16447    employees_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.employees_employee_id_seq;
       public       postgres    false    206    3            ;           0    0    employees_employee_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;
            public       postgres    false    205            �            1259    16441    jobs    TABLE     �   CREATE TABLE public.jobs (
    job_id integer NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(8,2),
    max_salary numeric(8,2)
);
    DROP TABLE public.jobs;
       public         postgres    false    3            �            1259    16439    jobs_job_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.jobs_job_id_seq;
       public       postgres    false    204    3            <           0    0    jobs_job_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.jobs_job_id_seq OWNED BY public.jobs.job_id;
            public       postgres    false    203            �            1259    16415 	   locations    TABLE       CREATE TABLE public.locations (
    location_id integer NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30) NOT NULL,
    state_province character varying(25),
    country_id character(2) NOT NULL
);
    DROP TABLE public.locations;
       public         postgres    false    3            �            1259    16413    locations_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.locations_location_id_seq;
       public       postgres    false    200    3            =           0    0    locations_location_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.locations_location_id_seq OWNED BY public.locations.location_id;
            public       postgres    false    199            �            1259    16397    regions    TABLE     g   CREATE TABLE public.regions (
    region_id integer NOT NULL,
    region_name character varying(25)
);
    DROP TABLE public.regions;
       public         postgres    false    3            �            1259    16395    regions_region_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regions_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.regions_region_id_seq;
       public       postgres    false    3    197            >           0    0    regions_region_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.regions_region_id_seq OWNED BY public.regions.region_id;
            public       postgres    false    196            �
           2604    16431    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public       postgres    false    202    201    202            �
           2604    16475    dependents dependent_id    DEFAULT     �   ALTER TABLE ONLY public.dependents ALTER COLUMN dependent_id SET DEFAULT nextval('public.dependents_dependent_id_seq'::regclass);
 F   ALTER TABLE public.dependents ALTER COLUMN dependent_id DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    16452    employees employee_id    DEFAULT     ~   ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);
 D   ALTER TABLE public.employees ALTER COLUMN employee_id DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    16444    jobs job_id    DEFAULT     j   ALTER TABLE ONLY public.jobs ALTER COLUMN job_id SET DEFAULT nextval('public.jobs_job_id_seq'::regclass);
 :   ALTER TABLE public.jobs ALTER COLUMN job_id DROP DEFAULT;
       public       postgres    false    204    203    204            �
           2604    16418    locations location_id    DEFAULT     ~   ALTER TABLE ONLY public.locations ALTER COLUMN location_id SET DEFAULT nextval('public.locations_location_id_seq'::regclass);
 D   ALTER TABLE public.locations ALTER COLUMN location_id DROP DEFAULT;
       public       postgres    false    199    200    200            �
           2604    16400    regions region_id    DEFAULT     v   ALTER TABLE ONLY public.regions ALTER COLUMN region_id SET DEFAULT nextval('public.regions_region_id_seq'::regclass);
 @   ALTER TABLE public.regions ALTER COLUMN region_id DROP DEFAULT;
       public       postgres    false    197    196    197            &          0    16403 	   countries 
   TABLE DATA               H   COPY public.countries (country_id, country_name, region_id) FROM stdin;
    public       postgres    false    198   7F       *          0    16428    departments 
   TABLE DATA               R   COPY public.departments (department_id, department_name, location_id) FROM stdin;
    public       postgres    false    202   RG       0          0    16472 
   dependents 
   TABLE DATA               d   COPY public.dependents (dependent_id, first_name, last_name, relationship, employee_id) FROM stdin;
    public       postgres    false    208   �G       .          0    16449 	   employees 
   TABLE DATA               �   COPY public.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) FROM stdin;
    public       postgres    false    206   �I       ,          0    16441    jobs 
   TABLE DATA               I   COPY public.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
    public       postgres    false    204   �N       (          0    16415 	   locations 
   TABLE DATA               o   COPY public.locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
    public       postgres    false    200   P       %          0    16397    regions 
   TABLE DATA               9   COPY public.regions (region_id, region_name) FROM stdin;
    public       postgres    false    197   BQ       ?           0    0    departments_department_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);
            public       postgres    false    201            @           0    0    dependents_dependent_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.dependents_dependent_id_seq', 1, false);
            public       postgres    false    207            A           0    0    employees_employee_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.employees_employee_id_seq', 1, false);
            public       postgres    false    205            B           0    0    jobs_job_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.jobs_job_id_seq', 1, false);
            public       postgres    false    203            C           0    0    locations_location_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.locations_location_id_seq', 1, false);
            public       postgres    false    199            D           0    0    regions_region_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.regions_region_id_seq', 6, true);
            public       postgres    false    196            �
           2606    16407    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    198            �
           2606    16433    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public         postgres    false    202            �
           2606    16477    dependents dependents_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dependents
    ADD CONSTRAINT dependents_pkey PRIMARY KEY (dependent_id);
 D   ALTER TABLE ONLY public.dependents DROP CONSTRAINT dependents_pkey;
       public         postgres    false    208            �
           2606    16454    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    206            �
           2606    16446    jobs jobs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public         postgres    false    204            �
           2606    16420    locations locations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public         postgres    false    200            �
           2606    16402    regions regions_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    197            �
           2606    16408 "   countries countries_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.regions(region_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_region_id_fkey;
       public       postgres    false    197    198    2711            �
           2606    16434 (   departments departments_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.locations(location_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_location_id_fkey;
       public       postgres    false    202    200    2715            �
           2606    16478 &   dependents dependents_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dependents
    ADD CONSTRAINT dependents_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.dependents DROP CONSTRAINT dependents_employee_id_fkey;
       public       postgres    false    2721    208    206            �
           2606    16460 &   employees employees_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_department_id_fkey;
       public       postgres    false    2717    206    202            �
           2606    16455    employees employees_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(job_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_job_id_fkey;
       public       postgres    false    206    204    2719            �
           2606    16465 #   employees employees_manager_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_manager_id_fkey;
       public       postgres    false    206    2721    206            �
           2606    16421 #   locations locations_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(country_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_country_id_fkey;
       public       postgres    false    198    2713    200            &     x�5��n�@D�g��/h�� "�*i�Ć��"W����������>����L�#p-[o,�M%���u��Ta����\{��0G��a:�E"��̙h��f��]G�c�!�̼�Z�H��d5�l{r���	��>z��&�Ƒ=��[��`[-'�t�trĝ���m��������{ǎF���#��FfF>q�s�_� 3-;��T�G����u@��0��qp,�R���s�Т6�<�,���i1�A/��<�:���~ҫ#*��T�X����/K%d�      *   �   x�=N��0�O��/0Apd��`b�ѥ�Fn,������bt<�#��{r�ä��2�㨦�	��5+��;�g&Y
�c���l������K���l+�q�@&�⊛%�	;Oq"�h�M�d�`�6:z��̰#���a�F�!��r]
!>v�6�      0   �  x�E�͎�0��ç��b���f7H�E��@�c��PE
d;E����|4?���`/A|<���j�o`�)Y|w�ol���B�AE�|��%�jA%���%	;���QRa���źm9edh�����^�l�C&�fxL\���2X�߸�[���,����F�R;N�sݐ)�#��w��-��5ƒ1�!)b��\����q�A$$�v�d&x;��������xw*6`3���[��
���X�Ѝ^J2S<$ip7���}Ef��|���}6��1sܫ���$䋙bFf�e<`é�zq�u�OC���L���%k�\IX��LJ�kQ��6ƜMEv��f�d׌I�)�������fd+�䢚6�4�qޜ��NÏ�$���]�3l��|nY�53�7�G���C׉�7T���Ԛ^ꃤ<��Ҥ��嫏�1Φ��+�O��|      .     x�}��r�8������#RG�m�I���i��Mo��T˔W����Jv�$�g<��3� �� ����­��������l���S��^S,c!U(�8II�,]�B���� @��L�B�>[�]W�<759Vbӫs܌�z腒�L�ė��n�ozg_]㨴��ʾ�a��j@u��B�/ACz�q+[�U�rE�x r������&}�+J@��M�--��]��=�²}��q� �MɉzfL�̾X��iG+�xq��᳦bP�lJM�)˂�����2�g-vG}�0;[
N��N�]aP7Um]��V�D٫Yn<DW{n�\5�f�ٸ�.k�ؽ��:�b}�3���-����S�%��k������mhV���y��JF5�y��S�;z�����%����:<��L=J��l<�[��^�����p����	Z��ƾ�5���zk�g�l����d���� �r
qA�䂐n���/�nG%,��u.oCMH���C8�jv9Bp�Z=�l�X�'���4�m!��Q\�U5j�sl�����!�r@�F't�[~|oL�2�x!�Y�Æ}�ಊ����]�6%}���P�B�^��FCI�Gl6�ft���vuE�� ro�C�}H4��#�)RӵA3��U�Ű�mC>���9|2�	�x|<���nM����~آih�+���8�?<���H8�8M٨&b�%�^�-}�T��)؜E���F�W=z�=R���6�C�Cy�Rl9��/3na�R=E�(3�ZC߫���x)���EG'�e0x��StB�.K��fS�O�
*�Dl���\᫢�M��`�c#R��(�{�׮i�8��Y��{�O�| Pq�(oh�Po_L�:[�m7�b��|�a<!�	�s��+G���.�Z�^�0}g�_���L�)}2��{�iA�-ʓ�GF$����a��b0rc���|�5�&�R�e�{�NC�j�1S�x���^.{-~��%$�ZL�L��ݙ���3ݰ)�_�3�OH!�4��Hl�G/���������s[�ż�׳p5�S?�B��z����:W<`0��1��A�G���S|�eZ�R���%�Ԓ�]�8��c���'"?���c|N�߷�Qn���b�9�Ӵ�n�O�$��P$Ir�_��wwSv�ah1]��rk�5�z�Bl��u2�gؘ��R6�.�"P#���g8H9����"�gL�&���M����ky��ׅk��ky�y=O�`LWO�GN]B?
�q��K,��Wb�j�,39����?������ĺ      ,   %  x����n�0D��W����U�z���^\�"`���n���DMO͛���q�쌊+���N�N�%����-�(� ��ie��y�R�ν��ONNf�q�=�\��fptڛ�Fcnb��z7J�?.�#%GO����Xi1����ͽ��I�avJ{<�8�a�/�t�f�x��q��1�DNu8��t�����(A�P���	=�Iw�R+
j!�'E�S�^:�ZH$�ɶ̺���j��Z������< w�r�J�C}1���T�4��䐰�)�Le�����EQ��7��      (     x�5��N1E�g�b>��mY��#��� Ƃ�˰[i�fj����B|�I&�̽��s��(�v;ξ9��kr*���vt0�6?��Fgbr%>p4����;���O�jb�č�5u��vt�A^`m)Pk�w�J�6cg��z�x=_�*�(QS�pv2����\����s���H)ԳL�*��B�ǀ:����$L��)�C�%�[�cm8s�kkp�����g�1�B� ���s���4C��3q�I�FX�cU���Gv��9�R:�ۻl;ʲ���n$      %   ?   x�3�t--�/H�2�t�M-�LN,�2�t,�L�2���LI�IUpM,.QH�KQpL)������ �~�     