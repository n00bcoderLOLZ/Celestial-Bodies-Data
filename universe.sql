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
    name character varying(20) NOT NULL,
    diameter_light_years integer,
    distance_from_earth_million_light_years integer NOT NULL,
    has_life boolean NOT NULL
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
-- Name: irrevelant; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.irrevelant (
    irrevelant_id character varying(255) NOT NULL,
    name character varying(25) NOT NULL,
    irrevelant_random_num integer NOT NULL
);


ALTER TABLE public.irrevelant OWNER TO freecodecamp;

--
-- Name: irrevelant_irrevelant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.irrevelant_irrevelant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.irrevelant_irrevelant_id_seq OWNER TO freecodecamp;

--
-- Name: irrevelant_irrevelant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.irrevelant_irrevelant_id_seq OWNED BY public.irrevelant.irrevelant_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    period_in_earth_days numeric,
    surface_temp_in_kelvin integer,
    craters text NOT NULL,
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
    name character varying(20),
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    description text NOT NULL,
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
    star_id integer NOT NULL,
    name character varying(20),
    type text DEFAULT 'default_type'::text NOT NULL,
    description text DEFAULT 'default_type'::text NOT NULL,
    color character varying(20),
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
-- Name: irrevelant irrevelant_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.irrevelant ALTER COLUMN irrevelant_id SET DEFAULT nextval('public.irrevelant_irrevelant_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 3, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 65000, 3, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000, 29, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 60000, 2, false);


--
-- Data for Name: irrevelant; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.irrevelant VALUES ('1', 'Three', 3);
INSERT INTO public.irrevelant VALUES ('2', 'Four', 4);
INSERT INTO public.irrevelant VALUES ('3', 'Five', 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s Moon', 27.3, 250, 'Tycho, Copernicus', 1);
INSERT INTO public.moon VALUES (2, 'Io', 1.8, 110, 'Loki Patera, Pele', 1);
INSERT INTO public.moon VALUES (3, 'Europa', 3.5, 102, 'Pwyll, Conamara Chaos', 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 7.2, 110, 'Marius, Nicholson', 1);
INSERT INTO public.moon VALUES (5, 'Callisto (Jupiter)', 16.7, 134, 'Valhalla, Asgard', 1);
INSERT INTO public.moon VALUES (6, 'Titan (Saturn)', 15.9, 94, 'Sinlap Crater, Menrva', 1);
INSERT INTO public.moon VALUES (7, 'Enceladus (Saturn)', 1.4, 75, 'Baghdad Sulcus, Cairo', 1);
INSERT INTO public.moon VALUES (8, 'Mimas (Saturn)', 0.9, 64, 'Herschel, Arthur', 1);
INSERT INTO public.moon VALUES (9, 'Triton (Neptune)', -5.9, 38, 'Möbius, Bernard L.', 1);
INSERT INTO public.moon VALUES (10, 'Charon (Pluto)', 6.4, 33, 'Vulcan Planum, Organa', 1);
INSERT INTO public.moon VALUES (11, 'Phobos (Mars)', 0.3, 233, 'Stickney, Hall', 1);
INSERT INTO public.moon VALUES (12, 'Deimos (Mars)', 1.3, 233, 'Swift, Voltaire', 1);
INSERT INTO public.moon VALUES (13, 'Hyperion (Saturn)', 21.3, 93, 'Kiviuq, Polydeuces', 1);
INSERT INTO public.moon VALUES (14, 'Rhea (Saturn)', 4.5, 99, 'Inktomi, Izanagi', 1);
INSERT INTO public.moon VALUES (15, 'Dione (Saturn)', 2.7, 87, 'Creusa, Helene', 1);
INSERT INTO public.moon VALUES (16, 'Iapetus (Saturn)', 79.3, 130, 'Cassini Regio, Engelier', 1);
INSERT INTO public.moon VALUES (17, 'Miranda (Uranus)', 1.4, 60, 'Elsinore, Alonso', 1);
INSERT INTO public.moon VALUES (18, 'Umbriel (Uranus)', 4.1, 76, 'Wunda, Ursula', 1);
INSERT INTO public.moon VALUES (19, 'Ariel (Uranus)', 2.5, 60, 'Shalmaneser, Laso', 1);
INSERT INTO public.moon VALUES (20, 'Tethys (Saturn)', 1.9, 86, 'Odysseus, Melanthius', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 4500, 'Mercury is the smallest and innermost planet in the Solar System, named after the Roman deity Mercury.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, 4600, 'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 4500, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, 4000, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, after Mercury.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4600, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 4500, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4600, 'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4500, 'Neptune is the eighth and farthest planet from the Sun in the Solar System. It is named after the Roman god of the sea.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 4500, 'Pluto, formerly considered the ninth planet, is now classified as a dwarf planet.', 1);
INSERT INTO public.planet VALUES (10, 'Makemake', true, 4400, 'Makemake is a dwarf planet and one of the largest objects in the Kuiper belt.', 1);
INSERT INTO public.planet VALUES (11, 'Haumea', true, 4400, 'Haumea is a dwarf planet located beyond Neptune, in the Kuiper belt.', 1);
INSERT INTO public.planet VALUES (12, 'Eris', true, 4500, 'Eris is a dwarf planet and the most massive known dwarf planet in the Solar System.', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'A', 'Sirius is the brightest star in the night sky.', 'Blue-white', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'M', 'Betelgeuse is a red supergiant star in the constellation Orion.', 'Red', 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'M', 'Proxima Centauri is the closest known star to the Sun.', 'Red', 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'B', 'Rigel is the brightest star in the constellation Orion.', 'Blue', 1);
INSERT INTO public.star VALUES (5, 'Arcturus', 'K', 'Arcturus is the brightest star in the northern celestial hemisphere.', 'Orange', 2);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'G', 'Alpha Centauri A is the primary star in the Alpha Centauri star system.', 'Yellow', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: irrevelant_irrevelant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.irrevelant_irrevelant_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: irrevelant irrevelant_irrevelant_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.irrevelant
    ADD CONSTRAINT irrevelant_irrevelant_info_key UNIQUE (name);


--
-- Name: irrevelant irrevelant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.irrevelant
    ADD CONSTRAINT irrevelant_pkey PRIMARY KEY (irrevelant_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: irrevelant unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.irrevelant
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: irrevelant unique_num; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.irrevelant
    ADD CONSTRAINT unique_num UNIQUE (irrevelant_random_num);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

