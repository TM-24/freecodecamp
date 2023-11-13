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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    passes_by_earth boolean
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(8,1),
    galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    is_orbit_regular boolean,
    distance_from_orbiting_planet_in_km integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    has_moon boolean,
    distance_from_sun_millions_km integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_in_light_years integer,
    star_type character varying(30),
    star_colour character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'Comet Halley', true);
INSERT INTO public.comets VALUES (2, 'Comet NEOWISE', true);
INSERT INTO public.comets VALUES (3, 'Comet Hale-Bopp', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of the planet Earth', 13.6, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest to the milky way', 10.1, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Smaller spiral galaxy that is part of the local group', 4.0, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'It has a supermassive black hole at its center', 12.8, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'It has a well-defined spiral structure', 11.4, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'It has a bright nucleus and a large central bulge', 9.0, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, true, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, true, 9, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, true, 23, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3630, false, 421, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 3121, false, 671, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, true, 1070, 12);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, true, 1882, 7);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, false, 1222, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, false, 238, 8);
INSERT INTO public.moon VALUES (10, 'Triton', 2704, true, 355, 11);
INSERT INTO public.moon VALUES (11, 'Charon', 606, false, 20, 10);
INSERT INTO public.moon VALUES (12, 'Oberon', 1523, true, 584, 10);
INSERT INTO public.moon VALUES (13, 'Phoebe', 213, false, 12953, 7);
INSERT INTO public.moon VALUES (14, 'Dione', 1123, true, 377, 2);
INSERT INTO public.moon VALUES (15, 'Rhea', 1528, false, 527, 9);
INSERT INTO public.moon VALUES (16, 'Mimas', 396, true, 186, 5);
INSERT INTO public.moon VALUES (17, 'Hyperion', 270, false, 1481, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 471, true, 130, 3);
INSERT INTO public.moon VALUES (19, 'Ariel', 1157, true, 191, 12);
INSERT INTO public.moon VALUES (20, 'Umbriel', 1168, true, 266, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 150, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, false, 58, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, false, 108, 2);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 228, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 778, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 1429, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 2870, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 4498, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 5906, 6);
INSERT INTO public.planet VALUES (10, 'Mars 2', false, true, 431, 3);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', false, true, 490, 3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', false, true, 153, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 15, 'Yellow dwarf', 'White', 1);
INSERT INTO public.star VALUES (2, 'Sirius Sequence', 9, 'Main Sequence', 'Blue-White', 2);
INSERT INTO public.star VALUES (3, 'Alpha-Centauri A', 4, 'Main Sequence', 'Yellow', 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 643, 'Red Supergiant', 'Red', 4);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4, 'Red Dwarf', 'Red', 3);
INSERT INTO public.star VALUES (6, 'Vega', 25, 'Main Sequence', 'White', 5);


--
-- Name: comets comets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_name_key UNIQUE (name);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

