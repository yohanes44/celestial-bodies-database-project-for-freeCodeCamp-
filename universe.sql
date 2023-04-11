--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    galaxy_type character varying(30),
    has_life boolean
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
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    description character varying(30),
    age numeric,
    distance_from_earth integer
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    distance_from_earth integer,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    name character varying(30) NOT NULL,
    solar_id integer NOT NULL,
    description text
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_solar_id_seq OWNED BY public.solar.solar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: solar solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar ALTER COLUMN solar_id SET DEFAULT nextval('public.solar_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Astromeda', 1, 'closest big galaxy to milky way', 'Big', false);
INSERT INTO public.galaxy VALUES ('Antennae', 2, 'similat to insect', 'Big', false);
INSERT INTO public.galaxy VALUES ('Cigar', 3, 'Appears similar to CIGAR', 'Small', false);
INSERT INTO public.galaxy VALUES ('Circinus', 4, 'named after its first found location', 'Small', false);
INSERT INTO public.galaxy VALUES ('Comet', 5, 'named after its unusual appearance', 'Medium', false);
INSERT INTO public.galaxy VALUES ('JOhn Planet', 6, 'Our Precious planet', 'Big', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('dfg', 1, 1, 'moonnnn', 12, NULL);
INSERT INTO public.moon VALUES ('dg', 2, 2, 'moonnnn', 12, NULL);
INSERT INTO public.moon VALUES ('xfcb', 5, 5, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('xfcb', 7, 6, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjkjk', 9, 7, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 10, 8, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 12, 9, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 13, 10, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 14, 11, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 15, 12, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 16, 13, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 17, 14, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 18, 15, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjsdfsfd', 19, 16, 'moonnnn', 11, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 23, 17, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 25, 18, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 26, 19, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 27, 20, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 29, 21, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 30, 22, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 31, 23, 'dffd', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 33, 24, 'dff4', 123, NULL);
INSERT INTO public.moon VALUES ('kjhkh', 34, 25, 'dff4', 123, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 'Wehere we live into', 44, 1);
INSERT INTO public.planet VALUES ('Mars', 2, 'Mars Planet', 54, 2);
INSERT INTO public.planet VALUES ('Pluto', 5, 'Pluto Planet', 34, 4);
INSERT INTO public.planet VALUES ('Venus', 6, 'Pluto Planet', 34, 4);
INSERT INTO public.planet VALUES ('Venussdf', 7, 'Pluto Planet', 34, 4);
INSERT INTO public.planet VALUES ('Uranos', 8, 'Uranos Planet', 34, 5);
INSERT INTO public.planet VALUES ('Usdfsf', 9, 'Uranos Planet', 34, 5);
INSERT INTO public.planet VALUES ('Uxvcvxf', 10, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsf', 11, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsfdsf', 12, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsfdsf', 13, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsfdsf', 14, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsfdsf', 15, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('Usfsfdsf', 16, 'Uranos Planet', 34, 6);
INSERT INTO public.planet VALUES ('kjsdfsfd', 17, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 18, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 19, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 20, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 21, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 22, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 23, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 24, 'moonnnn', 11, 4);
INSERT INTO public.planet VALUES ('kjsdfsfd', 25, 'moonnnn', 11, 4);


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar VALUES ('our solar', 1, NULL);
INSERT INTO public.solar VALUES ('Big Solar', 2, NULL);
INSERT INTO public.solar VALUES ('Small Solar', 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Lynx', 1, 1, 'Lynx Star', true);
INSERT INTO public.star VALUES ('Eridanos', 2, 2, 'Eridanos Star', false);
INSERT INTO public.star VALUES ('Scorpius', 4, 3, 'Scorpius Star', false);
INSERT INTO public.star VALUES ('Cancer', 5, 4, 'Cancer Star', true);
INSERT INTO public.star VALUES ('Leo', 6, 5, 'Leo Star', false);
INSERT INTO public.star VALUES ('Crux', 12, 6, 'Crux Star', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 55, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: solar_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_solar_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_planet_id UNIQUE (planet_id);


--
-- Name: solar unique_solar_solar_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT unique_solar_solar_id UNIQUE (solar_id);


--
-- Name: star unique_star_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_star_id UNIQUE (star_id);


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

