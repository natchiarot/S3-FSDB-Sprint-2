PGDMP  "                    |           fsdb-sprint-2    16.1    16.1 5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    57412    fsdb-sprint-2    DATABASE     �   CREATE DATABASE "fsdb-sprint-2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "fsdb-sprint-2";
                postgres    false            �            1259    57544    User    TABLE       CREATE TABLE public."User" (
    user_id integer NOT NULL,
    username character varying(255) NOT NULL,
    "position" character varying(255),
    email character varying(255),
    phone character varying(15),
    location character varying(255),
    password character varying(255)
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    57543    User_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."User_user_id_seq";
       public          postgres    false    216            �           0    0    User_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."User_user_id_seq" OWNED BY public."User".user_id;
          public          postgres    false    215            �            1259    57578 	   applicant    TABLE       CREATE TABLE public.applicant (
    applicant_id integer NOT NULL,
    applicantname character varying(255),
    email character varying(255),
    phone character varying(50),
    address character varying(255),
    lastupdated timestamp without time zone
);
    DROP TABLE public.applicant;
       public         heap    postgres    false            �            1259    57577    applicant_applicant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.applicant_applicant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.applicant_applicant_id_seq;
       public          postgres    false    222            �           0    0    applicant_applicant_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.applicant_applicant_id_seq OWNED BY public.applicant.applicant_id;
          public          postgres    false    221            �            1259    57587    application    TABLE       CREATE TABLE public.application (
    application_id integer NOT NULL,
    applicationstatus character varying(50),
    lastupdated timestamp without time zone,
    job_id integer,
    applicant_id integer,
    resume_id integer,
    assignedto_user_id integer
);
    DROP TABLE public.application;
       public         heap    postgres    false            �            1259    57586    application_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.application_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.application_application_id_seq;
       public          postgres    false    224            �           0    0    application_application_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.application_application_id_seq OWNED BY public.application.application_id;
          public          postgres    false    223            �            1259    57569    job_posting    TABLE     �  CREATE TABLE public.job_posting (
    job_id integer NOT NULL,
    "position" character varying(255),
    companyname character varying(255),
    employmenttype character varying(50),
    jobdescription text,
    experiencelevel character varying(50),
    requiredskills text,
    compensation character varying(255),
    benefits text,
    worklocation character varying(255),
    applicationdeadline date
);
    DROP TABLE public.job_posting;
       public         heap    postgres    false            �            1259    57568    job_posting_job_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_posting_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.job_posting_job_id_seq;
       public          postgres    false    220            �           0    0    job_posting_job_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.job_posting_job_id_seq OWNED BY public.job_posting.job_id;
          public          postgres    false    219            �            1259    57609    resume    TABLE     �   CREATE TABLE public.resume (
    resume_id integer NOT NULL,
    datesubmitted date,
    resumetext text,
    reviewnotes text,
    location character varying(255),
    applicant_id integer
);
    DROP TABLE public.resume;
       public         heap    postgres    false            �            1259    57608    resume_resume_id_seq    SEQUENCE     �   CREATE SEQUENCE public.resume_resume_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.resume_resume_id_seq;
       public          postgres    false    226            �           0    0    resume_resume_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.resume_resume_id_seq OWNED BY public.resume.resume_id;
          public          postgres    false    225            �            1259    57555    search_logs    TABLE     �   CREATE TABLE public.search_logs (
    searchlogs_id integer NOT NULL,
    searchdatetime timestamp without time zone,
    searchterms text,
    filters character varying(50),
    user_id integer
);
    DROP TABLE public.search_logs;
       public         heap    postgres    false            �            1259    57554    search_logs_searchlogs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.search_logs_searchlogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.search_logs_searchlogs_id_seq;
       public          postgres    false    218            �           0    0    search_logs_searchlogs_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.search_logs_searchlogs_id_seq OWNED BY public.search_logs.searchlogs_id;
          public          postgres    false    217            3           2604    57547    User user_id    DEFAULT     p   ALTER TABLE ONLY public."User" ALTER COLUMN user_id SET DEFAULT nextval('public."User_user_id_seq"'::regclass);
 =   ALTER TABLE public."User" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    215    216            6           2604    57581    applicant applicant_id    DEFAULT     �   ALTER TABLE ONLY public.applicant ALTER COLUMN applicant_id SET DEFAULT nextval('public.applicant_applicant_id_seq'::regclass);
 E   ALTER TABLE public.applicant ALTER COLUMN applicant_id DROP DEFAULT;
       public          postgres    false    222    221    222            7           2604    57590    application application_id    DEFAULT     �   ALTER TABLE ONLY public.application ALTER COLUMN application_id SET DEFAULT nextval('public.application_application_id_seq'::regclass);
 I   ALTER TABLE public.application ALTER COLUMN application_id DROP DEFAULT;
       public          postgres    false    224    223    224            5           2604    57572    job_posting job_id    DEFAULT     x   ALTER TABLE ONLY public.job_posting ALTER COLUMN job_id SET DEFAULT nextval('public.job_posting_job_id_seq'::regclass);
 A   ALTER TABLE public.job_posting ALTER COLUMN job_id DROP DEFAULT;
       public          postgres    false    220    219    220            8           2604    57612    resume resume_id    DEFAULT     t   ALTER TABLE ONLY public.resume ALTER COLUMN resume_id SET DEFAULT nextval('public.resume_resume_id_seq'::regclass);
 ?   ALTER TABLE public.resume ALTER COLUMN resume_id DROP DEFAULT;
       public          postgres    false    225    226    226            4           2604    57558    search_logs searchlogs_id    DEFAULT     �   ALTER TABLE ONLY public.search_logs ALTER COLUMN searchlogs_id SET DEFAULT nextval('public.search_logs_searchlogs_id_seq'::regclass);
 H   ALTER TABLE public.search_logs ALTER COLUMN searchlogs_id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    57544    User 
   TABLE DATA           a   COPY public."User" (user_id, username, "position", email, phone, location, password) FROM stdin;
    public          postgres    false    216   EA       �          0    57578 	   applicant 
   TABLE DATA           d   COPY public.applicant (applicant_id, applicantname, email, phone, address, lastupdated) FROM stdin;
    public          postgres    false    222   8C       �          0    57587    application 
   TABLE DATA           �   COPY public.application (application_id, applicationstatus, lastupdated, job_id, applicant_id, resume_id, assignedto_user_id) FROM stdin;
    public          postgres    false    224   KP       �          0    57569    job_posting 
   TABLE DATA           �   COPY public.job_posting (job_id, "position", companyname, employmenttype, jobdescription, experiencelevel, requiredskills, compensation, benefits, worklocation, applicationdeadline) FROM stdin;
    public          postgres    false    220   )R       �          0    57609    resume 
   TABLE DATA           k   COPY public.resume (resume_id, datesubmitted, resumetext, reviewnotes, location, applicant_id) FROM stdin;
    public          postgres    false    226   �_       �          0    57555    search_logs 
   TABLE DATA           c   COPY public.search_logs (searchlogs_id, searchdatetime, searchterms, filters, user_id) FROM stdin;
    public          postgres    false    218   V�       �           0    0    User_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."User_user_id_seq"', 11, true);
          public          postgres    false    215            �           0    0    applicant_applicant_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.applicant_applicant_id_seq', 115, true);
          public          postgres    false    221            �           0    0    application_application_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.application_application_id_seq', 50, true);
          public          postgres    false    223            �           0    0    job_posting_job_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.job_posting_job_id_seq', 50, true);
          public          postgres    false    219            �           0    0    resume_resume_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.resume_resume_id_seq', 115, true);
          public          postgres    false    225            �           0    0    search_logs_searchlogs_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.search_logs_searchlogs_id_seq', 1, false);
          public          postgres    false    217            :           2606    57551    User User_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    216            <           2606    57553    User User_username_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_username_key" UNIQUE (username);
 D   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_username_key";
       public            postgres    false    216            B           2606    57585    applicant applicant_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.applicant
    ADD CONSTRAINT applicant_pkey PRIMARY KEY (applicant_id);
 B   ALTER TABLE ONLY public.applicant DROP CONSTRAINT applicant_pkey;
       public            postgres    false    222            D           2606    57592    application application_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_pkey PRIMARY KEY (application_id);
 F   ALTER TABLE ONLY public.application DROP CONSTRAINT application_pkey;
       public            postgres    false    224            @           2606    57576    job_posting job_posting_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_posting
    ADD CONSTRAINT job_posting_pkey PRIMARY KEY (job_id);
 F   ALTER TABLE ONLY public.job_posting DROP CONSTRAINT job_posting_pkey;
       public            postgres    false    220            F           2606    57616    resume resume_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.resume
    ADD CONSTRAINT resume_pkey PRIMARY KEY (resume_id);
 <   ALTER TABLE ONLY public.resume DROP CONSTRAINT resume_pkey;
       public            postgres    false    226            >           2606    57562    search_logs search_logs_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.search_logs
    ADD CONSTRAINT search_logs_pkey PRIMARY KEY (searchlogs_id);
 F   ALTER TABLE ONLY public.search_logs DROP CONSTRAINT search_logs_pkey;
       public            postgres    false    218            G           1259    57623    resumetext_idx    INDEX     h   CREATE INDEX resumetext_idx ON public.resume USING gin (to_tsvector('english'::regconfig, resumetext));
 "   DROP INDEX public.resumetext_idx;
       public            postgres    false    226    226            I           2606    57598 )   application application_applicant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_applicant_id_fkey FOREIGN KEY (applicant_id) REFERENCES public.applicant(applicant_id);
 S   ALTER TABLE ONLY public.application DROP CONSTRAINT application_applicant_id_fkey;
       public          postgres    false    224    222    4674            J           2606    57603 /   application application_assignedto_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_assignedto_user_id_fkey FOREIGN KEY (assignedto_user_id) REFERENCES public."User"(user_id);
 Y   ALTER TABLE ONLY public.application DROP CONSTRAINT application_assignedto_user_id_fkey;
       public          postgres    false    224    216    4666            K           2606    57593 #   application application_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.application
    ADD CONSTRAINT application_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job_posting(job_id);
 M   ALTER TABLE ONLY public.application DROP CONSTRAINT application_job_id_fkey;
       public          postgres    false    4672    224    220            L           2606    57617    resume resume_applicant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resume
    ADD CONSTRAINT resume_applicant_id_fkey FOREIGN KEY (applicant_id) REFERENCES public.applicant(applicant_id);
 I   ALTER TABLE ONLY public.resume DROP CONSTRAINT resume_applicant_id_fkey;
       public          postgres    false    4674    222    226            H           2606    57563 $   search_logs search_logs_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.search_logs
    ADD CONSTRAINT search_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."User"(user_id);
 N   ALTER TABLE ONLY public.search_logs DROP CONSTRAINT search_logs_user_id_fkey;
       public          postgres    false    218    216    4666            �   �  x���Os�0��˧б=��dY�o��iaH� 3���VkK�l��O_9�&�k�j5�}��c�2�Tcs�-L��:�`ݖ�g�৯ܰ��	�fW���DQ&ʅʁ'<��#2w��m������7����62ۖ���5�W��� 2y�ֹ�Z(*E�C�IݐUדS�4�>΢��;��,n�����o�d����p�^|��Pl�����Y¨Ȅ�0�%�e��Q��Xߛ��ק�ߒAe�������ۺ���C�t�jʿ�B%4�5�'�tN��GJX��~�f�6>4��ޝȞFٷ�g�S%�3�]��`S��Y�c�é�[,���S�ku��03�_18x�gw#�&s4%t�v=����Q�h*%���+hs�f��`��}���M��j%��$��.~��%$������
k`l��o�b�������gT��C"�E���ū�v��4����Ԟ��Ŋ�T��?��u93�      �     x�uY�r�8|F��?@� ��I<�d��eg7�S�K�E�U$eG���^,�ڇT�������쒻m�m�#�YK���v_٪�2!T��I��	���P╎����d�۲:&���ޱ�P�أ�W���\�wβ�ݱ�_v�Ů��&U򣬪2l[��d/Ã�w�ө�<������f���-W!y��g{����-��:T�Դm�}Æ��:vEˆ�:�f�+kR�����2mlrYm�P`U��*����\�,D��	�>�}��\��JǾu��y���	���urMF﮳m�OcS�m�M��xv���(�F�(��}p{`L�rc�u>��v�>�m�&�ñ��H �"��O�T`.�����[x�/8�V��e@~4]�+~�:�l;�ٗ��in�ZIvWo�U��w��K.v뢡�4ga����iS��WC,��6$�7�6�H�mȺ8���[�rLC�Ne\_V؅]���VO�����.>aR�]�s�'.�,t�ƺ��Ǧ�
�F���}Dk�Zn�!��hL�0�æ)�/Mr �z}�m�yz�j��)?�@n>��ShVe`�9dq8�^�\�N�Im}L��u营/�u]7��(������'��\"�_c0<���EU��KQ�r YU�@n�#����12�@��m��$���)Ȱ�� k���1.U8�FY9�Br��P����Q�h>���p�8˝Q"�(�5�q���S^��cf헉aM%|�̙�*�P�C3���Ɔ����H>T�y®8[^�8Q�Ĥ4g��SD���l���c��2)x�*�C��D��uX��x�#TO��m�����}ʹO�C(��2&�4 ��G�*T8��Hʪ����)�s�k��Nޗ�j3�²˪��l�6���#�6��K�a
�L=��|�c�x������?�a="��9����}��*A�w,�(;Z$�N��8+N2g�"9�=H�
�����c͑8��n(��C7D��	�"� �����@�$�(gS��Y�#e`"���m0��J��q@�S�X�@,=N��8�C@�_H��4m:V�����|�[ G�4N�����b_��u�#�f���8�"^�
�� 9=����}sX�|�4(�h���"�Y ��7z�-�;�rh����0��ߑd$��wqv��-�H5�'�L��8�U��X�+Y�8�!��O� o�HDb.(�.�.|j
ld��������]����.��#���ߖX|`���&�9�)䓵�|~,T���-��N���*�_�T+0,�d�8�|.��.�^7�QQ�E4��G�3�5y#덌�}���f��n�����M�`K�R�=�{������h����z�в� Yo���0�>Kʥݑ\Vx�>K+��S��Ô��u�� �^�f�MQ��k�BU���dl�?@`��Yx$;w'�G�/�(��a7�;pV^��L�9q�a�r��41�O�¶@�n�b͞�!��s>�"E�`B:�K�v�S�o��܅��7{�q��xA!*%ۀ	M^CS��vp����������|���I�Y���}ir��g%7M�*�າ=���X䚐�UHR!D, �!�������Msd!�lO`�5�_C���?<'���s��|��bPZ�{�%D$=m��(G v8�	�iW@��Av�?�o1X�R�X���=�`���	V����5(�7p�Rʓ��h�Q6E�L=�*��gD�d�
��h�A����>+d���P��& .m�E	��y*��,9F��(���v[#ӟ"���' �W
�DVtrƱ/�~��n[V��]xz����H0��I�b��p�U1�[�lS�++�Gb!;�[TT�Ӥ��ˆUr{�������GsO��cC����P2�)��Ã���݄�y*<ͫ�Z�������_N��G�PI�v�'�$�Z��)ptw]o�k8���}y�����T	��ɘV�3��Q��0tb��q�0��u�>0����*�h��7�~�B#X�yRɈ�N*���"y�\6H��&�E!��ӹr��fV�X˾ ���%4kVa�m�xq��x0�����S=�������"B���<s�ɢD��A��k݀!`6�#�a�cE�9�9;(�`�ZP�K1��sg�
��5r�ڙw���������jH*�4
����*�/�yKu��ٛ�Q	�����I-`�/�Q;h֡mIFC�Y���p���`7"��ȑ>�X��zb�5Ƌ~�&7�A)�]ps�U�{�5c��Kc/EE�Ϻ�z��Q�$w$1ě
���<	`{=�,��,���&�-�B/|��>�ᐌB2�$N��P�w A������Y���T�{��ҟȄC.�z[&7Ȥ�j �}��PC}!8Z����'Zd}��AcX߰������$���f
�:9T�:�.(8&��B.C�!�:j�e��yH�TXp!J1��=,ߧ#f^�����S�`1{�!�i��9i�x���8�:���ev:�n*C���f�u�F�B���7mDCBG��4��~Qz.y$p�L^���x]H!O��ޒW #]���HV���`Q1 �8�Ә���i����P���!ԩy�Z@�B6�s��n��$6%Y�a[��D��d5�I��5}�Mh�����IT���'ԩ�p��12�R�ϲ����D*��\s*���r׷.�AH^���tiL	␋)���G�t���s���r���H��W�DY��S0T�/4>S�>G*j�TZ�D���!�(��;8X���ex�*.u�yƎ�.W��dT�M��-�3��e_�v9��� aL���Gن�"#��@K��&�D�6jԇ��$Q����T#� ����r�k�H�QRR���:�3��٢F��~ݔ9ʁ�#B����B�8�8'�[����n������gcuj����?��r��d���;���K�GnK�Jb9���Cp9���ۖ�����E��X�����['�������b˪3��c/�!s�_c����t�04G�^5�YReq.�0'}~���.���_4P	/�]�N�Y�-�:wåCߺ;s�@�68!�̺��jM��Ԝ>w�@�?$a���PI��_5��iP�M���'�@~����x�":w�@��]1�R^�ٍ���#|溁<Hn�ȹ�g����r�o��ә+��>�
!�T%��c�x���0��.�>��
�G<��{O|�1��.�CY�,�(��J!t�Q����O}���QL��"���dߒo&߶�-$��f*�'?�O��ݻ���*�      �   �  x�e��j[A���S�	�hf4?�R�-%�]6!��S�>~Ϲv����IG&�N��~���O�CF!�Y~�;���w<V�Z��.3��U�?����b(]|��5i��6yX^��?�����k�����ʜ��%t)F�Z
�\,����L~w�����_���I,��1k%p,�k9��Ǘ�P�5�
=�1����[D.�@]������4=��ַ��,y�u�N+3�yWP5�6d�)h��DU�m;��r'�9Lz���7,�ƣ8;  ��r\ �)��Q�����a-��* 1I-R��0a��<��tE��*wҴX�\��U �,q�1}|��('0����u0�ߜ�#U�	�q!)���\�2kA�:A�P=
�5� ��gK>�:�!����������\y���7��N��x��|n���2c}���yt���N���N �>|�����"      �   W  x��ZM��6=���TmR)MH��(�gv=���{�DB2 ��c�ʯ�n $AO.�d��%�Dw�~������������+Wޮ.dA�M��eUpVz�2�

_�f%?e%�YB�����%ydB��Sʳ
�+I�ܗ��1���OeA�KY���cY$<;�J������I�~�y�R�U�!e�b~l��ny2�\��;�(�Z/��U���ya�;���`eE^^D�Y΢�y�h|O���_������3����k!fO��˨���J�Њ�I�g�	6��ٜ�'�p~���`Y��ώ�Hɡ.�D%��)�/�)+xfY��B{���˚
��:���3�{�l��p��	�� �r���%�x��y8'�,�ţ�	�����,��s�B�3F�1Zdx�7�	�~�Bɯ�|�Z9� O��Ѣ�������̚�+���S�ѓ��<�!MjpTu.d}:�|����K,92E�#%_0Z2²�.�`��S���ȫs�Ó�B;>�ʔΟ�ޞe �=��>\���QH~��,.d������w+���s"�OK�8���t�MV�"+�<�o�
�!e�,f����  	?�
Bl��2���4f��X�Q������L��'��Y�D��-T�:p| �4���<�N�Y̼p.�+���^:|���ۛUЇ�\�2�	��#K����ݤ���U��$10�jY��̓����	��  �^��p��;��>� k�k�r*dPA���m5�	x�A!T!~���+S)��X
A����GƲZ1���*FS;��I�7�*\Y��"'�fA诼�M�K�D�����@���敏p�)��Th	%a�.Ʒ�Pr�3o:DDC���Zٜ��m�p��mBzpR���p������2^Ʋ�P{����R���PC��A���n>����q%'z�rr���41�8��玙���s+�[E�u���G� �1)�׭C;����3^���@�@����X�i�ϓ�L����(W8�vl���T���e�	�Y��7h��[���V
*y�&����� Zb$�:Ӓܨ�
���]|��^�B� �R�MgZ��1���D3ST���%r�WV��������|�B��~]�#�)�6n�oK�7��*ɭa
��l��w��J�X�J��@�B�H��̎�T��BI��V���[�8@ɯs�X*ֱ�*Y���Յv�P],�%p�� �l�C?��f6��>f�츗�N�-�s���4�+U�GY��~y��Y�������@!Ű�,S�n
����v;�{�bT?��m[<Ї�,��a8*t���i��3� �޲�T2����C�����#@G9�ّg�E�A]  T�F��̒Z4؀����<���ЊR+Qz�pw���f�T8X2�"�ޫl銅vU���W(G;��TB#���ʸ���ڨ�J��20<�(?������MԲX���_��G��Z��h����"��R-�+�>���	oTh�{�k���@��2�vׅ%�{����ܙ"T�]�^�J�@�(���«%�r%M�o �ni
tH�tZ��۴�ˇ ��ǐJ����s6��%.��u�wl�����zbr��R���ֱ=Q���{�~�%�~��TH���P^����T��4�;�/��KЩR�B	.�k!��jI4ҖN���6����IV<�W^�oS~*�
S"Z*���*? M����G���3$����٭��?muC'���v��jdIfP���f� ƊQ
%��J��tZ+0\�QE�?T��⅁Nm�!�p�k�ٮ�Ƽ��3�z ]�`pI�3)�A���I���I���g,�R��<�,���������˫��|0YK�.��,�o:��Y��34YU��X�of/F8��$��:f���vw���ԞMn�z.�]���L��`�B���~#F*Z��&0��i��]+��m������{��c�.�ч���~�Lm�\�f�!�	�eY3^��[	��`&1�¯�A��|��n����N�[ ��mm��F�&K����=�������U���L9A�L�I���8F�jӵD%J�^��Nw��s	�`=�~b��t6��ŉ�*�7[T�k��XU f%����=N��>޾SW_����h�>.x^�C�DS�V�Y�QԖ�]��+.�.�-���")U�a�68ne�np�f���d4�>��D��:hth��w��)�>7�5�?��Z�6�/=���}�Sj$v, �	|�����=�cU�.9J����\?��X�n">_&��rC?�����6/ #G�!C=9����(��	�=^��q�H%�3�[�I(fb3��f�Q'����94D\�pA���S�G��5�C1�lV�d>���r�n̨��F�V"�o:8�#S�!5j��`n��ڈ��/a9���I��C��XոU���*��1���MO�]�Xf<ړ�@z+����ӂ�n��I�ݝ�c��lI�o3�j�+ AtZ��u���Z O]zn̈�)�d�{ʇ�m�Gk�9��M]��:�q5�g~:ka�'�r���c]��g;�T�1Z)��j�D�cn6�:�H�vZ��nw���rEވ:�N�A}�`%�7���u��S���;d~�\�v@�K޴3��nR����M%�Y;�Rz��勠ŉ��=ѩ�Acr�n�h;Q5�
y ;w�d�UG����p9�����=Ġ���J45���P��F�b"{Zb�*%��Wk�f��	���:]�5C�����a!��P��s3ʀ�>B���J�D�(�ñ� �~|�l쟃��5&�b���7+��ޟ@�,��g�:�S�,P��Seé�6��̣�<cϡ�*p�W�9ӿު}B<L;���Z��vo����A����v�A��ѻ�p�eB%~��ng�/���߮<��]���W��sJo��t�ϗ�z)�����{B�\v�h5�g~�ʇ;��MC����e���7��d$5�z��n��4l�:�����=gy�w㌉�7�*4X��q�!>�A�ͻ��u��ba�ݬY:�j��4�����ջc�ؽ���
'��`Ж�_߳w�/o��*����M�!��<������:���z!��'ˣy�:\�`h�&H����,�O���mQ�v����h�0�`��'�9-��|�k�tZ[?��[���'?��6��^�9t�s��U7�m��hu�LήM����+\�����^6����K�n��J���X��w�iW>_��}j'9��ԛ�k����jԢu���߇o�N�%'Է��M�Ś!̭�^��}�8߆�B\���X ?[.�G�b���l�ڿp�޴J���@��A����/f:H����k/ݟ�>?�Ƞ�{���� �f�      �      x��}Ys�H��3�+17���;���f[n�֕��	��	� (���_f-XH�)j��qcn[$� j9���,�h5[�F��h;��pXW3/�^N�m�3�N��`���������_u���?῿Y�n�����W�ڎ���ǿ����ή�����+w��~��&Siŷ����7�=��5�w��<�b�o�`b1˝2�Q0���a�%^X�H�/6�\+�&,�3������3�e��H<��έ��J�;<����/�VZn$�7Z$�d�>�ł���;�_R|x��;�o�=x��>��UO�W��w�눹S�W�������9�7ҟX��֟ȍ�-�V���_����ɯp�b!�"
'��pP>�`�`�n�gw���X&��	��r#o�()�N<��\����.��G(�(a�/9s�LO>������Q�����>X�a0	O�@`���NN�S���1��Y�p���[�9��{��;Y��^x�a�����-��q�gp�/����������8��Oq�� ���#~��
<�ѱ�~~�gbu��hZ�"�1�&��0�<�U�����{>��|�{rck���h���Ff�L��2���g��!~
��;�f��ĸ�`5E!,��|��&�f^����F!�>
�#ˍ�8n�,7�C�p6�����bMa;5����e��I����$�(n>�v΂;x�0Z��`݈�.'�w+7*8�}��%��X\�it���X�#x�؛rc��M"�i�=�
��=m b�x���V�����t\�Qag�v�م��B�pbY��~�5h�m+?m7Hop����|Q�Ĉ���w1��<����Ǟ���@�c��/��=��S�Y���6Hc0Kps�E'pCq�j�0�c�P�fn�"A9�pm�|[�n�cX�xi���n12����n4[g`��< ]��8��жN����O�X�J �j��$��P�7���7�O�:�(��*ElB�&7p���]�f��*7�o� ����M�  �|F�"�5^D��$r�n����D :���qn$S/��ڢ��Y��\�է��8�%��>�G�,� ���x�%�)B+�. 5Ȱ�`2/�8�D\��v��p� '� �'�Q|��OW�Q��6�����8��X�9_[��0���P|��W��C(~�Fq�/O�>�r�/�b�=� �a��;x�.oתE��P�A�~{��{��1�V�.&o,�7,Я���z���S�Ê���\��?��R�#uA��__��<���>}��V�Rkj,����.�D9�ԛ��?�/����(*�����C�H7>��;�����1W�.�8f>�]o ��!l��s|�D��n<>��:�����a���h��)H6`�D��A��t�#d��$��q�$
����N�c��L�a#�	�: �>�[��W�Ү�i~���!�3�!X7 �[��LʰM}��ge�,�$n��I�$�
����u �r"T�$
BK��x��
Н��3l�Dqi'���.T���a��2��f��u�����O��u��o|�(�� �4��]����E��̸.�t)��@#�f>RS��_��gʻ�]u���ʫ	�k(�,��	o�0�|�ն��&$����5oN\Έ�{�/k���/����hT�YAp�Ø�	$����r��Xy����\1�0���]���ܺ���Yv���d�h�.�i,� �A�F�@� ��ŉ�YP��lN+�)Ć��Jg��9��2����U���b�4��b�kG
d7H �I���xm�?r���p�S�p3�5t��Ƌ���7�B�!��3�ː#�%�uk׳�/a��v<ɭ�6;�,wZ�f�x�[�e�Q��:p��u��@�\�[���Q��o(�`~�:�*�#P#�2�oV@�ӜYsi���p������B��Ff#?� �A������d�X/� 6�v~Q�����΃�����c+�N���s��w�r8~�P8 ����\)5�#��g�M>�����+Z�hu�������&�k5R���A{�s��@���_DN� �D*�Jp
V<KB_>ý�nk����o���ά0��j� +���ĥsui� ���2�>���?�� �k��
<�b.�9�����,j)�R�N��R����g�Tg��Fc�ƺN� �� �����G_Ɛ'�y�^6��.t�^�-��|�-,�m#�����VL\��x8w'8➛���{q^���{X`��7�da$� L.Z9�w�@}�������_ʮ����MP�����Mޔ�(��܂<��G!�o�a�̂JC�R�m8�$7�Xc��V����������WW�]������^2�E��3��V��u�-6s�>��no�/�jT�O F�۫����w�7��jV�X)��y��?�R1b��+���lb��.�D �?�w�<�BL&R�;�������P=�w#O��$>�������2���$UV��ח����x(��ϗ�s�K�^���^x߿�J_ժub�j�bGZ�~ߊR�@�{# a��0�A#��py@{�%�#�8LTk��`H��02��:ơ����S��^��7�ϗ�	�� ���6�n�"���{�6Š�i���~�� �eB�=F	u�.��j]���h���)H�o�	�^Ƹć��x��.���F8^6�b*W�]����۰F\��z
?�28�l�K����n����Ԁ�������{�����X����HĖ_⎎p�(�ـ��/�#t|����#��,�ҡ(��1��u���W�a�"�e�A��bh�x�r4��in<إ����@����ջLm��w��Rԑ�c�DTFի#k�9օGD�#��O�����2�Te��²�g�xs9�Ze����6jZ�G�V�	E��g��Ͷ���q~�`�@�4;֑����S��wL��vw0��j:��{�:@X�3!b�_�8��̠
�k0�����ʃ���U6�{�Uɛ����l�@k媔�� t8��嬌��.Ž$��lߔ��y*�%&���T�㹗`He=*]ńZS}�Ɯ�B�J�S�%3cka�rtΙ�[E}
f��[�&l%{e��fQ�(��*��@���=��O<����`V��'_f��`~.�N�x=�?��Xs�;�� l�Rl��A����W,bS�QE�K�ٵ�0?X$�9��\�:C���s0l��I����u��Q���2G��a��F{X4��ZI^����4���K��(�r`�&�#�y~��lJZ<�Q:�����t%�!c�;�����?�gEu�JR�0�Bl��XÈ?�C&[M;~��zɼ�-�_S������Ȇ_Pr8�Gi��,�N�Ta6k�hd�Fd���P�`0�u���b}*䍗��a"6(���n�[�I9��!����bF�Do*�9�VS̓�X}����39$ʇ����>�6�0u��Ls�(~���_B�#��*7��e�^�.�IMM#6�1��"6�P��A��4��BbK������pe �<�s�I:�M��oV��i�n\_Q�����9G����B+�/u8�	٨S�0�r��]�˫�O����^ƞ�,��|V|�Eu���@&�;��r8c�A�^��E��"�N���k�p#��Ù���g�?��$�A��֕����  �7'��Gy�tҵ��P��tPm.R��B�i���"W*qqN0J!m�?#<��8�I�7"(*}�\�S8,"�.�S6 �d�2&G\$� �Q��s��R+�ЌV33Og�%3� �<w-J�.�4i&��4�ڢr$�UzÊ��*p�͏��ΗZ�3�[X��\�꘿�7�G!��'M:�,� ub�9�
W*C�"|�?�%2ÄPs���)�ݱ��D�حJ[M?E�{�sXW�Q6�3.u#Ubo�\���9�P���0�]!�o�-z,l�;��P    ch:���p�U8�z��2���V+M�?�gfT���ھǫ7����b�M�ă��Z"�oS��*ᒳ�×Q��In�h~F}�B&����<	��^s��\\ʩs"qq�&�n��J��\�**g(�~�Ί���h9����d"$��X$���ߪ�U�z�T��˺�rx/�0��\��
~�-��u�dK�-��>���tL��4R�'ގa�1�H��:�7��a\Nxtz�nk��+2왒Q��.����:bR9���d�}µ9����f0�k�v.�7��T�h0d4ͫ���~ʥtR�K���f�|�FCN�w�3�J���{$N>�`s��ޭ�4Ġ)#Njő��"�v�4G\�~���E��~1_�~>
CQŰK�6KRG���d����ƶ�IRuuA�ns_b��ik2�u@���� q��Ws�34��u��"�RV}a٦R#�(.�e��$���I�U<*��'�\Q�b��ﳵ�%1��ͮO����B�A�&�Z!J���b/~����k�����lx���� �D%#���I���.F¿%���n����J@G	�SL�'pQ������ɘ��>�q�c����+y���a�z5��i@�ީ�:]��R������ߤ'7�ǹY���L����.����*
�X������[Yk�R�����YYՊ�.����y|��U��%��K��Օ�M+&-H����-���8Y��c\�#�hV |#i4h�w�]bɉ*��*TەZ���H��T'W`ǚ���][?�+0�\����1!)/ [y
c~�3q���zR�e� B���������r~�����:�?Y�����R�5g�)vY���FjA����q�l}ծ(Kq%�D1#��oh'�,�-.�
"-p�o���/�7xwR�ys�������p7-YK5b%�E:���b�1L�t
n9�S`	����ǭ���.?��0i���rm�̭{������1]z|�'YG���s�I,��8��Tǉ�#��vn%���	�C2Ō�3����#L+w�-�ž" �S&����ya��|��j>�6�Ef�`��4DLp]y博Y�Rc-����\���A"/I���tA^���1:KC\�y�?����)�q�p��u�=���Xw��n���"<���T.{��1ݪ����K�&���a.y5I_W��r�`'B�&%t^�0u�0H�����O�S��̫�?`�����zŎJ�^��V�Q��?O�H�,5��Q�Z�1��Y��B�G�����QTo�%GՈh��`q��M+	�[ԇ���V��g̻ͥ���Dk�R�W����z*t~h��_�b��HX���-jE*�<*�`?A�L����&��RA�rz�^�A�DB��8-�i�"q���',�@˾����8�QxuiT�h�UT�� ��T'�W'��$Y~�����|Yϰ�f|U)��{M#'�Qѽ=g"��"��G!߹�Rd'�d�L%uJ��W�sw����k�J��YM����]��1�i	O^���~P�L~��Vp�n!jڞ�GH�~(Inb���s�A1�~s9B�L:Abn	�����m:�4����4�U���ޱ(Պ�v�a���gn&Ş
)��iɹ	�*�:�,�*੡��:G�c3��(^]���*U�ڷ�P��dп��ŋ���B�b�ֽ��z�/t�zޫZF=A�(��W�Z��i�*ʷ	��l�����:������4n�(�/�elĖ�o"*���^N�tt9z��4��;f�e�����M W��
�`ƞ���\�����m���Z����~��XĨ����CT�ZAwU��DՌV���D��7�#讀�V��F�VS5�<�����	�@'�-�B�nY���U����/���7��Ն�3�~�i��s���������C�T�UDufR�=C��畽�)\ӈ�M6�h�������[�m�1��\�-v�r��n��Y1�"����¾��1�Ja5���g98�"�������G+d4�>X>�u�y/)`U���S�? ��L��:NSPD���_�)���lC���4
�i��N��X�s��ɾXi�ܘq��8�"��D��7ٸ�qβ�wnp�R��I��7�'���<;?��~�ю$�zԒ�!r��}Tǿ��F)�\�[BX~�Pi���0��}s�jA�Mg�i��!40NW�
Q��BD"��+eHݓ2)�CQ��P���<�.ʓau_%�S��b4���h~��Vy�j�F`�1P�\6��R��JT�k�<%���F}P'G?�:����r�����Y����ƌ��`�}����}J��I��7F�e�Ũ#<����!?-��>��S8���B7��:33�+j��
!v��<"K?s߾5Ӄ-��L?A��_�C�Cy�?F���/غ�AM��I�35i�*��]�54[ʹ���:���.�PdgU��Rf�����w;	�V�mZ�ݺ��3S�a�n��m(���c�z�n�c�ށ��s��O�i���,���j�ߋ�sYk�tRn�V�D���E�;q:��$d��~�K����s�-[I���ئ�c���G��H4Qڋ&�o�y'�(ο�LT/��u8�xr��i�$Q���Rb��r��Ad!�2)m����Ez��G?#�����V�˧4g*�!��je-h�f�$�'bt+O��Q0�~�/w��E�jU�2	MʞU-�����D4	�6�m)vi`N�M����S��y�rM�>�j��v�%���.���/?1;�w���B������I��*/�_^��{T_@����`#u�����-�[m���rZ�1��U��/̿]?'{5ջ�X��b�![&5m��<Nӯ׈�Kk�^���DiM�Қ��:��A�uZ��͎�nWl����Q����Ή�(O���6�ڻ�qJ9L���@�.�O	L��D	L���EJE��V�l��>��Y��[��Pm`ax�")?F�"�ϵ{�m�[���W��{���5��!�䟞@�*\��0��HWL�zf��zN�8��W6C�#��Ym���_N&��ub�F��^��ױe��롨m	��_9]L�0�.�Y��2XO[ҽ�i���ꛭAv�Y�8y<��?�"��J�4|�¼Ue�J	�%P�9���&z������2 +_gq��0����r	�w�I"� V:\�vG� ;FD��.���IT0Q�?+\~�����sth#l�e��f��������!^+󃲾�%O�b[X��L|0����f>x���#M+eڣ�4�N�o���3�?<�aBQ���H�U���*6�PP��$رg��(,�:�B��<�*�!�$0�	���v�v+m�納<З�^d�O����� ����X\bq��%�Y�~sٝx�X�e�uѯ�h���;}��"
�P�\�ʺߊ@P��؉��T��X���!#�G0��%��2�˘�\�K	�m��~��xy�li}�h�	:�D�:^؁@�.�O����'r��]"wyd�x/Iw����n�Zm����+9b����hv�n��B�{������>���=OL/1���>��	� ��hw�v/k
�2��~[x�f�l�Yu�q��p���z:��N/xu�<L��t|_����A��[��^��3���^��4NEz�ۈc~*�$��8� ���-���tfu�x�]'�.������o�@��آ��7ۃ4��1ޱN�Dc��!���ƺ�B�	!��DYJϗ��{��Ҕ(M镧)mja��&�{:0�ìe�c���1K��4�X�a��R��
)Tg@)Jϝ��s&*�(Q����Q�
��Ҽ���4S^��7N��9�`��j��tS݃b5�#D؉AiJ����iJ���R�%*�Z�J����A5��4͎���:�Q�B,aH�|��ZYI\�I)�LI�o%,Q�%,Q�%,��Qi���㘝V�ڨ�6��u� mc���m��w�`GR¾�]3�v�d�{�ғE�(I���(I���^,IiO�����    ev�ӓ���y��z���m��C�'W�0	ʰ�J��RP!5�DR<W/$�#�Yʝ���d}2z�Gx1��Nb$bT�eTU^]�BR��*!�]wA%��\s��%֛l���	�*�5��阝n���5�����b��TYk]mr�����&ꂨ�.���)���ϒ�^���7���ik��c�UUa]4�S�$l&�Ǹik��)�� ��h
�)^MQz$��ڀ�7�ݻ4:=��W��p�[|Sh�5��e��-�Hv,e짛U?�x����������ST]�G��1=�7U��雝A֏+���M�O�d�e��B�@�TȰC��TjM��TjM��Tjl,��7?D
��30;��Mh�a�c��p��̙�Pj]��*��s�z����_$��
�)��'�a*����tZ���6�#:���b�u��h)�R�=��		�%P�%,=e��ޭsJZ����5i�VLG��`@��4�Nv�g�8f><j��ޖ�V]P�{����D	L{�R��%J_������2�"ױ�,p#F��u̮��n��X�c���i���*�u����b�!TeM�K/��T����%�_�����l�z�i�ev��k��Q����:��ӽ+{|TD��(�		TpMl��V[���"G5��UvQ�mv;i�V���-}����0�e���+�E�n�;��� ��z�YAdŏAV����ɓE��v3*{h|'0��a���JS�"����6�ws������';��|����Y	^f.
�g�����v�nV���l��'֯��LA��)Tuf Şj)�"��w��YhXs�k{j"e���{��+����֎«��Ys�º�(־E)Z��r���4a� ^ʜ/����\E5�ߝ��U��R��W�d�>ƪ� ��aSI�J?a*] z7��&�A������E����}�����禞�(�oԬ�e�S��*ó�܀'~Cԭ�M��ӵ�x�_t7�1�g`h��)��R�ЍO��{f�����}�,f̵.�#,f�o�v<aGRD���S��'l���+U��?�������D>����ۨ�\Ƭ�+�fw�&�6����;�d��n�W���+�{��,�� ΂8�,~�"���Eu�0���UV7Ƈ�����Xl��A�=�R�� �Y��#YDc��:i��d�7^�^�Rb����fz �nFp��蓕[vm������H� ��H;��������Gݏ4Ĩ���sR6�刮G֛���[�a�#�F�x\G�b g��sU��H|<�:�WM/�Pg9��7���b��кAЌ8 Y$ "VAmL^���7�6tIsޘ��/����o�Mk4���G?T�j���7����ϒ�D������ȍ�|s��K2�`�W��f�E���z�#*�ڭڎ���N�^��;��g���ܸw�,i�A�54Q���W�TS����R�!�SO��EқN��u���H��k��vv�P�x��<��4�rU)QQCW�����T\�����4�Jd*U@�z큩=�����+�Km�xt����c��^'zǀ�0�ޅ kcY)�&�֍[�ژ�S!��(�Z�R�e�(�Gi��������f$G�8w Q�Ųd"�9j�\!Þ	�}D�GTCM�G�|�\5����9L��뚽^v~���V�u���YU=�+"?\o���{��'.�N�l9f���Yrү�b��n�k��k����vZ"���H��F?\-��������6OJQ��Q!��! �4���^?=���1>��#*�T��S
A@����ю{W˞�柁i�~�D5��
�q�3��s)6�������� ���3.�u e�ǫ�A�1E(��@ ��G<%��:�#���Y鈭�aQ�i��M���f��� �����"x�¡��T�`?D[A4���F��� ��g!.���z�\����o�'84�a��O��E�>�\�PbB�I��yk]��f/WL��+�y&��}�_��n��")��x|������E�
爂�N`�~��;Jit�!�&�����b�BݾH�`�A��(�#ނx�-�� ��x����*n���V�4�c\�.at�F�z�zq�XH����	�'�O+�DO<=Q�Jϐ��J���-����������`���c����+P�v�D/A��G1A��㎒~0�,p#���o��N�y��̋1��^<��ndi.E�sA\�K��EP�?"#���_-q�o�mJr�s�S_�c���"B�9m {��hY,����;��9J *��j�GL1?1.JY��X��,�������GH�z�G�<�"��R�r�zg�(��	�GA|��G�8Q���n�~����3E��q�fc��Fl�RQ�q� �{M<�� �H"!~]b˳ ��y����(��p����� <aw�|qD]B��1�F\Ol�K{�FAl��و���?�B��0m��)�XG��GKoc=DU"�a���!�����!����y��jG�%Q0L����fZ��E��6�n�8کJ��@��DJ)A�ċ��gc��Q�ku0h�'�#���`���o#��bmX�|�s��DJ� �OA<��SO�b�O��.}���NNN�8�a�3�K�w+�`B�}��xi_��
�*�� ��>U��~�v��9�N�n:�{�Y
u���_Q@�ӆ�� ��J%�� ���(�6,=�Tǧ�� ;��5�a�u�����nE.J�gB��W_A|�/�Wl�M�=� fƠct)w4�q�a�5�ޥ�b,e�s!�8
�(�� ��8��qe���|�4��5٩ր嗋�pa�k�D��_�z�!^� �x�!��(��N!�nv�Ġg�i��V�8�d�#�Nc��	��ۣ�iA|�L!A�ďNHlw����A��z������w��LHu�#�h�!�� �9h�-�jsݝ4a=0ì��e�c�M�+�,��'�
!v,�5A�QDM5�8j��D.W(��B-���6�Ã���o�0"AT�w+��B�Bd�K{
DVYAd�;�i+b�ưis�Վ�e	w���HOڡ|���G��$b+����	"+����ɊJ�$�+u�1t̡*�v@_��g�\8@�[���XJ z��	�'�� z�����M�sc�2���'�c�[������*%�B�� �"�� .���"��ȉ���q��a';dnh���Jy�®GNH�E+����J+A��N%�d��:�C]9�m847����VE�K� �1A��Q3A��/�L�}��E'��a���v��7މ�����n�����`�	�J+A���J�4+Q�Yi@>��~�ٯ�W�����E��$b!��'Z�h	�%�� Z�O��B����av
v�1.�9�7_1ޭZb�"�X� V�b%�� V�X�X�c&��p`�)��8XL�1�F�v*���z��'F�	*� B�����ت��tC�u�j���4�Y���8�F�;�s�0��E�ǎ�Mdr쩐C���[oA�ŋ��4�P��T['��!��Hsh|8�SXZq��G>��3��)颗�� 4:�\��Ȧv��ߤN�d
��`�+�ZE� ���)� �JR�5��HW��FL^����������\�����jB1JG�X����
{�X�G{*��j�h❢`��8\{u�*�!��n���)���	�~����pt1���L��2b=FZ�)Kz]�-<㳑RI�� Pa�LqX��3�ŋ�ź�Q��9�	��vQ.�V��kP�Z����L����� ��VX����v���j,�<�f���c�JM+>#>�<��]k/�)4T�'�4�\4 ;�{+KVj�o�S�YG�� �2���[�������'�B�엍~��ߌ��.@�Q�5l���)x�s/j��]b�WD��fȕ3�W���s�i���\�&x�,Z�x�0�x��)
��"VQ����c7���>��� �  ���KGa��E
]}q��	����E�&},/�������<�'�����Mk�<p���U�]Ӯ��kc'?��Z� D�B��x~"K<Ɛ/��"F�aX,y��2�j�Ԥ��g��� ��i�90�������>����=���!<��g(����y�l�(-�U�ߩD����T��E���M^�YE�Gg�aa5E..�&�3�pu������*j�Ek��H���EU�Woq��I�Ԣ��@eBUg@]<L�'`�Gڪ��Cx<��M�x��9gK�y>Ǒ�;������Kо,ԫx����^x�b�Q��҅".�$+iVa�郔��=I�o�|ux'�)�̬�~�^�P
o9$u��yܶyF�` U�����@;��pk������A��g�����R�i�ow�TXj�2왒�$��E�K��ȯ�\�鋋�������OcB�*EƷ��/	`��&ݨ�We��+
���&b�LB�+l�����I��D2oV�)y���Y'z�<� �T?2��Czm����qAÃ� 3�����I���n��@04�ttOg��y��PzBh�` �E8���fm�����)����`�����fF��H~�~�]��))�1����_4c(� �%�G��X������!z8Y(n��"�/�����D@3ַ�������4/祲����#�dC�P��f�@��#o���I=������� q+x�=8���N(B�S o�C������킞�
����6��jt�Y ��y����!���[��`����Q�Ώ���;�B��XJ�J��	<[���[ ���j���n����
/b�[�Cl�'r{f������g�v����������-�)�u @�;��o�������E+T�p�f(���2��x<'��G�:� U���ƕ�#|S�m�w1b�:@@���V�8�a�--��E~�*{\���bBB��.��3x>�`c܈ꌩΘ�w�36�����j���c�R*bh:�.+v��8+�-,���6��22�쉐@l�������#����G�k�J8MP�¸���)>~ X!�HKdѪ���|jSFKp!��� �%��x^b�TVb%����Y����΀� ���(���N`f/�q�MX��5j��t_�B�G!v��)A��DJ)�Z۟��w���5�-�패n�⬜/̿E	�ܹle'���"qPν���	b'^;Q�(�� v�؉'8�me�E�#�
GMc�����.|�'Y��V:<c%|�ڞ���H#���N>DH�Z��V�_�n��P�� *�B7m��������t�+|���j�~�DR�=O��������K��	b$^���:	b$~Fb��Ii�����m���&�(@      �      x������ � �     