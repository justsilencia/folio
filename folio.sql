PGDMP     )    $                x           folio    10.12    10.12 
    �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16393    folio    DATABASE     �   CREATE DATABASE folio WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE folio;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394    feedback    TABLE     �   CREATE TABLE public.feedback (
    rank smallint,
    entrydate timestamp with time zone,
    comment character varying(1000),
    who character varying(50)
);
    DROP TABLE public.feedback;
       public         postgres    false    3            �
          0    16394    feedback 
   TABLE DATA               A   COPY public.feedback (rank, entrydate, comment, who) FROM stdin;
    public       postgres    false    196          �
      x������ � �     