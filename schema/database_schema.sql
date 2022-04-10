--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card (
    id integer NOT NULL,
    title character varying(100),
    content character varying(1000) NOT NULL,
    tag integer
);


ALTER TABLE public.card OWNER TO postgres;

--
-- Name: card_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_type (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.card_type OWNER TO postgres;

--
-- Name: card_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_type_id_seq OWNER TO postgres;

--
-- Name: card_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_type_id_seq OWNED BY public.card_type.id;


--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.card.id;


--
-- Name: card id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: card_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_type ALTER COLUMN id SET DEFAULT nextval('public.card_type_id_seq'::regclass);


--
-- Name: card_type card_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_type
    ADD CONSTRAINT card_type_pkey PRIMARY KEY (id);


--
-- Name: card cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: card fk_card_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT fk_card_type FOREIGN KEY (tag) REFERENCES public.card_type(id);


--
-- PostgreSQL database dump complete
--

