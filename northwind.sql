PGDMP  	    !                    z         	   northwind    13.0 (Debian 13.0-1.pgdg100+1)    13.0 (Debian 13.0-1.pgdg100+1) 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24872 	   northwind    DATABASE     ]   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE northwind;
                postgres    false            �            1259    24873 
   categories    TABLE     �   CREATE TABLE public.categories (
    "CategoryID" smallint NOT NULL,
    "CategoryName" character varying(15) NOT NULL,
    "Description" text,
    "Picture" bytea
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24879    customercustomerdemo    TABLE     u   CREATE TABLE public.customercustomerdemo (
    "CustomerID" bpchar NOT NULL,
    "CustomerTypeID" bpchar NOT NULL
);
 (   DROP TABLE public.customercustomerdemo;
       public         heap    postgres    false            �            1259    24885    customerdemographics    TABLE     l   CREATE TABLE public.customerdemographics (
    "CustomerTypeID" bpchar NOT NULL,
    "CustomerDesc" text
);
 (   DROP TABLE public.customerdemographics;
       public         heap    postgres    false            �            1259    24891 	   customers    TABLE     �  CREATE TABLE public.customers (
    "CustomerID" bpchar NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "ContactName" character varying(30),
    "ContactTitle" character varying(30),
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "Phone" character varying(24),
    "Fax" character varying(24)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    24897 	   employees    TABLE     �  CREATE TABLE public.employees (
    "EmployeeID" smallint NOT NULL,
    "LastName" character varying(20) NOT NULL,
    "FirstName" character varying(10) NOT NULL,
    "Title" character varying(30),
    "TitleOfCourtesy" character varying(25),
    "BirthDate" date,
    "HireDate" date,
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "HomePhone" character varying(24),
    "Extension" character varying(4),
    "Photo" bytea,
    "Notes" text,
    "ReportsTo" smallint,
    "PhotoPath" character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    24903    employeeterritories    TABLE     �   CREATE TABLE public.employeeterritories (
    "EmployeeID" smallint NOT NULL,
    "TerritoryID" character varying(20) NOT NULL
);
 '   DROP TABLE public.employeeterritories;
       public         heap    postgres    false            �            1259    24906    order_details    TABLE     �   CREATE TABLE public.order_details (
    "OrderID" smallint NOT NULL,
    "ProductID" smallint NOT NULL,
    "UnitPrice" real NOT NULL,
    "Quantity" smallint NOT NULL,
    "Discount" real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    24909    orders    TABLE     �  CREATE TABLE public.orders (
    "OrderID" smallint NOT NULL,
    "CustomerID" bpchar,
    "EmployeeID" smallint,
    "OrderDate" date,
    "RequiredDate" date,
    "ShippedDate" date,
    "ShipVia" smallint,
    "Freight" real,
    "ShipName" character varying(40),
    "ShipAddress" character varying(60),
    "ShipCity" character varying(15),
    "ShipRegion" character varying(15),
    "ShipPostalCode" character varying(10),
    "ShipCountry" character varying(15)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24915    products    TABLE     k  CREATE TABLE public.products (
    "ProductID" smallint NOT NULL,
    "ProductName" character varying(40) NOT NULL,
    "SupplierID" smallint,
    "CategoryID" smallint,
    "QuantityPerUnit" character varying(20),
    "UnitPrice" real,
    "UnitsInStock" smallint,
    "UnitsOnOrder" smallint,
    "ReorderLevel" smallint,
    "Discontinued" integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    24918    region    TABLE     j   CREATE TABLE public.region (
    "RegionID" smallint NOT NULL,
    "RegionDescription" bpchar NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false            �            1259    24924    shippers    TABLE     �   CREATE TABLE public.shippers (
    "ShipperID" smallint NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "Phone" character varying(24)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    24927    shippers_tmp    TABLE     �   CREATE TABLE public.shippers_tmp (
    "ShipperID" smallint NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "Phone" character varying(24)
);
     DROP TABLE public.shippers_tmp;
       public         heap    postgres    false            �            1259    24930 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
    "SupplierID" smallint NOT NULL,
    "CompanyName" character varying(40) NOT NULL,
    "ContactName" character varying(30),
    "ContactTitle" character varying(30),
    "Address" character varying(60),
    "City" character varying(15),
    "Region" character varying(15),
    "PostalCode" character varying(10),
    "Country" character varying(15),
    "Phone" character varying(24),
    "Fax" character varying(24),
    "HomePage" text
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    24936    territories    TABLE     �   CREATE TABLE public.territories (
    "TerritoryID" character varying(20) NOT NULL,
    "TerritoryDescription" bpchar NOT NULL,
    "RegionID" smallint NOT NULL
);
    DROP TABLE public.territories;
       public         heap    postgres    false            �            1259    24942    usstates    TABLE     �   CREATE TABLE public.usstates (
    "StateID" smallint NOT NULL,
    "StateName" character varying(100),
    "StateAbbr" character varying(2),
    "StateRegion" character varying(50)
);
    DROP TABLE public.usstates;
       public         heap    postgres    false            �          0    24873 
   categories 
   TABLE DATA           \   COPY public.categories ("CategoryID", "CategoryName", "Description", "Picture") FROM stdin;
    public          postgres    false    200   4>       �          0    24879    customercustomerdemo 
   TABLE DATA           N   COPY public.customercustomerdemo ("CustomerID", "CustomerTypeID") FROM stdin;
    public          postgres    false    201   :?       �          0    24885    customerdemographics 
   TABLE DATA           P   COPY public.customerdemographics ("CustomerTypeID", "CustomerDesc") FROM stdin;
    public          postgres    false    202   W?       �          0    24891 	   customers 
   TABLE DATA           �   COPY public.customers ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax") FROM stdin;
    public          postgres    false    203   t?       �          0    24897 	   employees 
   TABLE DATA           �   COPY public.employees ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "Region", "PostalCode", "Country", "HomePhone", "Extension", "Photo", "Notes", "ReportsTo", "PhotoPath") FROM stdin;
    public          postgres    false    204   �V       �          0    24903    employeeterritories 
   TABLE DATA           J   COPY public.employeeterritories ("EmployeeID", "TerritoryID") FROM stdin;
    public          postgres    false    205   �]       �          0    24906    order_details 
   TABLE DATA           d   COPY public.order_details ("OrderID", "ProductID", "UnitPrice", "Quantity", "Discount") FROM stdin;
    public          postgres    false    206   F^       �          0    24909    orders 
   TABLE DATA           �   COPY public.orders ("OrderID", "CustomerID", "EmployeeID", "OrderDate", "RequiredDate", "ShippedDate", "ShipVia", "Freight", "ShipName", "ShipAddress", "ShipCity", "ShipRegion", "ShipPostalCode", "ShipCountry") FROM stdin;
    public          postgres    false    207   /�       �          0    24915    products 
   TABLE DATA           �   COPY public.products ("ProductID", "ProductName", "SupplierID", "CategoryID", "QuantityPerUnit", "UnitPrice", "UnitsInStock", "UnitsOnOrder", "ReorderLevel", "Discontinued") FROM stdin;
    public          postgres    false    208   S�       �          0    24918    region 
   TABLE DATA           A   COPY public.region ("RegionID", "RegionDescription") FROM stdin;
    public          postgres    false    209   ��       �          0    24924    shippers 
   TABLE DATA           G   COPY public.shippers ("ShipperID", "CompanyName", "Phone") FROM stdin;
    public          postgres    false    210   ��       �          0    24927    shippers_tmp 
   TABLE DATA           K   COPY public.shippers_tmp ("ShipperID", "CompanyName", "Phone") FROM stdin;
    public          postgres    false    211   |�       �          0    24930 	   suppliers 
   TABLE DATA           �   COPY public.suppliers ("SupplierID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax", "HomePage") FROM stdin;
    public          postgres    false    212   �       �          0    24936    territories 
   TABLE DATA           X   COPY public.territories ("TerritoryID", "TerritoryDescription", "RegionID") FROM stdin;
    public          postgres    false    213   ��       �          0    24942    usstates 
   TABLE DATA           V   COPY public.usstates ("StateID", "StateName", "StateAbbr", "StateRegion") FROM stdin;
    public          postgres    false    214   /�       3           2606    24946    categories pk_categories 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY ("CategoryID");
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public            postgres    false    200            5           2606    24948 ,   customercustomerdemo pk_customercustomerdemo 
   CONSTRAINT     �   ALTER TABLE ONLY public.customercustomerdemo
    ADD CONSTRAINT pk_customercustomerdemo PRIMARY KEY ("CustomerID", "CustomerTypeID");
 V   ALTER TABLE ONLY public.customercustomerdemo DROP CONSTRAINT pk_customercustomerdemo;
       public            postgres    false    201    201            7           2606    24950 ,   customerdemographics pk_customerdemographics 
   CONSTRAINT     x   ALTER TABLE ONLY public.customerdemographics
    ADD CONSTRAINT pk_customerdemographics PRIMARY KEY ("CustomerTypeID");
 V   ALTER TABLE ONLY public.customerdemographics DROP CONSTRAINT pk_customerdemographics;
       public            postgres    false    202            9           2606    24952    customers pk_customers 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT pk_customers PRIMARY KEY ("CustomerID");
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT pk_customers;
       public            postgres    false    203            ;           2606    24954    employees pk_employees 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY ("EmployeeID");
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    204            =           2606    24956 *   employeeterritories pk_employeeterritories 
   CONSTRAINT     �   ALTER TABLE ONLY public.employeeterritories
    ADD CONSTRAINT pk_employeeterritories PRIMARY KEY ("EmployeeID", "TerritoryID");
 T   ALTER TABLE ONLY public.employeeterritories DROP CONSTRAINT pk_employeeterritories;
       public            postgres    false    205    205            ?           2606    24958    order_details pk_order_details 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT pk_order_details PRIMARY KEY ("OrderID", "ProductID");
 H   ALTER TABLE ONLY public.order_details DROP CONSTRAINT pk_order_details;
       public            postgres    false    206    206            A           2606    24960    orders pk_orders 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT pk_orders PRIMARY KEY ("OrderID");
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT pk_orders;
       public            postgres    false    207            C           2606    24962    products pk_products 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT pk_products PRIMARY KEY ("ProductID");
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT pk_products;
       public            postgres    false    208            E           2606    24964    region pk_region 
   CONSTRAINT     V   ALTER TABLE ONLY public.region
    ADD CONSTRAINT pk_region PRIMARY KEY ("RegionID");
 :   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_region;
       public            postgres    false    209            G           2606    24966    shippers pk_shippers 
   CONSTRAINT     [   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY ("ShipperID");
 >   ALTER TABLE ONLY public.shippers DROP CONSTRAINT pk_shippers;
       public            postgres    false    210            I           2606    24968    shippers_tmp pk_shippers_tmp 
   CONSTRAINT     c   ALTER TABLE ONLY public.shippers_tmp
    ADD CONSTRAINT pk_shippers_tmp PRIMARY KEY ("ShipperID");
 F   ALTER TABLE ONLY public.shippers_tmp DROP CONSTRAINT pk_shippers_tmp;
       public            postgres    false    211            K           2606    24970    suppliers pk_suppliers 
   CONSTRAINT     ^   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT pk_suppliers PRIMARY KEY ("SupplierID");
 @   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT pk_suppliers;
       public            postgres    false    212            M           2606    24972    territories pk_territories 
   CONSTRAINT     c   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT pk_territories PRIMARY KEY ("TerritoryID");
 D   ALTER TABLE ONLY public.territories DROP CONSTRAINT pk_territories;
       public            postgres    false    213            �   �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���      �      xڋ���� � �      �      xڋ���� � �      �      xڍZˎ"I�]_aRK��RB���t�<���Ro�/w�D������Lw�T�QI�h�j��9��Hr�KU�x�5�v��^�`p�� ���U��<��6�rɆ"�L36���T�S��8yx�l����<mp�eM�Fa��8b�ah>���N��L3�����i�kǶ�Z0
�SĂ����0�����!VIƟ�FFt��6~�eʂ�J4�J�H�Vgy����k��Æ�/��e�ۍ�MH�5J��}g��۶]�\ÿLW�h>�\��aI*���O�LO��7?�g2���0an��m��[Ӧo��L�s�I�x�����1�o���xW���ێ�?��A�|�S��x�(�?:����g��^�s]ϫ��j���~F{��`<�Y,����{�ڤ��N����)�ȃ�.��S*�$UZ���経9�ؠ���?h��o{�	6{�+3�7��np���j�֚���DAk���enE.3,�a���0I����$T�_	�!n��pG�p<Ss^@����Y�v���ǣ	��}2[����O�e�?�Q���ӗ��K��R�).��Ys�k`����}$�����CL�l��ZM��4�R2�k8ZC��^�6j���f�ӯQ�J �]��Z���%��O��|��v0Q¯�;�@h��7q�*Wd��w��@H~�;�-��2�u��0<
��$�b��� ����\����{��po&�rC��)ea)Uԛ��]V���jXv��*�:���C��dWo'Q$R^:4c�(<���7|��$�Y�\"4^����L<	�oF�U�]Ǭ�bs�{C��p�J��ͪ��u��9kv>��;,I"�` c�%�M̗m��4�|y��� F�,�JvZ�G��A����VК?`z˼�^�{��ǃH�D�i�����>�K��,g-��a�p�4Y� ��R��Ȅ�C���o�n�u�����:�y���4��hZ�"B�-sy,v���0�������BLߧ�Հ�oޤ?�+�3}�:����Vw<��y�}=+$\�	c8�}����P��+�}���	R�65��&̏�@t�Y�Q/����x8�1��L~��a���\a��'����,K�d������܏=z�)�D�'�@�M�6䴺fa'Rq#8�B��喖G�.�� ���>Z��U�7��)��2,q+#8��@�o�~�$��*��A�����b�:�u�z{�ڬ�
�o����5���q�G�\�$�Ge2}�k�|���}�М
���u8���}��j�!�k��;�[N0Ŗ~1���"-by�g�}a�V�T�8������-�B���p�(��|���Z'��A�"&��e�qAc��7fڼOH��	B镓M��=�v�f�neh��Y�Li�;)d	e镌�4!`�T���%����͚�Ç@�T,�{(���]7-þ^9��`��B�0"�J�"Z%  �[iq�D-`�-��ش|��~��o�lΦ��}�Vp���f�I���.�a/�X�r.7��Y#h�v(�	�&X�Gւ��Q�G���9�3�i��\��-�eHߘ�;��{h �5�kd�y�̔��)pq�®���}�=dmL�Ȳ�B��	�����l�/��i��Y�vi�1Mb˓�:�̻ͳx ?���>�i���j�ɧ��[Y�%�"1t�K�O��o(����`�W���*#��Hx����Aѥ�-�H�Gn9�w|	YO�4�%d=��uM��rmٺ2<={���r������ų�f���U��4y�����5����W�5exV޴	�=�j"	�'��m���\$�h��[$J�͑Ρ��Rc�\DX���-�����k,�a�k�����)�"D����� �KDbB7 �.��M@ W�;Nyu>����P�BMQ�&XD��Jͦm�s���}0��=N� q�D����]�:����8 ���0�ED�[�]T��K�<��RB��� 	���g����-~������=�����bi�ʲ�/{� �� �x�P�R���7>A�OIh$�!]�Lcʸ�cS��KM �J:��?L0�І&�X�P�B��;�V�	�Jߠ��t1hp��1�L��N��|Et����l*���wI�:U�M��w>��W� ��pM�A��j� � �M��Z�����ٚy�ϔ��l��3��9�bU��6�r;�>�tb���xp�>�~LD�O�bD�N 7c�;@���G�?�	�6�3�o����[��R���ZҸ$R�I�B��S6YQ
9�%Q���l��JaM?PV��𫳍K��|�e�;�Z�7F���xT@{��C��"���o�>nK!��Y��Q�9��,)��A��ꦍ���2��+�&�����g�Z�x�Que�u �Ժ����:�ZM�<���#��B	�5�@\̌����s���J}���6D��5�1�@���8�kU���:jN�˜�O��>
כ�H�T��kp�/QZ7��l \�H�b�n�O���J%���Fh��#f�7s�˔֙�jVX���ɛy�T���PR8Gi	���O�'y�?�B�dl�ܝ|(U����(���Ψ������:��%k'��=.^��e�CQ,d��
_i ,^�Kw�r݊�U��	Ͱ6Z؝� �-|�N, UZkC�"`�	��72I\�v�T.��u�4�#�Qv'�r��Ur��5l(Z��rm7t�=��N�P�H����B�4) �7|���D�X�� A-�l�L	-�}PU�^1���m��_����}�Z��)��r�����AKRu��#aN����MY�Ci��*���]H´�G�}��z�,"�CUF���c:�g��}b+DB�k\Jү1��j.���s�l�f�:H��=խc\��?��2t.�t�36� &�T��i�+6�1��" ��oq�P���1UXn)�>���r��lë4�����=�z^��3�B�.������PZC������m��L"�z�����1��� ��ґ��d�g�}S�� d[��ϊ=&&ӥ@r&��$>����o�g¶+��L��/���8Tx��$!!�NH���ɰ�<�.��M[�|��0M��l]�a;��h�f�Y��wI/�p��=����Jh�k{3�).��`�d_�Q~���`�BHf��C0(H�:��i�m����o�	��QgB��̠��D�*�t��!��~.�|���%؂O�-HF*>V����7�·]�:t,�6�fԀ�4 ��H�Ӱ�C���09 ��"9 ��ACR{P���{BjaJH��;��Q���mbi��륎��fm<\W[>Iо�@>)�բm
҂֔�M�I������0�u]�.4%�g�c�i$q4ɓWC�6�L�C���R*b�¿��~��W�������"�A%A�BM���&�u�\o�W��3W��^��p<���!Ծ+;�2+��6�rD�3�%�{�x�9_�ԕ�>8�` ��1T	L�t�zC%>_f��x:��u9�D��p���4�U�T7�s�	��}!1�*�W��٣���oO!��+�)��j�V'�1�t�� ���r�� _���@�*���*z������\n�����8���?� 5��.�R^�A�q��ъ?"�W�J�&@�$�����4	�k���[��̂>	���R_s/5�gU����7�y���y��F��sFbt*"�4T�}�IDGu�q>�����g(�HOPCQ٤�\���NA�2�-�8�6���A)B�l�B��0?})�I��S�8ʤ�����4Ɓ����M+�4�M�ٳ� 7[Fô��p��c׭M:�^���	���K|	`d!�4���t�:��-p#o�(�P
dN��7z��#:C���|X0�Zc6	�Ǣ�Ӊ��f�O���`�*[ferݢ_�M�"㥷�؎Qq�+�6��F=6|�2��	T�1�7	�a5R%=��^|��"�f���#�y�&�k;o���i3�������y��`@��U��	��o�d��B��xϱ�   7�B�����_Յ�a�c6�SdH gm��A�4�AD��&'Hے�@���l��{(<߶>=�N��#�l����L}�IR�.�<�>4���x.�#2���_%ﴊX>�h�ĵ���[ae���^V1�`�격jv�G�I>�/������W�@� \ J���i���rRTLe>oa*yc����gd���|f�Bq+o�oY��]>��R}
V����?6B���Y���L�2��j��=J�\�C���@�H���8��ɵ�$�2$&)$KL��}1��I��u�UKʨ��0�
ǥ���F,L륊�`K��A�< SC�v����R,���ܸ�:Q!���W!bZ�Y"f1{�Yl��P�o�7ؐZ��A7��v'�V�trS�����Cy�kh��4�G`@5���a�{Vv��3�A��R�ɏ�;�p�Q��FDPo�<�B���_��a}�Z�m֪#]�͂���Jd"~n���E�^S(�O��˔ԡ�72�Vl�w����������#C�:��y�b��� ��\[.,~��x�uQ���zNM܁t����C�(�fŧOT[�k&!��^�y��3��Ҿ�|u�2�|�̨9
��I���(e�KҼ_P	�z3}�jSQ5�"���mn��o�]�z\eS50���R�e|����Y�:axq+����Q.s�����7~\|Ӗ1���:/_�@��k��6:���ꊤ��i k't�H�YL��vc�.�Hrc�X�+��nö����1d6��������@��_P�AQm#܊8[n�d��o]>i��J�LDJ��=~�<d��g9(E^��mص��d
'�����:}���Ԛ˖DIHh9ucn�P�*����ā9��²�q�m�R��V�:J2����F�ͻ�f��7td��~�t�>�|~Nn,�
� ?}4@����80�֢��׵�锴�����J�R�ɓ�0Y@n�z��%��6RNx<F����*�7�e56�3��ٖ�9gh{t�rz�g���!��<�e|����?� x�N�ΕevcɃ�+Mmy��j��i�W��MGߺa��k��mX��� ���ڧ����"����Kn�1�KA)����||GN��.S]��_N���n�ҞQ/�AF
��SȾ-(z��oً�|�-%h_�'�ƛGǆNewe���zjba��bu��25gaS��+�v���H������¼->R&?���t��G�:u�|��ۭݵj����( ��G$$���z�BīП��:��5f�����tS(��(]]��sT�3������&�`�ךw��EE���`y��rKxC!�Do��w�
*�h���%�;�uօ�\�NNm��9�k6G�9�vF���h�$QF!�LK�U5������oa��]�X�g	��Ԣm]��;�n۾\��`���� ������H�\p��r� 
]z'�6C*;��k���{��K�A:�|���M��8y��.{�� >�2�nTp�_��I��,��b����"/��qd��H4܅���u�����z�:f�tn��U!t��HYt��Z瓴a�e�D� ���\�}V�4��tCQ�c����!"nE��Ћ\�E����}����l^Ga�oʶ����5!���e��&�����C��7�� l΢��p��9
�����-j��l[d�ۈ*D}�[����ǵ�aX��P�V�k���{��!�?��q�~X<gG�E]NM���C�.���Q�ߡI�'����Sy��˔��,ӱ����UWF�?6j���oسD      �   �  xڍW�R�8}�|��'��db��e��e�Ff)�,/�[��cK)I����i�!	30PE�Y�:���V��Ń��a߄.6l!j���\[��«��ϒi6�%io0���� a�`�{<���d�_����l��<����ג���t��)�����t0z��<�M'����h���~���-�h�tQ�%��t�O|�6Eej���5?ó���'�w��S~C���x��|QI.jgxa�u-�,����Y�͒{<b������qN�mds/-��1���؞���C��Uޯ���Aţ�� �1)݇2"ڿo��R�w[�Ҳ�.�|d��B�+��J�{�����9PM{ɴpgl:���>�\+/j~+6�F�L"����g�f���<��r+	�J^ᄧ7B���P�2b�q�K�����;�\��Cz�W��ov@u���M�I�˺�1�뿭�E�|�I����JQ:�Q�F���FidJ!�;�7\-.(�(�?�k�d�ao�U�L��!�~�v�	������J?���sa�%�M��3UPf�L�!LC{\�V�^���),���g�ؾw1ǂ�]�B-U��U�?7kc��f�0C���ݷ�u��
2�K	6j0�pb�_+�ѐ�5t:˨��i���Ab�O뇲Ͼ*��F�Qi���҆Y��<(-D�U��t�K��R�E%����8�"G��r%�1䒽�
6�}X���zB�JL��hhۥ1�/�c���^1�F�,m�ӏ���Q��$��u,�퓒^��zKE�&cW[�`��J������7�v&0.;dY��?p�kY6�^���c'��p�d<
�lCs�h�s�����x��<�[+��cK%�y�'�I�Jf;�A�`G� �W��$� Z0\Go�F[��РV:N�\�$P�Y.�4��bV՝h��x�5�����C��?���rv�T�� ��k��`��7J"��zɘ%�(,�����ks��\�&|��}�ʎ�I�=�d��a�=�����-[AJ�Z@��dܞ��+�S���Z+U��^I��G ����]R��/;ѧ'�ݚ�kġ"_�C�ƪ�[o�M�K�H�LLS�����:�9��F�Ӿ�h�4�+;��v��Z�׏mQH����F��]�4�z�/�M�����Uu�wyy�آ���·�~�Ʒ��*O�EvQk2�O�uC�]ІB����,��gz��0�t�<�k�5*�E���߳��.�M�
wBm{���36wIji��@�=J�$��x~�m��ۄB����^��L����W=��C�Ⱥޱu���[z��^Y��q�s_j ���ȗh�-l�c��_�ݶ�+cC^�5xa��o���h���V�_�{@6�G�^K�_�+�� l׵yݷ�z+I�f��v�_L�tqu�y�O',����w�Ҕ�"��wh̵k�����\��R;dW���Wn�6��yͶEt&p(қZ	��Z����:��L��3��*8`S��;��·֬���Π�RZ�R�8t���9at�gv) I�f�ᰓܙ�f�0���I r�)5j���.CI��}�_��]���M'�d��a�.C�ݴ���W"n����.��(�Ǝ��7�:��/�a��T�[\p�);7�{DaU�yh��:"�qD0IzI���~�Āh����~��]��Z���O��h��?g��Sý�t,��m�ÿt[��&oU�]�ݻw����      �   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      �      x�m�[���D��Sa�0�;�q\2S�u"��Y{�BH�\�OJ?�������6��g������5������g���>�[*k�OM?�w�E/a���75��~R�_4��|h�C��׵�wwUQ� ��o�&[sX��E�y��Eԟ�<~�����dm�X��oY�Ơ�C�'��b�Ї��ކ���9E:���h��ۤ�O��z�����T:j9j맾�����ۮ��nа����}0������4��.��Xi���F4��M6�N�5��.���.Oo���xl��.*����n���w���c�ۃ��orH��;���B�4��4�%æ�]��^{�hf��?V8�y�^1z{t��3_B'+G�3��EvI껥%Y=6����J�s��d����Q��������� ���4u}��w���
d�5�}��������(���;P{��#a����r9˓K��9>U���@lv����=z��z�R��[[���}#�\Ch� iR>)�K�U��M��z�4�&��O��iI@HǴW�#����A���r���as�2�d.,�����H�=Bo{����+��K�xO�
�,��H�*�?^�q)�1���"T�\e/�D�*��[5���/���+�k(�h��ߦ�KҐ/���'@��"�9�F$=�\�tS��N���_Z�iO���ݰ�=j���nS�g��&������������j������L�[o��	�3 m1|(Q���2M@��DsM�Flh�DuIQ'��u�D ��U9��'#ae Q�$9IB�w7�0�շ=�_��x�^-�g����?BQo�]�:�^�.�k��Y�}7ZZkN�m����w�;[��Vy��Dr���(kث#)�)���@�^r	�Vc���qP�����ԁ�������q!�XhA�����]�Y� l�#��]�.3"g����[֏�C�.t+/�&��*N��{%�~���%7���)��]�- >�UD����&�O�_$���HC�����F�+���t�"C����h?;1\g"#|� T8j��M�	˷�)��R��2x��F�Q
�;��A4��M��= UD''�*I�#�Q��ۤF�_�a\z��%K&�v�c�)��\GX#0,U�����Z UD'�.Yk|l�G3����S��K�yI����l��6Sc��k]Y˴5ȟ���s�����ݘ-���)#���j�iN��ͻ⎪�1d�� ]���0�`Es�>�1ϳ�Y�/�|��~*�k��`�ʇ~��h�s�5&W����F�b�6.lgF0�����x~�W�5�M�=8}oa-�|u�����4~ӶԳ�y���|A����Ƿ%hK�Z6��Xy�k=�ˀ�$�"��K�rïްr�7���d{:�̣��B(c�M'l,�W��\�)/��>uH�&Gԭa�U?�W�s����L�!đ"dN��Z)���{L��}d�;��w�K�غ�x�2hnޏ��%�����C���т>So><6��ms�ۂ������A1�ϠDB�}�<q�>��-vNj:�bo��������I�q,8@�-��B�����ɸj���q�^w���H^�AO^	�W�B�����#�A��I�zֲ��6����b�?.^���~�ƫ;8�겛��N���׺�����K���҅�WN��)�`"�yv@��f`	�+�/�v,��ⱅ=6���3+��B��O����}����)��~g	7P��US2�Ee��W�RSKn����m潦�8��mȀ�;e*��;�ǏǑp��T� cQ�J߾�Fp���ȁ�q`OL���}���L(N��U>F�R~!@�c����͛�>!߃>����B�l��k�_r������=F{@���h�����E�K��m=5�{8��`�8��H{r.w*w!mMMH��?x��z �]�a��qf�MOF�<���Gݶ��+�޼u��� ��º^~��Vâ��q��:SVc��V�r��xd?س�5�_�%G	ޙ5�Q�qs;��Щ��t�`�x�Y�����W�4G�ԞU[n�h���	]����K� q�������W5���@�;[P��l0Z�"���P�*a)�r��b�7U�����7��kCt��S^�M���r;l�Ѩ�z�?����S��G��gz��¦�� 4��2te[S�d�R��M�
mf2 tP3��C�~^�\m�~	�|�'<bH�k�!��zZ�Lr�"1VXM��k�xj7��E4��5�18p{d\���$�>������y��g����U��������m?㚌�h���"3��� �"�U��eq1����H���(xZ��*p$��\�]rhP�
����[m5F)z9P?�c�_BCy��;��U�6y����v���Ra-;S�)��Q% O8O%��y�J�R=BX���):��%�s�'�m�l -km�սvz}S�TqǮjunP`N�Z�u���Q�M}�'��;�#e�y�h����v��~��.�ur2N�Ϸ/��"���+Rl�52������錜S���y�NU�<�02H�UK���������! �I������V�Oꓑ�E]��|�j�:�&�r3]���.
�;����\�u|B�ռs�_�U�7{�
݁#�ͽ=�/#AlO�
��?�J�5&�� ����㈿H,�o;�-7�"��(��;�wo�C8k����9�:�M�cJ��σU������3 ?��?�_�_o��O�Ր|3M(�66Z8�v�����W�
�+���_u�Bυh��)���Y'2���}�7��|��Ξv��3��VT+n}�}]��g�$��?��P���֭W���G�ޓ���n° �D�1��IM�f҅�ɑþ��S�ʿ�P_�	�O����������mS�<��i6�!k��<���2�+�)��JBw�@���a�*a�rJ�����h@�^u�-�nD*��a���u��[}�BWc���7�\D��q��w6�-r9��L�lU��Y]g����Y�ﭬL�:�x�̩���h�?���areW��7�Y���ᙡ��W)��%
78:+���	|��1D�i��N�6NO[O��/��y<lCL�z>Ӽ�p�`�&Zr�k�r �HL8=.���\��O������h8��*�I�8�3f��1��z��m÷P���[���������c����;�B�wЫF�lm#<?|q{v2ڙ��|r:�����n��lKy���f����՞�c��77���I����	/���:`��)�+�3fLk{�� ��]!dﱩ��jh���B�6��Y7����h���vo��z44�gmH����Q0E�M����o�²C����3ƍ�@�%3�{�Z{{d^E&X��˓f�=`��2�������y}8 M��ƔLXe"<�j��
�������p٢�e�QSZٙm��d��O�gu�kz�Xabv��kA5���E��vBb��.�IU��]�	�>��4��q`�٬�`w;#ZU¬J%����*7�U��C�MZ+�����0�s��3.,9�ne�%��)��kr�6�ܶ��~.��Iq�u�"6U��ޡ�9F�i��S���*?�B>����`�C��y�6��;��O�=��о\g��M������:J�җ���Qf�v�o"�|r�8�C-[W�^gtX�$�>�ࠖ���R�H�-E�
���}���V�1���I�J�[���SP��0�9��Y��N �ѹ>�(c�`��:SX��5[C�ڎݵ��WNZ��d��Ѹ%G{� G�Zb����XGz��Y�� �S��M����0��s��69�vj�⌂�=�&*/�������%=�as���v�YƼ�5�v����q��S֭y��
��V}�à�
��e�������2��4������m���>.��Ƥͱ��|5�r^
c�x�D��U�p��Bz�ȻK�	m����:���Z�ܽ	�ψ�iW䨴LM6db�N	3N���عv�����4    �A��p�������q>o:v.cخ[s�Y��M��*��-�Ϳؙ�u#��ѯ�$hN�,���M����i�_$�?��2݈�BG)a_k�%��(M�Q�s�`۠{{�dOh+7����t�7��9,Xh��v/i���̳^%A<��[�k&��1��������|I��v�P�ѳ9��(Bi��HQ%X�^eb�]w�,��_��&�ղ�$�������6+�{4rX���=j�'k��ɉ�|�4:)��@{R�X�d�?���*"�V$���cȈ��.���B���ϼ؟��5:^��@�`��v�]�cP?q�f�� 4������GHoƯ�'L�K�|�V�����X�`8)9�����%��"(�`�&�+����u�`$�������=Z�;��G=��7�0Ts|Fsr����/�I7�٥[x:��#|n˖��V:ff��(Y��2ZY����޵@y~;�g�3��;���"�w�U���"X-�KP���u�o���ްx ����Xz�M	�qY�d�:�p��5�f^>�(4�3�������ϣ��"�BY%��{�h�����Ch�ԉ:%x�<���K���A�B@�_Ɛal�;�m\���s8����ѵc8�4WvP�?�ȭɍP��K-�5<MHO樭�؊��J K��'%+����w�Ҋ�5�����2~d<��k�����r�U�L�$(:��9ME+@Un�U��n�|6��a�X3��&�^yl�J�������P���ʘ4<ljL9O�|g}�!��5���XL4�� �1't*z�Q>s�*�[JC���cǦ��`�q�e�t(��6=u�L��װov����s<�����n����vd�Ñ���(��͐uV�޵�@;����J�|^T���-��j��'@9��l;KD�_C�JQ���r7�j?��U��r�?yh ��]W����/���';.,�B}�T���)�v�0�Aߢ쫺�?��^��Q|x��R���nx4R����\�H*���W����ftGV���-,����˰ .�=��W�G:���I˖T>�T�yd������W!B�:7�W`y.���rW�7y�P#&DG����x��4�������:�A��R�(��w���|�io�h��H�xP��%W��uT��r >HBl����tJr�j�R��~3��hȰ���H�Rm�Qe 
�&��6kLZC���=�&�k-�#j�޺��Nu&�����1z�1e��I(ZsQ�)����-�'��W��Gfٗ?��V:5�Θ��i���Jo�#n��_P���������m���‮T�!�-Upj.$l}b���gK[	�ھ�ON��=++��^�xٹ�����о�:�����{��>�m�?�k�@�b� BG��O�e���ʏ����h�G����|���:��Ή`D��`�q.��������?��W��1w����a}����K\�i,�}�L�L!�DH�C���^LF*�ʟ�B���`���8:�:��l�1���r0��q�u��n�rUm�܉8���� I^oF q7�O�9��<�=��p�r�!0��94o��Z���$��)��^�}<|����*j��U �U��Q5A/Xދ/��|4���P?��9=(��UUf\�58���S�a�sX�h\]���ibd��m����:A�r�ң�E|~&�aIď6|��s@�r@܄� 5H���晵�Iב2P��2B�h���������|3���`�u�W��v�P��}]����tW���yL�J�y�A�Zr@7�#���Q�:�͓^(�בp����<.W�H��B1 � �v)LG�Q�=uQ_a�P�9��� ������9{a,R^�܀�|Gd��Uv߼��UF����K�:�mԱ6��4�cd~��Cm���)C8F7�6�[��+���R��F~j�^��\�>��a���]7`zs�=<�3�+�����tO����˟]y(A9�8��Ү�8cJ,�E�wܮ+#�	��v���t�c�6�$r�#D��e ��zd��<' �Q0J�
��kXq���q���b}F�N	,����*��0tbV�}�Ǎ�qe�y��o��g� 	4Q��nG9�>JK���1e��f ʻ_T���Ƶ+W.���o��	�} 9�Al��DeȢ9P@��2��+ /�0��)����&�߄��H��*z� U�rrN��ȈGeΐ�6d�.'�E7���X��
ay�+^5*ӆ)������)-���(j�4��K��� ���kg�}�O����Y9�(bTP��\F�_s��#:a��Z�S�(�H�6r�7���PH�vvG�G�~5VT�Ce݃�*~��XL��3�lu/��l��l�W,|c�����V�v�g����)?��/�$]�2��&{1������^��X�L�z�iIq�\O��h4�Z��1V�Ǖ����W���G�n�}~}P�{J]��:�y��׽�Vw:י�B�͑�1p
^�ࡼ�R�G},� Eb�y�����V�c1�g�"�*�ʞ!��zF�V�/�xӈ�`I�� h��ޢc�5���c�Nơ(7��������7N����"7caO{�rwt�z{g78�
i�Y�d5�vgC�R'��X���6�D�y8�q&�rq�I�Sg��R?z��̱�$,mϡN��2?����=]I!�W�4_�!V� �Io�|��m}���OV^�!��B�O�����|��	��'m��' �P������1W�
G�Y	�␯��^�j>����!(�a��X
wj�x�H&x�-�����9�]�CV:���b�n���,`<��o@��*t2���O�4!��¶�CMV���R�'h%Ԛ֒1��D��B3�s�a�x���W-�)�ր�̞�r��m��}&R6�e�c��Lů�n��r/6�^��H� �x
~�)w��^�%7��5HG����0Ӹ�����Uc1��k�����><��|��C�ρx��v�͜��[����s��H��9s	��L����|�T+$ճ�o�@�{B7t~n���s��؏~e��i�����Q6��7�5���umDV>W@��BZi�s��(9Ȋh���Ѳx�z�hqf�3���l��#0ڒOCiM͒�(��.o��o\xY��_b����V`�9g1�N���Ga�]��[tZ�q�h�~�a��r�����8�\��/u�^��@^���y�"�:�(��}��J�1G��J���O��n׬�[mT����8��C�#l^���5��3�Se���J��K����eD���9 �ʋ�j�3��N夲�	jp��:���!w�ع��c5��J)�- �:�CD�a�v�$����,�]����(#amw�Y���%� �>[�:DL�����~�A�ؓ]e}�t+0!R��	M�X��˶��T0&�
��r��l�����l�+Mn�;+x�g�$�#�훭@>�<�+�q��P���Q�Q��u�;��\��|y�g�ş�ɗ���#e��'M�cwtj�֞��m���}0�|�����(d�����`�{���K��s쪼wr�L�W�>b4v���Ic��h8tH���_�`9f8�U^����\���2\�(�c���`^�d���s��������G�$�9�i����g7��;4s���2��S��|�J���a�R�ܷ�w�O���1��|#ږ��]���+��������K�so=�H��Jټ����Kko���Y���Y��A}���b��֠ӯ{g�{3�2���~�2�=L�os��q����4d~}\sr��+|�l���|���z��JG����
����y$��TAC5g=�ya�����
*a�E����Ǖ����(�+	17�O��1Ե)X+n���>�"�i�-*xJ�zd�p%�']a�O�ɒ�ʭ�\T�!.�T>X���X���AY�'f�41m�D-����~}�j#���[��7<���f����}_6�u�)�q�@<� �  ���4+����x;P5��d�k_)���K1:��xʅh�^�ϰ��)tDM7-��Z#�<�ĵ.t?^�\�])v�2�V��2��4?]�c3����T#�d�����5�ɵ�6X��\�ѕ��9�+��Ǝ���F�<�*TCJ���W��W"��c���+w�-&���\��|�j�cֹ��K~�q����RZ�W�w"��yQ^��
�,G�
?S�����ovd�;vS\��SCZJ���!dTQ��������D��
T+�	���8���1y9\1;ˢ��0�������?'	r�v���h��Tg8�ȴ��z-��ȱ^X	�}^�7��>ތ]N2�����+�"P�D󢜢Ɨ�h��RgS�˒ ҸY�z�(^��{��������.���@r����6\u��[����q��?���r۪�*O���q���q.j�:�ߋC1�ϑakn��*����Ќ&����[���O���I(ϔ6�ą)]^�\����B����������h�4�)@.���o�Yg�3���;�(R��t/r	�����=�����L��g�z�'51��9������;���*�"�������#�Y�����[���or�������U<�ls�l��T�{�Ϙ���k.Z��q���f�L 	'��Z��X+|�@�k|S6���V�����r}(�F�O�U���t��<տ��K6*�1#��\Zcz$s1f<Ћ�OFQO�Qg� 8�d��k�?9W~�!�*�,�|=�3ݎ�ͲtP�Q�5�A�F�O|s͠�;�n)��r;�c��oꋝ��>��>�Ʒ��X��M���P|"F�1�K�����<V��G���F���:��x�����Z�Xb8���Ǎ!�EF3�����т3�+~x������Mh��e�q����M�+o�ɾ�>�����{97�� �=�O� ������Uܷ:�Z�ȹ2�_�p��y�y����QP����)��.�Hl�
�[�&ؼ�k[46���F3�?]�E�Vr�3!���y���g��ㆊ~�d���w18�|�F�����:�88�~sU���,�u194^�\m�/hLoS֩���[w�rG�$~W�[���C7/�7DjD���Z�W�v+���*���ҍ��_ؾ�Z6�|AH�m���A6���l}�)���rv�`^�W�s#}�m�i�/���)'\���xK%i�O��$�E������(�/���;/@:IU�s�7�ߴ��.��&��f
��ZsW���b��&����&Ѣz�����k�a4yH� �}���u}�k��py������sr�W��=U���۵�at��Ge9I���Γ?��.��m���?k��;y���vz���B�;��y �բ�y��r���#���{Ȭ��O/F�����������*w���������/U �%�r Cp�sEP�O��[� w�����0�M�É߯�C��λ�x��k��^�kzPt�蕮q#���~:��3��qB���*�lD�'8�=W��F�>�o��k@@�����������"�j�a^�cn�l�S$��&Dk��+�`_;�>���Z��-�'p=���<Iz9�EpSC&%E��+�����v�.���7�?*i��>1sƵ��4�r]E� �:<���}�@ހ#�;�u���]�w}Ih
mc�E��no�_6"���ݘ��\7���6�ś��)��ӹ�o�m��B�����'��U9u��>1��v3��#y���fP��	m�P!�se1�V�0����;vv��� ?�>.����.�Ȑ����D�`�C��C���R���?גT<Nck:�Q��ࠒ)�C	�z	�z|�/m����X�B*s��IU��w�6�^�.����w��w5n�C���DRر��ޞ��Ūp����J�p��������V��v      �      xڽ��nI�&��~
�ڤ���fK��$�xQ��TWa6.�S�V(Be)���7P��d�0����/6�3�����&]ٔ2��v;��ΕU\��Ǔ���B�9��2�*~��*��L�|"�L竲Y���f���ʣ��s=�6�B�r�i�ۦ����ݻ�KS\6ӏ�⿜���*^,��M�O$������M�;��A2�~�U|�hV\/>�ʫO�/S����뺙��骙���I	�9��?�3|
H����x�,?��/(RUū���Bv"m��n/x��Ċ�U=����^ΛUq����E������w�6��t�����7�墸����T�5�8\ֿLg$��.]��?�M��]�Yo��l��f���zq����ޔG����MS�~Y�q��Upr��*^\����y�X�Ɍ���b�,�6����o��Mo`����Nwy[^��6ߕ\���^Κ�b�r��
�����n>�d�Y$g~�2�S �N�ɴͲ8zu��*�̌uK��7���YX��ӳզ��x
���ͧ5�'�`YK�]Q����y���Y���-�S�������/΃8�*l��!`%7wp?K�k�����j]/�����R�m������dγ/Ro�OOO⭍�~��
��8S�mf����z1/O>~Z,���bY�{|�~���%,~��(���Lho/����A������8��l���˓��g�j�«Nx�,������s3�S�-�a/6�f�zݔ��>������r�Z���]=+�����n
_�*�c3o~�4����Ǘ�W�
o�×����?��^��4E	ﶙ��˛���jՔ�x	K���ۃ܅�㊣���x�g̺[������Q3_/�T|���ʳ��>�c]\��\�+�� p^�֥sN�
��/ӛE�|�b�_Q�z��M�
]��'��p�'��-���M�X����W�����`�nAq�5w�;����_v����kF�]UF�Xu�����Ϗw
\<1��GPTϛ���a������ӟ�7t��>l.�{�M|�4��װ�6�c�]����`��z�s^h���AK�6/n�嗂[fʳ�����8����ۦY�����0U�W$Z���KD�N����G�'�Z��Ҡ�/N__D֐wv�wZ�����b1�P.n�ʟ��Z�:,���f��^ë�?z�����R$WϬ��E�~n��I�*O/��<޺<Q)x��-g\O���,��?Mg�����O���)_��}��j���b�|Of�T��נ�.�_E��kv�Y���j�m�\OaY���@��z�)�\lf�*<��y�)q�.��W»�ub	^�	(����3<	�kP���e�fV�)� xqs����J%o�///�.�[*�Nd��*ԏZ�-�? 
����u���P��o^1��V|S�nDqې��o�U��E�*�R5/���x&*�Ł�����&wSзG���<sԬW�7sW>�繾��q5)�zOpx��.Xx�
�Ɇ���[^�MbBO�J�s���]:=�,�A��$���(��U6���\�
�L.&���/�~�ۺ,������^�i�N����2�D.����?��.� ��+�"���?��j��T\��������֔��m�����tA�D�`b#�Cl�D����2�������&��c:�����Mc�����|
	�k�F�x9�̧�)|V]�nn��xN�҂�Uv�Z����K���u=�k�@A.�(�$�ZP�i���xWכ�u�׃Ϸ��<�e����j��p�~�	7�8��|���#%H�
��?�X�o����jV����j]�j���=m��~��ޭ$3�7���/_^E�}��.�����6�����U	��ݻ����������_�k���5���74NY�����7��:K����J�r�\��|4�1�G��Q��O	$���,�
N�h�u��BE��UX-�?ױ��E&0~���//Ύ�T�mJ��Ğ@?dq��pQ~)׋������Gx��]No���
^�էz�%�$��)���0� ��C������	���g��xz� �U� �[��I�gΖ����i�|�(kP��<���4�~��m&�^��[r]LM����{��n������xp�� ׊1�� ��	�%@L�M�:��g��\[T��Q?�
*�	�Q`���������
�"��'@+��|W��4�оuU���-.�_�<�Εw:#�j�N��H����� (Ё�j�aL	�"�X�A�#�������(��	 -A/Ol��wux�ca�`�%���n�f>��
  ��=@��f�F�ȗ���fU�p�N��#^�����(V}tqvv�tg��-�MLq��x�+0I �S���ϰ�`�V�o�l� ���r$�J
&5�T�%tz�l�������/�/�Ǡ�A;���܁�7���Ӝ��,�մ�+������F<N��w����-$lc|� Ox�E���16�������'p)���ŧ �V/�>&�t*�=>��.�V�΃U���fd.Y�!yo��jw��XgV�	�:�@b2�����nGD�#p�N@����/��?� Ϟ�O�߭�EX��~qq��\Է�-��������e��)炚����el����j^�fx0D��&6q�	��@��{{p��3��~�S����y>mʷ�����]q ��V�fMS:p�ެ���L��'2���{�; �Rm��#�!�g^��zy���0(�ť[^�./h^����uy}��Op���?�O~W�n�j>����}�ܣT�v�_W�� 9����tq���Et���7���׋����b	�C�\7�U3/�$0����}y�;��[��/^ΡJ��U��p(J�1� �t?X���������%�ؚrЧ�}�f��7 ��-���G�\�n6�)�����j���p��kWh������ h�.9qf���Yn�W��S�lnQw����MZ�I7T�t�����c���[\�,>lT��T��n_��U�S�.����Ó���93[v�c
��]SNߣ-Ő���O?�h�jo�/���r�p�1�~����yt�"������	��M�W	zͷ6!�j�h:�����bM(��
a��n	x�^i�,�f�	�Y!z�4Y����Ry�v.N��@���Pi�E�4#',B�tO�N�9��(Z����]>Y�%)	#��/�*4���b��OY.~^���^����\�T��K_���4o���D�J�K���샪#�Z{��� ��l����Ȣ����M�H��]z��Y��+�mt���h��h9Qy�$o��Cܙ�M�g-@���w/@)�������2���vxs`7������*W�u߀������S�������WS����6b��8�]�+ܹ٢x}q|�B�&~�L`�1k1;��$rW9�7��{=�u:0E��equ���A���d��g��f��yV?�-�]<��H?������������
�3�����2ՙ�M�Kl��������y��H�u�K"AM��6p���8L{��� t� �=X��g�t�`/����v�k�P���I�zL�V��{����a!P�EX^� ��Ѩ�%СC�e��zS6��f�S>�e�=����7 $�s>�K\�N���g�(җ�d�����79@�����/c�{G�(����K\�H�y!շq�
�8?x����b[I�w��^̼�?}�|h����(���\5��E��FpN���l���b��)��c��o0{�f��w�un������|�����ܠ��xž/ّ�=�\-�u�����Tn/��n�g�(���#+�HeF&�	�a0C�b�����	<�|����˓���#�q<q7�0[��O��uy��AC�?N�w@��W�������7�kx�����~�Y�2#bT�b�Α��"��!��    ��!�d1x'���Ņ�$��{Ơ&Z�z8�
*b��t%Z�	*��u�d�����a|���Ç�����j
dpU����������lݬKx����]�y�/���f�Ɋ$���9쫒�Cw}��'��3��P)����x�H��2$�lA�,�b��s�=c3j�T)Ӎ�!�x�`�K�g#��l	�BC�YA����c88;9�7Xwk��l1aŋ�"w ��P��E-(u������]?�%y����"E�-�z�L��lѓ�Dޭ�[U�qZ��N
�����I�� �w��{ q0x�u��������iS0�A�U}�<;],� ~0谳��('���!̩��p�-h=��п;UR(�pw_ߦ숴b^{v,�D�����":���c.��u���fzs��-��ڏ����t5C]D���/-�QO,}��W��c��U�+ܷ�ˋ�=��<��t��M����d��r�p��P���K��Z,oɺ�9 �����d�)�.L����@�1]���C���v}bX���L "l�#��}V� ��m��<z�j�y��)�����Y�9�����b��3g	� �b-�s��π���B�
x ����,9�,��a�����u"�ry�d:&���	�
�z�2}�L��
,ea�5�Qq*O8�^�'`!G�F���/����Y_.cCW����qڻ�fM��C��ֳU�Du��n��%��l�\u����Ub��yb���>��h1�77�)\����^6�Ţ���_D�_�m�����xG;��R�	��p��, �/������k��uj�F�1�-&�K\�����Hk{���٩�WF7�,^�3V��}O�,��|�S|7�}�˺�m��gMi>�&n��7����:��)~<x����,��9�W3��c��O��_a��uq��~��-���Hz�_�w�Yo$��-��Cd�����<��o�u����p5gNa����T��LǏ�A�H�2fD)� K�U9�%MRv�T94��v|^���W��[ja�?n�_"��}��A������o9] ��������@܈���=����Pa��Ĥ�|^������oO�u�.f������ֿ��٤|<g���.Ჽ]�K�s�U�3<�7�i��Ա��{i"�k^Ek=Z|Y ��v�h��h����מD�Ȃi@Q�9yE�g�s�pA�;��G����7���7�%�GĘ ~�hJ�#23�E�.��V۬��U`�c<�ƅlJ�c^�M`2%�����V�%�-�l�諸I|������=�ޝ��8�� ���2�M�{Q%ܡpsy�a�"�>�RD�ȉ �m�ʋ��b�?�DB�`���U� ��be�[9�G�G�c�����N�V���g��Wd�~|����_� �	��������K p9�B��W�����9(��D��� �����5d��^U��j_p�?�p�Q�3�/��ϢW�;U\1	,e�^/>>{�@����䢼^�D>P�>�ԇ_�G�5Q�3�W��{,�dG��g�k�?���(�Ot�1Tt�^��9p��������⻋�O���G�D�����x�4m�����
y0���2;������ l����Pt>B�z4(�;-�A]���a\�H�)�m"��Ge��������Oȼt�D����|.[�#H��iaX���[	��<����*+�BuoO���:ʻ{JZ�}S,SFV-N�=�����x��8�����XD{����J�C���
��By#J�)oY��0���y|��a?��AMI��x��n0%T�B�V��Xծ�����_N�uq�i>����S��_I\ VF���H�M���õ	P�p%�|	�|��M|�n 7�ciGw+�����񅶝P�h�-�)AE�G��{-�������7����T�t�r^OA��r�GEb�����nL�WB�I0w�����`=����o�����'����%\��3�#�7�����|3]�����f�r0]�dmF����9�?��CĻ�`�K��\�`m��vH�T`�Y��C��!�x՘qj�Jl��wz�������)�d���=��_��j4�,qaE�K�	�( b��|����m���P���;V�i�.91L�y���HP�>�${����b��c�̅�e�G��8�*d&��Q]�$��w]�R��� 
TJ����Z&y[�l��El�H�s��5'�ϖ���*���K�	6�����M˫ɧ�����X�b��/����U���X����i��
��Py�J��(OQ� r�:a+̄E ���'�'+�d0����:^��e�M,O� �[x1�er-K`�Q�K�wxr�(	Qz������I�X��1�'A�w/<-_�д`����.H�vd0��{�<�x
@O���'�})��!H���	�ͻ-E5�-�����,�~?o,��=%�J�%s�%��'wQ�1��ћ��#W
<bȈD��4 r6O�m���������!	���"�����[�0����En�ޖ�3�Z!���̚/���Z��)AE7?#ُ}
�ԧ���:dΈ!�ݏ<������HazP�Q��''��8�;�Fx����#�o1�2���|�+�C.#n�����2Y:Y7�2s+_(�'J��f����}�MXd`�Y%�26g��W�b�fD�#�
�����׵Rsf��%1(�= 0a%�9�I��	�D� �ѱ:)�Pf��X
�@�2u��;5%"ᫎ��b��ȧ)M���Q��k[���i"����?��,h��,z�.	w���ѷs�{:K��rTw�y����X��J�g����˷RZ#��o��#˷�b=ʜ�����d�! ����:)^;�4"��>L�{�yU�P��,FĄ����`�s&H%���>��M��b	�����LL�O��,�} @B_������Q����S���|(Q�?�X%�:��"mh2d��ي�)��&c������ c�� ۤ̩C�X��� ��{�i{[L]�� {�Ⲁ�����7�)5��o�U�%F�Д���s`]<5t��.�)B�[R-b�{�MԻ:�'D{.�I�Bl���삪"t�D@�_p���)�dG��͂Jq"[�H��(�jw	g�0�޺YV�U��L(6" �R�Q���!�J���Pa�ȱŠҴ��rȂ"[������W�H�B�S�K>����߳��4<��!��]��CH�D|L��Ď=Ԃ�i�H��ci,!�؃F���O�˄Y㓱bx�+T�IPX^=�!/��a�-�ح,�z���3��ɘ�Ql���k�C�����0��"��46�%>dk�բz:�=,�|�<Mv���Le��'��V!7C	���2�m��,�؜�kk��\�5�֔�7�I>���b�����`�����K��|�n��"� �.�D��\�!8鷠��I6�a-a��".3t����v#<��¤t�$b�PJ՘R��!�m��R��h	�OV���ne[%ǆdKvAQ�ᰦR|#-gMH�O~���0,�-����ڡѕ	��-d�+�� ��2�\G}���G��C7C�%c���'Է9u8ω�O�h�J#;-¶kIZd�d�����|�5	���N��Y�]�5�]8�,U���?{L�o�^%?s�����x��U��TY)1��޼�� �pN@�s0 �>n;s���#�o~�,�<K��ŋ��f����S�&�h��ܻ����3�g�o�
��"�$eh$��{r#j�bg����o�7�.x���6���S�"�z����c������?{F	bCE�ߨ��p��p��R�����{� mҪ��%��ɗ�0�|>�le�"ۂwWDUm;R>��;��O@�~*�* H���v������jT���zJ:&�&@�ǢR�/j���;�<�A�yb��j���T'YĪ�Ӵ7�a�����I�җ    !H����>q��φ�R%�.<�?�TU.�g9�u�[{xXԸ:�{fmZ��9խZ�la����/:��y�F�� ��.Ag�s�͐���m�C��gF��+|����$��~�����k�����Z��'�Xչ�׈ƺ�Z�(�t�K闊��+�0�1m�|�W�|H�T�B��9�d�)zx����W�n�.}�O��w�y��g�:뻂���p7K⤫w��mRMw�֔����'�pVuT�Cʧ+O��Ee�����5�IY��w�lG��������B����(�G��fl���$Ń�vn�S2�O��A~��t�[n�3r!G�r9]/J�7�3�E�ˮhʦT�Քx-��2 {����fH�T�~��0^���P�Mc;���Rb���-�$j]��%��4ea0La]x[�#�Iǒ�NK�={L+hav�!:���(\�9��]Fį;B�_���� + J|�/�ۀ

nN�@�wwo�_�5��� uՅ�#C��K���g�?=o~n���n@���Ow�1֯�u.7i0��:��8���6x����/kX�p��u�)P�����樅*�����C�@�-��O܏j���a�qz,�p���M�yf��wD��2����@�=sJ�͡iE۳OɊ���o���f�-B�E�!Y�C�~�7($l��c�&��m$)2kt�9#FU�)P�>B�Iw'���CN�ރN�h���!Q�1��;	f4�+KV������X��V��e�a��˂?)Pw�E�l�_��%�����M}��<�%����Ϭ�������Դ��R��UHVF�d;�&��iSt -�}��at���e�f�ȉcYFG)&RX�9��oe�b"��U`M|� Kc+��9���r葩J���ēBu���v�U�_��(���Aܸ*%���7��]%fظ��JU�T�T�뎶j�1)�<f&�R��&�3=�����T��8	r�pE���q�ک7[h��o��C�S���$J��%�R�y�5r���J������Pb8W������Q'�-�;��A�G��%Q���������4j��M�^�FD�L���=	���Z��T[���l�${ �U*O��$�#"=���0ƪG�9S�œמ��N�#;������lH|L̰���󬥂��9k|h~L3���+4~9s֔NF��? ���w��hv�<A��P����JQ)�A�m�P�n��ݐ�n�U8� �{2�O�v	����$��^���B����=f쩬��nsRՐ;���/A��rM!R��E�#s�)��'�r5�V��z�%������}��#N`���߈���P�Q��w&ы@G���&�:[���yr��<��W���*���L4�!MgX��o���Wګ)pExQ����GT������!�T�!� T������х��6[�i6��pe���]�/�����j]�j���G3��˔v�J���!�%�)1W���h�b���p�f��`�[,��I�y�[o�����T�P��&�{�`�O����"5�;����#Pk����</��%|~�����I
����fQ�����ϔ�z|!�I&^-E��,��t�����r߿*È6eyH�C:d��n=�X��!����_D�LB�}+)n�"~��4zZ�ԧ\êЉ�ėe���Mf>�\�ؔ�K�!;2�T>=�)d��>��y�,{R��X��������ab,X���W�G�|���H;�86>s��K>:�Z%��Ɣ�j_%M[����F�M��H����|��[�x/:� �n$�$KR�r��� �1`�v��b�,re��v���C)�m�0��2�^�������l�ޫݚr:d��!ñ���T����Sgⱑ�
5aR�����r�GI?�D٘��R^R�����"e��<s{�
Mi��ؘ�R�X*L��ܖVW�W��|C�\���ߨ�K���Z姼�Ɯ�S��jQW���t���g_Y�qP{��u�vy`O
�p�(�4�<r6�26�֜|�˗I����f��1ťa& Z�/�ѕ	'�v|���چ�����!Ͳ�&`����`��p�."�ccH��$c:��M�Az�B��j�e�M���Aj]^�IÝ�/VAt��5k�a���x�)��s_��"�qxz�XjPP�3�yx��x`MJ|l,��Gĩ�{_ &���C�Y�vq��Zhdv�t���a�N� ���ۓӳ���jh��W��;���._׳�xݬ>lV�s�.�jf���u}� wb���z"l��G^��G%�RF�������f�i{&!�Y����v��;�d��9�#��� �L9�U�`��U(5�C�:�m=�(G0W��5웺�]��.�'.cS�9�7�"�|��l�s��4X�41$3~��u{���j����(Y�v��|����Ý�o�	-��X���_f_�7M���7�=���x���8f�\_���v�Te�O��v�p����^6����������܆͝՘��ZOכ���?������\��r���)SG�(P��ѱ�Mc'b#��U|�6��#S��T��� ��	o�Gk0>�7I�
�9&J��K�(#��b��h�1[\���"2�b� �P� M3 <�CQ�N���@;��N�v�r��.z?�1�=�~i����e|k�J��!�����+��6���"���I�g����"�����A�i1Ub���m�[���fNd� ���|��-��u~*ݔš�_�Ϗ�Ww��k�O�4swdݝd��"�b'U��Q�b�d=��A�� ���N�߆=I�͓��|%h4���&��������s54�w�W���'�@(�,?�L `g{��ᗯ���K6^��&=*�m�Q�\�:����䐌����85��PԠe[��t�U	���ɱ�3[��m�P�p�O���2c�Pcȓ��U\��q�O��K(d��0��.q�$0>��P�*$$��D�;p�����X���G_�c5�T��a:��!�
9�2�t.�D<�8�Ʈs�x��S���<]���e�K"�Y$U�)��4Y����zXz��`4[��V�W�۱a�%R(JX�sR&����L�r�8Rѽ9��*�(8J	.��6fR�V�7��1y�X�M@@3�Û��,��G���G"i���ZD(E��(0~��OX�����桨N�n)�"GM�F(BM�6��e|	�i,����]��;y)��	�4; wH{��^�%OM?�~z"X��֡���2^�*F��D�)0��XI}��l���}|�"�t����0)X�x�6�xzT*���b'1m��p&r(F�$�Q��0y�Ita�L�3ؖ���pA�끒��^.���}"����	��S��l2L�BX�F�:������Q�z����(�c�(�\M\�얿Bj@�Q�I_��H���&�������'8���Qצ��v��u�`\r#h��R3��Y|��.�򖽑�i+�S����sG�=�S� �f�#�� pƦj�}z�SE�"].0H6>�ky�LO��
�c�#�x���)|@�Q�L�#�\�)�-YO	��ۀq[��A��i3w���AAU�9x3���k�+��&SQ���ښ���1Y���Q�V>�om���Yu�Q<M��+W[{���Tw�$,A��9vh'&�c��1�ĞB6�;ӱ4�?"��= 4�yaY��#8���I-��$�jx��x�N�?��v�t	���*��X"�r�Rk:n[9K�>�T�YP���6a��/��M07�J����~jz�@Q��E	�Ӎ�Go�I�k�����S-��|��`�d�zD��ctO�dsl���	"V�R���%FP#�3Mն
��M��q* ������SS��ʀW�Q�fQL5�D��|1(d>X	Oz�&2U� oȀ��X)�>czC�J���G��S�t�y'M�BT��4�)̻��D}��9��g C
�_���"�� {�S9���w�0����ل�`����ÓB�3    ^�D�R�������������֕�7 ��N���y�s��g��.f�dFw�R�p�́��^���N�E��_-�������49�P�f��`�':�0e�h;mv�/)�5�	3�a�Ţ�֚�r�����C�X���a�a"͊�8sj������k�Í�.sX��	ʰ��������6�b�Gx�<�d{L�Y�o�i����<����$���h��nt��0�f0��=5��06-��hX��>)3�;�(k|�P>A��qjtQ����|����5`�XY�
>�+��g������x�Q�u�ʇDNt�å�.Fg$�0�S��)�ǩ�v�T.|v�x"���o��}��0����=�吭F�����X3�g��S�|(�w~� �Y���m��2��}��|:�Ŋ� ��@h�6�1$�������b�F�s�ՐS�KӍ�(���0C˻}`E�Z�Ba0�+�평#&�CͨՉ�1�μ�W\N8n���!b���m�K,�,�g@���������ZPJ"�r2XZ��Č�+�%^����S�xr~|]��C�?�0l�¸U=�Y,f+�U��;������ݻ�K�k���b,�p�����X0�fr}D�H_}����W���&�i)���mgP�o@W�P�*P@�PV+v	�N�ka�,S��)l1EO�/5����h��,%�)Y�����:/Y��y�����fHj0�<����ȉ�ۢE�y�2�z���~� �/�cd;��	tb�9����K��e���cC
�gF�N�#l�4�|���Q�3o�i{�cֹ\x���-�����T x~���4�K�4C��1'�c(hrC�̻m7Ը�ا��(2߶��y�
�!�\ThfFe���~R$�&����fB��U��{FNz�`KGy��pz�4ЭX����(�NH��9O|16�5ec�(�8szrީ�h�4��lI}�	�By	�<l�2�gXyS��\� ���ؤ������������wH��d��{o5���}to�'_P�33c߇K+��16�N�_����*T��mܹ�)���D#c�fiC�3��KB�"�N0�7K/�y���]���;�NJ�"��!'�[��)��`v��]�ۉ���Ƅ&���O�U:��c����Z�q?G@!�	I��z����������iZO�7��wJ��
8�����oA������"(]	Pb
����+�M�Kl7�OE�!�O�� z��KN�"��i���S��xL����Wz?Lm�D&�c�^���(.4G"�y�S��?{�&>gs��H�7��_s��x:_q2�ѥ1m���^nBZD���X�jUvj�i ���QJըЪ����_�K�*����Ղ��v�?vg��D��C�p[kk�I"�g�G��	������կN$��Yf���O�"��(���KP���!OO,?��P1�m�����$�݁H5������B��pc�C�^^�m���"-���^�J��Y�E�ۖ��L�6f�ffm��}yqu�� =z`������B�����p���ojLfz�������7��l>ܧ�~���=G���
KAl)�-\�-~�%�&>O^YKJ<��<4&g=/�_���L� S��BZ�������|W��w���7O�Ʊ��{.o����/blu�q<��d�Kl�X�{ٍ��i�@o.c#�(,�R��7%�c>��%����r&�<t+�;���S,x�c~�q:d{�\�7O��U}�tOg��G����(�CЬ�砆����m�iӷ�l�,�����W��I��=��=א*�UP����i�B���灃��9��q�V�i�*۽bt�̷1v��!h����Z���D����M}< �e�`~�f|�@ތP�Y}���
�X��6�_���'�v4�+��C�-����d�zi&��ԦDdk�d��IG�w	7����NT�e�K�#�@���(۪R���y�6��c���Ŷ2!�!w��U�X4"�8d��Gϋs��b����wW4��)��� �e��˒��O˦��"_�_�#����ÉF^��W�dY;T����(�5 ��,kǃ����ۡ�׃.����fmD����9v��?�}�L�M�v
����ه���c��D�#Mct�#k�-3_��Є4P����H�����`�N�$XA�7���H^��=/|�'аY��*���®�h��%\�i�*׸��`
 �=�^�J� 4F��@�p~R��%���g��h��E��C���d�i��7�/Z�:��O���*�#	���ډ�����&�u<)<r�{����c�mA���O�`C��G�8�`��S2,����m���]�F�K����ԩ-��`�w#*��}ɩ����@���"�| +Xh�,z�s�,����穌j�l��Z�B}B�we
���=�̋�랷ڋ彥�jl��
N��J�N��+��
5޻��R.5Uc���Bǝ�"׼�(�^LX���6��qϱ����@����ٴ�y�OB$+�ף6p����1�+�_C��*l�~���>�(9��}���b�oQC,�	�� �͔�b%-��n�p3h�c��i�3�-N�$@��J��������
	��y��!E}�����c�u� �ř,t���G.b�ퟸ�!.��P�9*��yL��j
Gd���4Z��G������",������ܺ��3C0�B���5_J�Vpo��p���<+.|d�>cA�L\�O�=�h���KaC�b�����T|{�.�����.���<�� d�D��V4�z��HlX��7����6h�e���t3ϳ����Ćw��1�dv×�C� M�W���5L�Qh����8d%__C�Z�ew'�ȬE�6w)��G��R�O�}�`����r���;PB�$��"(�y[}w�Y.>5�"�+�ʩ�Ϧ�A��_�Sҩ~@Oظ����W�(����Q|�fq�a�����Lbj��"C��TR;*bJL�
�}S�SI�NF��>��r���~�P��2.�|��h���Ty[$ه$x>��~��JH��/F`-��!��^ľ{?�rY��-�N��]o�L��#]s�q����R�*���C0Gm�%�Y�{N�l�C��9@���6UHt�%���r���?��b��0�3�|�x��;ix���v������hZ�ˡZ$a/�����9\�VI�,��#���*xzi"t�a2hL��+c��X��vS����cz��G�QՖ���d�$bR���~l�4N���1q���-Nv��kk�2�EH�zB *��7&6dY�n�^��G����2_���1پ��ѡ���}�"�L��
��Y,%��"wȥ(��2uT�@V��G�k�vGF���X��N��"���js�X����y|�b�!}r�.���o��W<���GQ|7��y]�6�������M3[�kOvP�j��`g�f�q$R��F��;��(0��dr��*�C�٤5M,�3 ��Zf�N!�����µ��w�eX�f��e[��k1rJ��G�S�����Hߢ�q[ЧEbm
M��[-?䴋]�(��96����-���%�� �������3qwקd��NW������u��8:>8��+��D#R��]�����,�����#�Y����zR���Oʗ���g���o0��*��4�%���s�\/!g�q?�a�o����>����*I[d?W~��������8ui�'�M\8�j3�'��{7�'��D]�V$n� ��*�J%pp�ջf��
�u�?������Z���I�j�[��?C=�"�ԍ�k7��?�����6q���v��U��9x�>_Z��"��6XP��l�Үjg���}lC��ڣ����]2���܏�:���]����p�cЮ{��w���XQ���YS'�/���2,=��:����%��H��l��)]�3���N����s}��.��'r�\}����    8;�S!�1��v(�գ���r���ݡ����]�BN�В{m���OK�.�6[wH�ڶ�|�l�{��륀9L�IF"�d�6wHfsF��M�U�?@vɝ"��ƪ�}��8 Z�]K��JM�� �:RҪٱD�bh�'i�q�3I#&��撡�vkɐ�� V�xr�X�*(��g�uh+'wɥޠ����r���w �q�={�Kٰ����;p�J!�{R�g��J2�o�qwFxJ<��ۉqy�gԟ,����qD���P��u��4*��"6�Ub���Qt����F������ǞV�Sك�!����iƪ'd�8,x�x�)$h�p�*� J.��0��.c:�{��p꽠G�&:aBl�#m	E&{%�OO���6n��
�]�����8�zL��	j"�.q�gf!T�Z�d5x�,1Α���D�I:p��c���YV����s���v;�y�l�Ǔ� ���������>"ݏ!q�����C^ԛ�����h��`���R��ld'e z�K�2e}s��zͩ��ʖq��7�:����z ��|g�h�&�����LrH t��mϷ�(�<w��H��%�sFb��\WFUA�a�P�\
��ʭ���m��e��5�������J��^���3��ͩ�q֖5&D�BQ��@8%��A#��˻��_��z�U tZ}�|LD����S�P:���k��6Z�(p��}diK<Uv��"�5*���ۄ�T�4�?�c�
���N:��}�O�.�C�3C�>����Z�r��x��i���XO{�~J����y�V�1��,�������pyrX�]�4M� ¶Y��9�o��]�)���r�A�
����0�K� ��
�9��X4>]�[�f�(Jۼ���e��!YO\���:쌏���G�*h��'lh;����v~�|Rj{�4����@__��U�����%SCsĥ׋��~>5�����x�j1'�ؒ���nYJ6�P6nQ��H�1����]�8;;�!D�������������z7&I��nV��z�M�P��C�T�i�2��v|0�Hߴ�
��6���G�8���1E���<��$
_#\M@p>ǩA��%�ʙ2ǌ�e�$������0��B�{wr�8O4�m��.�IZT��������٪�^ĖL�|#Cl� ��-$<,S���c઱!U���C�����rlw���Q��7 �-a�P���rEV�ufƷ]�-�%B��N�ʒT����%e���?"��0=Թ^���y�ʦ�K8F��ֳ�lՈΦ���h�_��%�<*�H���rP�8x�dwH����دN� ���v��ȭ��.S/��gL;k{��GYU�aUg��wG�}l��w��W�b�{����UAE�a(Y��ʏm5� ��U�cq��~����a^�bch��O�Nq����%�%�9ѫ�zL&T�Q�1V��P�6Z9��c����{y����˓��mi�
)���`j7����7�"VS�ZqT���'�	�#@��9[N����_�����\2��0��:?�A3�݊�"��ِ`����K��X���$�:���lDt�i۝���#��Q��W�|Vq�5�U
;�2f�A���o������	������#3'��=aHa���!-
�k��0-�]~<�C���<��K�%�� ?�T!S��IC.+,��+Q$����|�/LT�� 2M�����$~�v�$��+���,���Wuy���5�����8���G���V����0���D�s$�T�Α�0ʞ�-�G/�y������I�kq�oC����G'	r������JM{-օ�܃t�ub�t�"���1�:�z=m�#�D��O�(c��@��λv��+%�LwQ��rŗS
�|l[�8 |�
%[�%a�>0�{����`�zO��._�,*�3�M<Y3��8%�ד*�>�߯#���r�J� R�U�j{�Bɀ~D0�>A��sT
0�Zy�Ňd���R�  2xq�KM{L&5��~؈F��zHXwO�S�N@gʤf���97l(7��c�w��+����ɐ�@tB�	���} M�	�z�4�{*Í��&A����<%�������O�LχQ\��^����>�6��]��J�a~�by,���1i��b��}���)��L�.E�� �7m���%M�8%3·
�x��廤QqJ�����e���_�H�kq�d1P��v�Չ'���/ؘ��v�z��#�*It�Ä=�R� �u�=awI���a��� ��b��Rgv�&�	GQ0����Gqx�yr�o[���h��⫯��o�c��X���&��,꾱�Z��o�#�"s�i�9�o1���+�6q�O�-$F�,����]kuT�:>d�^_��q��bт-�$��k	�T/U�/��%_.� 5؀��c}�e�A��JϧM��r�}���]q � 34�M�S�Zه��m���>�m�lK$T%w��|5r����lk���&}N��Ͷ�m�صRI7���<JV���%!��~�ʁn>V��rcW椔�/��U��*hA>�:|���fa`J���I�A�.{�G a2�{�!�S���
�	��LU^ S������`W/�m�ç�^h=�4��L���}���P�8���NLk���dHEaׯ��r}�ϰ��]A����JJ^�[No�WoM�.��ʴ���}��]Ca��)� υ��|(O�'��U���+Y���>sс��T}��
��ǰp��Lt�u������L�^����hO��ny�|�4W{tG��<fD�L���:Rq2Ft�}7�
�*{c��q��/��"&_~��6C�婺ٽ|�hA�8��k�bEB#"N��M#ڜۡL��^_0t��} ��7��/5Y)SLo�p�U�
��| ՘��oP���� ��{͞�VQ��or�����|��0Dl����h ��ß��%����|�ݛ!�՘.B�	�s�=Q��f�B��qn��~��)A8���_�bL�qaO�����#��L�����m���      �   ;  x�uWMs�8=ÿ�9�%��:z�co��D�٪��@$L�� -?;fj�rعo�47��}���)WR�e��ݯ_�n�l����,d�o�����:�,Z��bᙠ����L������/���F�쒅�L$8��;�J�~m�=�0�?�I���h��#�9��Y�_�ޚ:��O��k%;k4<��s\���'�vL�D�Βo������[����g�DD��@�)�j�)w?��N��j�W�޷J�,��Ώ�� cq��n�F�v�>��4��i52�Wt��+B�l�����Ep�x\g9��m��lm����
u���" �����n����(~����.$��łW��e��r�>?�C+q2�W��+��;
鯿<�σ�,�i%U+�Q�kwm $	~���b<}+M�U��7��ˮ����E�,�	����>g�\�Z� b|M@�1{���=�� 9�ID�1���^)�@��^�FxƊ��yz��Sv/��,� �s��6aĉG�U\�ht���Ѓo0��k���G�s������5�AW
Pg�:��� (�)�%{P��;�W[[�F� ��A���vE�Z�r�K�X��-�dK�^��[��d#K����~����h�}���حk�w
�pO>GD�Υ`WC��G�]��עV���V�%�v%8%� щ�V{�9���LNh��p>ÓD�~���ߺ^�	������]H�"�b*�a%��p�������W��)�G���s\5��(ɘe�UGuՀ���$2;M?���[1����Fa���"c�bk�Js����$'�#�=�q,Y��]����� 9�֭z�6��t
�Vc�I J�S� ���GUTۮGO����s�)K��{�����!:+;�!@���]6�O��*��:)�.���$ȗ�a\�gЖ+�V�|A��A5�X�6En&>M�;�Vv�l��"
�Ѷ���w���0%yE��[J�T����aH��o��Zv�d_l�E�j��9�s6	[�J5���-�=���ϛ��id�٨���f~���{!�qz`Fs�Y���/�"�wSJ$J���8��A4J�F#_�0vF��⨂"��loI���[5t�?��m3�W|�x[�u:	( �(C�0�6��EI��ń�S�0�����8d�E��S��O�1%_5rG���T���d
:z/�4a�<E��k0Q�-���u�1.�$�U�pL��O��;$�؇���}|��C��	d|�Pᴮ��ǷP�����O0�B-�ܘ�ŇO�R�J���$��~,Q��(�O�l�W�:���,K���+q��)���U5Ԉ��o��s��M�0M�$��
4�A�P �n�]C��Fb�@��IΏ�s�H����_dS[Ms��FJov��G��fw�L|HB�1Oz7��=�b�w<��JA�OX�Dcg9[�.u3.}1��t.��>��cL�� ��-)�;Hi��7A>+_B�������V�}Jw���/�C������buӝ?��q-�� -I�O0S�-`�K͍5Fr�`A�S}��'7>G�2�I>�&b��Tc߱
��{�9��D��}�)V�2��:w��n�Jg=J��������`TB���gO�}�i��4=�@��ܩ�۞�k�v<&sM[;������F잗?~��@v0��q�8Y�D�t=�J���d��,Zg�5F7/���s�_T��y�w��Vo
-u3կ�4��4��?�n�e�W��>4����MZ:��:c9,�m�X<p����5�2��/`��$����0�Cd�7�_L�E��Et�z��#�w����������i�n�P����NO�el�I��1��������XSm�?m�s�����͡����z�u�l�yd�v"T4n4� ��q�7� �)�q���tB6�J����j�����WS�'`3l��٪r����x(��C:�x��hg+�5:T�'�>t��KA�#���|�~T�=z���  �؏3�8��hk�:���v��bbBc$�F�t�=���u-]�o�&���,��I6u}��������4�#��������"���:>��)5�_�����r�      �   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      �   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      �   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      �   �  xڭW�n�J]��� ��>Erv��ȉ�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�V��5[MR]]��SثϺ�埍,-;�rS�t��Bv՘bʭT:�Op)�i ��05�j��*�b/ث���	{�^ipHI�tB���/�Bv!���T�+K��S��DTr2�-MEU��3�Ҕ�P��K%mmx�q�ң��Li�G��^l�c�){?�!��ob��&��q��������^���r��W�N�\�Z�]��T�����؈W�ҵXa��y-�aR��|�MIץ�zJQόq��7,�?�!
���4Jv�Q����ӳ��w�#Q����T��p+�9�.�y'����9�8��xX��n�q9"i��/�b/|����d�}�6uYp*���-�+��p{�lj����n8�A#Η�4}��(��9n�qO_k�+���R�R���#�eQ��)-�Ĺ� ��]J�����v����~�˩�;����63M��Fwf��|��vI�<B�=�8
:i����Cz��SA��T%�J q+Ƈ�Ӻ^������{o.�����B�_�֖b������Xؗ�v;oZ���Rvŗ�^�#�h�7�u���៩d;��c�k�-�
B����(�ndp%g��d��8�+,ۺ�q�	�8zZu�,sHf�Y�W5H$m���n�t%j��VVD}��Ü�pL t�W8�*����.�i�@��ֈ�mK���>����b&�f���^�����}�ٛ ;��%:�P��Q0h�u�8�.Z�^�B15̳��	ʹ��]c�>8{�D
�ro.�,���ồ�Rf�D�/������?}+�,�qXMW��������"+d�I��n�o��N!a4Z�o����h0��? ����{5�u���Ia&��B���
JX_�Ά�i���0s�V�w U��,N���!�����;c�2���jb���|��̠㽁K�S_`�7
%Q(�V �,㱾F��q����N��S�h]?���tsw�0Mw�����6�B�\@m;���F[O��-*;A�V.� 9-����9�;SB�A%z����M׺̦s#J�1Arv�|�B�Z��4N��L�4Dٳ4�vq�̰��O&�� ���g��c�*�(�n��Q�p��҄]��1g#>{S�ʅGR׏��i�%�}y}��ll-HLv&�\����N�����,�!�)�+��8�nL�r#�A�n�{����<����벾��i]S߈{ʍ¬*�Ū�-8m۫W�Q���cQ��ԡ��R�6�@H��[��*��5���6��[������`��vF�O�w���\�	`B}\4!p}��*�\s��sT�b6��|#<A�Ax��'F��N�?�'��'��Z�0��04�j�%�B��7��~tD׍sKK�Y����������E�4�1B�������"���n��:lϔ�s�+5�PAX#GeJ�R����1pP�[$+�뻇�ly3l]���Z�D,`O(��
!�\
#�_-K'S;�1?��������e���:j(f��w�1b�T+�]d��ʍ�i��#�	l���V����!�k3�p0�I�{�E�`�sf��+5���Jv!!O��sY��#����fh���N+�x"�bq��q�g�A���9-��X�a��b�N��Ѱ)��`[�w	x#�Yҵ���ń����m�?���A5�� �OaTHg᷇�`�f6��rs��S!g3��4j[6E�S�����aՋ�
�כ1*
P��R����1��� o�%_a;dv��H�<���d$��^�����F_:m�!�)\V�J%V�bt��xw��p;P�P��U����4�a�&�`�9��8P�@=��t��[�ot@u�拣�o��]�e���q;ת6��b4��cQ���-���iz�[��^��P[s�ջ�2�3��@6�,䳯Kp��A�kw㈂$j�cT;�d��dp�n��n��*mO��W��f�k�k��7�]�_�
����Gd éG7Z�@(��V��<]�xI�D��0�:����"�휟�V[����s�ݧhӉl�Z@����)��1b�yi��3��>}N�9:̝����D˃�w��U�p�tS��9:q��Ɠ֊P���R�#��6Q:�~�{�c��]��������?E��      �   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      �   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�     