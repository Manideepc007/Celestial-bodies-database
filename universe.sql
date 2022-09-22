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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    radius integer,
    mass integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    name character varying(30) NOT NULL,
    lifeform_id integer NOT NULL,
    lifespan integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    orbital_distance integer,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    distance_from_star numeric(8,1),
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_sol numeric(4,1),
    type character(1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 14, 20, 133);
INSERT INTO public.galaxy VALUES (3, 'Republic', 7, 12, 53);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 12, 23, 443);
INSERT INTO public.galaxy VALUES (5, 'Garbok', 122, 2233, 4243);
INSERT INTO public.galaxy VALUES (6, 'Vibros', 2, 10, 33);
INSERT INTO public.galaxy VALUES (7, 'Misk', 123, 3, 2);
INSERT INTO public.galaxy VALUES (1, 'Milk', 14, 20, 134);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES ('Human', 1, 110);
INSERT INTO public.lifeform VALUES ('Thargoid', 2, 200);
INSERT INTO public.lifeform VALUES ('Obelisks', 3, 2400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Rocks and dust make such a pretty nightlight', 238900, false);
INSERT INTO public.moon VALUES (2, 'phobos', 2, 'fear', 28900, false);
INSERT INTO public.moon VALUES (3, 'deimos', 2, 'panic', 22900, false);
INSERT INTO public.moon VALUES (4, 'centax-1', 3, 'colonozed', 121231, true);
INSERT INTO public.moon VALUES (5, 'centax-2', 3, 'colonized', 141231, true);
INSERT INTO public.moon VALUES (6, 'centax-3', 3, 'colonized', 1478631, true);
INSERT INTO public.moon VALUES (7, 'hesperidium', 3, 'a new home', 8631, true);
INSERT INTO public.moon VALUES (8, 'lhs 20 a 1 a', 4, 'rocky satellite', 3631, true);
INSERT INTO public.moon VALUES (9, 'lhs 20 a 1 b', 4, 'rocky satellite', 7331, true);
INSERT INTO public.moon VALUES (10, 'lhs 20 a 1 c', 4, 'icy satellite', 73231, true);
INSERT INTO public.moon VALUES (11, 'lhs 20 a 2 a', 5, 'icy satellite', 7331, true);
INSERT INTO public.moon VALUES (12, 'lhs 20 a 2 b', 5, 'rocky satellite', 7392, true);
INSERT INTO public.moon VALUES (13, 'lhs 20 a 2 c', 5, 'rocky satellite', 73912, true);
INSERT INTO public.moon VALUES (14, 'lhs 20 a 2 d', 5, 'roccky satellite', 739172, true);
INSERT INTO public.moon VALUES (15, 'lhs 20 a 4 a', 5, 'icy satellite', 772, true);
INSERT INTO public.moon VALUES (16, 'lhs 20 a 4 b', 5, 'icy satellite', 7172, true);
INSERT INTO public.moon VALUES (17, 'lhs 20 a 4 c', 5, 'icy satellite', 71712, true);
INSERT INTO public.moon VALUES (18, 'franklins inheritance', 7, 'rodriga franklin,daughter of geraldine', 73612, true);
INSERT INTO public.moon VALUES (19, 'otomatone', 10, 'moon music lulled us to sleep', 7312, true);
INSERT INTO public.moon VALUES (20, 'okidokie', 11, 'with eyes on her, all was well', 735852, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 'only habitable sol planet. home to humanity', 499.0, true);
INSERT INTO public.planet VALUES (2, 'mars', 1, 'rocky red soil', 760.2, false);
INSERT INTO public.planet VALUES (3, 'coruscant', 2, 'panopolis', 523.2, true);
INSERT INTO public.planet VALUES (4, 'lhs 20 a 1', 3, 'small rocky body.', 220.2, true);
INSERT INTO public.planet VALUES (5, 'lhs 20 a 2', 3, 'large icy body', 1232.2, false);
INSERT INTO public.planet VALUES (6, 'lhs 20 a 4', 3, 'large gas gaint', 4332.2, false);
INSERT INTO public.planet VALUES (7, 'franklins keep', 4, 'geraldine franklin', 332.2, true);
INSERT INTO public.planet VALUES (8, 'sigint', 4, 'site of the battle of ecclesiastes', 642.2, false);
INSERT INTO public.planet VALUES (9, 'barre', 4, 'old rebelases all over the palce', 1642.2, false);
INSERT INTO public.planet VALUES (10, 'omicron', 5, 'no longer traveeled', 12.2, true);
INSERT INTO public.planet VALUES (11, 'omega', 5, 'no longer traveeled', 1332.2, true);
INSERT INTO public.planet VALUES (12, 'omigosh', 5, 'no longer travelled', 133232.2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 1, 0.0, 'g');
INSERT INTO public.star VALUES (2, 'coruscant', 2, 999.0, 'b');
INSERT INTO public.star VALUES (3, 'lhs 20', 1, 50.4, 'm');
INSERT INTO public.star VALUES (4, 'franklins rest', 3, 999.9, 'a');
INSERT INTO public.star VALUES (5, 'oberon', 4, 999.9, 'O');
INSERT INTO public.star VALUES (6, 'bisk', 6, 999.9, 'T');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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
-- Name: lifeform lifeform_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_key UNIQUE (name);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


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

