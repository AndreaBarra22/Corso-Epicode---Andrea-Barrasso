PGDMP     #            
        z           bancadb    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16458    bancadb    DATABASE     \   CREATE DATABASE bancadb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE bancadb;
                postgres    false            �            1259    16471    contocorrente    TABLE     �   CREATE TABLE public.contocorrente (
    numeroconto integer NOT NULL,
    saldo double precision,
    intestatario character varying(30)
);
 !   DROP TABLE public.contocorrente;
       public         heap    postgres    false            �          0    16471    contocorrente 
   TABLE DATA           I   COPY public.contocorrente (numeroconto, saldo, intestatario) FROM stdin;
    public          postgres    false    209   �       g           2606    16475     contocorrente contocorrente_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.contocorrente
    ADD CONSTRAINT contocorrente_pkey PRIMARY KEY (numeroconto);
 J   ALTER TABLE ONLY public.contocorrente DROP CONSTRAINT contocorrente_pkey;
       public            postgres    false    209            �   \   x�342�41�0�L�K)JM�OJ,*J,.��24261�45 ��Ģ�|�����ļL.Scc##N���9'P0Q�1�$(aad����1z\\\ 0~     