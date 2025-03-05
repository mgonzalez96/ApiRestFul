--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

-- Started on 2025-03-04 23:27:29

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
-- TOC entry 212 (class 1259 OID 34299)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    mensaje character varying,
    producto numeric
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 34291)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id character varying NOT NULL,
    nombre character varying(50),
    precio numeric
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 34298)
-- Name: product_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_seq OWNER TO postgres;

--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_seq OWNED BY public.product.id;


--
-- TOC entry 209 (class 1259 OID 34284)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id character varying NOT NULL,
    nombre character varying(50) NOT NULL,
    precio numeric NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 34299)
-- Dependencies: 212
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido (mensaje, producto) FROM stdin;
The requested order is the following: 	1
El pedido solicitado es el siguiente	1
El pedido solicitado es el siguiente	1
\.


--
-- TOC entry 3316 (class 0 OID 34291)
-- Dependencies: 210
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, nombre, precio) FROM stdin;
1	Modifica producto	3000
\.


--
-- TOC entry 3315 (class 0 OID 34284)
-- Dependencies: 209
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, nombre, precio) FROM stdin;
2	Modifica producto	3000
3	Producto 1	1000
\.


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 211
-- Name: product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_seq', 2, false);


--
-- TOC entry 3173 (class 2606 OID 34290)
-- Name: producto pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 34297)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


-- Completed on 2025-03-04 23:27:29

--
-- PostgreSQL database dump complete
--

