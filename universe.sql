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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    color character varying(255),
    weight numeric(4,1) NOT NULL,
    name character varying(225) NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    galaxy_type integer NOT NULL,
    unique_feature character varying(255),
    is_visible boolean
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
    name character varying(255) NOT NULL,
    surface_compostion text,
    is_geo_active boolean,
    orbit_period_day integer,
    planet_id integer,
    unique_feature character varying(255)
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
    name character varying(255) NOT NULL,
    has_atmosphere boolean,
    average_dist numeric,
    star_id integer,
    unique_feature character varying(255)
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
    name character varying(255) NOT NULL,
    star_type integer,
    galaxy_id integer,
    luminosity numeric
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Green', 120.5, 'Zorg');
INSERT INTO public.alien VALUES (2, 'Blue', 95.7, 'Blip');
INSERT INTO public.alien VALUES (3, 'Red', 110.3, 'Glix');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 'Contains our Solar System', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 'Nearest major galaxy to the Milky Way', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 'Third-largest galaxy in the Local Group', true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 4, 'Bright nucleas and distinctive dust lanes', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 5, 'Famous for its grand spiral arms', false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 6, 'Know for its pronounced spiral structue', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Rocky', true, 27, 1, 'Earths only moon');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', false, 0, 2, 'Orbits Mars very closly');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', false, 1, 2, 'Smaller Martian moon');
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic', true, 2, 3, 'Most volcanically active moon');
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy', false, 4, 3, 'Smoth icy surface');
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Rocky/Icy', true, 7, 3, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Rocky/Icy', false, 17, 3, 'Heavily cratered');
INSERT INTO public.moon VALUES (8, 'Titan', 'Rocky/Icy', true, 16, 4, 'Largest moon of Saturn');
INSERT INTO public.moon VALUES (9, 'Rhea', 'Icy', false, 5, 4, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Rocky/Icy', false, 79, 4, 'Unusual two-tone coloration');
INSERT INTO public.moon VALUES (11, 'Miranda', 'Icy', true, 3, 5, 'Extreme geological activity');
INSERT INTO public.moon VALUES (12, 'Ariel', 'Icy', true, 3, 5, 'Brightest Uranian moon');
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Icy', false, 4, 5, 'Dark surface with impact craters');
INSERT INTO public.moon VALUES (14, 'Oberon', 'Icy', false, 14, 5, 'Largest Uranian moon');
INSERT INTO public.moon VALUES (15, 'Titania', 'Icy', true, 9, 5, 'Uranus second largest moon');
INSERT INTO public.moon VALUES (16, 'Triton', 'Icy', true, 6, 6, 'Orbits Neptune retrograde');
INSERT INTO public.moon VALUES (17, 'Proteus', 'Icy', false, 1, 6, 'Second largest Neptunian moon');
INSERT INTO public.moon VALUES (18, 'Nereid', 'Icy', false, 360, 6, 'Highly elliptical orbit');
INSERT INTO public.moon VALUES (19, 'Charon', 'Icy', true, 6, 7, 'Largest moon of Pluto');
INSERT INTO public.moon VALUES (20, 'Nix', 'Icy', false, 25, 7, 'Small moon of Pluto');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet A1', true, 1.0, 1, 'Feature A1');
INSERT INTO public.planet VALUES (2, 'Planet A2', true, 2.5, 1, 'Feature A2');
INSERT INTO public.planet VALUES (3, 'Planet B1', false, 1.2, 2, 'Feature B1');
INSERT INTO public.planet VALUES (4, 'Planet B2', true, 3.1, 2, 'Feature B2');
INSERT INTO public.planet VALUES (5, 'Planet C1', true, 0.9, 3, 'Feature C1');
INSERT INTO public.planet VALUES (6, 'Planet C2', false, 4.0, 3, 'Feature C2');
INSERT INTO public.planet VALUES (7, 'Planet D1', false, 1.4, 4, 'Feature D1');
INSERT INTO public.planet VALUES (8, 'Planet D2', true, 1.8, 4, 'Feature D2');
INSERT INTO public.planet VALUES (9, 'Planet E1', true, 0.7, 5, 'Feature E1');
INSERT INTO public.planet VALUES (10, 'Planet E2', false, 2.8, 5, 'Feature E2');
INSERT INTO public.planet VALUES (11, 'Planet F1', true, 3.3, 6, 'Feature F1');
INSERT INTO public.planet VALUES (12, 'Planet F2', false, 6.2, 6, 'Feature F2');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 1.00);
INSERT INTO public.star VALUES (2, 'Siruis', 2, 1, 25.4);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 3, 2, 1.56);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 4, 3, 120000);
INSERT INTO public.star VALUES (5, 'Vega', 5, 4, 40.12);
INSERT INTO public.star VALUES (6, 'Polaris', 6, 5, 1260);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_feature_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_feature_key UNIQUE (unique_feature);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_feature_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_feature_key UNIQUE (unique_feature);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_feature_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_feature_key UNIQUE (unique_feature);


--
-- Name: star star_luminosity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_luminosity_key UNIQUE (luminosity);


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

