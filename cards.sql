--
-- PostgreSQL database dump
--

\restrict SnWrhtkP4zdFOjbYfEgvumeHQm7EKMvVRu3kLtsQ8cPcxUdqheK7hLB9gssz7VT

-- Dumped from database version 16.10 (Postgres.app)
-- Dumped by pg_dump version 16.10 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cards; Type: TABLE; Schema: public; Owner: kruti
--

CREATE TABLE public.cards (
    id integer NOT NULL,
    occasion character varying(25),
    img_url text
);


ALTER TABLE public.cards OWNER TO kruti;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: kruti
--

CREATE SEQUENCE public.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cards_id_seq OWNER TO kruti;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kruti
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: kruti
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: kruti
--

COPY public.cards (id, occasion, img_url) FROM stdin;
1	halloween	https://images.unsplash.com/photo-1508361001413-7a9dca21d08a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhhbGxvd2VlbnxlbnwwfHwwfHx8MA%3D%3D
2	halloween	https://plus.unsplash.com/premium_photo-1663840243176-1b4e4527e514?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGFsbG93ZWVufGVufDB8fDB8fHww
3	halloween	https://images.unsplash.com/photo-1492515114975-b062d1a270ae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhhbGxvd2VlbnxlbnwwfHwwfHx8MA%3D%3D
4	halloween	https://images.unsplash.com/photo-1481018085669-2bc6e4f00eed?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhhbGxvd2VlbnxlbnwwfHwwfHx8MA%3D%3D
5	birthday	https://plus.unsplash.com/premium_photo-1663839412063-fd24ec7d2e10?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
6	birthday	https://images.unsplash.com/photo-1555607124-8531c7c702d0?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
7	birthday	https://images.unsplash.com/photo-1553135422-400ee5852b27?q=80&w=761&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
8	birthday	https://images.unsplash.com/photo-1551892644-51a6e2e8fc65?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJpcnRoZGF5fGVufDB8fDB8fHww
9	birthday	https://plus.unsplash.com/premium_photo-1677221924410-0d27f4940396?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJpcnRoZGF5fGVufDB8fDB8fHww
10	birthday	https://images.unsplash.com/photo-1577998474517-7eeeed4e448a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGJpcnRoZGF5fGVufDB8fDB8fHww
11	birthday	https://plus.unsplash.com/premium_photo-1663839331214-3685d7c79c7c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGJpcnRoZGF5fGVufDB8fDB8fHww
12	birthday	https://images.unsplash.com/photo-1558301211-0d8c8ddee6ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGJpcnRoZGF5fGVufDB8fDB8fHww
13	birthday	https://images.unsplash.com/photo-1525351159099-81893194469e?q=80&w=1165&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
14	birthday	https://images.unsplash.com/photo-1523757956233-94a86ff74ea5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzN8fGJpcnRoZGF5fGVufDB8fDB8fHww
15	birthday	https://plus.unsplash.com/premium_photo-1663837827305-a3491793e162?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzZ8fGJpcnRoZGF5fGVufDB8fDB8fHww
16	birthday	https://images.unsplash.com/photo-1519869491916-8ca6f615d6bd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
17	graduation	https://plus.unsplash.com/premium_photo-1683749808307-e5597ac69f1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z3JhZHVhdGlvbnxlbnwwfHwwfHx8MA%3D%3D
18	graduation	https://images.unsplash.com/photo-1627556704302-624286467c65?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3JhZHVhdGlvbnxlbnwwfHwwfHx8MA%3D%3D
19	graduation	https://images.unsplash.com/photo-1636231945376-3d40fdcbc462?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyYWR1YXRpb258ZW58MHx8MHx8fDA%3D
20	graduation	https://plus.unsplash.com/premium_photo-1677572452964-91e968d02d6a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGdyYWR1YXRpb258ZW58MHx8MHx8fDA%3D
21	graduation	https://plus.unsplash.com/premium_photo-1713296254777-0a89f05dcb60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Z3JhZHVhdGlvbnxlbnwwfHwwfHx8MA%3D%3D
22	graduation	https://plus.unsplash.com/premium_photo-1714397546754-3c1ef1be26e9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGdyYWR1YXRpb258ZW58MHx8MHx8fDA%3D
23	graduation	https://plus.unsplash.com/premium_photo-1683749809617-bb6885a1e7ae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fGdyYWR1YXRpb258ZW58MHx8MHx8fDA%3D
24	graduation	https://plus.unsplash.com/premium_photo-1714397507057-238aab87df25?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fGdyYWR1YXRpb258ZW58MHx8MHx8fDA%3D
\.


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kruti
--

SELECT pg_catalog.setval('public.cards_id_seq', 25, true);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: kruti
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict SnWrhtkP4zdFOjbYfEgvumeHQm7EKMvVRu3kLtsQ8cPcxUdqheK7hLB9gssz7VT

