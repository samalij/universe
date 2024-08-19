--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: ast; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ast (
    name character varying(20) NOT NULL,
    ast_id integer NOT NULL,
    has_water boolean
);


ALTER TABLE public.ast OWNER TO freecodecamp;

--
-- Name: ast_ast_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ast_ast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ast_ast_id_seq OWNER TO freecodecamp;

--
-- Name: ast_ast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ast_ast_id_seq OWNED BY public.ast.ast_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    diameter integer,
    description text,
    has_black boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    is_spherical boolean,
    radius numeric(4,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    radius integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    radius integer,
    temperature integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: ast ast_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ast ALTER COLUMN ast_id SET DEFAULT nextval('public.ast_ast_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: ast; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ast VALUES ('PURE', 1, NULL);
INSERT INTO public.ast VALUES ('BRANCH', 2, NULL);
INSERT INTO public.ast VALUES ('MOTHER', 3, NULL);
INSERT INTO public.ast VALUES ('INTELLIGENT', 4, NULL);
INSERT INTO public.ast VALUES ('NEEDY', 5, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('LEAST', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('SURVIVE', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('LOVED', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('CONTROL', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('PETTY', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('DOM', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('ONE', 11, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('TWO', 12, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('THREE', 13, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('FOUR', 14, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('FIVE', 15, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('SIX', 16, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('SEVEN', 17, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('EIGHT', 18, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('NINE', 19, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('TEN', 20, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('ELEVEN', 21, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('TWELVE', 22, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('THIRTEEN', 23, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('FOURTEEN', 24, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('FIFTEEN', 25, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('SIXTEN', 26, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('SEVENTEEN', 27, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('EIGHTEEN', 28, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('NINTEEN', 29, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('TWENTY', 30, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('LOST', 11, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('HELL', 12, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('TOTAL', 13, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('POOR', 14, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('SUFFERING', 15, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('DEFINATION', 16, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('SHIT', 17, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('PERSUIT', 18, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('THINKERS', 19, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('SHT', 20, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('YARA', 21, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('LOSE', 22, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('VIOLENT', 1, NULL, NULL, 1);
INSERT INTO public.star VALUES ('BELIEF', 2, NULL, NULL, 1);
INSERT INTO public.star VALUES ('LINKS', 3, NULL, NULL, 1);
INSERT INTO public.star VALUES ('EGOIST', 4, NULL, NULL, 1);
INSERT INTO public.star VALUES ('VARIOUS', 5, NULL, NULL, 1);
INSERT INTO public.star VALUES ('LOVERS', 6, NULL, NULL, 1);


--
-- Name: ast_ast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ast_ast_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: ast ast_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ast
    ADD CONSTRAINT ast_name_key UNIQUE (name);


--
-- Name: ast ast_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ast
    ADD CONSTRAINT ast_pkey PRIMARY KEY (ast_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

