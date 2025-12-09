--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    mass numeric,
    is_supernova boolean NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    mass numeric,
    has_black_hole boolean NOT NULL,
    number_of_stars integer,
    description text
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
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    mass numeric,
    has_water boolean NOT NULL,
    size integer
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    star_id integer NOT NULL,
    mass numeric,
    is_habitable boolean NOT NULL
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    mass numeric,
    is_supernova boolean NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sun', 'Our star', 1, 1.0, false);
INSERT INTO public.black_hole VALUES (2, 'Proxima Centauri', 'Nearby red dwarf', 1, 0.123, false);
INSERT INTO public.black_hole VALUES (3, 'Alpha Centauri A', 'Binary star', 2, 1.1, false);
INSERT INTO public.black_hole VALUES (4, 'Alpha Centauri B', 'Binary star', 2, 0.9, false);
INSERT INTO public.black_hole VALUES (5, 'Sirius A', 'Brightest star', 3, 2.1, false);
INSERT INTO public.black_hole VALUES (6, 'Sirius B', 'White dwarf', 3, 1.0, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000, true, 250000000, 'Our galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1200000, true, 1000000000, 'Nearby galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 500000, false, 40000000, 'Small galaxy');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 600000, true, 100000000, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 700000, true, 80000000, 'Galaxy with a large central bulge');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 1500000, true, 2000000000, 'Supergiant elliptical galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'Moon', 'Earth Moon', 1, 250000, true, 250000);
INSERT INTO public.moon VALUES (8, 'Andromeda', 'Earth Moon', 2, 100000, true, 250000);
INSERT INTO public.moon VALUES (9, 'Triangulum', 'Earth Moon', 3, 40000, false, 250000);
INSERT INTO public.moon VALUES (10, 'Whirlpool', 'Earth Moon', 4, 10000, false, 250000);
INSERT INTO public.moon VALUES (11, 'Sombrero', 'Earth Moon', 5, 80000, false, 250000);
INSERT INTO public.moon VALUES (12, 'Messier 87', 'Earth Moon', 6, 20000, true, 250000);
INSERT INTO public.moon VALUES (14, 'Earth', 'Earth Moon', 1, 250000, true, 250000);
INSERT INTO public.moon VALUES (15, 'Merr', 'Earth Moon', 2, 100000, true, 250000);
INSERT INTO public.moon VALUES (16, 'awsdf', 'Earth Moon', 3, 40000, false, 250000);
INSERT INTO public.moon VALUES (17, 'GEDF', 'Earth Moon', 4, 10000, false, 250000);
INSERT INTO public.moon VALUES (18, 'ewrfghg', 'Earth Moon', 5, 80000, false, 250000);
INSERT INTO public.moon VALUES (19, 'sdsd 87', 'Earth Moon', 6, 20000, true, 250000);
INSERT INTO public.moon VALUES (20, 'Sat', 'Earth Moon', 1, 250000, true, 250000);
INSERT INTO public.moon VALUES (21, 'Uran', 'Earth Moon', 2, 100000, true, 250000);
INSERT INTO public.moon VALUES (22, 'jyj', 'Earth Moon', 1, 250000, true, 250000);
INSERT INTO public.moon VALUES (23, 'tgnbg', 'Earth Moon', 2, 100000, true, 250000);
INSERT INTO public.moon VALUES (24, 'gfn', 'Earth Moon', 3, 40000, false, 250000);
INSERT INTO public.moon VALUES (25, 'f', 'Earth Moon', 4, 10000, false, 250000);
INSERT INTO public.moon VALUES (26, 'ere', 'Earth Moon', 5, 80000, false, 250000);
INSERT INTO public.moon VALUES (27, 'ngnggngdgededfg', 'Earth Moon', 6, 20000, true, 250000);
INSERT INTO public.moon VALUES (28, 'lilil', 'Earth Moon', 1, 250000, true, 250000);
INSERT INTO public.moon VALUES (29, 'htgh', 'Earth Moon', 2, 100000, true, 250000);
INSERT INTO public.moon VALUES (30, 'dfgd', 'Earth Moon', 3, 40000, false, 250000);
INSERT INTO public.moon VALUES (31, 'wg', 'Earth Moon', 4, 10000, false, 250000);
INSERT INTO public.moon VALUES (32, 'www', 'Earth Moon', 5, 80000, false, 250000);
INSERT INTO public.moon VALUES (33, 'GFFFF', 'Earth Moon', 6, 20000, true, 250000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Moon', 'Earth Moon', 1, 250000, true);
INSERT INTO public.planet VALUES (2, 'Andromeda', 'Earth Moon', 2, 100000, true);
INSERT INTO public.planet VALUES (3, 'Triangulum', 'Earth Moon', 3, 40000, false);
INSERT INTO public.planet VALUES (4, 'Whirlpool', 'Earth Moon', 4, 10000, false);
INSERT INTO public.planet VALUES (5, 'Sombrero', 'Earth Moon', 5, 80000, false);
INSERT INTO public.planet VALUES (6, 'Messier 87', 'Earth Moon', 6, 20000, true);
INSERT INTO public.planet VALUES (13, 'Merr', 'Earth Moon', 1, 250000, true);
INSERT INTO public.planet VALUES (14, 'Earth', 'Earth Moon', 2, 100000, true);
INSERT INTO public.planet VALUES (15, 'asdf', 'Earth Moon', 3, 40000, false);
INSERT INTO public.planet VALUES (16, 'LOL', 'Earth Moon', 4, 10000, false);
INSERT INTO public.planet VALUES (17, 'Sat', 'Earth Moon', 5, 80000, false);
INSERT INTO public.planet VALUES (18, 'Fh 87', 'Earth Moon', 6, 20000, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 1, 1.0, false);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nearby red dwarf', 1, 0.123, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Binary star', 2, 1.1, false);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'Binary star', 2, 0.9, false);
INSERT INTO public.star VALUES (5, 'Sirius A', 'Brightest star', 3, 2.1, false);
INSERT INTO public.star VALUES (6, 'Sirius B', 'White dwarf', 3, 1.0, false);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

