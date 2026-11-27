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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 328);
INSERT INTO public.games VALUES (2, 11, 937);
INSERT INTO public.games VALUES (3, 12, 556);
INSERT INTO public.games VALUES (4, 12, 695);
INSERT INTO public.games VALUES (5, 11, 799);
INSERT INTO public.games VALUES (6, 11, 981);
INSERT INTO public.games VALUES (7, 11, 48);
INSERT INTO public.games VALUES (8, 13, 577);
INSERT INTO public.games VALUES (9, 13, 177);
INSERT INTO public.games VALUES (10, 14, 280);
INSERT INTO public.games VALUES (11, 14, 642);
INSERT INTO public.games VALUES (12, 13, 948);
INSERT INTO public.games VALUES (13, 13, 909);
INSERT INTO public.games VALUES (14, 13, 996);
INSERT INTO public.games VALUES (15, 15, 678);
INSERT INTO public.games VALUES (16, 15, 363);
INSERT INTO public.games VALUES (17, 16, 972);
INSERT INTO public.games VALUES (18, 16, 833);
INSERT INTO public.games VALUES (19, 15, 961);
INSERT INTO public.games VALUES (20, 15, 964);
INSERT INTO public.games VALUES (21, 15, 941);
INSERT INTO public.games VALUES (22, 17, 644);
INSERT INTO public.games VALUES (23, 17, 215);
INSERT INTO public.games VALUES (24, 18, 382);
INSERT INTO public.games VALUES (25, 18, 364);
INSERT INTO public.games VALUES (26, 17, 92);
INSERT INTO public.games VALUES (27, 17, 423);
INSERT INTO public.games VALUES (28, 17, 907);
INSERT INTO public.games VALUES (29, 19, 789);
INSERT INTO public.games VALUES (30, 19, 795);
INSERT INTO public.games VALUES (31, 20, 638);
INSERT INTO public.games VALUES (32, 20, 190);
INSERT INTO public.games VALUES (33, 19, 601);
INSERT INTO public.games VALUES (34, 19, 115);
INSERT INTO public.games VALUES (35, 19, 657);
INSERT INTO public.games VALUES (36, 21, 3);
INSERT INTO public.games VALUES (37, 21, 807);
INSERT INTO public.games VALUES (38, 22, 131);
INSERT INTO public.games VALUES (39, 22, 722);
INSERT INTO public.games VALUES (40, 21, 324);
INSERT INTO public.games VALUES (41, 21, 568);
INSERT INTO public.games VALUES (42, 21, 768);
INSERT INTO public.games VALUES (43, 23, 808);
INSERT INTO public.games VALUES (44, 23, 574);
INSERT INTO public.games VALUES (45, 24, 879);
INSERT INTO public.games VALUES (46, 24, 619);
INSERT INTO public.games VALUES (47, 23, 725);
INSERT INTO public.games VALUES (48, 23, 479);
INSERT INTO public.games VALUES (49, 23, 554);
INSERT INTO public.games VALUES (50, 25, 152);
INSERT INTO public.games VALUES (51, 25, 808);
INSERT INTO public.games VALUES (52, 26, 716);
INSERT INTO public.games VALUES (53, 26, 707);
INSERT INTO public.games VALUES (54, 25, 288);
INSERT INTO public.games VALUES (55, 25, 284);
INSERT INTO public.games VALUES (56, 25, 273);
INSERT INTO public.games VALUES (57, 27, 525);
INSERT INTO public.games VALUES (58, 27, 237);
INSERT INTO public.games VALUES (59, 28, 949);
INSERT INTO public.games VALUES (60, 28, 129);
INSERT INTO public.games VALUES (61, 27, 251);
INSERT INTO public.games VALUES (62, 27, 946);
INSERT INTO public.games VALUES (63, 27, 128);
INSERT INTO public.games VALUES (64, 29, 620);
INSERT INTO public.games VALUES (65, 29, 329);
INSERT INTO public.games VALUES (66, 30, 551);
INSERT INTO public.games VALUES (67, 30, 111);
INSERT INTO public.games VALUES (68, 29, 355);
INSERT INTO public.games VALUES (69, 29, 178);
INSERT INTO public.games VALUES (70, 29, 532);
INSERT INTO public.games VALUES (71, 31, 456);
INSERT INTO public.games VALUES (72, 31, 864);
INSERT INTO public.games VALUES (73, 32, 955);
INSERT INTO public.games VALUES (74, 32, 235);
INSERT INTO public.games VALUES (75, 31, 275);
INSERT INTO public.games VALUES (76, 31, 40);
INSERT INTO public.games VALUES (77, 31, 577);
INSERT INTO public.games VALUES (78, 33, 12);
INSERT INTO public.games VALUES (79, 33, 80);
INSERT INTO public.games VALUES (80, 34, 616);
INSERT INTO public.games VALUES (81, 34, 582);
INSERT INTO public.games VALUES (82, 33, 937);
INSERT INTO public.games VALUES (83, 33, 861);
INSERT INTO public.games VALUES (84, 33, 851);
INSERT INTO public.games VALUES (85, 35, 568);
INSERT INTO public.games VALUES (86, 35, 868);
INSERT INTO public.games VALUES (87, 36, 827);
INSERT INTO public.games VALUES (88, 36, 365);
INSERT INTO public.games VALUES (89, 35, 491);
INSERT INTO public.games VALUES (90, 35, 849);
INSERT INTO public.games VALUES (91, 35, 805);
INSERT INTO public.games VALUES (92, 37, 171);
INSERT INTO public.games VALUES (93, 37, 293);
INSERT INTO public.games VALUES (94, 38, 989);
INSERT INTO public.games VALUES (95, 38, 159);
INSERT INTO public.games VALUES (96, 37, 715);
INSERT INTO public.games VALUES (97, 37, 401);
INSERT INTO public.games VALUES (98, 37, 475);
INSERT INTO public.games VALUES (99, 39, 775);
INSERT INTO public.games VALUES (100, 39, 11);
INSERT INTO public.games VALUES (101, 40, 771);
INSERT INTO public.games VALUES (102, 40, 484);
INSERT INTO public.games VALUES (103, 39, 297);
INSERT INTO public.games VALUES (104, 39, 108);
INSERT INTO public.games VALUES (105, 39, 762);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1795762784225');
INSERT INTO public.users VALUES (2, 'user_1795762784224');
INSERT INTO public.users VALUES (3, 'user_1795762808052');
INSERT INTO public.users VALUES (4, 'user_1795762808050');
INSERT INTO public.users VALUES (5, 'user_1795762848631');
INSERT INTO public.users VALUES (6, 'user_1795762848630');
INSERT INTO public.users VALUES (7, 'j');
INSERT INTO public.users VALUES (8, 'jn');
INSERT INTO public.users VALUES (9, 'etfhg');
INSERT INTO public.users VALUES (10, 'sfg');
INSERT INTO public.users VALUES (11, 'user_1795762958917');
INSERT INTO public.users VALUES (12, 'user_1795762958916');
INSERT INTO public.users VALUES (13, 'user_1795763021761');
INSERT INTO public.users VALUES (14, 'user_1795763021760');
INSERT INTO public.users VALUES (15, 'user_1795763049695');
INSERT INTO public.users VALUES (16, 'user_1795763049694');
INSERT INTO public.users VALUES (17, 'user_1795763147718');
INSERT INTO public.users VALUES (18, 'user_1795763147717');
INSERT INTO public.users VALUES (19, 'user_1795763161550');
INSERT INTO public.users VALUES (20, 'user_1795763161549');
INSERT INTO public.users VALUES (21, 'user_1795763176939');
INSERT INTO public.users VALUES (22, 'user_1795763176938');
INSERT INTO public.users VALUES (23, 'user_1795763204827');
INSERT INTO public.users VALUES (24, 'user_1795763204826');
INSERT INTO public.users VALUES (25, 'user_1795763210441');
INSERT INTO public.users VALUES (26, 'user_1795763210440');
INSERT INTO public.users VALUES (27, 'user_1795763223458');
INSERT INTO public.users VALUES (28, 'user_1795763223457');
INSERT INTO public.users VALUES (29, 'user_1795763250417');
INSERT INTO public.users VALUES (30, 'user_1795763250416');
INSERT INTO public.users VALUES (31, 'user_1795763279319');
INSERT INTO public.users VALUES (32, 'user_1795763279318');
INSERT INTO public.users VALUES (33, 'user_1795763318691');
INSERT INTO public.users VALUES (34, 'user_1795763318690');
INSERT INTO public.users VALUES (35, 'user_1795763328994');
INSERT INTO public.users VALUES (36, 'user_1795763328993');
INSERT INTO public.users VALUES (37, 'user_1795764640869');
INSERT INTO public.users VALUES (38, 'user_1795764640868');
INSERT INTO public.users VALUES (39, 'user_1795764668170');
INSERT INTO public.users VALUES (40, 'user_1795764668169');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

