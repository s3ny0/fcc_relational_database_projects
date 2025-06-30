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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    age_in_lightyears integer NOT NULL,
    diameter_in_light_years numeric,
    speed_in_lightyears integer
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
    name character varying(100),
    diameter_in_km integer NOT NULL,
    is_spherical boolean NOT NULL,
    weight_in_megatons integer,
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
    planet_id integer NOT NULL,
    name character varying(100),
    age integer NOT NULL,
    has_life boolean NOT NULL,
    diameter_in_km integer,
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
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    name character varying(100) NOT NULL,
    space_mission_id integer NOT NULL,
    mission_date date NOT NULL,
    mission_success boolean NOT NULL
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    temperature_in_celsius integer NOT NULL,
    description text,
    energy_in_kw numeric,
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
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 105700, 600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 220000, 1100);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 60000, 200);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 9000, 60000, 800);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 11000, 49000, 300);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 13000, 170000, 500);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 13000, 120000, 400);
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 11000, 110000, 450);
INSERT INTO public.galaxy VALUES (9, 'Black Eye', 9000, 70000, 350);
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 15000, 100000, 700);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, true, 734800000, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, false, 10700, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, false, 2100, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 3122, true, 480000000, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5268, true, 1480000000, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 4821, true, 1075900000, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 5151, true, 1345500000, 4);
INSERT INTO public.moon VALUES (8, 'Rhea', 1528, true, 230000000, 4);
INSERT INTO public.moon VALUES (9, 'Iapetus', 1469, true, 180000000, 4);
INSERT INTO public.moon VALUES (10, 'Dione', 1123, true, 105000000, 4);
INSERT INTO public.moon VALUES (11, 'Tethys', 1062, true, 62000000, 4);
INSERT INTO public.moon VALUES (12, 'Enceladus', 504, true, 13000000, 4);
INSERT INTO public.moon VALUES (13, 'Miranda', 471, true, 6000000, 5);
INSERT INTO public.moon VALUES (14, 'Ariel', 1158, true, 120000000, 5);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1169, true, 150000000, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 1523, true, 280000000, 5);
INSERT INTO public.moon VALUES (17, 'Titania', 1577, true, 330000000, 5);
INSERT INTO public.moon VALUES (18, 'Triton', 2707, true, 2120000000, 6);
INSERT INTO public.moon VALUES (19, 'Charon', 1212, true, 160000000, 7);
INSERT INTO public.moon VALUES (20, 'Nereid', 340, true, 4000000, 6);
INSERT INTO public.moon VALUES (21, 'Proteus', 420, true, 15000000, 6);
INSERT INTO public.moon VALUES (22, 'Janus', 179, false, 1500000, 4);
INSERT INTO public.moon VALUES (23, 'Epimetheus', 116, false, 800000, 4);
INSERT INTO public.moon VALUES (24, 'Mimas', 396, true, 37000000, 4);
INSERT INTO public.moon VALUES (25, 'Hyperion', 270, false, 5000000, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aurelia', 4500, true, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Boreas', 3200, false, 139820, 2);
INSERT INTO public.planet VALUES (3, 'Cygnus', 2800, false, 12104, 3);
INSERT INTO public.planet VALUES (4, 'Draconis', 5000, false, 6792, 4);
INSERT INTO public.planet VALUES (5, 'Elysium', 3500, true, 142984, 5);
INSERT INTO public.planet VALUES (6, 'Fornax', 6000, false, 51118, 6);
INSERT INTO public.planet VALUES (7, 'Gaia', 4600, true, 12742, 7);
INSERT INTO public.planet VALUES (8, 'Helios', 4100, false, 139822, 7);
INSERT INTO public.planet VALUES (9, 'Icarus', 3000, false, 4879, 8);
INSERT INTO public.planet VALUES (10, 'Juno', 3800, true, 6052, 9);
INSERT INTO public.planet VALUES (11, 'Kronos', 4200, false, 116464, 1);
INSERT INTO public.planet VALUES (12, 'Luna', 2700, false, 3474, 2);
INSERT INTO public.planet VALUES (13, 'Mirage', 3300, false, 4267, 3);
INSERT INTO public.planet VALUES (14, 'Nereid', 3900, true, 1578, 4);
INSERT INTO public.planet VALUES (15, 'Orion', 4400, false, 142984, 5);


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES ('Apollo 11', 1, '1969-07-16', true);
INSERT INTO public.space_mission VALUES ('Challenger STS-51-L', 2, '1986-01-28', false);
INSERT INTO public.space_mission VALUES ('Voyager 1 Launch', 3, '1977-09-05', true);
INSERT INTO public.space_mission VALUES ('Mars Climate Orbiter', 4, '1998-12-11', false);
INSERT INTO public.space_mission VALUES ('James Webb Deployment', 5, '2021-12-25', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 5505, 'The star at the center of our solar system.', 386000000000000000, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 9940, 'Brightest star in the night sky.', 250000000000000000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3500, 'A red supergiant in the constellation Orion.', 120000000000000000, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 12100, 'A blue supergiant also in Orion.', 90000000000000000, 4);
INSERT INTO public.star VALUES (5, 'Vega', 9602, 'A bright star in the constellation Lyra.', 40000000000000000, 5);
INSERT INTO public.star VALUES (6, 'Polaris', 6015, 'The North Star, famous for its position near the celestial pole.', 22000000000000000, 6);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 5790, 'One of the closest stars to Earth.', 15000000000000000, 7);
INSERT INTO public.star VALUES (8, 'Alpha Centauri B', 5260, 'Companion star to Alpha Centauri A.', 10000000000000000, 7);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 3042, 'Closest known star to the Sun.', 5000000000000, 8);
INSERT INTO public.star VALUES (10, 'Deneb', 8525, 'A bright blue-white supergiant.', 90000000000000000, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

