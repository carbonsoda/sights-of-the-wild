--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-23 21:02:48

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16442)
-- Name: individuals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individuals (
    ind_id integer NOT NULL,
    nickname character varying(255),
    species integer,
    record_created timestamp with time zone
);


ALTER TABLE public.individuals OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16440)
-- Name: individuals_ind_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individuals_ind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individuals_ind_id_seq OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 202
-- Name: individuals_ind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individuals_ind_id_seq OWNED BY public.individuals.ind_id;


--
-- TOC entry 205 (class 1259 OID 16453)
-- Name: sightings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sightings (
    s_id integer NOT NULL,
    sighting_date timestamp(0) without time zone,
    name integer,
    location text,
    is_healthy boolean,
    sighter_email text,
    record_created timestamp with time zone,
    sighter_id integer
);


ALTER TABLE public.sightings OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16451)
-- Name: sightings_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sightings_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sightings_s_id_seq OWNER TO postgres;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 204
-- Name: sightings_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sightings_s_id_seq OWNED BY public.sightings.s_id;


--
-- TOC entry 201 (class 1259 OID 16431)
-- Name: species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.species (
    sp_id integer NOT NULL,
    common_name character varying(255),
    scientific_name character varying(255),
    population integer,
    status_code character varying(3)
);


ALTER TABLE public.species OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16429)
-- Name: species_sp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.species_sp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_sp_id_seq OWNER TO postgres;

--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 200
-- Name: species_sp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.species_sp_id_seq OWNED BY public.species.sp_id;


--
-- TOC entry 2865 (class 2604 OID 16445)
-- Name: individuals ind_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individuals ALTER COLUMN ind_id SET DEFAULT nextval('public.individuals_ind_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16456)
-- Name: sightings s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sightings ALTER COLUMN s_id SET DEFAULT nextval('public.sightings_s_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 16434)
-- Name: species sp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species ALTER COLUMN sp_id SET DEFAULT nextval('public.species_sp_id_seq'::regclass);


--
-- TOC entry 3006 (class 0 OID 16442)
-- Dependencies: 203
-- Data for Name: individuals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.individuals (ind_id, nickname, species, record_created) FROM stdin;
1	Amiga	10	2021-03-23 20:40:45.541082-07
2	Bellbottoms	2	2021-03-23 20:40:45.541082-07
3	Blondie	4	2021-03-23 20:40:45.541082-07
4	Boomhauer	7	2021-03-23 20:40:45.541082-07
5	Bootsie	4	2021-03-23 20:40:45.541082-07
6	Bubba	2	2021-03-23 20:40:45.541082-07
7	Bubblegum	3	2021-03-23 20:40:45.541082-07
8	Bud	6	2021-03-23 20:40:45.541082-07
9	Bug	3	2021-03-23 20:40:45.541082-07
10	Bunny	4	2021-03-23 20:40:45.541082-07
11	Carrot	4	2021-03-23 20:40:45.541082-07
12	Cheeto	10	2021-03-23 20:40:45.541082-07
13	Chief	10	2021-03-23 20:40:45.541082-07
14	Cindy Lou Who	1	2021-03-23 20:40:45.541082-07
15	Con	2	2021-03-23 20:40:45.541082-07
16	Cotton	9	2021-03-23 20:40:45.541082-07
17	Cumulus	9	2021-03-23 20:40:45.541082-07
18	Dear	4	2021-03-23 20:40:45.541082-07
19	Dingo	9	2021-03-23 20:40:45.541082-07
20	Dolly	9	2021-03-23 20:40:45.541082-07
21	Doobie	4	2021-03-23 20:40:45.541082-07
22	Dorito	9	2021-03-23 20:40:45.541082-07
23	Double Double	7	2021-03-23 20:40:45.541082-07
24	Dreamey	1	2021-03-23 20:40:45.541082-07
25	Dumbledore	4	2021-03-23 20:40:45.541082-07
26	Figgy	6	2021-03-23 20:40:45.541082-07
27	Filly Fally	6	2021-03-23 20:40:45.541082-07
28	Foxy Mama	7	2021-03-23 20:40:45.541082-07
29	Freak	1	2021-03-23 20:40:45.541082-07
30	Gordo	2	2021-03-23 20:40:45.541082-07
31	Green Giant	8	2021-03-23 20:40:45.541082-07
32	Hot Pepper	4	2021-03-23 20:40:45.541082-07
33	Knucklebutt	4	2021-03-23 20:40:45.541082-07
34	Hubby	10	2021-03-23 20:40:45.541082-07
35	Lovey	3	2021-03-23 20:40:45.541082-07
36	Lulu	5	2021-03-23 20:40:45.541082-07
37	Manatee	3	2021-03-23 20:40:45.541082-07
38	Marshmallow	3	2021-03-23 20:40:45.541082-07
39	Matey	5	2021-03-23 20:40:45.541082-07
40	Oreo	10	2021-03-23 20:40:45.541082-07
41	Peep	10	2021-03-23 20:40:45.541082-07
42	Pinkie	3	2021-03-23 20:40:45.541082-07
43	Pork Chop	5	2021-03-23 20:40:45.541082-07
44	Pretty Lady	6	2021-03-23 20:40:45.541082-07
45	Princess Pea	5	2021-03-23 20:40:45.541082-07
46	Rockette	7	2021-03-23 20:40:45.541082-07
47	Rosie	7	2021-03-23 20:40:45.541082-07
48	Senior	7	2021-03-23 20:40:45.541082-07
49	Sherlock	7	2021-03-23 20:40:45.541082-07
50	Shuttershy	6	2021-03-23 20:40:45.541082-07
51	Skinny Jeans	8	2021-03-23 20:40:45.541082-07
52	Smiley	5	2021-03-23 20:40:45.541082-07
53	Swiss Miss	10	2021-03-23 20:40:45.541082-07
54	Terminator	5	2021-03-23 20:40:45.541082-07
55	Twinkie	7	2021-03-23 20:40:45.541082-07
56	Zeno	1	2021-03-23 20:40:45.541082-07
\.


--
-- TOC entry 3008 (class 0 OID 16453)
-- Dependencies: 205
-- Data for Name: sightings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sightings (s_id, sighting_date, name, location, is_healthy, sighter_email, record_created, sighter_id) FROM stdin;
28	2018-07-19 22:54:58	23	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
29	2018-07-19 22:54:58	8	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
30	2018-07-19 22:54:58	42	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
31	2018-07-19 22:54:58	14	Espoo, Finland	t	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
32	2018-07-19 22:54:58	35	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
33	2018-07-19 22:54:58	54	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
34	2018-07-19 22:54:58	44	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
35	2018-07-19 22:54:58	35	Espoo, Finland	t	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
36	2018-07-19 22:54:58	19	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
37	2018-07-19 22:54:58	50	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
38	2018-07-19 22:54:58	51	Espoo, Finland	t	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
39	2018-07-19 22:54:58	54	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
40	2018-07-19 22:54:58	54	Espoo, Finland	f	visionflannels@gmail.com	2021-03-23 20:54:00.807369-07	1
41	2018-04-01 20:41:31	42	Matsue, Japan	t	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
42	2018-04-01 20:41:31	21	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
43	2018-04-01 20:41:31	26	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
44	2018-04-01 20:41:31	45	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
45	2018-04-01 20:41:31	51	Matsue, Japan	t	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
46	2018-04-01 20:41:31	44	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
47	2018-04-01 20:41:31	14	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
48	2018-04-01 20:41:31	38	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
49	2018-04-01 20:41:31	16	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
50	2018-04-01 20:41:31	16	Matsue, Japan	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
51	2018-04-01 20:41:31	42	Matsue, Japan	t	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	2
52	2019-08-08 22:07:15	51	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
53	2019-08-08 22:07:15	39	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
54	2019-08-08 22:07:15	16	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
55	2019-08-08 22:07:15	8	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
56	2019-08-08 22:07:15	43	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
57	2019-08-08 22:07:15	19	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
58	2019-08-08 22:07:15	43	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
59	2019-08-08 22:07:15	51	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
60	2019-08-08 22:07:15	54	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
61	2019-08-08 22:07:15	28	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
62	2019-08-08 22:07:15	35	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
63	2019-08-08 22:07:15	14	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
64	2019-08-08 22:07:15	44	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
65	2019-08-08 22:07:15	21	45ø57 N  66ø40 W	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
66	2019-08-08 22:07:15	50	45ø57 N  66ø40 W	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	3
67	2020-05-30 02:20:57	21	4ø37 S  55ø27 E	t	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
68	2020-05-30 02:20:57	28	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
69	2020-05-30 02:20:57	51	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
70	2020-05-30 02:20:57	50	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
71	2020-05-30 02:20:57	14	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
72	2020-05-30 02:20:57	51	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
73	2020-05-30 02:20:57	43	4ø37 S  55ø27 E	t	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
74	2020-05-30 02:20:57	45	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
75	2020-05-30 02:20:57	28	4ø37 S  55ø27 E	t	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
76	2020-05-30 02:20:57	38	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
77	2020-05-30 02:20:57	43	4ø37 S  55ø27 E	t	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
78	2020-05-30 02:20:57	39	4ø37 S  55ø27 E	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
79	2020-05-30 02:20:57	43	4ø37 S  55ø27 E	t	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	4
80	2020-12-04 01:44:37	50	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
81	2020-12-04 01:44:37	8	33ø31 N  36ø18 E	f	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
82	2020-12-04 01:44:37	44	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
83	2020-12-04 01:44:37	38	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
84	2020-12-04 01:44:37	54	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
85	2020-12-04 01:44:37	39	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
86	2020-12-04 01:44:37	39	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
87	2020-12-04 01:44:37	51	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
88	2020-12-04 01:44:37	14	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
89	2020-12-04 01:44:37	35	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
90	2020-12-04 01:44:37	26	33ø31 N  36ø18 E	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	5
91	2020-06-07 07:06:47	24	40ø01 N  105ø17 W	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	6
92	2020-06-07 07:06:47	13	40ø01 N  105ø17 W	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	6
93	2020-06-07 07:06:47	24	40ø01 N  105ø17 W	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	6
94	2018-07-26 15:06:47	17	Santa Fe, United States	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	7
95	2018-11-22 12:17:44	20	Makassar, Indonesia	f	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	8
96	2018-11-22 12:17:44	37	Makassar, Indonesia	f	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	8
97	2018-11-22 12:17:44	22	Makassar, Indonesia	f	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	8
98	2018-11-22 12:17:44	17	Makassar, Indonesia	f	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	8
99	2018-11-22 12:17:44	37	Makassar, Indonesia	t	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	8
100	2018-07-26 15:06:47	20	40ø01 N  105ø17 W	t	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	9
101	2020-04-07 15:26:54	24	Suva, Fiji	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	10
102	2020-04-07 15:26:54	37	Suva, Fiji	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	10
103	2020-04-07 15:26:54	37	Suva, Fiji	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	10
104	2020-04-07 15:26:54	17	Suva, Fiji	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	10
105	2020-04-07 15:26:54	13	Suva, Fiji	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	10
106	2018-08-20 15:46:44	13	27ø57 N  82ø28 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	11
107	2018-08-20 15:46:44	22	27ø57 N  82ø28 W	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	11
108	2018-08-20 15:46:44	37	27ø57 N  82ø28 W	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	11
109	2018-08-20 15:46:44	24	27ø57 N  82ø28 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	11
110	2018-08-20 15:46:44	22	27ø57 N  82ø28 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	11
111	2019-09-05 16:16:45	20	Horta, Portugal	t	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	12
112	2019-09-05 16:16:45	13	Horta, Portugal	t	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	12
113	2018-09-23 10:35:04	37	26ø17 N  50ø12 E	t	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	13
114	2018-09-23 10:35:04	22	26ø17 N  50ø12 E	t	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	13
115	2018-09-23 10:35:04	24	26ø17 N  50ø12 E	f	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	13
116	2018-09-23 10:35:04	37	26ø17 N  50ø12 E	t	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	13
117	2018-09-23 10:35:04	17	26ø17 N  50ø12 E	f	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	13
118	2020-11-14 21:56:53	17	40ø01 N  105ø17 W	t	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	14
119	2020-11-14 21:56:53	13	40ø01 N  105ø17 W	f	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	14
120	2020-11-14 21:56:53	37	40ø01 N  105ø17 W	t	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	14
121	2020-06-07 07:06:47	20	13ø27 N  16ø35 W	f	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
122	2020-06-07 07:06:47	22	13ø27 N  16ø35 W	f	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
123	2020-06-07 07:06:47	37	13ø27 N  16ø35 W	f	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
124	2020-06-07 07:06:47	24	13ø27 N  16ø35 W	t	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
125	2020-06-07 07:06:47	22	13ø27 N  16ø35 W	t	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
126	2020-06-07 07:06:47	20	13ø27 N  16ø35 W	t	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	15
127	2020-11-14 21:56:53	22	0ø32 N  101ø27 E	f	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	16
128	2019-12-12 13:44:26	17	Multan, Pakistan	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
129	2019-12-12 13:44:26	22	Multan, Pakistan	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
130	2019-12-12 13:44:26	13	Multan, Pakistan	t	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
131	2019-12-12 13:44:26	37	Multan, Pakistan	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
132	2019-12-12 13:44:26	24	Multan, Pakistan	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
133	2019-12-12 13:44:26	20	Multan, Pakistan	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	17
134	2020-07-12 21:28:37	17	56ø57 N  24ø06 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
135	2020-07-12 21:28:37	37	56ø57 N  24ø06 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
136	2020-07-12 21:28:37	24	56ø57 N  24ø06 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
137	2020-07-12 21:28:37	20	56ø57 N  24ø06 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
138	2020-07-12 21:28:37	24	56ø57 N  24ø06 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
139	2020-07-12 21:28:37	13	56ø57 N  24ø06 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	18
140	2018-12-30 16:10:59	13	48ø23 N  89ø15 W	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	19
141	2018-12-30 16:10:59	22	48ø23 N  89ø15 W	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	19
142	2019-07-27 06:44:35	24	18ø08 S  178ø27 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	20
143	2019-07-27 06:44:35	24	18ø08 S  178ø27 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	20
144	2019-07-27 06:44:35	37	18ø08 S  178ø27 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	20
145	2019-07-27 06:44:35	13	18ø08 S  178ø27 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	20
146	2019-07-27 06:44:35	20	18ø08 S  178ø27 E	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	20
147	2018-10-21 00:19:24	20	Mecca, Saudi Arabia	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	21
148	2019-10-28 14:44:16	24	Little Rock, United States	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
149	2019-10-28 14:44:16	37	Little Rock, United States	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
150	2019-10-28 14:44:16	13	Little Rock, United States	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
151	2019-10-28 14:44:16	22	Little Rock, United States	t	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
152	2019-10-28 14:44:16	24	Little Rock, United States	t	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
153	2019-10-28 14:44:16	13	Little Rock, United States	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	22
154	2019-10-28 14:44:16	22	16ø48 N  96ø09 E	f	sauceinfinite@gmail.com	2021-03-23 20:54:00.807369-07	23
155	2018-07-19 22:54:58	13	33ø45 N  84ø23 W	f	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	24
156	2018-07-19 22:54:58	13	33ø45 N  84ø23 W	t	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	24
157	2018-07-19 22:54:58	17	33ø45 N  84ø23 W	f	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	24
158	2018-07-19 22:54:58	22	33ø45 N  84ø23 W	t	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	24
159	2018-07-19 22:54:58	37	33ø45 N  84ø23 W	f	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	24
160	2018-03-02 14:08:57	22	29ø53 S  31ø03 E	f	kneelabourer@gmail.com	2021-03-23 20:54:00.807369-07	25
161	2018-03-02 14:08:57	37	33ø50 N  132ø46 E	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	26
162	2020-11-16 14:18:11	22	Serekunda, Gambia	t	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	27
163	2020-11-16 14:18:11	13	Serekunda, Gambia	f	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	27
164	2020-11-16 14:18:11	17	Serekunda, Gambia	f	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	27
165	2020-11-16 14:18:11	20	Serekunda, Gambia	f	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	27
166	2018-07-09 19:45:39	24	Samara, Russia	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	28
167	2018-07-09 19:45:39	24	Samara, Russia	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	28
168	2018-07-09 19:45:39	24	Samara, Russia	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	28
169	2019-04-26 16:12:29	24	24ø47 S  65ø25 W	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
170	2019-04-26 16:12:29	17	24ø47 S  65ø25 W	f	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
171	2019-04-26 16:12:29	24	24ø47 S  65ø25 W	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
172	2019-04-26 16:12:29	13	24ø47 S  65ø25 W	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
173	2019-04-26 16:12:29	24	24ø47 S  65ø25 W	t	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
174	2019-04-26 16:12:29	24	24ø47 S  65ø25 W	f	impulsivealarming@gmail.com	2021-03-23 20:54:00.807369-07	29
175	2020-09-03 12:26:56	37	Nizhny Novgorod, Russia	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	30
176	2020-09-03 12:26:56	22	Nizhny Novgorod, Russia	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	30
177	2020-09-03 12:26:56	22	Nizhny Novgorod, Russia	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	30
178	2020-09-03 12:26:56	17	Nizhny Novgorod, Russia	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	30
179	2019-03-04 05:14:34	24	35ø40 N  105ø58 W	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	31
180	2019-03-04 05:14:34	37	35ø40 N  105ø58 W	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	31
181	2019-03-04 05:14:34	24	35ø40 N  105ø58 W	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	31
182	2019-03-04 05:14:34	22	35ø40 N  105ø58 W	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	31
183	2018-06-17 21:34:36	41	Bissau, Guinea-Bissau	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	32
184	2018-06-17 21:34:36	46	Bissau, Guinea-Bissau	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	32
185	2018-06-17 21:34:36	41	Bissau, Guinea-Bissau	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	32
186	2020-09-05 01:50:03	53	33ø35 N  130ø24 E	t	babbleunease@gmail.com	2021-03-23 20:54:00.807369-07	33
187	2020-09-05 01:50:03	46	33ø35 N  130ø24 E	f	babbleunease@gmail.com	2021-03-23 20:54:00.807369-07	33
188	2020-09-05 01:50:03	53	33ø35 N  130ø24 E	f	babbleunease@gmail.com	2021-03-23 20:54:00.807369-07	33
189	2020-09-05 01:50:03	46	33ø35 N  130ø24 E	t	babbleunease@gmail.com	2021-03-23 20:54:00.807369-07	33
190	2020-03-30 12:27:37	41	79ø59 N  85ø56 W	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	34
191	2020-03-30 12:27:37	41	79ø59 N  85ø56 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	34
192	2020-03-30 12:27:37	41	79ø59 N  85ø56 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	34
193	2020-03-30 12:27:37	41	79ø59 N  85ø56 W	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	34
194	2019-12-06 21:00:47	53	Makassar, Indonesia	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	35
195	2021-02-08 08:23:38	46	45ø17 N  66ø05 W	t	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	36
196	2021-02-08 08:23:38	53	45ø17 N  66ø05 W	f	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	36
197	2021-02-08 08:23:38	55	45ø17 N  66ø05 W	f	ravecrafting@gmail.com	2021-03-23 20:54:00.807369-07	36
198	2019-02-21 15:07:34	41	Chinandega, Nicaragua	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	37
199	2018-11-22 12:17:44	53	Tiraspol, Moldova	t	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	38
200	2018-11-22 12:17:44	55	Tiraspol, Moldova	t	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	38
201	2018-04-24 15:35:20	55	39ø46 N  86ø09 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	39
202	2018-04-24 15:35:20	55	39ø46 N  86ø09 W	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	39
203	2020-10-22 05:56:55	46	Samara, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	40
204	2020-10-22 05:56:55	55	Samara, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	40
205	2020-10-22 05:56:55	41	Samara, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	40
206	2020-05-18 10:34:35	41	Nizhny Novgorod, Russia	t	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	41
207	2020-05-18 10:34:35	41	Nizhny Novgorod, Russia	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	41
208	2020-05-18 10:34:35	41	Nizhny Novgorod, Russia	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	41
209	2020-05-02 01:52:44	46	16ø26 S  179ø22 E	t	applyclancy@gmail.com	2021-03-23 20:54:00.807369-07	42
210	2020-05-02 01:52:44	46	16ø26 S  179ø22 E	t	applyclancy@gmail.com	2021-03-23 20:54:00.807369-07	42
211	2020-05-02 01:52:44	55	16ø26 S  179ø22 E	t	applyclancy@gmail.com	2021-03-23 20:54:00.807369-07	42
212	2018-08-06 13:36:49	55	13ø29 N  144ø45 E	t	coverallsgrowling@gmail.com	2021-03-23 20:54:00.807369-07	43
213	2018-09-13 20:16:02	46	45ø34 S  72ø04 W	f	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	44
214	2018-09-13 20:16:02	46	45ø34 S  72ø04 W	f	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	44
215	2018-09-13 20:16:02	46	45ø34 S  72ø04 W	t	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	44
216	2018-09-13 20:16:02	41	Puerto Montt, Chile	t	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	45
217	2018-09-13 20:16:02	55	Puerto Montt, Chile	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	45
218	2020-07-19 06:39:16	41	Irkutsk, Russia	f	porkendurable@gmail.com	2021-03-23 20:54:00.807369-07	46
219	2020-08-24 02:30:27	53	21ø25 N  39ø49 E	t	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	47
220	2020-08-24 02:30:27	41	21ø25 N  39ø49 E	f	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	47
221	2018-07-09 19:45:39	55	Damascus, Syria	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	48
222	2018-07-09 19:45:39	55	Damascus, Syria	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	48
223	2018-07-09 19:45:39	41	Damascus, Syria	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	48
224	2018-07-09 19:45:39	41	Damascus, Syria	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	48
225	2018-07-09 19:45:39	55	63ø50 N  20ø16 E	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	49
226	2018-07-09 19:45:39	46	63ø50 N  20ø16 E	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	49
227	2018-07-09 19:45:39	53	63ø50 N  20ø16 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	49
228	2018-07-09 19:45:39	46	63ø50 N  20ø16 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	49
229	2020-06-11 07:35:13	53	Graz, Austria	t	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	50
230	2019-06-18 12:25:05	46	60ø18 N  25ø02 E	t	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	51
231	2019-06-18 12:25:05	46	60ø18 N  25ø02 E	f	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	51
232	2021-01-15 00:13:07	53	35ø31 N  35ø47 E	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	52
233	2021-01-15 00:13:07	55	35ø31 N  35ø47 E	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	52
234	2018-02-07 11:13:48	53	Rostov-on-Don, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	53
235	2018-02-07 11:13:48	41	Rostov-on-Don, Russia	t	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	53
236	2018-02-07 11:13:48	53	Rostov-on-Don, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	53
237	2018-02-07 11:13:48	41	Rostov-on-Don, Russia	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	53
238	2020-03-30 12:27:37	46	51ø53 N  176ø39 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	54
239	2020-03-30 12:27:37	55	51ø53 N  176ø39 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	54
240	2020-03-30 12:27:37	53	51ø53 N  176ø39 W	f	octopusfan@gmail.com	2021-03-23 20:54:00.807369-07	54
241	2019-02-24 12:12:55	53	Sabha, Libya	f	applyclancy@gmail.com	2021-03-23 20:54:00.807369-07	55
242	2018-03-05 14:25:53	46	12ø03 S  77ø02 W	t	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	56
243	2018-03-05 14:25:53	46	12ø03 S  77ø02 W	f	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	56
244	2018-03-05 14:25:53	41	12ø03 S  77ø02 W	t	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	56
245	2018-03-05 14:25:53	55	12ø03 S  77ø02 W	f	doppingfardage@gmail.com	2021-03-23 20:54:00.807369-07	56
246	2018-02-07 11:13:48	55	R¡o Gallegos, Argentina	t	weaponinitiative@gmail.com	2021-03-23 20:54:00.807369-07	57
247	2019-07-21 02:45:23	6	7ø01 N  100ø28 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	58
248	2019-07-21 02:45:23	47	7ø01 N  100ø28 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	58
249	2019-07-21 02:45:23	25	7ø01 N  100ø28 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	58
250	2019-07-21 02:45:23	6	7ø01 N  100ø28 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	58
251	2018-01-03 02:36:05	25	Samara, Russia	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
252	2018-01-03 02:36:05	6	Samara, Russia	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
253	2018-01-03 02:36:05	10	Samara, Russia	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
254	2018-01-03 02:36:05	30	Samara, Russia	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
255	2018-01-03 02:36:05	25	Samara, Russia	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
256	2018-01-03 02:36:05	11	Samara, Russia	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	59
257	2018-07-19 22:54:58	10	Cannes, France	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	60
258	2018-07-19 22:54:58	11	Cannes, France	t	accomplisharctic@gmail.com	2021-03-23 20:54:00.807369-07	60
259	2018-07-29 11:38:10	12	Boulder, United States	t	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
260	2018-07-29 11:38:10	6	Boulder, United States	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
261	2018-07-29 11:38:10	25	Boulder, United States	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
262	2018-07-29 11:38:10	25	Boulder, United States	t	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
263	2018-07-29 11:38:10	25	Boulder, United States	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
264	2018-07-29 11:38:10	25	Boulder, United States	f	constantambition@gmail.com	2021-03-23 20:54:00.807369-07	61
265	2018-08-06 13:36:49	6	36ø20 N  43ø08 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
266	2018-08-06 13:36:49	47	36ø20 N  43ø08 E	f	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
267	2018-08-06 13:36:49	30	36ø20 N  43ø08 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
268	2018-08-06 13:36:49	10	36ø20 N  43ø08 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
269	2018-08-06 13:36:49	25	36ø20 N  43ø08 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
270	2018-08-06 13:36:49	36	36ø20 N  43ø08 E	t	slobreaction@gmail.com	2021-03-23 20:54:00.807369-07	62
271	2018-11-22 12:17:44	10	Akureyri, Iceland	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
272	2018-11-22 12:17:44	30	Akureyri, Iceland	t	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
273	2018-11-22 12:17:44	36	Akureyri, Iceland	t	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
274	2018-11-22 12:17:44	36	Akureyri, Iceland	t	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
275	2018-11-22 12:17:44	12	Akureyri, Iceland	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
276	2018-11-22 12:17:44	25	Akureyri, Iceland	t	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
277	2018-11-22 12:17:44	6	Akureyri, Iceland	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	63
278	2020-05-28 10:31:16	10	Athens, Greece	t	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	64
279	2020-05-28 10:31:16	36	Athens, Greece	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	64
280	2020-05-28 10:31:16	47	Athens, Greece	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	64
281	2020-05-28 10:31:16	11	Athens, Greece	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	64
282	2019-06-18 12:25:05	6	Temuco, Chile	f	commonglazier@gmail.com	2021-03-23 20:54:00.807369-07	65
283	2020-03-20 21:34:14	6	19ø42 N  155ø05 W	t	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
284	2020-03-20 21:34:14	12	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
285	2020-03-20 21:34:14	30	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
286	2020-03-20 21:34:14	25	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
287	2020-03-20 21:34:14	12	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
288	2020-03-20 21:34:14	12	19ø42 N  155ø05 W	t	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
289	2020-03-20 21:34:14	10	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
290	2020-03-20 21:34:14	25	19ø42 N  155ø05 W	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	66
291	2019-02-21 15:07:34	12	Hu?, Vietnam	t	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	67
292	2019-02-21 15:07:34	10	Hu?, Vietnam	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	67
293	2019-02-21 15:07:34	47	Hu?, Vietnam	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	67
294	2019-02-21 15:07:34	30	Hu?, Vietnam	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	67
295	2019-02-21 15:07:34	47	Hu?, Vietnam	t	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	67
296	2018-04-24 15:35:20	30	41ø00 N  71ø40 E	t	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
297	2018-04-24 15:35:20	6	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
298	2018-04-24 15:35:20	12	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
299	2018-04-24 15:35:20	6	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
300	2018-04-24 15:35:20	12	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
301	2018-04-24 15:35:20	6	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
302	2018-04-24 15:35:20	36	41ø00 N  71ø40 E	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
303	2018-04-24 15:35:20	36	41ø00 N  71ø40 E	t	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	68
304	2019-07-21 02:45:23	47	54ø41 N  25ø17 E	f	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	69
305	2019-07-21 02:45:23	12	54ø41 N  25ø17 E	t	offtrouble@gmail.com	2021-03-23 20:54:00.807369-07	69
306	2018-07-19 22:54:58	30	27ø57 N  82ø28 W	f	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
307	2018-07-19 22:54:58	47	27ø57 N  82ø28 W	f	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
308	2018-07-19 22:54:58	12	27ø57 N  82ø28 W	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
309	2018-07-19 22:54:58	25	27ø57 N  82ø28 W	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
310	2018-07-19 22:54:58	12	27ø57 N  82ø28 W	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
311	2018-07-19 22:54:58	36	27ø57 N  82ø28 W	f	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
312	2018-07-19 22:54:58	25	27ø57 N  82ø28 W	f	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	70
313	2020-02-07 11:01:49	6	33ø50 N  132ø46 E	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	71
314	2020-02-07 11:01:49	47	33ø50 N  132ø46 E	t	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	71
315	2020-02-07 11:01:49	36	33ø50 N  132ø46 E	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	71
316	2020-04-05 18:50:46	10	51ø53 N  176ø39 W	t	railisraeli@gmail.com	2021-03-23 20:54:00.807369-07	72
317	2018-03-24 20:35:06	36	6ø48 S  39ø17 E	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	73
318	2018-03-24 20:35:06	6	6ø48 S  39ø17 E	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	73
319	2018-03-24 20:35:06	10	6ø48 S  39ø17 E	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	73
320	2018-03-24 20:35:06	12	6ø48 S  39ø17 E	f	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	73
321	2018-03-24 20:35:06	11	6ø48 S  39ø17 E	t	birchlawful@gmail.com	2021-03-23 20:54:00.807369-07	73
322	2020-04-03 15:54:50	30	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
323	2020-04-03 15:54:50	6	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
324	2020-04-03 15:54:50	6	Guayaquil, Ecuador	t	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
325	2020-04-03 15:54:50	11	Guayaquil, Ecuador	t	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
326	2020-04-03 15:54:50	30	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
327	2020-04-03 15:54:50	6	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
328	2020-04-03 15:54:50	10	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
329	2020-04-03 15:54:50	30	Guayaquil, Ecuador	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	74
330	2019-10-28 14:44:16	36	6ø48 S  39ø17 E	f	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	75
331	2019-10-28 14:44:16	6	6ø48 S  39ø17 E	t	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	75
332	2019-10-28 14:44:16	12	6ø48 S  39ø17 E	t	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	75
333	2019-10-28 14:44:16	6	6ø48 S  39ø17 E	t	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	75
334	2020-02-07 06:20:36	47	Medell¡n, Colombia	t	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	76
335	2020-02-07 06:20:36	11	Medell¡n, Colombia	f	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	76
336	2020-02-07 06:20:36	30	Medell¡n, Colombia	f	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	76
337	2018-07-25 03:03:04	10	Arequipa, Peru	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	77
338	2018-07-25 03:03:04	11	Arequipa, Peru	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	77
339	2018-07-25 03:03:04	12	Arequipa, Peru	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	77
340	2018-07-25 03:03:04	6	Arequipa, Peru	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	77
341	2019-10-25 04:44:44	10	43ø32 S  172ø37 E	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	78
342	2019-10-25 04:44:44	6	43ø32 S  172ø37 E	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	78
343	2019-10-25 04:44:44	47	43ø32 S  172ø37 E	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	78
344	2019-10-25 04:44:44	6	43ø32 S  172ø37 E	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	78
345	2018-07-16 02:32:31	30	Naples, Italy	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	79
346	2018-07-16 02:32:31	25	Naples, Italy	t	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	79
347	2018-01-06 07:50:26	12	37ø47 N  122ø25 W	t	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
348	2018-01-06 07:50:26	25	37ø47 N  122ø25 W	f	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
349	2018-01-06 07:50:26	6	37ø47 N  122ø25 W	t	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
350	2018-01-06 07:50:26	36	37ø47 N  122ø25 W	t	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
351	2018-01-06 07:50:26	11	37ø47 N  122ø25 W	f	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
352	2018-01-06 07:50:26	12	37ø47 N  122ø25 W	t	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
353	2018-01-06 07:50:26	47	37ø47 N  122ø25 W	f	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
354	2018-01-06 07:50:26	47	37ø47 N  122ø25 W	t	frontdepressed@gmail.com	2021-03-23 20:54:00.807369-07	80
355	2020-08-08 19:19:08	36	Tiraspol, Moldova	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	81
356	2020-08-08 19:19:08	25	Tiraspol, Moldova	t	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	81
357	2020-08-08 19:19:08	6	Tiraspol, Moldova	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	81
358	2019-04-03 05:24:16	6	Santa Fe, United States	f	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
359	2019-04-03 05:24:16	10	Santa Fe, United States	t	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
360	2019-04-03 05:24:16	47	Santa Fe, United States	f	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
361	2019-04-03 05:24:16	36	Santa Fe, United States	t	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
362	2019-04-03 05:24:16	11	Santa Fe, United States	t	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
363	2019-04-03 05:24:16	30	Santa Fe, United States	t	nepaleseprovision@gmail.com	2021-03-23 20:54:00.807369-07	82
364	2018-08-06 13:36:49	36	Mumbai, India	f	profiletow@gmail.com	2021-03-23 20:54:00.807369-07	83
365	2018-10-20 18:58:22	31	20ø40 N  105ø16 W	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	84
366	2018-10-21 00:19:24	29	41ø54 N  12ø27 E	t	tautcanoe@gmail.com	2021-03-23 20:54:00.807369-07	85
367	2020-12-04 01:44:37	31	Brighton and Hove, United Kingdom	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
368	2020-12-04 01:44:37	9	Brighton and Hove, United Kingdom	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
369	2020-12-04 01:44:37	15	Brighton and Hove, United Kingdom	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
370	2020-12-04 01:44:37	48	Brighton and Hove, United Kingdom	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
371	2020-12-04 01:44:37	31	Brighton and Hove, United Kingdom	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
372	2020-12-04 01:44:37	29	Brighton and Hove, United Kingdom	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	86
373	2020-08-19 18:24:55	48	Coihaique, Chile	t	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	87
374	2020-08-19 18:24:55	48	Coihaique, Chile	t	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	87
375	2020-08-19 18:24:55	29	Coihaique, Chile	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	87
376	2020-08-19 18:24:55	15	Coihaique, Chile	f	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	87
377	2020-08-19 18:24:55	15	Coihaique, Chile	t	almondsshiver@gmail.com	2021-03-23 20:54:00.807369-07	87
378	2018-03-10 19:55:20	34	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
379	2018-03-10 19:55:20	29	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
380	2018-03-10 19:55:20	15	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
381	2018-03-10 19:55:20	15	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
382	2018-03-10 19:55:20	34	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
383	2018-03-10 19:55:20	48	Dubai, United Arab Emirates	f	ellipticalcavities@gmail.com	2021-03-23 20:54:00.807369-07	88
384	2021-01-27 08:44:02	48	Cannes, France	t	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	89
385	2021-01-27 08:44:02	31	Cannes, France	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	89
386	2021-01-27 08:44:02	48	Cannes, France	f	chemisespoon@gmail.com	2021-03-23 20:54:00.807369-07	89
387	2018-03-02 10:17:04	9	19ø03 N  98ø13 W	f	fishtax@gmail.com	2021-03-23 20:54:00.807369-07	90
388	2018-03-02 10:17:04	15	19ø03 N  98ø13 W	t	fishtax@gmail.com	2021-03-23 20:54:00.807369-07	90
389	2018-03-02 10:17:04	34	19ø03 N  98ø13 W	f	fishtax@gmail.com	2021-03-23 20:54:00.807369-07	90
390	2018-02-17 02:14:26	31	36ø46 N  3ø13 E	t	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	91
391	2018-02-17 02:14:26	29	36ø46 N  3ø13 E	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	91
392	2018-02-17 02:14:26	31	36ø46 N  3ø13 E	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	91
393	2018-02-17 02:14:26	34	36ø46 N  3ø13 E	t	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	91
394	2018-02-17 02:14:26	31	36ø46 N  3ø13 E	f	delightedasian@gmail.com	2021-03-23 20:54:00.807369-07	91
395	2018-01-13 09:33:55	48	Coihaique, Chile	f	boyshoemaker@gmail.com	2021-03-23 20:54:00.807369-07	92
396	2020-01-01 23:06:51	34	69ø41 N  18ø57 E	t	axereclusive@gmail.com	2021-03-23 20:54:00.807369-07	93
397	2019-11-20 19:04:55	29	41ø54 N  12ø27 E	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
398	2019-11-20 19:04:55	31	41ø54 N  12ø27 E	t	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
399	2019-11-20 19:04:55	34	41ø54 N  12ø27 E	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
400	2019-11-20 19:04:55	31	41ø54 N  12ø27 E	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
401	2019-11-20 19:04:55	48	41ø54 N  12ø27 E	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
402	2019-11-20 19:04:55	15	41ø54 N  12ø27 E	f	orchestratired@gmail.com	2021-03-23 20:54:00.807369-07	94
403	2020-08-24 02:30:27	34	39ø06 N  94ø35 W	f	evidencerighteous@gmail.com	2021-03-23 20:54:00.807369-07	95
404	2019-04-27 17:40:55	31	Hannover, Germany	t	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	96
405	2019-04-27 17:40:55	15	Hannover, Germany	f	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	96
406	2019-04-27 17:40:55	29	Hannover, Germany	f	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	96
407	2019-04-27 17:40:55	48	Hannover, Germany	f	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	96
408	2019-04-27 17:40:55	9	Hannover, Germany	f	brilliantherd@gmail.com	2021-03-23 20:54:00.807369-07	96
409	2020-06-01 10:16:46	48	33ø27 N  112ø04 W	t	cobwebevent@gmail.com	2021-03-23 20:54:00.807369-07	97
410	2020-06-01 10:16:46	15	33ø27 N  112ø04 W	f	cobwebevent@gmail.com	2021-03-23 20:54:00.807369-07	97
411	2020-06-01 10:16:46	29	33ø27 N  112ø04 W	t	cobwebevent@gmail.com	2021-03-23 20:54:00.807369-07	97
412	2020-06-01 10:16:46	31	33ø27 N  112ø04 W	f	cobwebevent@gmail.com	2021-03-23 20:54:00.807369-07	97
413	2020-06-01 10:16:46	29	33ø27 N  112ø04 W	t	cobwebevent@gmail.com	2021-03-23 20:54:00.807369-07	97
414	2020-07-05 11:17:40	34	31ø33 N  74ø21 E	f	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	98
415	2020-07-05 11:17:40	15	31ø33 N  74ø21 E	f	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	98
416	2020-07-05 11:17:40	31	31ø33 N  74ø21 E	t	poachedvisa@gmail.com	2021-03-23 20:54:00.807369-07	98
417	2018-04-24 15:35:20	9	Hermosillo, Mexico	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	99
418	2018-04-24 15:35:20	48	Hermosillo, Mexico	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	99
419	2018-04-24 15:35:20	34	Hermosillo, Mexico	t	undyingnomination@gmail.com	2021-03-23 20:54:00.807369-07	99
420	2018-06-29 07:47:13	29	Temuco, Chile	f	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	100
421	2018-06-29 07:47:13	48	Temuco, Chile	f	onionscycling@gmail.com	2021-03-23 20:54:00.807369-07	100
422	2020-02-17 13:26:51	29	10ø17 N  123ø54 E	f	kneelabourer@gmail.com	2021-03-23 20:54:00.807369-07	101
423	2018-11-12 10:50:29	29	R¡o Gallegos, Argentina	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	102
424	2018-11-12 10:50:29	34	R¡o Gallegos, Argentina	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	102
425	2018-11-12 10:50:29	15	R¡o Gallegos, Argentina	f	collectshark@gmail.com	2021-03-23 20:54:00.807369-07	102
426	2018-09-11 14:59:58	15	56ø09 N  10ø13 E	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	103
427	2018-09-11 14:59:58	15	56ø09 N  10ø13 E	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	103
428	2018-09-11 14:59:58	31	56ø09 N  10ø13 E	t	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	103
429	2018-09-11 14:59:58	9	56ø09 N  10ø13 E	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	103
430	2018-09-11 14:59:58	29	56ø09 N  10ø13 E	f	cheepraft@gmail.com	2021-03-23 20:54:00.807369-07	103
431	2020-09-05 01:50:03	31	Hannover, Germany	f	multiplywinter@gmail.com	2021-03-23 20:54:00.807369-07	104
432	2020-09-05 01:50:03	9	Hannover, Germany	f	multiplywinter@gmail.com	2021-03-23 20:54:00.807369-07	104
433	2019-10-02 00:12:24	34	Graz, Austria	f	nobodyproblem@gmail.com	2021-03-23 20:54:00.807369-07	105
434	2018-01-16 04:29:05	34	47ø04 N  15ø26 E	t	railisraeli@gmail.com	2021-03-23 20:54:00.807369-07	106
435	2018-01-16 04:29:05	15	47ø04 N  15ø26 E	t	railisraeli@gmail.com	2021-03-23 20:54:00.807369-07	106
436	2018-01-16 04:29:05	48	47ø04 N  15ø26 E	t	railisraeli@gmail.com	2021-03-23 20:54:00.807369-07	106
437	2020-05-28 10:31:16	15	14ø37 N  90ø32 W	t	achehistoric@gmail.com	2021-03-23 20:54:00.807369-07	107
438	2018-04-26 13:56:23	9	Pyongyang, North Korea	f	kneelabourer@gmail.com	2021-03-23 20:54:00.807369-07	108
439	2018-04-26 13:56:23	34	Pyongyang, North Korea	f	kneelabourer@gmail.com	2021-03-23 20:54:00.807369-07	108
440	2018-04-26 13:56:23	29	Pyongyang, North Korea	f	kneelabourer@gmail.com	2021-03-23 20:54:00.807369-07	108
441	2019-08-24 10:24:13	48	13ø31 N  2ø06 E	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	109
442	2019-08-24 10:24:13	9	13ø31 N  2ø06 E	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	109
443	2019-08-24 10:24:13	34	13ø31 N  2ø06 E	t	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	109
444	2019-08-24 10:24:13	15	13ø31 N  2ø06 E	f	personuneasiness@gmail.com	2021-03-23 20:54:00.807369-07	109
\.


--
-- TOC entry 3004 (class 0 OID 16431)
-- Dependencies: 201
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.species (sp_id, common_name, scientific_name, population, status_code) FROM stdin;
1	red panda	ailurus fulgens	10000	EN
2	golden masked owl	tyto aurantia	10000	EN
3	ring-tailed lemur	lemur catta	2400	EN
4	black rhino	diceros bicornis	4880	CR
5	bonobos	pan paniscus	10000	EN
6	arctic fox	vulpes lagopus	300000	LC
7	bengal tiger	Panthera tigris tigris	2500	EN
8	snow leopard	Panthera uncia	5000	VU
9	polar bear	Ursus maritimus	25000	VU
10	giant panda	Ailuropoda melanoleuca	2000	VU
11	koala	Phascolarctos cinereus	43000	VU
\.


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 202
-- Name: individuals_ind_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individuals_ind_id_seq', 56, true);


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 204
-- Name: sightings_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sightings_s_id_seq', 444, true);


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 200
-- Name: species_sp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.species_sp_id_seq', 11, true);


--
-- TOC entry 2870 (class 2606 OID 16450)
-- Name: individuals individuals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individuals
    ADD CONSTRAINT individuals_pkey PRIMARY KEY (ind_id);


--
-- TOC entry 2872 (class 2606 OID 16461)
-- Name: sightings sightings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sightings
    ADD CONSTRAINT sightings_pkey PRIMARY KEY (s_id);


--
-- TOC entry 2868 (class 2606 OID 16439)
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (sp_id);


-- Completed on 2021-03-23 21:02:48

--
-- PostgreSQL database dump complete
--

