--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO pollpar;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO pollpar;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE account_emailaddress_id_seq OWNED BY account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO pollpar;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO pollpar;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE account_emailconfirmation_id_seq OWNED BY account_emailconfirmation.id;


--
-- Name: app_jefesupermercado; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE app_jefesupermercado (
    id integer NOT NULL,
    nombres character varying(50),
    apellidos character varying(50),
    email character varying(50),
    usuario_id integer NOT NULL
);


ALTER TABLE public.app_jefesupermercado OWNER TO pollpar;

--
-- Name: app_jefesupermercado_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE app_jefesupermercado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_jefesupermercado_id_seq OWNER TO pollpar;

--
-- Name: app_jefesupermercado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE app_jefesupermercado_id_seq OWNED BY app_jefesupermercado.id;


--
-- Name: app_marcacione; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE app_marcacione (
    id integer NOT NULL,
    lugar character varying(200) NOT NULL,
    estado character varying(40),
    latitud character varying(200),
    longitud character varying(200),
    fecha character varying(100),
    hora character varying(100),
    observaciones character varying(150),
    device_id character varying(200),
    zona character varying(200),
    "timestamp" timestamp with time zone NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.app_marcacione OWNER TO pollpar;

--
-- Name: app_marcacione_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE app_marcacione_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_marcacione_id_seq OWNER TO pollpar;

--
-- Name: app_marcacione_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE app_marcacione_id_seq OWNED BY app_marcacione.id;


--
-- Name: app_perfile; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE app_perfile (
    id integer NOT NULL,
    telefono_id character varying(40),
    sexo character varying(40),
    legajo character varying(40),
    jefe_id integer,
    usuario_id integer NOT NULL
);


ALTER TABLE public.app_perfile OWNER TO pollpar;

--
-- Name: app_perfile_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE app_perfile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_perfile_id_seq OWNER TO pollpar;

--
-- Name: app_perfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE app_perfile_id_seq OWNED BY app_perfile.id;


--
-- Name: app_usuario; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE app_usuario (
    id integer NOT NULL,
    telefono_id character varying(40),
    sexo character varying(40),
    legajo character varying(40),
    esta_activo boolean NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.app_usuario OWNER TO pollpar;

--
-- Name: app_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE app_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_usuario_id_seq OWNER TO pollpar;

--
-- Name: app_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE app_usuario_id_seq OWNED BY app_usuario.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO pollpar;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO pollpar;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO pollpar;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO pollpar;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO pollpar;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO pollpar;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO pollpar;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO pollpar;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO pollpar;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO pollpar;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO pollpar;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO pollpar;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO pollpar;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO pollpar;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO pollpar;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO pollpar;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO pollpar;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO pollpar;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO pollpar;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO pollpar;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO pollpar;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO pollpar;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO pollpar;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO pollpar;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE socialaccount_socialaccount_id_seq OWNED BY socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO pollpar;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO pollpar;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE socialaccount_socialapp_id_seq OWNED BY socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO pollpar;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO pollpar;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE socialaccount_socialapp_sites_id_seq OWNED BY socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE TABLE socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO pollpar;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: pollpar
--

CREATE SEQUENCE socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO pollpar;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pollpar
--

ALTER SEQUENCE socialaccount_socialtoken_id_seq OWNED BY socialaccount_socialtoken.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY account_emailaddress ALTER COLUMN id SET DEFAULT nextval('account_emailaddress_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('account_emailconfirmation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_jefesupermercado ALTER COLUMN id SET DEFAULT nextval('app_jefesupermercado_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_marcacione ALTER COLUMN id SET DEFAULT nextval('app_marcacione_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_perfile ALTER COLUMN id SET DEFAULT nextval('app_perfile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_usuario ALTER COLUMN id SET DEFAULT nextval('app_usuario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('account_emailaddress_id_seq', 1, false);


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('account_emailconfirmation_id_seq', 1, false);


--
-- Data for Name: app_jefesupermercado; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY app_jefesupermercado (id, nombres, apellidos, email, usuario_id) FROM stdin;
1	A	A		1
\.


--
-- Name: app_jefesupermercado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('app_jefesupermercado_id_seq', 1, true);


--
-- Data for Name: app_marcacione; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY app_marcacione (id, lugar, estado, latitud, longitud, fecha, hora, observaciones, device_id, zona, "timestamp", usuario_id) FROM stdin;
5	Ofina comercial	0	-25.2252247	-57.5340034	16/08/2017	14:55:25		8cb2402d7d0fb482		2017-08-16 14:55:26.153572-04	12
6	Oficina comercial	0	-25.225069	-57.5342908	16/08/2017	15:00:32		92e21d107142e0d4	4	2017-08-16 15:00:56.810599-04	4
7	oficina comercial	0			16/08/2017	15:00:55		1909393993302c72	5	2017-08-16 15:01:02.093016-04	8
8	Oficina comercial	0	-25.225069	-57.5342908	16/08/2017	15:01:08		bebf35b54e1f8493	1	2017-08-16 15:01:16.840675-04	14
9	Oficina comercial	0	-25.2251025	-57.5343019	16/08/2017	15:01:16		8c55f8380f178cd7	7	2017-08-16 15:01:17.308913-04	6
10	Oficina comercial	0			16/08/2017	15:01:26		6572235f9dcc62d6		2017-08-16 15:01:27.867516-04	16
11	Oficina comercial	1	-25.225069	-57.5342908	16/08/2017	15:01:35		387ee484de224877	4	2017-08-16 15:01:40.666081-04	7
12	Ofina comercial	1	-25.225069	-57.5342908	16/08/2017	15:03:21		8cb2402d7d0fb482	2	2017-08-16 15:03:31.454364-04	12
13	oficina comercial	1	-25.2250808	-57.5342831	16/08/2017	15:03:22		be445efe0e4b8f10	3	2017-08-16 15:03:31.618322-04	10
14	Oficina comercial	0	-25.2252214	-57.5340082	16/08/2017	15:10:12		1aeb37366085a4ed	3	2017-08-16 15:10:29.097207-04	15
15	Oficina	0	-25.2252247	-57.5340034	16/08/2017	15:11:08		3b55ca72969c6e55	3	2017-08-16 15:12:33.898196-04	11
16	Oficina comercial	1			16/08/2017	15:12:24		6572235f9dcc62d6		2017-08-16 15:12:46.71883-04	16
17	Oficina comercial	0	-25.219518	-57.5329101	16/08/2017	15:13:49		6572235f9dcc62d6		2017-08-16 15:14:04.51181-04	16
18	Oficina comercial	1	-25.225069	-57.5342908	16/08/2017	15:15:37		92e21d107142e0d4	4	2017-08-16 15:15:39.045749-04	4
19	Oficina	0	-25.2167845	-57.532128	16/08/2017	15:18:04		6572235f9dcc62d6	1	2017-08-16 15:18:08.715049-04	16
20	edificio comercial	0			16/08/2017	15:29:02		1909393993302c72	5	2017-08-16 15:29:22.495149-04	8
21	Casa	1			16/08/2017	19:18:22	Paternidad	8cb2402d7d0fb482		2017-08-16 19:18:43.128171-04	12
22	Casa	0			16/08/2017	19:22:43	Paternudad	8cb2402d7d0fb482		2017-08-16 19:23:06.140139-04	12
23	Casa fresca	1	-25.326126	-57.5708603	17/08/2017	04:58:15		3b55ca72969c6e55	3	2017-08-17 05:00:00.770319-04	11
24	Superseis la negrita	1			17/08/2017	05:01:30		1909393993302c72	5	2017-08-17 05:01:42.050281-04	8
25	Real Capiata	1	-25.3495914	-57.4479814	17/08/2017	06:43:12		8c55f8380f178cd7	7	2017-08-17 06:43:37.984729-04	6
26	Citymarket Nanawa	1	-25.2065845	-57.5344809	17/08/2017	06:52:57		6572235f9dcc62d6		2017-08-17 06:53:20.175376-04	16
27	City brasil	1	-25.363282	-57.5300501	17/08/2017	08:45:10		bebf35b54e1f8493		2017-08-17 08:45:37.487161-04	14
28	City montoya	0	-25.3015251	-57.5268937	17/08/2017	10:25:30		bebf35b54e1f8493		2017-08-17 10:25:39.011301-04	14
29	City montoya	1	-25.3014793	-57.5267728	17/08/2017	11:01:38		bebf35b54e1f8493		2017-08-17 11:02:06.434569-04	14
30	City boqueron	0	-25.3059484	-57.5188574	17/08/2017	11:17:27		bebf35b54e1f8493		2017-08-17 11:17:55.275559-04	14
31	City boqueron	1	-25.3059985	-57.5191448	17/08/2017	11:41:47		bebf35b54e1f8493		2017-08-17 11:41:55.750808-04	14
32	Superseis la negrita	0			17/08/2017	11:44:58		1909393993302c72	5	2017-08-17 11:45:16.540374-04	8
33	Casa fresca	0	-25.3275732	-57.5694668	17/08/2017	13:08:34		3b55ca72969c6e55	3	2017-08-17 13:09:59.059937-04	11
34	Casa	0	-25.3343858	-57.4856151	17/08/2017	15:11:20	Paternidad	8cb2402d7d0fb482	2	2017-08-17 15:12:31.824101-04	12
35	Casa	1	-25.3343858	-57.4856151	17/08/2017	15:14:14	Paternidad	8cb2402d7d0fb482	2	2017-08-17 15:15:20.149001-04	12
36	Real capiata	0	-25.3495906	-57.4479769	17/08/2017	17:08:26		8c55f8380f178cd7	7	2017-08-17 17:08:31.776103-04	6
37	Superseis la negrita	1			17/08/2017	17:29:28		1909393993302c72	5	2017-08-17 17:29:37.017424-04	8
38	Citymarket zeballos	0	-25.2310406	-57.5587461	17/08/2017	17:29:51		6572235f9dcc62d6		2017-08-17 17:29:52.784928-04	16
39	Superseis la negrita	0			17/08/2017	21:39:03		1909393993302c72	5	2017-08-17 21:39:06.344448-04	8
40	Casa	0	-25.3343858	-57.4856151	18/08/2017	03:48:44	Paternidad	8cb2402d7d0fb482	2	2017-08-18 03:49:33.01787-04	12
41	Superseis la negrita	1			18/08/2017	04:59:54		1909393993302c72	5	2017-08-18 05:00:00.255607-04	8
42	Real San Vicente	0	-25.3091847	-57.6182416	18/08/2017	05:37:52		387ee484de224877	4	2017-08-18 05:38:03.183959-04	7
43	archi lambare	0			18/08/2017	05:58:35		92e21d107142e0d4	4	2017-08-18 05:58:50.019812-04	4
44	Citymarket Caballero	1	-25.2210043	-57.5167429	18/08/2017	06:51:48		6572235f9dcc62d6		2017-08-18 06:52:07.469023-04	16
45	City teniente molas	0	-25.3611424	-57.50462	18/08/2017	08:22:50		bebf35b54e1f8493		2017-08-18 08:23:08.231787-04	14
46	City jordan	1	-25.3718464	-57.4979434	18/08/2017	08:47:16		bebf35b54e1f8493		2017-08-18 08:47:47.440584-04	14
47	City jordan	0	-25.3718464	-57.4979434	18/08/2017	09:21:15		bebf35b54e1f8493		2017-08-18 09:21:42.01011-04	14
48	City victoria	1	-25.3570692	-57.4901855	18/08/2017	09:55:48		bebf35b54e1f8493		2017-08-18 09:56:09.129268-04	14
49	City victoria	0	-25.3565757	-57.4912686	18/08/2017	10:26:28		bebf35b54e1f8493		2017-08-18 10:26:42.988852-04	14
50	Stock itagua	0			18/08/2017	10:39:10		1aeb37366085a4ed		2017-08-18 10:39:15.3863-04	15
51	Casa fresca	1			18/08/2017	11:14:37		3b55ca72969c6e55	3	2017-08-18 11:16:10.60545-04	11
52	Archi lambare	1			18/08/2017	14:24:36		92e21d107142e0d4	4	2017-08-18 14:24:39.905255-04	4
53	Real San Vicente	1	-25.3083151	-57.61864	18/08/2017	14:53:57		387ee484de224877	4	2017-08-18 14:53:58.472926-04	7
54	Real capiata	1	-25.3495906	-57.4479769	18/08/2017	16:51:13		8c55f8380f178cd7	7	2017-08-18 16:51:40.591655-04	6
55	Citymarket zeballos	0			18/08/2017	17:49:03		6572235f9dcc62d6		2017-08-18 17:49:04.707118-04	16
56	Casa fresca	0			18/08/2017	19:33:47		3b55ca72969c6e55	3	2017-08-18 19:35:37.828196-04	11
57	Real capiata	0	-25.350089	-57.4479854	18/08/2017	21:21:02		8c55f8380f178cd7	7	2017-08-18 21:21:02.006046-04	6
58	real san vicente	0			19/08/2017	05:13:37		1909393993302c72	4	2017-08-19 05:14:05.088564-04	8
59	Real capiata	1	-25.3495734	-57.4480322	19/08/2017	05:25:19		8c55f8380f178cd7	7	2017-08-19 05:25:26.688579-04	6
60	Real san vicente	0	-25.3084092	-57.6181421	19/08/2017	05:49:03		387ee484de224877	4	2017-08-19 05:49:29.826802-04	7
61	Archi lambare	0			19/08/2017	06:01:09		92e21d107142e0d4	4	2017-08-19 06:01:13.23427-04	4
62	Citymarket Zeballos	1	-25.2310447	-57.5587476	19/08/2017	07:04:09		6572235f9dcc62d6		2017-08-19 07:04:15.740166-04	16
63	Real capiata	0	-25.3496317	-57.4479769	19/08/2017	10:04:30		8c55f8380f178cd7	7	2017-08-19 10:04:55.887824-04	6
64	Archi lambare	1			19/08/2017	11:06:31		92e21d107142e0d4	4	2017-08-19 11:06:56.137404-04	4
65	real san vicente	1			19/08/2017	14:13:43		1909393993302c72	4	2017-08-19 14:14:11.36662-04	8
66	Citymarket zeballos	0	-25.2310447	-57.5587476	19/08/2017	15:33:30		6572235f9dcc62d6		2017-08-19 15:33:54.956551-04	16
67	Real capiata	1	-25.3495235	-57.4479548	19/08/2017	15:41:46		8c55f8380f178cd7	7	2017-08-19 15:41:57.109586-04	6
68	Real San  Vicente	1	-25.3087765	-57.618047	19/08/2017	15:53:30		387ee484de224877	4	2017-08-19 15:54:00.579943-04	7
69	Archi lambare	0			19/08/2017	17:13:16		92e21d107142e0d4	4	2017-08-19 17:13:32.469432-04	4
70	Casa	0	-25.3343858	-57.4856151	19/08/2017	21:00:47	Paternidad	8cb2402d7d0fb482	2	2017-08-19 21:01:37.11019-04	12
71	Real capiata	0	-25.3495961	-57.447999	19/08/2017	21:47:29		8c55f8380f178cd7	7	2017-08-19 21:47:55.080742-04	6
72	Archi lambare	1			20/08/2017	04:57:21		92e21d107142e0d4	4	2017-08-20 04:57:47.627377-04	4
73	real san vicente	0			20/08/2017	05:27:09		1909393993302c72	4	2017-08-20 05:27:11.114222-04	8
74	Real capiata	1	-25.3495906	-57.4479769	20/08/2017	05:27:06		8c55f8380f178cd7	7	2017-08-20 05:27:20.910043-04	6
75	Real San viecnte	0	-25.3084295	-57.6175114	20/08/2017	05:46:07		387ee484de224877	4	2017-08-20 05:46:31.674464-04	7
76	Casa fresca	1			20/08/2017	05:58:05		3b55ca72969c6e55	3	2017-08-20 05:59:51.371419-04	11
77	Real capiata	0	-25.3494662	-57.4484299	20/08/2017	12:27:44		8c55f8380f178cd7	7	2017-08-20 12:28:11.612316-04	6
78	Real San vicente	1	-25.3089073	-57.6178654	20/08/2017	13:04:08		387ee484de224877	4	2017-08-20 13:04:18.829451-04	7
79	real san vicente	1	-25.3082787	-57.6169802	20/08/2017	13:07:50		1909393993302c72	4	2017-08-20 13:08:19.79642-04	8
80	Casa fresca	0			21/08/2017	04:50:38		3b55ca72969c6e55	3	2017-08-21 04:52:28.144-04	11
81	Real San  Vicente	0	-25.308396	-57.6177105	21/08/2017	05:31:52		387ee484de224877	4	2017-08-21 05:32:15.917016-04	7
82	Stock itagua	1	-25.3925067	-57.3541631	21/08/2017	05:33:44		1aeb37366085a4ed		2017-08-21 05:33:58.571412-04	15
83	Real capiata	1	-25.3495303	-57.4480653	21/08/2017	06:49:56		8c55f8380f178cd7	7	2017-08-21 06:49:58.103334-04	6
84	Citymarket zeballos	1			21/08/2017	07:17:54		6572235f9dcc62d6		2017-08-21 07:18:21.870341-04	16
85	Stock itagua	0	-25.3916382	-57.3542624	21/08/2017	10:40:49		1aeb37366085a4ed		2017-08-21 10:40:57.209515-04	15
86	Real San Vicente	1	-25.308745	-57.6181762	21/08/2017	11:02:13		387ee484de224877	4	2017-08-21 11:02:37.76562-04	7
87	Casa fresca	1			21/08/2017	13:09:19		3b55ca72969c6e55	3	2017-08-21 13:10:56.736681-04	11
88	Real san Vicente	0			21/08/2017	16:39:06		387ee484de224877	4	2017-08-21 16:39:32.973984-04	7
89	Real capiata	0	-25.3495906	-57.4479769	21/08/2017	17:07:04		8c55f8380f178cd7	7	2017-08-21 17:07:05.940967-04	6
90	Casa	1	-25.3343858	-57.4856151	21/08/2017	17:56:43	Paternidad	8cb2402d7d0fb482	2	2017-08-21 17:57:31.758-04	12
91	Citymarket zeballos	0			21/08/2017	17:58:40		6572235f9dcc62d6		2017-08-21 17:58:49.127166-04	16
92	Stock itagua	1	-25.3925526	-57.3543066	21/08/2017	21:19:11		1aeb37366085a4ed		2017-08-21 21:19:27.904553-04	15
93	Real San Vicente	1	-25.3076745	-57.6174228	21/08/2017	21:22:12		387ee484de224877	4	2017-08-21 21:22:34.671422-04	7
94	real san vicente	0	-25.3083655	-57.6173343	22/08/2017	05:22:05		1909393993302c72	4	2017-08-22 05:22:09.572285-04	8
95	Real capiata	1	-25.3495063	-57.4480101	22/08/2017	05:26:18		8c55f8380f178cd7	7	2017-08-22 05:26:44.547808-04	6
96	Casa rica lambare	0			22/08/2017	06:10:29		92e21d107142e0d4	4	2017-08-22 06:10:51.979251-04	4
97	Citymarket zeballos	1			22/08/2017	06:48:15		6572235f9dcc62d6		2017-08-22 06:48:31.661375-04	16
98	Real capiata	0	-25.3495755	-57.447999	22/08/2017	11:34:18		8c55f8380f178cd7	7	2017-08-22 11:34:41.886641-04	6
99	real san vicente	1	-25.3083828	-57.6170687	22/08/2017	11:40:27		1909393993302c72	5	2017-08-22 11:40:33.251213-04	8
100	Casa	0	-25.3343858	-57.4856151	22/08/2017	11:51:17	Paternidad	8cb2402d7d0fb482	2	2017-08-22 11:52:03.491434-04	12
101	Casa	1	-25.3343858	-57.4856151	22/08/2017	16:15:52	Paternidad	8cb2402d7d0fb482	2	2017-08-22 16:16:38.329388-04	12
102	Citymarket zeballos	0	-25.2352332	-57.5569918	22/08/2017	16:54:57		6572235f9dcc62d6		2017-08-22 16:55:14.071479-04	16
103	Real capiata	1	-25.3503988	-57.4480874	22/08/2017	16:57:04		8c55f8380f178cd7	7	2017-08-22 16:57:31.116208-04	6
104	real san vicente	0			22/08/2017	17:02:06		1909393993302c72	4	2017-08-22 17:02:28.14133-04	8
105	Casa rica lambare	1	-25.3415443	-57.6068009	22/08/2017	17:39:19		92e21d107142e0d4	4	2017-08-22 17:39:28.801217-04	4
106	real san vicente	1			22/08/2017	21:04:58		1909393993302c72	4	2017-08-22 21:05:21.951097-04	8
107	Real capiata	0	-25.3495906	-57.4479769	22/08/2017	21:12:35		8c55f8380f178cd7	7	2017-08-22 21:12:58.984803-04	6
108	Casa fresca	0	-25.3261336	-57.5708493	23/08/2017	04:50:49		3b55ca72969c6e55	3	2017-08-23 04:52:23.751954-04	11
109	Stock itagua	0	-25.3924807	-57.354141	23/08/2017	05:16:35		1aeb37366085a4ed		2017-08-23 05:16:58.3139-04	15
110	Super6 san lorenso	0	-25.3421462	-57.501282	23/08/2017	05:36:53		8cb2402d7d0fb482	2	2017-08-23 05:38:01.546466-04	12
111	real san vicente	0			23/08/2017	05:39:39		1909393993302c72	4	2017-08-23 05:40:07.366936-04	8
112	Casa rica lambare	0			23/08/2017	06:05:30		92e21d107142e0d4	4	2017-08-23 06:05:57.614166-04	4
113	Citymarket Villa hayes	1	-25.090335	-57.5332059	23/08/2017	07:38:09		6572235f9dcc62d6		2017-08-23 07:38:26.998643-04	16
114	real san vicente	1			23/08/2017	10:57:03		1909393993302c72	4	2017-08-23 10:57:28.762344-04	8
115	Super6 san lorenso	1	-25.3428517	-57.5018287	23/08/2017	11:01:11		8cb2402d7d0fb482	2	2017-08-23 11:02:23.438145-04	12
116	Stock itagua	1	-25.3924753	-57.3544501	23/08/2017	11:28:59		1aeb37366085a4ed		2017-08-23 11:29:18.834081-04	15
117	Casa fresca	1	-25.326375	-57.5708272	23/08/2017	11:37:58		3b55ca72969c6e55	3	2017-08-23 11:39:32.554006-04	11
118	real san vicente	0			23/08/2017	15:53:25		1909393993302c72	4	2017-08-23 15:53:46.436106-04	8
119	Super6 san lorenso	0	-25.3422551	-57.5017241	23/08/2017	16:41:34		8cb2402d7d0fb482	2	2017-08-23 16:42:24.109232-04	12
120	Citymarket zeballos	0	-25.2381689	-57.5652371	23/08/2017	17:01:18		6572235f9dcc62d6		2017-08-23 17:01:32.749996-04	16
121	Casa rica lambare	1			23/08/2017	17:31:27		92e21d107142e0d4	4	2017-08-23 17:31:44.310845-04	4
122	real san vicente	1			23/08/2017	21:13:47		1909393993302c72	4	2017-08-23 21:14:17.477168-04	8
123	Super6 san lorenso	1	-25.3425491	-57.5021662	23/08/2017	21:31:03		8cb2402d7d0fb482	2	2017-08-23 21:31:56.115195-04	12
124	real san vicente	0			24/08/2017	05:01:29		1909393993302c72	4	2017-08-24 05:01:54.211773-04	8
125	Real capiata	1	-25.3507931	-57.4483525	24/08/2017	05:27:11		8c55f8380f178cd7	7	2017-08-24 05:27:39.05778-04	6
126	Super6 san lorenso	0	-25.3426162	-57.5021883	24/08/2017	05:34:04		8cb2402d7d0fb482	2	2017-08-24 05:34:50.494093-04	12
127	Citymarket caballero	0	-25.2195137	-57.5260337	24/08/2017	07:28:04		6572235f9dcc62d6		2017-08-24 07:28:09.151089-04	16
128	Stock itagua	0	-25.3915841	-57.3542514	24/08/2017	10:44:03		1aeb37366085a4ed		2017-08-24 10:44:10.752421-04	15
129	Real capiata	0	-25.3502331	-57.447999	24/08/2017	11:12:03		8c55f8380f178cd7	7	2017-08-24 11:12:31.187146-04	6
130	real san vicente	1			24/08/2017	14:04:26		1909393993302c72	4	2017-08-24 14:04:54.642133-04	8
131	Super6 san lorenso	1	-25.343101	-57.5015693	24/08/2017	14:31:34		8cb2402d7d0fb482	2	2017-08-24 14:32:46.904309-04	12
132	Real capiata	1	-25.3496036	-57.447988	24/08/2017	16:34:51		8c55f8380f178cd7	7	2017-08-24 16:35:19.085914-04	6
133	Citymarket zeballos	1	-25.2333919	-57.5560698	24/08/2017	18:05:16		6572235f9dcc62d6		2017-08-24 18:05:32.650806-04	16
134	Stock itagua	1	-25.3923856	-57.35413	24/08/2017	21:03:55		1aeb37366085a4ed		2017-08-24 21:04:04.571804-04	15
135	Real capiata	0	-25.3499324	-57.447988	24/08/2017	21:16:31		8c55f8380f178cd7	7	2017-08-24 21:16:56.703472-04	6
136	Casa fresca	0			25/08/2017	04:51:33		3b55ca72969c6e55	3	2017-08-25 04:53:25.481899-04	11
137	Stock itagua	0	-25.3925012	-57.354141	25/08/2017	05:10:54		1aeb37366085a4ed		2017-08-25 05:11:23.015347-04	15
138	real san vicente	0			25/08/2017	05:20:14		1909393993302c72	4	2017-08-25 05:20:36.286637-04	8
139	Real capiata	1	-25.3507194	-57.4480544	25/08/2017	05:34:25		8c55f8380f178cd7	7	2017-08-25 05:34:48.95633-04	6
140	Super6 san lorenso	0	-25.3426343	-57.5020114	25/08/2017	05:49:13		8cb2402d7d0fb482	2	2017-08-25 05:50:24.297097-04	12
141	Citymarket zeballos	0	-25.2310537	-57.5587437	25/08/2017	06:55:07		6572235f9dcc62d6		2017-08-25 06:55:19.187604-04	16
142	Casa rica lambare	0			25/08/2017	08:07:21		92e21d107142e0d4	4	2017-08-25 08:07:27.544692-04	4
143	City tte molas	1	-25.3613316	-57.5045536	25/08/2017	09:37:10		bebf35b54e1f8493		2017-08-25 09:37:26.999921-04	14
144	City 2 san lorenzo	0	-25.3477542	-57.5101909	25/08/2017	10:01:51		bebf35b54e1f8493		2017-08-25 10:02:20.159083-04	14
145	real san vicente	1			25/08/2017	11:13:31		1909393993302c72	4	2017-08-25 11:13:55.716524-04	8
146	City 2 san lorenzo	1	-25.3478033	-57.5102064	25/08/2017	11:30:55		bebf35b54e1f8493		2017-08-25 11:31:05.874784-04	14
147	s6lambare	0			25/08/2017	11:32:53		c2eccaaf1c2f279b	4	2017-08-25 11:33:00.082652-04	19
148	s6lambare	1			25/08/2017	11:33:25		c2eccaaf1c2f279b	4	2017-08-25 11:33:48.991212-04	19
149	s6lambare	0	-25.3414213	-57.5989237	25/08/2017	11:34:59		c2eccaaf1c2f279b	4	2017-08-25 11:35:30.076395-04	19
150	s6lambare	1	-25.3413802	-57.5989237	25/08/2017	11:35:55		c2eccaaf1c2f279b	4	2017-08-25 11:36:28.368876-04	19
151	Casa fresca	1	-25.3261336	-57.5708493	25/08/2017	13:03:02		3b55ca72969c6e55	3	2017-08-25 13:04:41.817678-04	11
152	Stock itagua	1	-25.3924396	-57.354141	25/08/2017	14:23:18		1aeb37366085a4ed		2017-08-25 14:23:44.867658-04	15
153	Real capiata	0	-25.350166	-57.4479769	25/08/2017	14:43:32		8c55f8380f178cd7	7	2017-08-25 14:43:55.73665-04	6
154	real san vicente	0			25/08/2017	16:10:21		1909393993302c72	4	2017-08-25 16:10:46.195286-04	8
155	Super6 san lorenso	1	-25.3436538	-57.5008509	25/08/2017	16:49:10		8cb2402d7d0fb482	2	2017-08-25 16:50:21.306665-04	12
156	s6lambare	0			25/08/2017	17:14:20		c2eccaaf1c2f279b	4	2017-08-25 17:14:37.282944-04	19
157	Citymarket zeballos	0	-25.2310537	-57.5587437	25/08/2017	17:34:41		6572235f9dcc62d6		2017-08-25 17:35:05.1127-04	16
158	Casa rica lambare	1			25/08/2017	18:31:11		92e21d107142e0d4	4	2017-08-25 18:31:19.130742-04	4
159	real san vicente	1			25/08/2017	21:08:54		1909393993302c72	4	2017-08-25 21:09:24.863012-04	8
160	s6lambare	1	-25.3399437	-57.5929055	25/08/2017	21:44:22		c2eccaaf1c2f279b	4	2017-08-25 21:44:32.877156-04	19
161	real san vicente	0			26/08/2017	04:56:50		1909393993302c72	4	2017-08-26 04:57:20.556925-04	8
162	s6lambare	0	-25.3409741	-57.5989458	26/08/2017	05:20:42		c2eccaaf1c2f279b	4	2017-08-26 05:20:54.377551-04	19
163	Real capiata	1			26/08/2017	05:30:32		8c55f8380f178cd7	7	2017-08-26 05:30:38.873418-04	6
164	Stock itagua	0	-25.392378	-57.354141	26/08/2017	05:36:21		1aeb37366085a4ed		2017-08-26 05:36:45.772509-04	15
165	Super6 san lorenso	0	-25.3425805	-57.5022104	26/08/2017	05:55:51		8cb2402d7d0fb482	2	2017-08-26 05:56:36.780483-04	12
166	Casa rica lambare	0			26/08/2017	06:06:53		92e21d107142e0d4	4	2017-08-26 06:07:23.699472-04	4
167	Citymarket zeballos	1	-25.2310537	-57.5587437	26/08/2017	07:09:24		6572235f9dcc62d6		2017-08-26 07:09:52.451462-04	16
168	Citymarket zeballos	0	-25.2310537	-57.5587437	26/08/2017	08:35:04		6572235f9dcc62d6		2017-08-26 08:35:24.177256-04	16
169	City tte molas	0			26/08/2017	08:54:57		bebf35b54e1f8493		2017-08-26 08:55:00.836242-04	14
170	Citymarket palma loma	1	-25.2776626	-57.513986	26/08/2017	09:24:55		6572235f9dcc62d6		2017-08-26 09:25:11.397312-04	16
171	Casa rica lambare	1			26/08/2017	10:02:03		92e21d107142e0d4	4	2017-08-26 10:02:26.276278-04	4
172	Real capiata	0	-25.3495914	-57.4479814	26/08/2017	11:09:03		8c55f8380f178cd7	7	2017-08-26 11:09:14.451992-04	6
173	City tte molas	1			26/08/2017	11:56:52		bebf35b54e1f8493		2017-08-26 11:57:18.59826-04	14
174	real san vicente	1			26/08/2017	14:04:59		1909393993302c72	4	2017-08-26 14:05:22.116284-04	8
175	s6lambare	0	-25.3406598	-57.5998862	26/08/2017	14:20:04		c2eccaaf1c2f279b	4	2017-08-26 14:20:40.115869-04	19
176	Super6 san lorenso	1	-25.3427304	-57.5019009	26/08/2017	14:22:49		8cb2402d7d0fb482	2	2017-08-26 14:23:59.431314-04	12
177	Real capiata	1	-25.3495914	-57.4479814	26/08/2017	16:43:56		8c55f8380f178cd7	7	2017-08-26 16:44:22.560627-04	6
178	Citymarket zeballos	0	-25.2310537	-57.5587437	26/08/2017	17:16:42		6572235f9dcc62d6		2017-08-26 17:16:56.631133-04	16
179	Casa rica lambare	0			26/08/2017	18:02:32		92e21d107142e0d4	4	2017-08-26 18:02:58.385362-04	4
180	Stock itagua	0	-25.3922192	-57.3541631	26/08/2017	21:35:01		1aeb37366085a4ed		2017-08-26 21:35:31.740411-04	15
181	Real capiata	0	-25.3500276	-57.447999	26/08/2017	21:54:28		8c55f8380f178cd7	7	2017-08-26 21:54:52.392612-04	6
182	Casa rica lambare	1			26/08/2017	22:12:42		92e21d107142e0d4	4	2017-08-26 22:13:12.189223-04	4
183	s6lambare	1	-25.3408459	-57.5997645	27/08/2017	05:16:45		c2eccaaf1c2f279b	4	2017-08-27 05:16:53.262195-04	19
184	Real capiata	1	-25.3495495	-57.4479769	27/08/2017	05:21:30		8c55f8380f178cd7	7	2017-08-27 05:21:38.569015-04	6
185	Stock itagua	1	-25.3924807	-57.354141	27/08/2017	05:32:46		1aeb37366085a4ed		2017-08-27 05:32:52.031142-04	15
186	Casa rica lambare	0			27/08/2017	08:31:31		92e21d107142e0d4	4	2017-08-27 08:32:00.529278-04	4
187	s6lambare	0	-25.3410879	-57.5989901	27/08/2017	12:07:50		c2eccaaf1c2f279b	4	2017-08-27 12:08:06.903409-04	19
188	Stock itagua	0	-25.3923082	-57.3542735	27/08/2017	12:16:36		1aeb37366085a4ed		2017-08-27 12:16:44.895085-04	15
189	Real capiata	0	-25.3496255	-57.4480764	27/08/2017	12:28:59		8c55f8380f178cd7	7	2017-08-27 12:29:23.11248-04	6
190	real san vicente	0			27/08/2017	13:10:02		1909393993302c72	4	2017-08-27 13:10:09.412111-04	8
191	real san vicente	1			27/08/2017	21:10:46		1909393993302c72	4	2017-08-27 21:11:05.021388-04	8
192	Casa fresca	0			28/08/2017	04:57:20		3b55ca72969c6e55	3	2017-08-28 04:59:13.252912-04	11
193	s6lambare	1	-25.341261	-57.5988573	28/08/2017	05:18:59		c2eccaaf1c2f279b	4	2017-08-28 05:19:08.692694-04	19
194	Stock itagua	1	-25.3923986	-57.354141	28/08/2017	05:31:35		1aeb37366085a4ed		2017-08-28 05:31:52.303237-04	15
195	Casa rica lambare	1			28/08/2017	05:57:44		92e21d107142e0d4	4	2017-08-28 05:58:12.29549-04	4
196	Real capiata	1	-25.3495914	-57.4479814	28/08/2017	06:47:29		8c55f8380f178cd7	7	2017-08-28 06:47:54.527544-04	6
197	Citymarket fama	1	-25.2902477	-57.5403723	28/08/2017	08:16:51		6572235f9dcc62d6		2017-08-28 08:16:53.382474-04	16
198	s6lambare	0	-25.3409058	-57.5988352	28/08/2017	10:27:03		c2eccaaf1c2f279b	4	2017-08-28 10:27:09.740841-04	19
199	Stock itagua	0	-25.3919496	-57.3543176	28/08/2017	10:44:01		1aeb37366085a4ed		2017-08-28 10:44:32.095998-04	15
200	Citymarket fama	0	-25.291469	-57.5394346	28/08/2017	10:56:50		6572235f9dcc62d6		2017-08-28 10:57:08.826015-04	16
201	Citymarket palma loma	1	-25.2776626	-57.513986	28/08/2017	11:11:22		6572235f9dcc62d6		2017-08-28 11:11:26.67908-04	16
202	Citymarket palma loma	0	-25.2776626	-57.513986	28/08/2017	11:56:49		6572235f9dcc62d6		2017-08-28 11:57:12.399402-04	16
203	real san vicente	0			28/08/2017	12:36:13		1909393993302c72	4	2017-08-28 12:36:17.660332-04	8
204	Citymarket nanawa	1	-25.2126857	-57.5308081	28/08/2017	13:01:33		6572235f9dcc62d6		2017-08-28 13:01:54.803547-04	16
205	Casa fresca	1			28/08/2017	13:03:03		3b55ca72969c6e55	3	2017-08-28 13:04:43.219429-04	11
206	Citymarket nanawa	0	-25.2143663	-57.5332301	28/08/2017	14:03:54		6572235f9dcc62d6		2017-08-28 14:04:14.126365-04	16
207	Citymarket caballero	1	-25.2209818	-57.5167851	28/08/2017	14:10:39		6572235f9dcc62d6		2017-08-28 14:10:42.241818-04	16
208	s6lambare	1	-25.3412818	-57.5990506	28/08/2017	15:34:36		c2eccaaf1c2f279b	4	2017-08-28 15:34:58.658392-04	19
209	Stock itagua	1	-25.3916668	-57.3542355	28/08/2017	16:54:26		1aeb37366085a4ed		2017-08-28 16:54:41.724306-04	15
210	Real capiata	0	-25.3500331	-57.4480211	28/08/2017	17:09:58		8c55f8380f178cd7	7	2017-08-28 17:10:01.431213-04	6
211	Citymarket caballero	0	-25.2209818	-57.5167851	28/08/2017	17:10:48		6572235f9dcc62d6		2017-08-28 17:11:05.04802-04	16
212	Casa rica lambare	0	-25.3420967	-57.6069558	28/08/2017	17:20:14		92e21d107142e0d4	4	2017-08-28 17:20:23.243811-04	4
213	real san vicente	1			28/08/2017	21:12:27		1909393993302c72	4	2017-08-28 21:12:37.138906-04	8
214	s6lambare	0	-25.3407816	-57.5996896	28/08/2017	21:37:52		c2eccaaf1c2f279b	4	2017-08-28 21:38:27.586257-04	19
215	s6lambare	1	-25.3414679	-57.5989458	29/08/2017	05:03:22		c2eccaaf1c2f279b	4	2017-08-29 05:03:57.581561-04	19
216	Real capiata	1	-25.3491239	-57.4482089	29/08/2017	05:30:49		8c55f8380f178cd7	7	2017-08-29 05:31:09.645007-04	6
217	Casa rica lambare	1			29/08/2017	05:48:14		92e21d107142e0d4	4	2017-08-29 05:48:20.329007-04	4
218	real san vicente	0			29/08/2017	06:00:20		1909393993302c72	4	2017-08-29 06:00:21.826519-04	8
219	Stock itagua	0	-25.3923856	-57.35413	29/08/2017	06:20:55		1aeb37366085a4ed		2017-08-29 06:21:14.634208-04	15
220	Citymarket caballero	1	-25.2209818	-57.5167851	29/08/2017	07:37:58		6572235f9dcc62d6		2017-08-29 07:38:04.840468-04	16
221	Citymarket caballero	0	-25.2209818	-57.5167851	29/08/2017	08:59:17		6572235f9dcc62d6		2017-08-29 08:59:32.855261-04	16
222	Citymarket San José	1	-25.1464669	-57.4752121	29/08/2017	09:18:14		6572235f9dcc62d6		2017-08-29 09:18:40.909664-04	16
223	Citymarket san Jose	0	-25.1468911	-57.4833864	29/08/2017	10:53:26		6572235f9dcc62d6		2017-08-29 10:53:49.783956-04	16
224	real san vicente	1			29/08/2017	11:02:34		1909393993302c72	4	2017-08-29 11:02:56.215722-04	8
225	Citymarket nanawa	1	-25.2067066	-57.5344049	29/08/2017	11:09:52		6572235f9dcc62d6		2017-08-29 11:10:15.852332-04	16
226	Real capiata	0	-25.3495914	-57.4479814	29/08/2017	11:10:30		8c55f8380f178cd7	7	2017-08-29 11:10:59.34274-04	6
227	City boqueron	0	-25.305971	-57.5189935	29/08/2017	12:00:22		bebf35b54e1f8493		2017-08-29 12:00:23.296896-04	14
228	Citymarket nanawa	0	-25.2067066	-57.5344049	29/08/2017	12:23:59		6572235f9dcc62d6		2017-08-29 12:24:28.611471-04	16
229	Citymarket zeballos	1	-25.2310636	-57.5587445	29/08/2017	13:49:51		6572235f9dcc62d6		2017-08-29 13:50:06.42585-04	16
230	s6lambare	0	-25.3406468	-57.5998751	29/08/2017	14:21:57		c2eccaaf1c2f279b	4	2017-08-29 14:22:30.373827-04	19
231	Casa rica lambare	0			29/08/2017	14:32:32		92e21d107142e0d4	4	2017-08-29 14:32:57.872601-04	4
232	Real capiata	1	-25.3495755	-57.447999	29/08/2017	16:52:39		8c55f8380f178cd7	7	2017-08-29 16:53:09.104712-04	6
233	real san vicente	0			29/08/2017	17:15:25		1909393993302c72	4	2017-08-29 17:15:46.364275-04	8
234	Citymarket zeballos	0	-25.2310636	-57.5587445	29/08/2017	17:21:46		6572235f9dcc62d6		2017-08-29 17:22:05.156148-04	16
235	Stock itagua	1	-25.3924061	-57.3544611	29/08/2017	17:55:49		1aeb37366085a4ed		2017-08-29 17:56:15.121557-04	15
236	real san vicente	1			29/08/2017	21:08:56		1909393993302c72	4	2017-08-29 21:09:24.863432-04	8
237	Real capiata	0	-25.3500331	-57.4480211	29/08/2017	21:15:59		8c55f8380f178cd7	7	2017-08-29 21:16:25.259974-04	6
238	Citymarket zeballos	1	-25.2310636	-57.5587445	30/08/2017	07:59:05		6572235f9dcc62d6		2017-08-30 07:59:22.193945-04	16
239	Casa rica lambare	1			30/08/2017	08:04:15		92e21d107142e0d4	4	2017-08-30 08:04:21.741077-04	4
240	Citymarket zeballos	0	-25.2310636	-57.5587445	30/08/2017	09:30:05		6572235f9dcc62d6		2017-08-30 09:30:22.539208-04	16
241	Citymarket República de colombia	1	-25.1896974	-57.5208454	30/08/2017	11:02:39		6572235f9dcc62d6		2017-08-30 11:03:07.838683-04	16
242	Citymarket República de colombia	0	-25.1896974	-57.5208454	30/08/2017	11:23:29		6572235f9dcc62d6		2017-08-30 11:23:46.509845-04	16
243	Citymarket nanawa	1	-25.2067066	-57.5344049	30/08/2017	11:30:49		6572235f9dcc62d6		2017-08-30 11:31:05.992938-04	16
244	Citymarket nanawa	0	-25.2067066	-57.5344049	30/08/2017	13:29:44		6572235f9dcc62d6		2017-08-30 13:30:06.124719-04	16
245	Citymarket caballero	1	-25.2210098	-57.5167667	30/08/2017	15:14:08		6572235f9dcc62d6		2017-08-30 15:14:26.070423-04	16
246	Citymarket caballero	0	-25.2210098	-57.5167667	30/08/2017	16:36:13		6572235f9dcc62d6		2017-08-30 16:36:16.624744-04	16
247	Casa riaca lambare	0	-25.3396363	-57.597928	30/08/2017	19:59:21		92e21d107142e0d4	4	2017-08-30 19:59:27.416864-04	4
248	real san vicente	0			31/08/2017	05:14:01		1909393993302c72	4	2017-08-31 05:14:29.248914-04	8
249	s6lambare	1	-25.3411873	-57.5987246	31/08/2017	05:15:49		c2eccaaf1c2f279b	4	2017-08-31 05:16:21.36468-04	19
250	Real capiata	1	-25.3496081	-57.4479711	31/08/2017	05:22:29		8c55f8380f178cd7	7	2017-08-31 05:22:55.455104-04	6
251	Stock itagua	0	-25.3923739	-57.3542073	31/08/2017	05:27:36		1aeb37366085a4ed		2017-08-31 05:27:54.851336-04	15
252	Citymarket fama	1	-25.2914558	-57.5394502	31/08/2017	08:09:47		6572235f9dcc62d6		2017-08-31 08:09:59.012616-04	16
253	Citymarket fama	0	-25.2914558	-57.5394502	31/08/2017	09:08:38		6572235f9dcc62d6		2017-08-31 09:08:55.8553-04	16
254	Citymarket palma loma	1	-25.277661	-57.5139825	31/08/2017	09:30:01		6572235f9dcc62d6		2017-08-31 09:30:13.293719-04	16
255	Citymarket palma loma	0	-25.277661	-57.5139825	31/08/2017	10:10:49		6572235f9dcc62d6		2017-08-31 10:11:06.811226-04	16
256	Citymarket arrua	1	-25.2826758	-57.5028807	31/08/2017	10:17:11		6572235f9dcc62d6		2017-08-31 10:17:30.200113-04	16
257	s6lambare	0	-25.3409034	-57.5998309	31/08/2017	10:50:13		c2eccaaf1c2f279b	4	2017-08-31 10:50:22.452901-04	19
258	Stock itagua	1	-25.3922425	-57.3543397	31/08/2017	10:59:05		1aeb37366085a4ed		2017-08-31 10:59:38.04745-04	15
259	real san vicente	1			31/08/2017	11:04:43		1909393993302c72	4	2017-08-31 11:05:05.557793-04	8
260	Real capiata	0	-25.3496229	-57.4478996	31/08/2017	11:04:43		8c55f8380f178cd7	7	2017-08-31 11:05:09.902105-04	6
261	Citymarket arrua	0	-25.2826758	-57.5028807	31/08/2017	11:09:03		6572235f9dcc62d6		2017-08-31 11:09:17.170209-04	16
262	Casa fresca	0			31/08/2017	11:47:02		3b55ca72969c6e55	3	2017-08-31 11:48:43.399742-04	11
263	Citymarket zeballos	1	-25.2310636	-57.5587445	31/08/2017	14:21:22		6572235f9dcc62d6		2017-08-31 14:21:34.403745-04	16
264	real san vicente	0			31/08/2017	16:37:09		1909393993302c72	4	2017-08-31 16:37:35.913478-04	8
265	s6lambare	1			31/08/2017	17:05:10		c2eccaaf1c2f279b	4	2017-08-31 17:05:46.734744-04	19
266	Real capiata	1	-25.3502243	-57.4479217	31/08/2017	17:09:18		8c55f8380f178cd7	7	2017-08-31 17:09:24.19461-04	6
267	Citymarket zeballos	0	-25.2310636	-57.5587445	31/08/2017	17:20:49		6572235f9dcc62d6		2017-08-31 17:21:01.510561-04	16
268	Stock itagua	0			31/08/2017	21:03:15		1aeb37366085a4ed		2017-08-31 21:03:44.17165-04	15
269	real san vicente	1			31/08/2017	21:07:54		1909393993302c72	4	2017-08-31 21:08:16.535318-04	8
270	s6lambare	0	-25.3407939	-57.5997202	31/08/2017	21:39:31		c2eccaaf1c2f279b	4	2017-08-31 21:39:45.693847-04	19
271	Casa fresca	1			01/09/2017	04:49:54		3b55ca72969c6e55	3	2017-09-01 04:51:50.135139-04	11
272	Stock itagua	1			01/09/2017	04:54:29		1aeb37366085a4ed		2017-09-01 04:54:55.124712-04	15
273	s6lambare	1	-25.3412805	-57.5990402	01/09/2017	05:20:09		c2eccaaf1c2f279b	4	2017-09-01 05:20:43.319778-04	19
274	Casa rica lambare	1			01/09/2017	06:02:10		92e21d107142e0d4	4	2017-09-01 06:02:31.102531-04	4
275	Citymarket zeballos	1	-25.2310636	-57.5587445	01/09/2017	07:36:53		6572235f9dcc62d6		2017-09-01 07:37:02.736778-04	16
276	Citymarket zeballos	0	-25.2310636	-57.5587445	01/09/2017	08:28:57		6572235f9dcc62d6		2017-09-01 08:29:21.371984-04	16
277	Citymarket Villa hayes	1	-25.090337	-57.533211	01/09/2017	10:17:26		6572235f9dcc62d6		2017-09-01 10:17:38.208228-04	16
278	real san vicente	0			01/09/2017	10:57:44		1909393993302c72	4	2017-09-01 10:58:05.41138-04	8
279	Casa rica lambare	0			01/09/2017	11:18:53		92e21d107142e0d4	4	2017-09-01 11:18:55.305862-04	4
280	Citymarket Villa hayes	0	-25.090337	-57.533211	01/09/2017	12:14:30		6572235f9dcc62d6		2017-09-01 12:14:54.448582-04	16
281	Citymarket nanawa	1	-25.2066294	-57.5342479	01/09/2017	12:36:16		6572235f9dcc62d6		2017-09-01 12:36:26.848701-04	16
282	Citymarket nanawa	0	-25.2066294	-57.5342479	01/09/2017	13:04:06		6572235f9dcc62d6		2017-09-01 13:04:27.519852-04	16
283	s6lambare	0	-25.3407031	-57.599853	01/09/2017	13:27:20		c2eccaaf1c2f279b	4	2017-09-01 13:27:38.554162-04	19
284	Citymarket caballero	1	-25.221035	-57.5167576	01/09/2017	13:27:57		6572235f9dcc62d6		2017-09-01 13:28:08.242769-04	16
285	Citymarket caballero	0	-25.221035	-57.5167576	01/09/2017	13:30:03		6572235f9dcc62d6		2017-09-01 13:30:17.010248-04	16
286	Stock itagua	0			01/09/2017	13:48:00		1aeb37366085a4ed		2017-09-01 13:48:11.486681-04	15
287	Real capiata	0	-25.3496221	-57.4480211	01/09/2017	15:04:25		8c55f8380f178cd7	7	2017-09-01 15:04:49.065405-04	6
288	Oficina comercial	1	-25.2250395	-57.5345025	01/09/2017	15:29:37		6572235f9dcc62d6		2017-09-01 15:29:49.059708-04	16
289	Casa rica lambare	1			01/09/2017	16:04:16		92e21d107142e0d4	4	2017-09-01 16:04:39.43644-04	4
290	real san vicente	1			01/09/2017	20:06:20		1909393993302c72	4	2017-09-01 20:06:48.114443-04	8
291	Casa rica lambare	0			01/09/2017	21:46:03		92e21d107142e0d4	4	2017-09-01 21:46:28.449663-04	4
292	real san vicente	0			02/09/2017	05:11:18		1909393993302c72	4	2017-09-02 05:11:43.718503-04	8
293	Real capiata	1	-25.37566564	-57.43403216	02/09/2017	05:21:34		8c55f8380f178cd7	7	2017-09-02 05:21:36.420662-04	6
294	Casa rica lambare	1			02/09/2017	06:04:49		92e21d107142e0d4	4	2017-09-02 06:05:15.099074-04	4
295	s6lambare	1	-25.341042	-57.5998087	02/09/2017	06:05:39		c2eccaaf1c2f279b	4	2017-09-02 06:06:05.513003-04	19
296	Citymarket zeballos	0			02/09/2017	08:31:50		6572235f9dcc62d6		2017-09-02 08:31:58.815424-04	16
297	Real capiata	0	-25.37566564	-57.43403216	02/09/2017	10:46:11		8c55f8380f178cd7	7	2017-09-02 10:46:13.034375-04	6
298	s6lambare	0	-25.3406305	-57.5998087	02/09/2017	11:06:24		c2eccaaf1c2f279b	4	2017-09-02 11:07:01.765051-04	19
299	Stock itagua	1			02/09/2017	11:10:55		1aeb37366085a4ed		2017-09-02 11:11:03.150674-04	15
300	real san vicente	1			02/09/2017	11:18:29		1909393993302c72	4	2017-09-02 11:18:38.54262-04	8
301	Citymarket República de colombia	1			02/09/2017	11:50:14		6572235f9dcc62d6		2017-09-02 11:50:27.973155-04	16
305	Mi domicilio	0	-25.3623246	-57.5695062	06/09/2017	12:15:39		387ee484de224877	4	2017-09-06 12:20:08.006851-04	7
306	Real	0	-25.3625227	-57.5689214	06/09/2017	12:17:17		387ee484de224877	4	2017-09-06 12:21:49.522013-04	7
307	s6lambare	0	-25.4623448	-57.5123908	06/09/2017	13:27:03		c2eccaaf1c2f279b	4	2017-09-06 13:27:13.527347-04	19
308	Stock itagua	0			06/09/2017	16:57:52		1aeb37366085a4ed		2017-09-06 16:58:06.041742-04	15
309	Real san vicente	0	-25.3092193	-57.618131	06/09/2017	17:07:04		387ee484de224877	4	2017-09-06 17:11:44.111659-04	7
310	Stock itagua	1	-25.3922247	-57.3541852	06/09/2017	21:03:23		1aeb37366085a4ed		2017-09-06 21:03:46.791357-04	15
311	Real San Vicente	1	-25.3076854	-57.617456	06/09/2017	21:16:19		387ee484de224877	4	2017-09-06 21:20:35.140577-04	7
312	s6lambare	0	-25.3414256	-57.5988573	07/09/2017	05:10:24		c2eccaaf1c2f279b	4	2017-09-07 05:10:42.325465-04	19
313	Real capiata	0	-25.35847091	-57.43659793	07/09/2017	05:30:21		8c55f8380f178cd7	7	2017-09-07 05:30:34.580278-04	6
314	real san vicente	0			07/09/2017	05:41:54		1909393993302c72	4	2017-09-07 05:42:18.413597-04	8
315	Stock villa elisa	0			07/09/2017	06:02:28		92e21d107142e0d4	4	2017-09-07 06:02:48.187954-04	4
316	Real San Vicente	0	-25.3087752	-57.618464	07/09/2017	07:34:32		387ee484de224877	4	2017-09-07 07:38:54.775777-04	7
317	Citymarket caballero	0	-25.2212094	-57.5168734	07/09/2017	08:02:18		6572235f9dcc62d6		2017-09-07 08:02:28.868402-04	16
318	Citymarket caballero	1	-25.2212094	-57.5168734	07/09/2017	09:24:46		6572235f9dcc62d6		2017-09-07 09:25:01.567648-04	16
319	Citymarket san Jose	0	-25.1464764	-57.4751937	07/09/2017	09:42:47		6572235f9dcc62d6		2017-09-07 09:43:10.710917-04	16
320	s6lambare	1	-25.3407226	-57.5997829	07/09/2017	10:39:09		c2eccaaf1c2f279b	4	2017-09-07 10:39:28.605509-04	19
321	real san vicente	1			07/09/2017	11:00:49		1909393993302c72	4	2017-09-07 11:01:11.140277-04	8
322	Real capiata	1	-25.35847091	-57.43659793	07/09/2017	11:48:03		8c55f8380f178cd7	7	2017-09-07 11:48:25.724919-04	6
323	Citymarket palma loma	0	-25.2776563	-57.5139668	07/09/2017	12:40:55		6572235f9dcc62d6		2017-09-07 12:41:10.831354-04	16
324	Citymarket palma loma	1	-25.2776563	-57.5139668	07/09/2017	13:05:37		6572235f9dcc62d6		2017-09-07 13:05:53.832262-04	16
325	Citymarket zeballos	1	-25.2310782	-57.5587482	07/09/2017	16:16:36		6572235f9dcc62d6		2017-09-07 16:16:51.767015-04	16
326	Real capiata	0			07/09/2017	16:37:02		8c55f8380f178cd7	7	2017-09-07 16:37:31.102319-04	6
327	s6lambare	0	-25.3409578	-57.5988794	07/09/2017	16:49:35		c2eccaaf1c2f279b	4	2017-09-07 16:49:46.517509-04	19
328	real san vicente	0			07/09/2017	16:57:53		1909393993302c72	4	2017-09-07 16:58:13.40055-04	8
329	Stock villa elisa	1			07/09/2017	17:13:06		92e21d107142e0d4	4	2017-09-07 17:13:16.265162-04	4
330	Real San Vicente	1	-25.307745	-57.6174892	07/09/2017	17:30:47		387ee484de224877	4	2017-09-07 17:31:10.556275-04	7
331	real san vicente	1			07/09/2017	21:10:42		1909393993302c72	4	2017-09-07 21:11:03.258723-04	8
332	Real capiata	1	-25.35847091	-57.43659793	07/09/2017	21:17:13		8c55f8380f178cd7	7	2017-09-07 21:17:36.031002-04	6
333	s6lambare	1	-25.3403238	-57.5995654	07/09/2017	21:34:44		c2eccaaf1c2f279b	4	2017-09-07 21:35:04.748525-04	19
334	s6lambare	0	-25.3409481	-57.5989237	08/09/2017	05:14:37		c2eccaaf1c2f279b	4	2017-09-08 05:14:49.57992-04	19
335	Stock itagua	0	-25.3920523	-57.3543176	08/09/2017	05:15:22		1aeb37366085a4ed		2017-09-08 05:15:53.278833-04	15
336	Real capiata	0	-25.34998808	-57.44830489	08/09/2017	05:20:54		8c55f8380f178cd7	7	2017-09-08 05:21:02.216573-04	6
337	real san vicente	0			08/09/2017	05:24:04		1909393993302c72	4	2017-09-08 05:24:31.955904-04	8
338	Stock villa elisa	0			08/09/2017	05:42:56		92e21d107142e0d4	4	2017-09-08 05:43:22.981209-04	4
339	Real San Vicente	0	-25.3082325	-57.617799	08/09/2017	06:14:16		387ee484de224877	4	2017-09-08 06:14:16.339157-04	7
340	Citymarket zeballos	0	-25.2310782	-57.5587482	08/09/2017	07:07:14		6572235f9dcc62d6		2017-09-08 07:07:36.075856-04	16
341	City 2 san lorenzo	0			08/09/2017	10:06:07		bebf35b54e1f8493		2017-09-08 10:06:24.348029-04	14
342	SStock itagua	1	-25.3923293	-57.3541748	08/09/2017	10:37:34		1aeb37366085a4ed		2017-09-08 10:37:45.239846-04	15
343	City2 san lorenzo	1			08/09/2017	10:59:32		bebf35b54e1f8493		2017-09-08 11:00:00.039818-04	14
344	City brasil	0			08/09/2017	11:44:05		bebf35b54e1f8493		2017-09-08 11:44:35.959779-04	14
345	City brasil	1			08/09/2017	12:45:03		bebf35b54e1f8493		2017-09-08 12:45:31.56083-04	14
346	Citymarket caballero	0	-25.2212094	-57.5168734	08/09/2017	13:01:26		6572235f9dcc62d6		2017-09-08 13:01:39.041313-04	16
347	s6lambare	1	-25.3410795	-57.6007159	08/09/2017	14:09:59		c2eccaaf1c2f279b	4	2017-09-08 14:10:23.485106-04	19
348	Citymarket caballero	1	-25.2212094	-57.5168734	08/09/2017	14:16:30		6572235f9dcc62d6		2017-09-08 14:16:40.931814-04	16
349	real san vicente	1			08/09/2017	14:21:11		1909393993302c72	4	2017-09-08 14:21:35.843427-04	8
350	Citymarket nanawa	1	-25.2066724	-57.5341699	08/09/2017	14:55:11		6572235f9dcc62d6		2017-09-08 14:55:27.982018-04	16
351	Real capiata	1	-25.34998808	-57.44830489	08/09/2017	15:08:38		8c55f8380f178cd7	7	2017-09-08 15:09:02.537874-04	6
352	Real san Vicente	1	-25.3080307	-57.6168917	08/09/2017	15:21:15		387ee484de224877	4	2017-09-08 15:21:40.889839-04	7
353	Stock villa elisa	1			08/09/2017	16:17:05		92e21d107142e0d4	4	2017-09-08 16:17:32.432369-04	4
354	Stock itagua	0	-25.3923822	-57.3541903	08/09/2017	16:59:02		1aeb37366085a4ed		2017-09-08 16:59:17.411698-04	15
355	Citymarket zeballos	1	-25.2353357	-57.5590045	08/09/2017	18:01:02		6572235f9dcc62d6		2017-09-08 18:01:18.157631-04	16
356	Stock itagua	1	-25.3925697	-57.3542514	08/09/2017	21:34:19		1aeb37366085a4ed		2017-09-08 21:34:49.258501-04	15
357	s6lambare	0	-25.340976	-57.5998751	09/09/2017	05:14:25		c2eccaaf1c2f279b	4	2017-09-09 05:14:40.023694-04	19
358	real san vicente	0			09/09/2017	05:28:15		1909393993302c72	4	2017-09-09 05:28:18.265559-04	8
359	Real San Vicente	0	-25.3081231	-57.6178986	09/09/2017	05:41:16		387ee484de224877	4	2017-09-09 05:41:20.317773-04	7
360	Stock villa elisa	0			09/09/2017	05:47:49		92e21d107142e0d4	4	2017-09-09 05:48:15.21832-04	4
361	Citymarket zeballos	0	-25.2310782	-57.5587482	09/09/2017	08:12:49		6572235f9dcc62d6		2017-09-09 08:12:58.478513-04	16
362	City2 san lorenzo	0			09/09/2017	09:07:30		bebf35b54e1f8493		2017-09-09 09:07:54.27841-04	14
363	City2 san lorenzo	1			09/09/2017	11:08:00		bebf35b54e1f8493		2017-09-09 11:08:26.50975-04	14
364	Real capiata	1	-25.37572622	-57.43421417	09/09/2017	11:10:18		8c55f8380f178cd7	7	2017-09-09 11:10:23.857751-04	6
365	Stock villa elisa	1			09/09/2017	11:21:17		92e21d107142e0d4	4	2017-09-09 11:21:28.221989-04	4
366	s6lambare	1	-25.3403433	-57.5994769	09/09/2017	11:28:10		c2eccaaf1c2f279b	4	2017-09-09 11:28:31.267546-04	19
367	real san vicente	1			09/09/2017	11:33:03		1909393993302c72	4	2017-09-09 11:33:25.941554-04	8
368	Real San Vicente	1	-25.3082527	-57.6169581	09/09/2017	11:37:22		387ee484de224877	4	2017-09-09 11:37:46.615381-04	7
369	s6lambare	0	-25.3402421	-57.5983927	09/09/2017	14:58:26		c2eccaaf1c2f279b	4	2017-09-09 14:59:00.482019-04	19
370	Real capiata	0	-25.37572622	-57.43421417	09/09/2017	15:44:35		8c55f8380f178cd7	7	2017-09-09 15:45:00.754166-04	6
371	Real San Vicente	0	-25.3085133	-57.6186511	09/09/2017	16:05:36		387ee484de224877	4	2017-09-09 16:05:58.274066-04	7
372	Citymarket zeballos	1	-25.2310782	-57.5587482	09/09/2017	17:06:58		6572235f9dcc62d6		2017-09-09 17:07:14.357609-04	16
373	real san vicente	0			09/09/2017	17:41:31		1909393993302c72	4	2017-09-09 17:41:37.140118-04	8
374	Stock villa elisa	0			09/09/2017	17:47:48		92e21d107142e0d4	4	2017-09-09 17:48:09.756319-04	4
375	Real capiata	1	-25.37572622	-57.43421417	09/09/2017	20:01:01		8c55f8380f178cd7	7	2017-09-09 20:01:25.545271-04	6
376	Real san Vicente	1	-25.3080774	-57.6173343	09/09/2017	20:07:59		387ee484de224877	4	2017-09-09 20:08:22.912382-04	7
377	Stock itagua	1			09/09/2017	20:08:10		1aeb37366085a4ed		2017-09-09 20:08:41.780059-04	15
378	real san vicente	1			09/09/2017	21:41:34		1909393993302c72	4	2017-09-09 21:42:00.043965-04	8
379	Stock itagua	0			10/09/2017	05:10:03		1aeb37366085a4ed		2017-09-10 05:10:29.174365-04	15
380	Real capiata	0	-25.37568936	-57.43416271	10/09/2017	05:27:31		8c55f8380f178cd7	7	2017-09-10 05:27:35.312603-04	6
381	Real San Vicente	0	-25.308399	-57.6171351	10/09/2017	05:31:52		387ee484de224877	4	2017-09-10 05:31:56.566475-04	7
382	real san vicente	0			10/09/2017	05:37:10		1909393993302c72	4	2017-09-10 05:37:25.896774-04	8
383	Stock itagua	1	-25.3928065	-57.3542956	10/09/2017	12:18:10		1aeb37366085a4ed		2017-09-10 12:18:15.410196-04	15
384	Stock villa elisa	0			10/09/2017	13:00:05		92e21d107142e0d4	4	2017-09-10 13:00:29.945811-04	4
385	real san vicente	1			10/09/2017	13:23:18		1909393993302c72	4	2017-09-10 13:23:44.319287-04	8
386	Real san vicente	1	-25.3082127	-57.6186618	10/09/2017	13:27:09		387ee484de224877	4	2017-09-10 13:27:31.59094-04	7
387	Stock itagua	0			11/09/2017	04:51:22		1aeb37366085a4ed		2017-09-11 04:51:41.158701-04	15
388	Stock villa elisa	0			11/09/2017	05:49:18		92e21d107142e0d4	4	2017-09-11 05:49:47.541736-04	4
389	Citymarket zeballos	0	-25.2310782	-57.5587482	11/09/2017	07:53:31		6572235f9dcc62d6		2017-09-11 07:53:46.261141-04	16
390	Citymarket zeballos	1	-25.2310782	-57.5587482	11/09/2017	09:53:52		6572235f9dcc62d6		2017-09-11 09:54:13.477079-04	16
391	real san vicente	1			11/09/2017	11:19:14		1909393993302c72	4	2017-09-11 11:19:40.205738-04	8
392	Stock itagua	0			11/09/2017	11:20:27		1aeb37366085a4ed		2017-09-11 11:20:48.56094-04	15
393	Oficina comercial	0	-25.2250743	-57.5345085	11/09/2017	12:00:58		6572235f9dcc62d6		2017-09-11 12:01:15.369921-04	16
394	Stock villa elisa	1			11/09/2017	16:31:47		92e21d107142e0d4	4	2017-09-11 16:32:01.544828-04	4
395	real san vicente	0			11/09/2017	16:32:15		1909393993302c72	4	2017-09-11 16:32:37.005152-04	8
396	real san vicente	1			11/09/2017	21:11:29		1909393993302c72	4	2017-09-11 21:11:49.463224-04	8
397	s6lambare	0			12/09/2017	05:18:19		c2eccaaf1c2f279b	4	2017-09-12 05:18:53.206155-04	19
398	real san vicente	0			12/09/2017	05:34:36		1909393993302c72	4	2017-09-12 05:34:52.698285-04	8
399	Stock villa elisa	0			12/09/2017	05:51:51		92e21d107142e0d4	4	2017-09-12 05:52:12.049607-04	4
400	Real San Vicente	0	-25.3084429	-57.6185736	12/09/2017	05:53:11		387ee484de224877	4	2017-09-12 05:53:23.928271-04	7
401	Citymarket zeballos	0	-25.2310782	-57.5587482	12/09/2017	08:22:37		6572235f9dcc62d6		2017-09-12 08:23:04.713418-04	16
402	Real san Vicente	1	-25.3084429	-57.6185736	12/09/2017	11:07:51		387ee484de224877	4	2017-09-12 11:08:18.88552-04	7
403	real san vicente	1			12/09/2017	14:38:31		1909393993302c72	4	2017-09-12 14:38:51.811549-04	8
404	Citymarket caballero	0	-25.220071	-57.5224281	12/09/2017	14:48:42		6572235f9dcc62d6		2017-09-12 14:48:53.768788-04	16
405	Stock villa elisa	1			12/09/2017	16:14:18		92e21d107142e0d4	4	2017-09-12 16:14:41.9258-04	4
406	s6lambare	1	-25.3408471	-57.599853	12/09/2017	16:23:16		c2eccaaf1c2f279b	4	2017-09-12 16:23:52.896619-04	19
407	Real San  vicente	0	-25.3083959	-57.6175003	12/09/2017	17:50:48		387ee484de224877	4	2017-09-12 17:50:51.747077-04	7
408	Citymarket caballero	1	-25.220136	-57.5224834	12/09/2017	18:27:25		6572235f9dcc62d6		2017-09-12 18:27:38.07483-04	16
409	Real San Vicente	1	-25.3077038	-57.6174892	12/09/2017	21:28:59		387ee484de224877	4	2017-09-12 21:29:28.634862-04	7
410	Citymarket caballero	0	-25.2198867	-57.5218864	13/09/2017	08:03:57		6572235f9dcc62d6		2017-09-13 08:04:08.407073-04	16
411	Citymarket caballero	1	-25.2201175	-57.5222402	13/09/2017	10:16:10		6572235f9dcc62d6		2017-09-13 10:16:23.065065-04	16
412	Stock itagua	0	-25.3923293	-57.3541748	13/09/2017	10:41:28		1aeb37366085a4ed		2017-09-13 10:41:39.931752-04	15
413	Citymarket villa hayes	0	-25.0753822	-57.5602542	13/09/2017	10:54:15		6572235f9dcc62d6		2017-09-13 10:54:33.88806-04	16
414	Citymarket Villa hayes	1	-25.0914091	-57.5271996	13/09/2017	13:06:19		6572235f9dcc62d6		2017-09-13 13:06:37.506729-04	16
421	Citymarket nanawa	0	-25.2108009	-57.5332294	13/09/2017	14:30:07		6572235f9dcc62d6		2017-09-13 14:30:19.537788-04	16
429	Citymarket nanawa	1	-25.2106873	-57.5336053	13/09/2017	17:32:47		6572235f9dcc62d6		2017-09-13 17:33:04.770507-04	16
430	Stock itagua	1	-25.3923288	-57.3542735	13/09/2017	21:03:21		1aeb37366085a4ed		2017-09-13 21:03:49.288982-04	15
431	Stock itagua	0	-25.3922808	-57.3541631	14/09/2017	05:13:28		1aeb37366085a4ed		2017-09-14 05:13:33.963554-04	15
432	1620	0	-25.3409781	-57.5998419	14/09/2017	05:28:40		c2eccaaf1c2f279b	4	2017-09-14 05:28:54.246929-04	19
433	real san vicente	0			14/09/2017	05:38:15		1909393993302c72	4	2017-09-14 05:38:17.092008-04	8
434	Stock villa elisa	0			14/09/2017	05:39:15		92e21d107142e0d4	4	2017-09-14 05:39:36.813371-04	4
435	Citymarket caballero	0	-25.2199724	-57.5221517	14/09/2017	08:07:19		6572235f9dcc62d6		2017-09-14 08:07:29.007544-04	16
436	Citymarket caballero	1	-25.2197416	-57.521798	14/09/2017	08:59:37		6572235f9dcc62d6		2017-09-14 08:59:39.555861-04	16
437	Citymarket nanawa	0	-25.2106777	-57.5336146	14/09/2017	09:05:23		6572235f9dcc62d6		2017-09-14 09:05:34.539837-04	16
438	Citymarket nanawa	1	-25.2106873	-57.5336053	14/09/2017	09:59:43		6572235f9dcc62d6		2017-09-14 10:00:02.936222-04	16
439	Citymarket República de colombia	0	-25.187526	-57.524418	14/09/2017	10:09:31		6572235f9dcc62d6		2017-09-14 10:09:44.393229-04	16
440	Stock itagua	1	-25.3923986	-57.3544721	14/09/2017	10:36:31		1aeb37366085a4ed		2017-09-14 10:36:51.59724-04	15
441	s6lambare	1	-25.3406759	-57.5997424	14/09/2017	10:36:58		c2eccaaf1c2f279b	4	2017-09-14 10:37:16.418097-04	19
442	Real capiata	1	-25.37574999	-57.43422888	14/09/2017	10:58:21		8c55f8380f178cd7	7	2017-09-14 10:58:35.182183-04	6
443	Casa fresca	0	-25.3281822	-57.5700198	14/09/2017	11:03:47		3b55ca72969c6e55	3	2017-09-14 11:05:34.943962-04	11
444	real san vicente	1			14/09/2017	11:14:54		1909393993302c72	4	2017-09-14 11:15:13.970179-04	8
445	Citymarket zeballos	0	-25.2310782	-57.5587482	14/09/2017	13:25:42		6572235f9dcc62d6		2017-09-14 13:25:53.187906-04	16
446	s6lambare	0	-25.341195	-57.5989237	14/09/2017	16:21:57		c2eccaaf1c2f279b	4	2017-09-14 16:22:14.66362-04	19
447	Real capiata	0	-25.3496081	-57.4479711	14/09/2017	16:48:24		8c55f8380f178cd7	7	2017-09-14 16:48:28.156664-04	6
448	real san vicente	0			14/09/2017	16:56:17		1909393993302c72	4	2017-09-14 16:56:20.10986-04	8
449	Stock itagua	0	-25.3924095	-57.3541852	14/09/2017	17:03:38		1aeb37366085a4ed		2017-09-14 17:04:02.249936-04	15
450	Citymarket zeballos	1	-25.2345155	-57.55577	14/09/2017	17:19:58		6572235f9dcc62d6		2017-09-14 17:20:08.89127-04	16
451	Citymarket zeballos	1	-25.2310846	-57.5587464	14/09/2017	17:20:10		6572235f9dcc62d6		2017-09-14 17:20:23.576645-04	16
452	Stock villa elisa	1			14/09/2017	17:58:13		92e21d107142e0d4	4	2017-09-14 17:58:38.235025-04	4
453	Real capiata	1	-25.37574999	-57.43422888	14/09/2017	21:07:16		8c55f8380f178cd7	7	2017-09-14 21:07:41.38321-04	6
454	real san vicente	1			14/09/2017	21:11:30		1909393993302c72	4	2017-09-14 21:11:56.612955-04	8
455	s6lambare	1	-25.3412174	-57.6012359	14/09/2017	21:37:49		c2eccaaf1c2f279b	4	2017-09-14 21:38:01.639894-04	19
456	Stock villa elisa	0			15/09/2017	05:26:59		92e21d107142e0d4	4	2017-09-15 05:27:26.085385-04	4
457	s6lambare	0	-25.3408514	-57.5997866	15/09/2017	05:38:30		c2eccaaf1c2f279b	4	2017-09-15 05:39:10.8069-04	19
458	Real San Vicente	0	-25.3083655	-57.6173343	15/09/2017	05:53:20		387ee484de224877	4	2017-09-15 05:53:47.826123-04	7
459	s6lambare	1			15/09/2017	10:48:44		c2eccaaf1c2f279b	4	2017-09-15 10:49:11.017783-04	19
460	Stock villa elisa	1			15/09/2017	11:12:52		92e21d107142e0d4	4	2017-09-15 11:13:16.418207-04	4
461	Planta MRA	0	-25.2333817	-57.5280995	15/09/2017	11:16:19		a549ef5d04a77a7b		2017-09-15 11:16:37.327325-04	23
462	real san vicente	0			15/09/2017	13:07:46		1909393993302c72	4	2017-09-15 13:08:14.063899-04	8
463	Real san Vicente	1	-25.3080276	-57.6172569	15/09/2017	14:35:27		387ee484de224877	4	2017-09-15 14:35:29.284937-04	7
464	pueblo lambare	0	-25.3348409	-57.6131075	15/09/2017	16:19:14		85c6d02a91bc38a0	4	2017-09-15 16:19:57.740082-04	21
465	s6lambare	0	-25.340665	-57.5996981	15/09/2017	16:40:10		c2eccaaf1c2f279b	4	2017-09-15 16:40:26.831389-04	19
466	Stock carretera	0			15/09/2017	16:42:53		a7a0045a8560766f	4	2017-09-15 16:43:21.195453-04	20
467	Real capiata	0	-25.35292909	-57.44362969	15/09/2017	17:09:29		8c55f8380f178cd7	7	2017-09-15 17:09:57.572061-04	6
468	Stock villa elisa	0			15/09/2017	18:01:59		92e21d107142e0d4	4	2017-09-15 18:02:19.059166-04	4
469	s6lambare	1			15/09/2017	19:57:15		c2eccaaf1c2f279b	4	2017-09-15 19:57:40.307502-04	19
470	pueblo lambare	1	-25.3347684	-57.6130633	15/09/2017	20:09:26		85c6d02a91bc38a0		2017-09-15 20:10:15.068389-04	21
471	real san vicente	1			15/09/2017	21:17:02		1909393993302c72	4	2017-09-15 21:17:20.082804-04	8
472	Real capiata	1			15/09/2017	21:27:22		8c55f8380f178cd7	7	2017-09-15 21:27:43.552387-04	6
473	Stock carretera	1			15/09/2017	21:36:15		a7a0045a8560766f	4	2017-09-15 21:36:43.815315-04	20
474	Real capiata	0	-25.37577375	-57.43417869	16/09/2017	05:22:53		8c55f8380f178cd7	7	2017-09-16 05:23:16.290515-04	6
475	real san vicente	0			16/09/2017	05:30:07		1909393993302c72	4	2017-09-16 05:30:33.86418-04	8
476	Stock villa elisa	1			16/09/2017	05:43:12		92e21d107142e0d4	4	2017-09-16 05:43:36.792659-04	4
477	pueblo lambare	0	-25.3348627	-57.6131961	16/09/2017	05:47:55		85c6d02a91bc38a0		2017-09-16 05:48:25.203867-04	21
478	Stock felix bogado	0			16/09/2017	05:54:12		966d0ceb772cb048	4	2017-09-16 05:54:22.616543-04	22
479	Stock carretera	0			16/09/2017	05:58:26		a7a0045a8560766f	4	2017-09-16 05:58:30.026646-04	20
480	Stock carretera	0			16/09/2017	06:02:04		a7a0045a8560766f	4	2017-09-16 06:02:31.881274-04	20
481	Citymarket zeballos	0	-25.2310846	-57.5587464	16/09/2017	07:52:17		6572235f9dcc62d6		2017-09-16 07:52:23.763253-04	16
482	s6lambare	0	-25.3410861	-57.5994437	16/09/2017	08:13:16		c2eccaaf1c2f279b	4	2017-09-16 08:13:52.919057-04	19
483	Stock villa elisa	1			16/09/2017	11:11:44		92e21d107142e0d4	4	2017-09-16 11:12:11.776792-04	4
484	pueblo lambare	1	-25.3347618	-57.6129526	16/09/2017	11:16:13		85c6d02a91bc38a0		2017-09-16 11:16:56.65399-04	21
485	Stock carretera	1			16/09/2017	11:21:08		a7a0045a8560766f	4	2017-09-16 11:21:31.836339-04	20
486	Stock itagua	1	-25.3918948	-57.3540969	16/09/2017	11:37:11		1aeb37366085a4ed		2017-09-16 11:37:18.947985-04	15
487	Real San Vicente	1	-25.3086732	-57.6176663	16/09/2017	11:39:06		387ee484de224877	4	2017-09-16 11:39:15.458622-04	7
488	Real capiata	1	-25.37577375	-57.43417869	16/09/2017	14:42:55		8c55f8380f178cd7	7	2017-09-16 14:43:23.388464-04	6
489	pueblo lambare	0	-25.3346779	-57.6126881	16/09/2017	15:58:03		85c6d02a91bc38a0		2017-09-16 15:58:51.775707-04	21
490	Stock itagua	0	-25.392415	-57.3542073	16/09/2017	17:01:24		1aeb37366085a4ed		2017-09-16 17:01:47.756269-04	15
491	Real san Vicente	0	-25.3083883	-57.6175114	16/09/2017	17:21:42		387ee484de224877	4	2017-09-16 17:21:48.832781-04	7
492	Stock villa elisa	0			16/09/2017	17:51:06		92e21d107142e0d4	4	2017-09-16 17:51:31.537223-04	4
493	s6lambare	1	-25.3398768	-57.5944764	16/09/2017	18:17:18		c2eccaaf1c2f279b	4	2017-09-16 18:17:48.820797-04	19
494	pueblo lambare	1	-25.3340679	-57.6133952	16/09/2017	20:05:41		85c6d02a91bc38a0		2017-09-16 20:06:33.304589-04	21
495	Stock villa elisa	1	-25.3677028	-57.5860882	16/09/2017	21:36:04		92e21d107142e0d4	4	2017-09-16 21:36:31.057886-04	4
496	Stock carretera	1			16/09/2017	21:37:30		a7a0045a8560766f	4	2017-09-16 21:37:40.767605-04	20
497	s6lambare	0	-25.3409687	-57.5989237	17/09/2017	05:19:18		c2eccaaf1c2f279b	4	2017-09-17 05:19:36.915467-04	19
498	Stock itagua	0			17/09/2017	05:21:20		1aeb37366085a4ed		2017-09-17 05:21:39.804452-04	15
499	Stock villa elisa	0			17/09/2017	05:42:15		92e21d107142e0d4	4	2017-09-17 05:42:37.928386-04	4
500	Casa fresca	0			17/09/2017	05:40:42		3b55ca72969c6e55	3	2017-09-17 05:43:00.253861-04	11
501	Real San Vicente	0	-25.3077179	-57.6175888	17/09/2017	05:48:20		387ee484de224877	4	2017-09-17 05:48:50.140203-04	7
502	pueblo lambare	0	-25.3348842	-57.6130744	17/09/2017	05:49:59		85c6d02a91bc38a0		2017-09-17 05:50:48.245125-04	21
503	Stock carretera	0			17/09/2017	06:02:43		a7a0045a8560766f	4	2017-09-17 06:02:56.234678-04	20
504	s6lambare	1	-25.3407605	-57.5999194	17/09/2017	12:20:54		c2eccaaf1c2f279b	4	2017-09-17 12:21:32.964162-04	19
505	Stock itagua	1	-25.3923293	-57.3541748	17/09/2017	12:21:15		1aeb37366085a4ed		2017-09-17 12:21:38.21886-04	15
506	real san vicente	0			17/09/2017	12:54:04		1909393993302c72	4	2017-09-17 12:54:32.027179-04	8
507	Stock carretera	1			17/09/2017	13:12:50		a7a0045a8560766f	4	2017-09-17 13:13:14.165737-04	20
508	pueblo lambare	1	-25.3348409	-57.6131075	17/09/2017	13:14:51		85c6d02a91bc38a0		2017-09-17 13:15:41.078211-04	21
509	Stock villa elisa	1			17/09/2017	13:15:29		92e21d107142e0d4	4	2017-09-17 13:15:47.509267-04	4
510	Real san Vicente	1	-25.3084393	-57.6175214	17/09/2017	13:22:35		387ee484de224877	4	2017-09-17 13:22:56.544705-04	7
511	Casa fresca	1			17/09/2017	13:48:06		3b55ca72969c6e55	3	2017-09-17 13:49:55.925303-04	11
512	real san vicente	1			17/09/2017	21:10:42		1909393993302c72	4	2017-09-17 21:11:04.721993-04	8
513	Casa fresca	0			18/09/2017	04:45:08		3b55ca72969c6e55	3	2017-09-18 04:47:04.584066-04	11
514	s6lambare	0	-25.3410322	-57.599853	18/09/2017	05:09:21		c2eccaaf1c2f279b	4	2017-09-18 05:09:36.527159-04	19
515	Stock itagua	0	-25.3924095	-57.3541852	18/09/2017	05:11:20		1aeb37366085a4ed		2017-09-18 05:11:44.47992-04	15
516	real san vicente	0			18/09/2017	05:26:08		1909393993302c72	4	2017-09-18 05:26:30.112691-04	8
517	Real San Vicente	0	-25.3086876	-57.6183966	18/09/2017	05:49:03		387ee484de224877	4	2017-09-18 05:49:25.917152-04	7
518	Stock villa elisa	0			18/09/2017	05:49:45		92e21d107142e0d4	4	2017-09-18 05:50:06.316874-04	4
519	pueblo lambare	0	-25.3348615	-57.6131075	18/09/2017	05:58:05		85c6d02a91bc38a0		2017-09-18 05:58:52.385102-04	21
520	Stoçk carretera	0			18/09/2017	06:03:37		a7a0045a8560766f	4	2017-09-18 06:03:58.630235-04	20
521	Citymarket zeballos	0	-25.2310837	-57.5587472	18/09/2017	07:46:05		6572235f9dcc62d6		2017-09-18 07:46:13.833853-04	16
522	Planta MRA	0	-25.2335311	-57.5281216	18/09/2017	08:04:36		a549ef5d04a77a7b		2017-09-18 08:04:46.724268-04	23
523	Citymarket nanawa	0	-25.2067145	-57.5340965	18/09/2017	09:43:41		6572235f9dcc62d6		2017-09-18 09:43:52.093956-04	16
524	Stock itagua	1	-25.3923274	-57.3541852	18/09/2017	10:11:36		1aeb37366085a4ed		2017-09-18 10:11:55.964771-04	15
525	s6lambare	1	-25.3408719	-57.5997866	18/09/2017	10:16:26		c2eccaaf1c2f279b	4	2017-09-18 10:16:59.588482-04	19
526	Stock villa elisa	0			18/09/2017	10:43:37		92e21d107142e0d4	4	2017-09-18 10:44:01.022331-04	4
527	Stick carretera	1			18/09/2017	11:07:42		a7a0045a8560766f	4	2017-09-18 11:07:54.109531-04	20
528	Citymarket nanawa	1	-25.2106798	-57.5336164	18/09/2017	11:33:12		6572235f9dcc62d6		2017-09-18 11:33:27.096277-04	16
529	Oficina	0			18/09/2017	08:00:37		a5112803feae71b1	1	2017-09-18 11:41:35.467179-04	18
530	pueblo lambare	1	-25.3348842	-57.6130744	18/09/2017	11:41:23		85c6d02a91bc38a0		2017-09-18 11:42:30.20935-04	21
531	Oficina 1	1			18/09/2017	11:56:29	Salgo un rato.	a5112803feae71b1	1	2017-09-18 11:55:53.736924-04	18
532	Casa fresca	1			18/09/2017	13:12:47		3b55ca72969c6e55	3	2017-09-18 13:14:58.18882-04	11
533	Stock felix bogado	0			18/09/2017	13:52:25		966d0ceb772cb048	4	2017-09-18 13:52:42.721696-04	22
534	real san vicente	1			18/09/2017	14:16:41		1909393993302c72	4	2017-09-18 14:17:04.716331-04	8
535	Citymarket caballero	0	-25.2212271	-57.5168419	18/09/2017	14:29:10		6572235f9dcc62d6		2017-09-18 14:29:28.515897-04	16
536	Real san Vicente	1	-25.3079559	-57.6168806	18/09/2017	14:47:51		387ee484de224877	4	2017-09-18 14:47:58.626728-04	7
537	Citymarket caballero	1	-25.2212271	-57.5168419	18/09/2017	16:49:12		6572235f9dcc62d6		2017-09-18 16:49:26.555168-04	16
538	Stock itagua	0			18/09/2017	17:00:28		1aeb37366085a4ed		2017-09-18 17:00:54.16913-04	15
539	Stock villa elisa	0			18/09/2017	17:12:52		92e21d107142e0d4	4	2017-09-18 17:13:13.050102-04	4
540	Planta MRA	0	-25.2337255	-57.5280103	18/09/2017	17:33:38		a549ef5d04a77a7b		2017-09-18 17:33:56.166421-04	23
541	Planta MRA	1	-25.2337618	-57.5282653	18/09/2017	17:34:56		a549ef5d04a77a7b		2017-09-18 17:34:59.413706-04	23
542	Stock carretera	0			18/09/2017	18:02:52		a7a0045a8560766f	4	2017-09-18 18:03:18.4177-04	20
543	s6lambare	0	-25.3412805	-57.5990402	18/09/2017	18:08:30		c2eccaaf1c2f279b	4	2017-09-18 18:09:01.122989-04	19
544	pueblo lambare	0	-25.3339644	-57.6141476	18/09/2017	18:23:02		85c6d02a91bc38a0		2017-09-18 18:23:32.364403-04	21
545	Stock itagua	1			18/09/2017	21:11:07		1aeb37366085a4ed		2017-09-18 21:11:35.220115-04	15
546	Stock villa elisa	1			18/09/2017	21:49:32		92e21d107142e0d4	4	2017-09-18 21:50:01.865763-04	4
547	s6lambare	0	-25.3412805	-57.5990402	19/09/2017	05:22:15		c2eccaaf1c2f279b	4	2017-09-19 05:22:54.682262-04	19
548	Stock villa elisa	0			19/09/2017	05:34:05		92e21d107142e0d4	4	2017-09-19 05:34:27.866111-04	4
549	Real  San Vicente	0	-25.3083806	-57.6171019	19/09/2017	05:38:35		387ee484de224877	4	2017-09-19 05:39:01.087269-04	7
550	Citymarket zeballos	0	-25.2355856	-57.5589776	19/09/2017	07:54:44		6572235f9dcc62d6		2017-09-19 07:55:05.273937-04	16
551	Pollpar	0	-25.2336199	-57.5282321	19/09/2017	08:10:44		a549ef5d04a77a7b		2017-09-19 08:10:56.404998-04	23
552	real san vicente	0			19/09/2017	10:49:09		1909393993302c72	4	2017-09-19 10:49:28.63989-04	8
553	Real San Vicente	1	-25.3076724	-57.617445	19/09/2017	11:31:05		387ee484de224877	4	2017-09-19 11:31:32.480977-04	7
554	Citymarket República de colombia	0	-25.1897082	-57.5209318	19/09/2017	14:02:46		6572235f9dcc62d6		2017-09-19 14:02:57.483117-04	16
555	Citymarket República de colombia	1	-25.1897082	-57.5209318	19/09/2017	14:51:15		6572235f9dcc62d6		2017-09-19 14:51:17.585577-04	16
556	Citymarket República de colombia	1	-25.1897082	-57.5209318	19/09/2017	14:50:24		6572235f9dcc62d6		2017-09-19 14:51:19.51207-04	16
557	Citymarket caballero	0	-25.2212271	-57.5168419	19/09/2017	15:39:44		6572235f9dcc62d6		2017-09-19 15:39:51.011146-04	16
558	s6lambare	1			19/09/2017	16:05:42		c2eccaaf1c2f279b	4	2017-09-19 16:06:00.045614-04	19
559	Stock villa elisa	1			19/09/2017	16:12:21		92e21d107142e0d4	4	2017-09-19 16:12:44.347401-04	4
560	Comercial virgen del rosario	1			19/09/2017	17:09:03		c82d47d5d5c28717	1	2017-09-19 17:09:25.654402-04	31
561	Real san Vicente	0			19/09/2017	17:20:29		387ee484de224877	4	2017-09-19 17:20:31.807938-04	7
562	Citymarket caballero	1	-25.2212271	-57.5168419	19/09/2017	17:55:58		6572235f9dcc62d6		2017-09-19 17:56:11.681993-04	16
563	real san vicente	1			19/09/2017	19:46:07		1909393993302c72	4	2017-09-19 19:46:10.888678-04	8
564	Real san Vicente	1	-25.3076464	-57.6174228	19/09/2017	21:17:41		387ee484de224877	4	2017-09-19 21:18:00.725497-04	7
565	Real capiata	1	-25.37414942	-57.43673123	19/09/2017	21:25:37		8c55f8380f178cd7	7	2017-09-19 21:26:05.475521-04	6
566	Casa fresca	0			20/09/2017	04:48:12		3b55ca72969c6e55	3	2017-09-20 04:50:29.175795-04	11
567	real san vicente	0			20/09/2017	05:34:29		1909393993302c72	4	2017-09-20 05:34:44.961481-04	8
568	Stock villa elisa	0			20/09/2017	05:53:31		92e21d107142e0d4		2017-09-20 05:53:48.867395-04	4
569	pueblo lambare	0	-25.3340787	-57.6134395	20/09/2017	06:01:49		85c6d02a91bc38a0	4	2017-09-20 06:02:23.893507-04	21
570	Citymarket san Jose	0	-25.1464799	-57.4751706	20/09/2017	08:04:06		6572235f9dcc62d6		2017-09-20 08:04:27.037017-04	16
571	Citymarket san jose	1	-25.1464799	-57.4751706	20/09/2017	09:09:12		6572235f9dcc62d6		2017-09-20 09:09:29.280344-04	16
572	Citymarket Villa hayes	0	-25.0911873	-57.5325868	20/09/2017	11:17:35		6572235f9dcc62d6		2017-09-20 11:17:50.131115-04	16
573	Comercial virgen del rosario	0			20/09/2017	11:37:11		c82d47d5d5c28717	1	2017-09-20 11:37:26.311075-04	31
574	Citymarket zeballos	0	-25.2310837	-57.5587472	20/09/2017	13:03:54		6572235f9dcc62d6		2017-09-20 13:04:07.117609-04	16
575	Casa fresca	1			20/09/2017	13:08:42		3b55ca72969c6e55	3	2017-09-20 13:10:39.159269-04	11
576	real san vicente	1			20/09/2017	14:32:02		1909393993302c72	4	2017-09-20 14:32:22.328747-04	8
577	pueblo lambare	1	-25.3341782	-57.6131739	20/09/2017	15:03:52		85c6d02a91bc38a0	4	2017-09-20 15:04:47.330927-04	21
578	Stock villa elisa	1			20/09/2017	15:58:21		92e21d107142e0d4	4	2017-09-20 15:58:49.964763-04	4
579	Citymarket caballero	1	-25.2310837	-57.5587472	20/09/2017	17:24:04		6572235f9dcc62d6		2017-09-20 17:24:20.810404-04	16
580	Comercial virgen del rosario	0			20/09/2017	20:13:30		c82d47d5d5c28717	1	2017-09-20 20:13:38.099445-04	31
581	Casa fresca	0			21/09/2017	04:51:55		3b55ca72969c6e55	3	2017-09-21 04:54:10.954597-04	11
582	s6lambare	0	-25.3407863	-57.5997615	21/09/2017	05:25:47		c2eccaaf1c2f279b	4	2017-09-21 05:26:07.158601-04	19
583	Real San Vicente	0	-25.3077992	-57.6177105	21/09/2017	05:39:56		387ee484de224877	4	2017-09-21 05:40:19.573487-04	7
584	pueblo lambare	0	-25.3341691	-57.6137068	21/09/2017	06:08:11		85c6d02a91bc38a0	4	2017-09-21 06:08:40.505494-04	21
585	Comercial virgen del rosario	0			21/09/2017	06:54:08		c82d47d5d5c28717	1	2017-09-21 06:54:22.039142-04	31
586	Citymarket zeballos	0	-25.2310837	-57.5587472	21/09/2017	07:50:42		6572235f9dcc62d6		2017-09-21 07:50:59.636999-04	16
587	Real san Vicente	1	-25.3080578	-57.6170024	21/09/2017	11:27:07		387ee484de224877	4	2017-09-21 11:27:28.619055-04	7
588	Citymarket República de colombia	0	-25.1879479	-57.5279139	21/09/2017	12:59:20		6572235f9dcc62d6		2017-09-21 12:59:42.795404-04	16
589	Casa fresca	1			21/09/2017	13:06:22		3b55ca72969c6e55	3	2017-09-21 13:08:22.74714-04	11
590	Citymarket República de colombia	1	-25.1897082	-57.5209318	21/09/2017	13:46:20		6572235f9dcc62d6		2017-09-21 13:46:36.604724-04	16
591	Citymarket nanawa	0	-25.2069359	-57.5265374	21/09/2017	14:17:56		6572235f9dcc62d6		2017-09-21 14:18:14.288124-04	16
592	Citymarket caballero	0	-25.2212271	-57.5168419	21/09/2017	14:58:11		6572235f9dcc62d6		2017-09-21 14:58:26.191297-04	16
593	s6lambare	0			21/09/2017	15:32:28		c2eccaaf1c2f279b	4	2017-09-21 15:33:08.524121-04	19
594	Citymarket caballero	1	-25.2212271	-57.5168419	21/09/2017	16:43:35		6572235f9dcc62d6		2017-09-21 16:43:48.224453-04	16
595	pueblo lambare	0	-25.334224	-57.6137382	21/09/2017	16:49:51		85c6d02a91bc38a0	4	2017-09-21 16:50:39.191764-04	21
596	Comercial virgen del rosario	1			21/09/2017	16:53:03		c82d47d5d5c28717	1	2017-09-21 16:53:13.878153-04	31
597	Real San Vicente	0	-25.3084555	-57.6175335	21/09/2017	17:22:04		387ee484de224877	4	2017-09-21 17:22:33.922517-04	7
598	Real San Vicente	1	-25.3078099	-57.6173343	21/09/2017	21:20:39		387ee484de224877	4	2017-09-21 21:21:00.990932-04	7
599	Real capiata	1	-25.37548167	-57.43412405	20/09/2017	17:20:40		8c55f8380f178cd7	7	2017-09-21 21:32:04.026154-04	6
600	s6lambare	1	-25.3406813	-57.5997645	21/09/2017	21:33:15		c2eccaaf1c2f279b	4	2017-09-21 21:33:36.587627-04	19
601	pueblo lambare	1	-25.3340093	-57.6132403	21/09/2017	22:03:12		85c6d02a91bc38a0	4	2017-09-21 22:04:11.947208-04	21
602	Comercial virgen del rosario	0			22/09/2017	04:36:22		c82d47d5d5c28717	1	2017-09-22 04:36:51.957137-04	31
603	España mariano	0			22/09/2017	05:04:11		b4cb6228a4e50158	1	2017-09-22 05:04:34.678979-04	29
604	s6lambare	0	-25.3408968	-57.5997202	22/09/2017	05:22:01		c2eccaaf1c2f279b	4	2017-09-22 05:22:19.218826-04	19
605	real san vicente	0			22/09/2017	05:28:05		1909393993302c72	4	2017-09-22 05:28:29.588602-04	8
606	Real capiata	0	-25.37569799	-57.43432001	22/09/2017	05:29:50		8c55f8380f178cd7	7	2017-09-22 05:30:14.781775-04	6
607	Stock villa elisa	0			22/09/2017	05:48:15		92e21d107142e0d4	4	2017-09-22 05:48:37.582156-04	4
608	Real San Vicente	0	-25.3083513	-57.6170245	22/09/2017	05:48:51		387ee484de224877	4	2017-09-22 05:49:00.845213-04	7
609	pueblo lambare	0	-25.3370848	-57.6114962	22/09/2017	06:01:08		85c6d02a91bc38a0	4	2017-09-22 06:01:47.472598-04	21
610	Citymarket Villa hayes	0	-25.0911973	-57.5325845	22/09/2017	08:24:42		6572235f9dcc62d6		2017-09-22 08:24:52.861181-04	16
611	s6lambare	1	-25.3403801	-57.5995432	22/09/2017	10:41:19		c2eccaaf1c2f279b	4	2017-09-22 10:41:40.879171-04	19
612	real san vicente	1			22/09/2017	11:22:30		1909393993302c72	4	2017-09-22 11:22:51.926128-04	8
613	España mariano	1			22/09/2017	11:24:02		b4cb6228a4e50158	1	2017-09-22 11:24:23.148424-04	29
614	Citymarket Villa hayes	1	-25.0911973	-57.5325845	22/09/2017	11:29:44		6572235f9dcc62d6		2017-09-22 11:30:00.701259-04	16
615	Real san Vicente	1	-25.3081891	-57.617622	22/09/2017	11:35:17		387ee484de224877	4	2017-09-22 11:35:39.917656-04	7
616	Casa fresca	0			22/09/2017	11:40:57		3b55ca72969c6e55	3	2017-09-22 11:43:15.421461-04	11
617	S6 portal	0	-25.238663	-57.5421632	22/09/2017	12:45:32		16320ccbc8e397dd		2017-09-22 12:45:56.726194-04	25
618	Comercial virgen del rosario	1			22/09/2017	13:05:01		c82d47d5d5c28717	1	2017-09-22 13:05:17.932815-04	31
619	Citymarket caballero	0	-25.2211999	-57.5168789	22/09/2017	14:03:33		6572235f9dcc62d6		2017-09-22 14:03:42.683924-04	16
620	Stock villa elisa	1			22/09/2017	14:27:56		92e21d107142e0d4	4	2017-09-22 14:28:22.845182-04	4
621	pueblo lambare	1	-25.334224	-57.6137382	22/09/2017	14:55:00		85c6d02a91bc38a0	4	2017-09-22 14:55:51.326647-04	21
622	Citymarket caballero	1	-25.2211999	-57.5168789	22/09/2017	14:55:55		6572235f9dcc62d6		2017-09-22 14:56:20.425668-04	16
623	Citymarket nanawa	0	-25.206641	-57.5340907	22/09/2017	15:03:09		6572235f9dcc62d6		2017-09-22 15:03:23.269418-04	16
624	Real capiata	1	-25.3495386	-57.4479327	22/09/2017	15:28:16		8c55f8380f178cd7	7	2017-09-22 15:28:42.730336-04	6
625	Real San Vicente	0	-25.3084555	-57.6175335	22/09/2017	16:04:33		387ee484de224877	4	2017-09-22 16:04:47.383878-04	7
626	España mariano	0			22/09/2017	16:31:35		b4cb6228a4e50158	1	2017-09-22 16:31:56.46475-04	29
627	Stock carretera	0			22/09/2017	16:50:56		a7a0045a8560766f	4	2017-09-22 16:51:31.334999-04	20
628	Citymarket nanawa	1	-25.2106668	-57.5336053	22/09/2017	16:51:25		6572235f9dcc62d6		2017-09-22 16:51:44.544706-04	16
629	real san vicente	0			22/09/2017	17:10:42		1909393993302c72	4	2017-09-22 17:11:09.102874-04	8
630	Casa fresca	1	-25.326113	-57.5708493	22/09/2017	19:21:21		3b55ca72969c6e55	3	2017-09-22 19:23:21.440333-04	11
631	España mariano	1	-25.2121271	-57.5287635	22/09/2017	20:03:59		b4cb6228a4e50158	1	2017-09-22 20:04:36.254432-04	29
632	Real san Vicente	1	-25.3079432	-57.6175003	22/09/2017	20:10:32		387ee484de224877	4	2017-09-22 20:10:54.927132-04	7
633	real san vicente	1			22/09/2017	21:16:55		1909393993302c72	4	2017-09-22 21:16:59.214384-04	8
634	Casa fresca	0	-25.3260167	-57.5709599	23/09/2017	04:56:05		3b55ca72969c6e55	3	2017-09-23 04:58:18.178374-04	11
635	España mariano	0			23/09/2017	05:01:01		b4cb6228a4e50158	1	2017-09-23 05:01:22.729249-04	29
636	Real capiata	0	-25.37569799	-57.43432001	23/09/2017	05:25:52		8c55f8380f178cd7	7	2017-09-23 05:26:16.301123-04	6
637	Real san Vicente	0	-25.3084044	-57.6171573	23/09/2017	05:38:16		387ee484de224877	4	2017-09-23 05:38:42.443473-04	7
638	Stock villa elisa	0			23/09/2017	05:42:53		92e21d107142e0d4	4	2017-09-23 05:43:21.890862-04	4
639	pueblo lambare	0	-25.3348128	-57.6131186	23/09/2017	05:52:59		85c6d02a91bc38a0	4	2017-09-23 05:53:54.850741-04	21
640	Citymarket zeballos	0	-25.2310896	-57.5587484	23/09/2017	08:25:25		6572235f9dcc62d6		2017-09-23 08:25:37.66425-04	16
641	Stoc carretera	0	-25.3510063	-57.6238112	23/09/2017	11:06:37		a7a0045a8560766f	4	2017-09-23 11:07:02.265239-04	20
642	real san vicente	0			23/09/2017	11:10:02		1909393993302c72	4	2017-09-23 11:10:24.033561-04	8
643	España mariano	1	-25.2125227	-57.5279495	23/09/2017	11:13:29		b4cb6228a4e50158	1	2017-09-23 11:13:45.892899-04	29
644	Real capiata	1	-25.37569799	-57.43432001	23/09/2017	11:17:46		8c55f8380f178cd7	7	2017-09-23 11:18:08.393251-04	6
645	Stock villa elisa	1			23/09/2017	11:26:38		92e21d107142e0d4	4	2017-09-23 11:26:41.942202-04	4
646	pueblo lambare	1	-25.3346535	-57.6129305	23/09/2017	11:34:08		85c6d02a91bc38a0	4	2017-09-23 11:34:59.924169-04	21
647	Comercial virgen del rosario	0			23/09/2017	12:07:44		c82d47d5d5c28717	1	2017-09-23 12:07:46.791422-04	31
648	Comercial virgen del rosario	0			23/09/2017	12:08:16		c82d47d5d5c28717	1	2017-09-23 12:08:31.727515-04	31
649	Casa fresca	1	-25.3275061	-57.5694447	23/09/2017	13:08:28		3b55ca72969c6e55	3	2017-09-23 13:10:33.644039-04	11
650	Stock villa elisa	0			23/09/2017	17:43:22		92e21d107142e0d4	4	2017-09-23 17:43:45.430132-04	4
651	España mariano	0			23/09/2017	17:46:01		b4cb6228a4e50158	1	2017-09-23 17:46:20.329449-04	29
652	pueblo lambare	0	-25.3341436	-57.6132846	23/09/2017	17:52:23		85c6d02a91bc38a0	4	2017-09-23 17:53:14.404922-04	21
653	Comercial virgen del rosario	1			23/09/2017	20:08:27		c82d47d5d5c28717	1	2017-09-23 20:08:37.980594-04	31
654	real san vicente	1			23/09/2017	20:08:35		1909393993302c72	4	2017-09-23 20:09:02.052861-04	8
655	España mariano	1			23/09/2017	21:38:19		b4cb6228a4e50158	1	2017-09-23 21:38:42.199115-04	29
656	Stock villa elisa	1			23/09/2017	21:39:36		92e21d107142e0d4	4	2017-09-23 21:39:58.697397-04	4
657	Real capiata	1	-25.34475651	-57.50712365	23/09/2017	21:43:14		8c55f8380f178cd7	7	2017-09-23 21:43:53.448842-04	6
658	pueblo lambare	1	-25.3341382	-57.6132625	23/09/2017	22:06:45		85c6d02a91bc38a0	4	2017-09-23 22:07:35.713876-04	21
659	España mariano	0			24/09/2017	05:24:18		b4cb6228a4e50158	1	2017-09-24 05:24:53.014641-04	29
660	Real capiata	0	-25.34475651	-57.50712365	24/09/2017	05:28:02		8c55f8380f178cd7	7	2017-09-24 05:28:12.394334-04	6
661	real san vicente	0			24/09/2017	05:34:48		1909393993302c72	4	2017-09-24 05:35:17.126219-04	8
662	Real San Vicente	0	-25.3084241	-57.6174892	24/09/2017	05:44:07		387ee484de224877	4	2017-09-24 05:44:31.178638-04	7
663	Stock villa elisa	0			24/09/2017	05:47:46		92e21d107142e0d4	4	2017-09-24 05:47:53.891935-04	4
664	pueblo lambare	0	-25.3347738	-57.6130854	24/09/2017	05:57:44		85c6d02a91bc38a0	4	2017-09-24 05:58:12.940132-04	21
665	Real capiata	1	-25.34475651	-57.50712365	24/09/2017	12:03:58		8c55f8380f178cd7	7	2017-09-24 12:04:17.414786-04	6
666	S6 portal	1	-25.2381353	-57.5417552	24/09/2017	12:13:36		16320ccbc8e397dd		2017-09-24 12:14:04.694017-04	25
667	España mariano	1			24/09/2017	12:21:58		b4cb6228a4e50158	1	2017-09-24 12:22:09.82403-04	29
668	purblo lambare	1	-25.3340299	-57.6132403	24/09/2017	12:31:51		85c6d02a91bc38a0	4	2017-09-24 12:32:43.604764-04	21
669	Stock  carretera	0			24/09/2017	12:40:14		a7a0045a8560766f	4	2017-09-24 12:40:40.878982-04	20
670	real san vicente	1			24/09/2017	12:52:18		1909393993302c72	4	2017-09-24 12:52:37.151165-04	8
671	Stock villa elisa	1			24/09/2017	13:12:28		92e21d107142e0d4	4	2017-09-24 13:12:50.490618-04	4
672	Real san Vicente	1	-25.3084295	-57.6175114	24/09/2017	13:50:23		387ee484de224877	4	2017-09-24 13:50:32.662319-04	7
673	Stock CaRRETERa	1			24/09/2017	21:05:27		a7a0045a8560766f	4	2017-09-24 21:06:14.347992-04	20
674	Casa fresca	0			25/09/2017	04:44:09		3b55ca72969c6e55	3	2017-09-25 04:46:26.707622-04	11
675	España mariano	0			25/09/2017	05:00:47		b4cb6228a4e50158	1	2017-09-25 05:00:53.013554-04	29
676	s6lambare	0			25/09/2017	05:23:12		c2eccaaf1c2f279b	4	2017-09-25 05:23:39.681913-04	19
677	Stock caRRETERa	0			25/09/2017	05:39:51		a7a0045a8560766f	4	2017-09-25 05:40:21.945126-04	20
678	Stock villa elisa	0			25/09/2017	05:42:53		92e21d107142e0d4	4	2017-09-25 05:43:18.124908-04	4
679	Real San Vicente	0	-25.3084067	-57.6173343	25/09/2017	05:55:32		387ee484de224877	4	2017-09-25 05:56:02.866839-04	7
680	pueblo lambare	0	-25.3346048	-57.6129416	25/09/2017	06:01:05		85c6d02a91bc38a0	4	2017-09-25 06:01:54.952279-04	21
681	Citymarket zeballos	0	-25.2353227	-57.5589935	25/09/2017	07:38:45		6572235f9dcc62d6		2017-09-25 07:38:58.699022-04	16
682	s6lambare	1	-25.3408851	-57.6000079	25/09/2017	10:34:51		c2eccaaf1c2f279b	4	2017-09-25 10:35:12.05938-04	19
683	pueblo lambare	1	-25.3341566	-57.6132956	25/09/2017	11:27:19		85c6d02a91bc38a0	4	2017-09-25 11:28:06.332393-04	21
684	Comercial virgen del rosario	0			25/09/2017	11:56:11		c82d47d5d5c28717	1	2017-09-25 11:56:14.452149-04	31
685	Citymarket zeballos	1	-25.2351721	-57.5584288	25/09/2017	11:59:43		6572235f9dcc62d6		2017-09-25 11:59:55.958251-04	16
686	San Cayetano	0			25/09/2017	12:09:33		abbc3cf52e38c05c	1	2017-09-25 12:09:37.711872-04	32
687	Citymarket nanawa	0	-25.2104092	-57.5337712	25/09/2017	12:25:37		6572235f9dcc62d6		2017-09-25 12:25:50.596741-04	16
688	Casa fresca	1			25/09/2017	13:00:16		3b55ca72969c6e55	3	2017-09-25 13:02:14.961009-04	11
689	Citymarket nanawa	1	-25.2114572	-57.5338928	25/09/2017	13:55:38		6572235f9dcc62d6		2017-09-25 13:55:51.011494-04	16
690	Citymarket caballero	0	-25.2197669	-57.5222792	25/09/2017	14:03:38		6572235f9dcc62d6		2017-09-25 14:03:49.842782-04	16
691	España mariano	1			25/09/2017	14:26:20		b4cb6228a4e50158	1	2017-09-25 14:26:52.559716-04	29
692	Real san Vicente	1	-25.3079138	-57.6170024	25/09/2017	14:48:43		387ee484de224877	4	2017-09-25 14:48:59.465501-04	7
693	Citymarket caballero	1	-25.2201349	-57.5223949	25/09/2017	15:55:30		6572235f9dcc62d6		2017-09-25 15:55:48.628577-04	16
694	Stock villa elisa	1			25/09/2017	16:21:47		92e21d107142e0d4	4	2017-09-25 16:22:11.165751-04	4
695	Stock carretera	1			25/09/2017	17:22:33		a7a0045a8560766f	4	2017-09-25 17:22:36.272408-04	20
696	supermercado pueblo lambare	0	-25.3360968	-57.6125653	25/09/2017	17:54:06		85c6d02a91bc38a0	4	2017-09-25 17:54:50.167838-04	21
697	Comercial virgen del rosario	1			25/09/2017	20:15:04		c82d47d5d5c28717	1	2017-09-25 20:15:30.024153-04	31
698	San cayetano	1			25/09/2017	20:53:55		abbc3cf52e38c05c	1	2017-09-25 20:54:10.363891-04	32
699	pueblo lambare	1	-25.3356174	-57.6134632	25/09/2017	22:04:33		85c6d02a91bc38a0	4	2017-09-25 22:05:23.553666-04	21
700	Comercial virgen del rosario	0			26/09/2017	04:35:45		c82d47d5d5c28717	1	2017-09-26 04:35:55.071474-04	31
701	Real capiata	0	-25.37566175	-57.43424106	26/09/2017	05:20:39		8c55f8380f178cd7	7	2017-09-26 05:21:08.857003-04	6
702	s6lambare	0	-25.3409386	-57.5996592	26/09/2017	05:35:42		c2eccaaf1c2f279b	4	2017-09-26 05:36:25.382218-04	19
703	Citymarket zeballos	0	-25.2353093	-57.5589831	26/09/2017	07:31:34		6572235f9dcc62d6		2017-09-26 07:31:43.854991-04	16
704	Real capiata	1	-25.37566175	-57.43424106	26/09/2017	11:25:41		8c55f8380f178cd7	7	2017-09-26 11:26:07.199495-04	6
705	Oficina comercial	0	-25.2252399	-57.5339812	26/09/2017	12:46:54		6572235f9dcc62d6		2017-09-26 12:47:08.725368-04	16
706	Citymarket caballero	0	-25.220014	-57.5222492	26/09/2017	15:04:58		6572235f9dcc62d6		2017-09-26 15:05:11.441786-04	16
707	Real capiata	0	-25.37566175	-57.43424106	26/09/2017	17:06:34		8c55f8380f178cd7	7	2017-09-26 17:07:02.34316-04	6
708	Citymarket caballero	1	-25.220136	-57.5224834	26/09/2017	17:18:38		6572235f9dcc62d6		2017-09-26 17:18:41.748539-04	16
709	Real capiata	1	-25.37566175	-57.43424106	26/09/2017	21:26:13		8c55f8380f178cd7	7	2017-09-26 21:26:18.452938-04	6
710	San caye	0	-25.2706631	-57.4863396	27/09/2017	04:58:05		abbc3cf52e38c05c	1	2017-09-27 04:58:27.721943-04	32
711	España mariano	0			27/09/2017	05:08:21		b4cb6228a4e50158	1	2017-09-27 05:09:11.95118-04	29
712	Stock villa elisa	0			27/09/2017	05:36:38		92e21d107142e0d4	4	2017-09-27 05:36:51.712846-04	4
713	pueblo lambare	0			27/09/2017	05:42:28		85c6d02a91bc38a0	4	2017-09-27 05:43:18.70917-04	21
714	Real San Vicente	0	-25.3084609	-57.6175556	27/09/2017	06:43:30		387ee484de224877	4	2017-09-27 06:43:51.014735-04	7
715	España mariano	1			27/09/2017	11:15:08		b4cb6228a4e50158	1	2017-09-27 11:15:29.072571-04	29
716	San caye	1			27/09/2017	12:00:19		abbc3cf52e38c05c	1	2017-09-27 12:00:43.473787-04	32
717	Comercial virgen del rosario	0			27/09/2017	12:00:38		c82d47d5d5c28717	1	2017-09-27 12:00:52.088663-04	31
718	real san vicente	1			27/09/2017	14:33:14		1909393993302c72	4	2017-09-27 14:33:29.092724-04	8
719	pueblo lambare	1	-25.3239575	-57.6160508	27/09/2017	14:54:53		85c6d02a91bc38a0		2017-09-27 14:55:21.185899-04	21
720	Real san Vicente	0	-25.3084891	-57.6175445	27/09/2017	16:05:35		387ee484de224877	4	2017-09-27 16:05:50.745642-04	7
721	Stock villa elisa	1			27/09/2017	16:18:25		92e21d107142e0d4	4	2017-09-27 16:18:47.086768-04	4
722	España mariano	0			27/09/2017	17:21:31		b4cb6228a4e50158	1	2017-09-27 17:22:06.253331-04	29
723	Real  san Vicente	1	-25.3084662	-57.6175772	27/09/2017	21:17:17		387ee484de224877	4	2017-09-27 21:17:37.067173-04	7
724	real san vicente	0			28/09/2017	05:05:45		1909393993302c72	4	2017-09-28 05:06:15.021271-04	8
725	Stock itagua	0	-25.392172	-57.3542624	28/09/2017	05:10:59		1aeb37366085a4ed		2017-09-28 05:11:16.107958-04	15
726	S6 portal	0	-25.238767	-57.5422516	28/09/2017	05:20:05		16320ccbc8e397dd	1	2017-09-28 05:20:22.718243-04	25
727	Real capiata	0	-25.37564121	-57.43424535	28/09/2017	05:22:35		8c55f8380f178cd7	7	2017-09-28 05:23:04.959234-04	6
728	Stock villa elisa	0			28/09/2017	05:44:40		92e21d107142e0d4	4	2017-09-28 05:44:48.478833-04	4
729	pueblo lambare	0	-25.3341328	-57.6132403	28/09/2017	06:02:30		85c6d02a91bc38a0	4	2017-09-28 06:03:07.776499-04	21
730	Citymarket nanawa	0	-25.2103139	-57.5337601	28/09/2017	06:57:33		6572235f9dcc62d6		2017-09-28 06:57:45.696966-04	16
731	Stock carretera	0			28/09/2017	10:41:41		a7a0045a8560766f	4	2017-09-28 10:41:57.18267-04	20
732	Real capiata	1	-25.37564121	-57.43424535	28/09/2017	10:59:47		8c55f8380f178cd7	7	2017-09-28 11:00:16.464514-04	6
733	España mariano	1			28/09/2017	11:07:05		b4cb6228a4e50158	1	2017-09-28 11:07:40.505658-04	29
734	Stock itagua	1	-25.3920899	-57.3542624	28/09/2017	11:08:47		1aeb37366085a4ed		2017-09-28 11:09:12.026109-04	15
735	Citymarket zeballos	0	-25.2351931	-57.5583887	28/09/2017	11:36:46		6572235f9dcc62d6		2017-09-28 11:37:01.153249-04	16
736	San Cayetano	0	-25.2721688	-57.4876547	28/09/2017	12:42:26		abbc3cf52e38c05c	1	2017-09-28 12:42:37.311304-04	32
737	s6lambare	1	-25.3408304	-57.5993662	28/09/2017	14:19:58		c2eccaaf1c2f279b	4	2017-09-28 14:20:43.368642-04	19
738	Stock villa elisa	1			28/09/2017	14:21:38		92e21d107142e0d4	4	2017-09-28 14:22:00.452645-04	4
739	RRHH	0	-25.2335948	-57.5278784	28/09/2017	15:42:06		f6cc2c2862945614		2017-09-28 15:42:18.277386-04	39
740	pueblo lambare	1	-25.3340299	-57.6132403	28/09/2017	16:26:25		85c6d02a91bc38a0	4	2017-09-28 16:27:22.718451-04	21
741	España mariano	0			28/09/2017	17:01:42		b4cb6228a4e50158	1	2017-09-28 17:02:14.318334-04	29
742	Real San Vicente	0	-25.3085641	-57.615752	28/09/2017	17:23:11		387ee484de224877	4	2017-09-28 17:23:30.97666-04	7
743	STOCK CaRRETERa	1			28/09/2017	19:32:31		a7a0045a8560766f	4	2017-09-28 19:32:50.471334-04	20
744	España mariano	1			28/09/2017	20:17:14		b4cb6228a4e50158	1	2017-09-28 20:17:23.15596-04	29
745	San Cayetano	1			28/09/2017	20:52:22		abbc3cf52e38c05c	1	2017-09-28 20:52:44.666348-04	32
746	Casa frwsca	0	-25.3260222	-57.570982	29/09/2017	04:45:00		3b55ca72969c6e55	3	2017-09-29 04:47:17.2713-04	11
747	Stock villa elisa	0			29/09/2017	05:38:19		92e21d107142e0d4	4	2017-09-29 05:38:39.996046-04	4
748	Real San Vicente	0	-25.3109226	-57.620001	29/09/2017	05:49:55		387ee484de224877	4	2017-09-29 05:50:15.729882-04	7
749	pueblo lambare	0	-25.3345343	-57.6128641	29/09/2017	06:03:11		85c6d02a91bc38a0	4	2017-09-29 06:03:37.102847-04	21
750	Citymarket nanawa	0	-25.2110912	-57.5338265	29/09/2017	06:55:31		6572235f9dcc62d6		2017-09-29 06:55:54.689135-04	16
751	Pollpar	0	-25.233814999999996	-57.529183333333336	28/09/2017	07:25:56		a549ef5d04a77a7b		2017-09-29 07:32:34.97621-04	23
752	Citymarket san Jose	0	-25.1529932	-57.4685597	29/09/2017	09:03:27		6572235f9dcc62d6		2017-09-29 09:03:50.060134-04	16
753	Citymarket san Jose	1	-25.1487115	-57.4730027	29/09/2017	09:49:09		6572235f9dcc62d6		2017-09-29 09:49:33.930839-04	16
754	pueblo lambare	1	-25.3341328	-57.6132403	29/09/2017	10:28:48		85c6d02a91bc38a0	4	2017-09-29 10:29:34.477324-04	21
755	Citymarket Villa hayes	0	-25.0915232	-57.5271231	29/09/2017	10:30:18		6572235f9dcc62d6		2017-09-29 10:30:36.633066-04	16
756	San Cayetano	0	-25.2721688	-57.4876547	29/09/2017	10:50:19		abbc3cf52e38c05c	1	2017-09-29 10:50:45.969328-04	32
757	España mariano	0			29/09/2017	10:56:02		b4cb6228a4e50158	1	2017-09-29 10:56:39.584224-04	29
758	Comercial virgen del rosario	0			29/09/2017	12:02:53		c82d47d5d5c28717	1	2017-09-29 12:03:16.897375-04	31
759	Citymarket Villa hayes	1	-25.0912108	-57.5325827	29/09/2017	12:33:30		6572235f9dcc62d6		2017-09-29 12:33:49.337777-04	16
760	Casa fresca	1	-25.326113	-57.5708493	29/09/2017	13:01:54		3b55ca72969c6e55	3	2017-09-29 13:03:55.296053-04	11
761	Citymarket zeballos	0	-25.2310995	-57.5587494	29/09/2017	13:43:52		6572235f9dcc62d6		2017-09-29 13:44:06.038282-04	16
762	Real San Vicente	1	-25.3089561	-57.6180646	29/09/2017	14:40:19		387ee484de224877	4	2017-09-29 14:40:49.564713-04	7
763	Gran union	0	-25.2895694	-57.5901842	29/09/2017	14:54:48	Viernes	f6cc2c2862945614		2017-09-29 14:54:56.68727-04	39
764	Stock villa elisa	1			29/09/2017	14:59:46		92e21d107142e0d4	4	2017-09-29 15:00:07.722976-04	4
765	Citymarket zeballos	1	-25.2310995	-57.5587494	29/09/2017	16:24:40		6572235f9dcc62d6		2017-09-29 16:24:43.777529-04	16
766	pueblo lambare	0	-25.3341382	-57.6132625	29/09/2017	16:44:05		85c6d02a91bc38a0	4	2017-09-29 16:44:53.321888-04	21
767	Stock carretera	0			29/09/2017	18:49:57		a7a0045a8560766f	4	2017-09-29 18:50:38.130854-04	20
768	San Cayetano	1	-25.2717529	-57.4873011	29/09/2017	19:12:39		abbc3cf52e38c05c	1	2017-09-29 19:12:49.911769-04	32
769	pueblo lambare	1	-25.3435786	-57.6185293	29/09/2017	20:13:45		85c6d02a91bc38a0	4	2017-09-29 20:14:34.020691-04	21
770	Comercial virgen del rosario	1			29/09/2017	20:21:01		c82d47d5d5c28717	1	2017-09-29 20:21:29.766513-04	31
771	España mariano	1			29/09/2017	20:55:25		b4cb6228a4e50158	1	2017-09-29 20:56:06.181567-04	29
772	real san vicente	1			29/09/2017	21:18:59		1909393993302c72	4	2017-09-29 21:19:19.880765-04	8
773	Gran union	1	-25.2894815	-57.5897417	29/09/2017	22:32:33		f6cc2c2862945614		2017-09-29 22:32:39.906532-04	39
774	Comercial virgen del rosario	0			30/09/2017	04:29:40		c82d47d5d5c28717	1	2017-09-30 04:29:53.456554-04	31
775	España mariano	0			30/09/2017	05:01:41		b4cb6228a4e50158	1	2017-09-30 05:02:09.114988-04	29
776	Stock itagua	0			30/09/2017	05:02:46		1aeb37366085a4ed		2017-09-30 05:03:07.619565-04	15
777	Gran union	0	-25.2888211	-57.5901953	30/09/2017	05:29:09		f6cc2c2862945614		2017-09-30 05:29:33.230006-04	39
778	Real capiata	0	-25.3503497	-57.4478886	30/09/2017	05:29:50		8c55f8380f178cd7	7	2017-09-30 05:30:16.784956-04	6
779	pueblo lambarr	0	-25.334149	-57.6133067	30/09/2017	06:13:28		85c6d02a91bc38a0	4	2017-09-30 06:14:29.044159-04	21
780	Citymarket zeballos	0	-25.2356727	-57.5547895	30/09/2017	07:51:18		6572235f9dcc62d6		2017-09-30 07:51:31.303898-04	16
781	real san vicente	0			30/09/2017	11:00:04		1909393993302c72	4	2017-09-30 11:00:28.454716-04	8
782	España mariano	1			30/09/2017	11:02:11		b4cb6228a4e50158	1	2017-09-30 11:02:25.897612-04	29
783	Real capiata	1	-25.37565878	-57.43424061	30/09/2017	11:12:01		8c55f8380f178cd7	7	2017-09-30 11:12:23.444462-04	6
784	Stock itagua	1			30/09/2017	11:27:54		1aeb37366085a4ed		2017-09-30 11:28:31.190898-04	15
785	Casa fresca	0			30/09/2017	11:39:39		3b55ca72969c6e55	3	2017-09-30 11:42:00.799587-04	11
786	Citymarket caballero	0	-25.2211978	-57.5168925	30/09/2017	11:50:05		6572235f9dcc62d6		2017-09-30 11:50:15.922838-04	16
787	Real San Vicente	1	-25.308851	-57.6180978	30/09/2017	11:57:32		387ee484de224877	4	2017-09-30 11:57:43.720372-04	7
788	San Cayetano	0			30/09/2017	12:57:56		abbc3cf52e38c05c	1	2017-09-30 12:58:24.779544-04	32
789	Gran union	1	-25.2888233	-57.5901621	30/09/2017	14:16:38		f6cc2c2862945614		2017-09-30 14:16:45.110825-04	39
790	Real capiata	0	-25.37565878	-57.43424061	30/09/2017	16:03:33		8c55f8380f178cd7	7	2017-09-30 16:03:57.007038-04	6
791	Real san Vicente	0	-25.3083899	-57.6186511	30/09/2017	17:07:42		387ee484de224877	4	2017-09-30 17:08:03.156102-04	7
792	Stock itagua	0	-25.392131	-57.3542624	30/09/2017	17:16:24		1aeb37366085a4ed		2017-09-30 17:16:48.572416-04	15
793	pueblo lambare	0	-25.3340679	-57.6133952	30/09/2017	17:39:30		85c6d02a91bc38a0	4	2017-09-30 17:39:56.633895-04	21
794	España mariano	0			30/09/2017	17:40:31		b4cb6228a4e50158	1	2017-09-30 17:41:06.815427-04	29
795	Stock villa elisa	0			30/09/2017	18:00:47		92e21d107142e0d4	4	2017-09-30 18:00:58.407143-04	4
796	Casa fresca	1	-25.326126	-57.5708603	30/09/2017	19:26:04		3b55ca72969c6e55	3	2017-09-30 19:28:14.627678-04	11
797	real san vicente	1			30/09/2017	20:02:18		1909393993302c72	4	2017-09-30 20:02:35.065925-04	8
798	San Cayetano	1			30/09/2017	20:53:55		abbc3cf52e38c05c	1	2017-09-30 20:54:16.259945-04	32
799	Stock itagua	1	-25.3922414	-57.3541362	30/09/2017	21:33:59		1aeb37366085a4ed		2017-09-30 21:34:32.29079-04	15
800	España mariano	1			30/09/2017	21:34:51		b4cb6228a4e50158	1	2017-09-30 21:35:19.650051-04	29
801	Stock villa elisa	1			30/09/2017	21:35:47		92e21d107142e0d4	4	2017-09-30 21:36:08.594027-04	4
802	pueblo lambare	1	-25.335037	-57.6131518	30/09/2017	22:03:33		85c6d02a91bc38a0	4	2017-09-30 22:04:12.870654-04	21
803	Stock itagua	0	-25.3922699	-57.354119	01/10/2017	05:12:57		1aeb37366085a4ed		2017-10-01 04:13:25.222383-04	15
804	España mariano	0			01/10/2017	05:32:20		b4cb6228a4e50158	1	2017-10-01 04:32:36.259511-04	29
805	Casa fresca	0			01/10/2017	05:41:07		3b55ca72969c6e55	3	2017-10-01 04:43:30.94754-04	11
806	Gran union	0	-25.289344	-57.5898523	01/10/2017	05:50:59		f6cc2c2862945614		2017-10-01 04:51:21.570444-04	39
807	pueblo lambare	0	-25.3341273	-57.6132182	01/10/2017	06:07:55		85c6d02a91bc38a0	4	2017-10-01 05:08:44.652647-04	21
808	Comercial virgen del rosario	0			01/10/2017	08:05:29		c82d47d5d5c28717	1	2017-10-01 07:05:50.864508-04	31
809	Real capiata	0	-25.37577197	-57.5674984	01/10/2017	05:28:28		8c55f8380f178cd7	7	2017-10-01 11:01:01.94365-04	6
810	Real capiata	1	-25.37577197	-57.5674984	01/10/2017	12:01:27		8c55f8380f178cd7	7	2017-10-01 11:01:31.064129-04	6
811	Stock itagua	1	-25.3924315	-57.3546046	01/10/2017	12:16:17		1aeb37366085a4ed		2017-10-01 11:16:46.229054-04	15
812	pueblo lambare	1	-25.3340407	-57.6132846	01/10/2017	12:50:50		85c6d02a91bc38a0	4	2017-10-01 11:51:19.977482-04	21
813	Stock villa elisa	0			01/10/2017	13:01:59		92e21d107142e0d4	4	2017-10-01 12:02:19.447361-04	4
814	Gran union	1	-25.2894576	-57.5896864	01/10/2017	13:05:23		f6cc2c2862945614		2017-10-01 12:05:45.923644-04	39
815	real san vicente	1			01/10/2017	13:15:14		1909393993302c72	4	2017-10-01 12:15:32.292348-04	8
816	España mariano	1			01/10/2017	13:15:14		b4cb6228a4e50158	1	2017-10-01 12:15:43.84683-04	29
817	Stock villa elisa	1			01/10/2017	21:02:20		92e21d107142e0d4	4	2017-10-01 20:02:49.965399-04	4
818	Comercial virgen del rosario	0	-25.2705643	-57.4877763	02/10/2017	04:36:30		c82d47d5d5c28717	1	2017-10-02 03:36:41.738643-04	31
819	Stock itagua	0	-25.1886525	-57.4759887	02/10/2017	05:07:10		1aeb37366085a4ed		2017-10-02 04:07:32.537616-04	15
820	España mariano	0			02/10/2017	05:19:32		b4cb6228a4e50158	1	2017-10-02 04:19:36.325065-04	29
821	Real capiata	0			02/10/2017	05:29:28		8c55f8380f178cd7	7	2017-10-02 04:29:49.904061-04	6
822	Stock villa elisa	0			02/10/2017	05:39:44		92e21d107142e0d4	4	2017-10-02 04:40:07.807278-04	4
823	Casa fresca	0	-25.3260979	-57.5708714	02/10/2017	05:40:28		3b55ca72969c6e55	3	2017-10-02 04:42:29.078319-04	11
824	pueblo lambare	0	-25.3342302	-57.6132182	02/10/2017	06:03:36		85c6d02a91bc38a0	4	2017-10-02 05:04:32.546209-04	21
825	Comercial virgen del rosario	0	-25.2710218	-57.4869526	02/10/2017	10:33:10		c82d47d5d5c28717	1	2017-10-02 09:33:20.099644-04	31
826	pueblo lambare	1	-25.3341739	-57.6132403	02/10/2017	12:01:59		85c6d02a91bc38a0	4	2017-10-02 11:02:36.611867-04	21
827	Stock itagua	1	-25.392413	-57.3545715	02/10/2017	12:16:30		1aeb37366085a4ed		2017-10-02 11:16:49.593509-04	15
828	Stock villa elisa	1			02/10/2017	13:18:45		92e21d107142e0d4	4	2017-10-02 12:19:14.005386-04	4
829	Real capiata	1	-25.37568376	-57.43421099	02/10/2017	14:48:47		8c55f8380f178cd7	7	2017-10-02 13:49:08.368348-04	6
830	s6lambare	0			03/10/2017	05:04:50		c2eccaaf1c2f279b	4	2017-10-03 04:05:14.700144-04	19
831	Real capiata	0	-25.37558692	-57.43417361	03/10/2017	05:30:14		8c55f8380f178cd7	7	2017-10-03 04:30:39.96467-04	6
832	Stock villa elisa	0	-25.367415	-57.5866997	03/10/2017	05:53:28		92e21d107142e0d4	4	2017-10-03 04:53:48.967648-04	4
833	San Cayetano	0			03/10/2017	12:46:20		abbc3cf52e38c05c	1	2017-10-03 11:46:55.8406-04	32
834	real san vicente	0			03/10/2017	12:55:31		1909393993302c72	4	2017-10-03 11:55:54.360578-04	8
835	Gran union	0	-25.2886207	-57.5900072	03/10/2017	13:52:25		f6cc2c2862945614		2017-10-03 12:52:44.394615-04	39
836	s6lambare	1	-25.3401311	-57.5981935	03/10/2017	16:17:33		c2eccaaf1c2f279b	4	2017-10-03 15:17:54.019505-04	19
837	Stock villa elisa	1	-25.3675428	-57.5864809	03/10/2017	16:53:32		92e21d107142e0d4	4	2017-10-03 15:53:55.303358-04	4
838	Gran union	1	-25.2887876	-57.5901842	03/10/2017	21:31:24		f6cc2c2862945614		2017-10-03 20:31:45.479591-04	39
839	San Cayetano	1			03/10/2017	21:58:58		abbc3cf52e38c05c	1	2017-10-03 20:59:18.653985-04	32
840	Stock itagua	0	-25.3919524	-57.3544942	04/10/2017	05:07:34		1aeb37366085a4ed		2017-10-04 04:07:53.721149-04	15
841	real san vicente	0			04/10/2017	05:21:35		1909393993302c72	4	2017-10-04 04:21:55.529733-04	8
842	Gran union	0	-25.2888081	-57.5901842	04/10/2017	05:33:02		f6cc2c2862945614		2017-10-04 04:33:23.828551-04	39
843	stock carretera	0	-25.3518138	-57.6236637	04/10/2017	05:39:53		85c6d02a91bc38a0	4	2017-10-04 04:40:50.675476-04	21
844	Stock itagua	1	-25.3916922	-57.3542735	04/10/2017	10:10:58		1aeb37366085a4ed		2017-10-04 09:11:16.275074-04	15
845	stock carretera	1	-25.3518719	-57.6231878	04/10/2017	11:16:07		85c6d02a91bc38a0	4	2017-10-04 10:17:00.988924-04	21
846	Cimercial virgen del rosario	0	-25.2705964	-57.4877698	04/10/2017	11:49:18		c82d47d5d5c28717	1	2017-10-04 10:49:47.375604-04	31
847	San Cayetano	0			04/10/2017	12:55:21		abbc3cf52e38c05c	1	2017-10-04 11:55:59.467157-04	32
848	Gran union	1	-25.2895099	-57.5903612	04/10/2017	14:09:39		f6cc2c2862945614		2017-10-04 13:09:47.843415-04	39
849	real san vicente	1			04/10/2017	14:24:31		1909393993302c72	4	2017-10-04 13:25:02.485321-04	8
850	Stock itagua	0	-25.3919896	-57.3544866	04/10/2017	16:49:06		1aeb37366085a4ed		2017-10-04 15:49:13.926629-04	15
851	stock carretera	0	-25.3508156	-57.6242501	04/10/2017	17:05:25		85c6d02a91bc38a0	4	2017-10-04 16:06:00.010186-04	21
852	Cimercial virgen del rosario	1			04/10/2017	20:16:43		c82d47d5d5c28717	1	2017-10-04 19:17:11.590017-04	31
853	San Cayetano	1	-25.2709545	-57.4866049	04/10/2017	20:42:16		abbc3cf52e38c05c	1	2017-10-04 19:42:39.572108-04	32
854	Stock itagua	1	-25.3926128	-57.3542183	04/10/2017	21:04:25		1aeb37366085a4ed		2017-10-04 20:04:44.345412-04	15
855	stock carretera	1	-25.352189	-57.6244383	04/10/2017	21:33:19		85c6d02a91bc38a0	4	2017-10-04 20:34:06.059215-04	21
856	Casa fresca	0			05/10/2017	04:45:09		3b55ca72969c6e55	3	2017-10-05 03:47:25.967626-04	11
857	España mariano	0			05/10/2017	05:26:05		b4cb6228a4e50158	1	2017-10-05 04:26:56.436847-04	29
858	Stock villa elisa	0	-25.3674257	-57.5865337	05/10/2017	05:46:21		92e21d107142e0d4	4	2017-10-05 04:46:40.513381-04	4
859	stock carretera	0	-25.3520524	-57.624217	05/10/2017	05:56:51		85c6d02a91bc38a0	4	2017-10-05 04:57:42.82584-04	21
860	Stock itagua	0			05/10/2017	06:34:30		1aeb37366085a4ed		2017-10-05 05:34:47.358638-04	15
861	Cimercial virgen del rosario	0			05/10/2017	06:56:33		c82d47d5d5c28717	1	2017-10-05 05:57:01.071261-04	31
862	real san vicente	0			05/10/2017	10:05:15		1909393993302c72	4	2017-10-05 09:05:34.928385-04	8
863	stock carretera	1	-25.3511881	-57.6244829	05/10/2017	11:22:32		85c6d02a91bc38a0		2017-10-05 10:22:57.656688-04	21
864	San caye	0	-25.2721497	-57.4862401	05/10/2017	12:34:31		abbc3cf52e38c05c	1	2017-10-05 11:34:44.041659-04	32
865	Stock lambare	0			05/10/2017	13:37:41		a7a0045a8560766f	4	2017-10-05 12:37:47.154169-04	20
866	Gran union	0	-25.2888884	-57.5904276	05/10/2017	13:55:28		f6cc2c2862945614		2017-10-05 12:55:50.840412-04	39
867	Stock villa elisa	1	-25.3673415	-57.5867771	05/10/2017	14:33:36		92e21d107142e0d4	4	2017-10-05 13:33:42.15967-04	4
868	España mariano	1			05/10/2017	14:44:08		b4cb6228a4e50158	1	2017-10-05 13:44:35.813871-04	29
869	s6lambare	0			05/10/2017	15:49:08		c2eccaaf1c2f279b	4	2017-10-05 14:49:46.43263-04	19
870	stock carretera	0	-25.3517682	-57.6242969	05/10/2017	17:02:47		85c6d02a91bc38a0	4	2017-10-05 16:03:15.555018-04	21
871	Stock itagua	1	-25.3924848	-57.3544059	05/10/2017	17:24:56		1aeb37366085a4ed		2017-10-05 16:25:29.351414-04	15
872	real san vicente	1			05/10/2017	19:05:59		1909393993302c72	4	2017-10-05 18:06:23.936433-04	8
873	San Cayetano	1			05/10/2017	21:23:09		abbc3cf52e38c05c	1	2017-10-05 20:23:27.828812-04	32
874	Gran union	1	-25.2888168	-57.5902616	05/10/2017	21:30:54		f6cc2c2862945614		2017-10-05 20:31:20.229235-04	39
875	s6lambare	1			05/10/2017	21:35:54		c2eccaaf1c2f279b	4	2017-10-05 20:36:16.814666-04	19
876	Comercial virgen del rosario	0			06/10/2017	04:39:56		c82d47d5d5c28717	1	2017-10-06 03:40:10.09336-04	31
877	s6lambare	0			06/10/2017	05:08:16		c2eccaaf1c2f279b	4	2017-10-06 04:08:57.487196-04	19
878	España mariano	0			06/10/2017	05:08:49		b4cb6228a4e50158	1	2017-10-06 04:09:24.841573-04	29
879	real san vicente	0			06/10/2017	05:17:24		1909393993302c72	4	2017-10-06 04:17:45.039829-04	8
880	Stock villa elisa	0	-25.367541	-57.5870868	06/10/2017	05:30:28		92e21d107142e0d4	4	2017-10-06 04:30:49.654899-04	4
881	Stock itagua	0	-25.3919524	-57.3544942	06/10/2017	05:30:46		1aeb37366085a4ed		2017-10-06 04:31:10.090977-04	15
882	stock carretera	0	-25.3520244	-57.6244383	06/10/2017	06:01:39		85c6d02a91bc38a0	4	2017-10-06 05:02:34.928113-04	21
883	Stock itagua	1	-25.3925642	-57.3542293	06/10/2017	10:23:29		1aeb37366085a4ed		2017-10-06 09:23:42.407414-04	15
884	real san vicente	1			06/10/2017	11:03:08		1909393993302c72	4	2017-10-06 10:03:33.044984-04	8
885	Gran union	0	-25.2888211	-57.5901953	06/10/2017	13:50:29		f6cc2c2862945614		2017-10-06 12:50:49.400425-04	39
886	Stock villa elisa	1	-25.3674207	-57.586932	06/10/2017	14:22:49		92e21d107142e0d4	4	2017-10-06 13:23:15.332577-04	4
887	stock carretera	1	-25.3516329	-57.6235973	06/10/2017	15:35:14		85c6d02a91bc38a0	4	2017-10-06 14:35:42.092968-04	21
888	Stock itagua	0			06/10/2017	16:55:05		1aeb37366085a4ed		2017-10-06 15:55:19.390547-04	15
889	real san vicente	1			06/10/2017	21:21:55		1909393993302c72	4	2017-10-06 20:22:18.791578-04	8
890	Gran union	1	-25.2894543	-57.5896311	06/10/2017	21:31:52		f6cc2c2862945614		2017-10-06 20:32:21.828897-04	39
891	Stock itagua	1			06/10/2017	21:34:25		1aeb37366085a4ed		2017-10-06 20:34:47.442674-04	15
892	España mariano	0			07/10/2017	05:05:18		b4cb6228a4e50158	1	2017-10-07 04:05:21.774056-04	29
893	real san vicente	0			07/10/2017	05:07:36		1909393993302c72	4	2017-10-07 04:07:59.45118-04	8
894	Gran union	0	-25.2888341	-57.5902063	07/10/2017	05:25:34		f6cc2c2862945614		2017-10-07 04:25:54.432882-04	39
895	Stock itagua	0	-25.3921932	-57.354141	07/10/2017	05:26:34		1aeb37366085a4ed		2017-10-07 04:27:04.029253-04	15
896	stock carretera	0	-25.3519809	-57.6242613	07/10/2017	06:00:43		85c6d02a91bc38a0	4	2017-10-07 05:01:35.183678-04	21
897	Stock villa elisa	0	-25.3680676	-57.5864674	07/10/2017	06:10:57		92e21d107142e0d4	4	2017-10-07 05:11:21.215367-04	4
898	españa mariano	1			07/10/2017	10:48:52		b4cb6228a4e50158	1	2017-10-07 09:49:19.51792-04	29
899	Stock villa elisa	1	-25.3668407	-57.5862461	07/10/2017	11:11:33		92e21d107142e0d4	4	2017-10-07 10:11:58.089387-04	4
900	stock carrretera	0	-25.2986584	-57.6124879	07/10/2017	12:20:25		85c6d02a91bc38a0	4	2017-10-07 11:21:13.368365-04	21
901	stock carretera	1	-25.298653	-57.6124658	07/10/2017	12:23:16		85c6d02a91bc38a0	4	2017-10-07 11:23:48.285083-04	21
902	real san vicente	1			07/10/2017	14:02:57		1909393993302c72	4	2017-10-07 13:03:17.63549-04	8
903	Gran union	1	-25.2885753	-57.5900736	07/10/2017	14:04:38		f6cc2c2862945614		2017-10-07 13:05:04.981461-04	39
904	Stock itagua	1			07/10/2017	15:35:53		1aeb37366085a4ed		2017-10-07 14:36:08.694628-04	15
905	stock carretera	0	-25.2992227	-57.6125653	07/10/2017	16:45:01		85c6d02a91bc38a0	4	2017-10-07 15:45:49.513004-04	21
906	Stock itagua	0			08/10/2017	05:15:20		1aeb37366085a4ed		2017-10-08 04:15:34.675644-04	15
907	Gran union	0	-25.2889456	-57.5900736	08/10/2017	05:41:37		f6cc2c2862945614		2017-10-08 04:41:56.152283-04	39
908	Casa fresca	0			08/10/2017	05:46:12		3b55ca72969c6e55	3	2017-10-08 04:48:38.244471-04	11
909	Stock villa elisa	0			08/10/2017	05:57:25		92e21d107142e0d4	4	2017-10-08 04:57:45.856753-04	4
910	Stock itagua	1			08/10/2017	12:14:26		1aeb37366085a4ed		2017-10-08 11:14:59.033335-04	15
911	real san vicente	0			08/10/2017	12:38:38		1909393993302c72	4	2017-10-08 11:39:03.203751-04	8
912	Real capiata	1	-25.3511149	-57.4471595	08/10/2017	12:45:30		8c55f8380f178cd7	7	2017-10-08 11:45:37.804543-04	6
913	Gran union	1	-25.2895226	-57.5897417	08/10/2017	13:04:10		f6cc2c2862945614		2017-10-08 12:04:36.127074-04	39
914	Stock villa elisa	1			08/10/2017	13:20:03		92e21d107142e0d4	4	2017-10-08 12:20:28.18141-04	4
915	real san vicente	1			08/10/2017	21:07:12		1909393993302c72	4	2017-10-08 20:07:43.597034-04	8
916	Stock itagua	0			09/10/2017	05:48:51		1aeb37366085a4ed		2017-10-09 04:49:07.981939-04	15
917	Stock villa elisa	0	-25.3674666	-57.587286	09/10/2017	06:12:11		92e21d107142e0d4	4	2017-10-09 05:12:43.440645-04	4
918	San Cayetano	0			09/10/2017	12:34:44		abbc3cf52e38c05c	1	2017-10-09 11:35:08.776597-04	32
919	Stock lambare	0			09/10/2017	13:16:18		a7a0045a8560766f	4	2017-10-09 12:16:40.349206-04	20
920	stock carretera	1	-25.3507504	-57.6242505	09/10/2017	15:24:08		85c6d02a91bc38a0		2017-10-09 14:25:02.704175-04	21
921	Stock itagua	1			09/10/2017	17:10:43		1aeb37366085a4ed		2017-10-09 16:11:05.393018-04	15
922	Stock villa elisa	1	-25.3675337	-57.5863457	09/10/2017	17:42:46		92e21d107142e0d4	4	2017-10-09 16:42:53.004761-04	4
923	San Cayetano	1			09/10/2017	21:07:00		abbc3cf52e38c05c	1	2017-10-09 20:07:04.46481-04	32
924	real san vicente	1			09/10/2017	21:12:03		1909393993302c72	4	2017-10-09 20:12:25.67112-04	8
925	Comercial virgen del rosario	0			10/10/2017	04:32:34		c82d47d5d5c28717	1	2017-10-10 03:32:52.045424-04	31
926	Gran union	0	-25.2895902	-57.5900148	10/10/2017	05:19:31		f6cc2c2862945614		2017-10-10 04:19:51.68981-04	39
927	Stock villa elisa	0	-25.367467	-57.5867439	10/10/2017	05:48:10		92e21d107142e0d4		2017-10-10 04:48:39.893141-04	4
928	Gran union	1	-25.2887876	-57.5901842	10/10/2017	12:13:02	Ir a reunion	f6cc2c2862945614		2017-10-10 11:13:30.785924-04	39
929	Stock. Villa elisa	1	-25.3671828	-57.5862572	10/10/2017	16:24:08		92e21d107142e0d4	4	2017-10-10 15:24:33.246596-04	4
930	Casa fresca	0			11/10/2017	04:37:01		3b55ca72969c6e55	3	2017-10-11 03:39:10.612721-04	11
931	Stock itagua	0			11/10/2017	05:22:29		1aeb37366085a4ed		2017-10-11 04:22:50.303586-04	15
932	stock carretera	0	-25.3516664	-57.6236084	11/10/2017	06:32:12		85c6d02a91bc38a0	4	2017-10-11 05:33:01.245521-04	21
933	stock carretera	0	-25.3510579	-57.623896	11/10/2017	10:15:59		85c6d02a91bc38a0	5	2017-10-11 09:16:47.64785-04	21
934	stock carretera	1	-25.3339617	-57.6133399	11/10/2017	10:24:21		85c6d02a91bc38a0		2017-10-11 09:25:01.275547-04	21
935	Stock itagua	1	-25.3924944	-57.3543618	11/10/2017	11:34:33		1aeb37366085a4ed		2017-10-11 10:34:52.544837-04	15
936	Casa fresca	1	-25.3268096	-57.570252	11/10/2017	11:36:35		3b55ca72969c6e55	3	2017-10-11 10:38:54.63397-04	11
937	real san vicente	0			11/10/2017	13:08:46		1909393993302c72	4	2017-10-11 12:09:17.389577-04	8
938	stock carretera	0			11/10/2017	18:06:58		85c6d02a91bc38a0	4	2017-10-11 17:07:49.522618-04	21
939	real san vicente	1			11/10/2017	21:17:20		1909393993302c72	4	2017-10-11 20:17:42.024555-04	8
940	stock carretera	1	-25.3510579	-57.623896	11/10/2017	21:37:20		85c6d02a91bc38a0	4	2017-10-11 20:38:03.302622-04	21
941	Stock villa elisa	0			12/10/2017	05:26:58		92e21d107142e0d4	4	2017-10-12 04:27:18.701033-04	4
\.


--
-- Name: app_marcacione_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('app_marcacione_id_seq', 941, true);


--
-- Data for Name: app_perfile; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY app_perfile (id, telefono_id, sexo, legajo, jefe_id, usuario_id) FROM stdin;
1	\N	\N	2316	1	4
2	\N	\N	1685	1	5
3	\N	\N	2812	1	6
4	\N	\N	2766	1	7
5	\N	\N	1697	1	8
6	\N	\N	1740	1	9
7	\N	\N	1691	1	10
8	\N	\N	1730	1	11
9	\N	\N	1492	1	12
10	\N	\N	1892	1	13
11	\N	\N	1735	1	14
12	\N	\N	1573	1	15
13	\N	\N	1927	1	16
\.


--
-- Name: app_perfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('app_perfile_id_seq', 13, true);


--
-- Data for Name: app_usuario; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY app_usuario (id, telefono_id, sexo, legajo, esta_activo, usuario_id) FROM stdin;
1		\N	1492	t	12
2		\N	1573	t	15
3		\N	1685	t	5
4		\N	1691	t	10
5		\N	1697	t	8
6		\N	1730	t	11
7		\N	1735	t	14
8		\N	1740	t	9
9		\N	1892	t	13
10		\N	1927	t	16
11		\N	2316	t	4
12		\N	2766	t	7
13		\N	2812	t	6
14	\N	\N	1620	t	19
15	\N	\N	2345	t	20
16	\N	\N	1611	t	21
17	\N	\N	2544	t	22
18	\N	\N	1000	t	23
19	\N	\N	1706	t	24
21	\N	\N	1613	t	26
22	\N	\N	2479	t	27
23	\N	\N	1615	t	28
24	\N	\N	1566	t	29
25	\N	\N	1809	t	30
26	\N	\N	1686	t	31
27	\N	\N	2638	t	32
28	\N	\N	3146	t	34
20	\N	\N	1604	t	25
29	\N	\N	1622	t	35
30	\N	\N	1943	t	36
31	\N	\N	1681	t	37
32	\N	\N	2390	t	38
33	\N	\N	1693	t	39
\.


--
-- Name: app_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('app_usuario_id_seq', 33, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add marcacione	7	add_marcacione
20	Can change marcacione	7	change_marcacione
21	Can delete marcacione	7	delete_marcacione
22	Can add jefe supermercado	8	add_jefesupermercado
23	Can change jefe supermercado	8	change_jefesupermercado
24	Can delete jefe supermercado	8	delete_jefesupermercado
25	Can add perfile	9	add_perfile
26	Can change perfile	9	change_perfile
27	Can delete perfile	9	delete_perfile
28	Can add token	10	add_token
29	Can change token	10	change_token
30	Can delete token	10	delete_token
31	Can add site	11	add_site
32	Can change site	11	change_site
33	Can delete site	11	delete_site
34	Can add email address	12	add_emailaddress
35	Can change email address	12	change_emailaddress
36	Can delete email address	12	delete_emailaddress
37	Can add email confirmation	13	add_emailconfirmation
38	Can change email confirmation	13	change_emailconfirmation
39	Can delete email confirmation	13	delete_emailconfirmation
40	Can add social application	14	add_socialapp
41	Can change social application	14	change_socialapp
42	Can delete social application	14	delete_socialapp
43	Can add social account	15	add_socialaccount
44	Can change social account	15	change_socialaccount
45	Can delete social account	15	delete_socialaccount
46	Can add social application token	16	add_socialtoken
47	Can change social application token	16	change_socialtoken
48	Can delete social application token	16	delete_socialtoken
49	Can add usuario	17	add_usuario
50	Can change usuario	17	change_usuario
51	Can delete usuario	17	delete_usuario
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_permission_id_seq', 51, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
22	pbkdf2_sha256$36000$kKNCvY0xxSH0$cOkYS38r/mP4Tg/DmOgeuUAP+IlADPYnyqTovf6YRmE=	2017-09-16 05:53:42.327048-04	f	2544	JULIA NATIVIDAD	SAMANIEGO VERA	controller@tecnodesign.com.py	f	t	2017-09-15 08:20:03.351477-04
10	pbkdf2_sha256$24000$PGE8StaC4mpT$v5mT3ZFtcLtgw21EjDWZ+EdYco60VRHSAG957S+M0j4=	2017-08-16 14:55:42.904219-04	f	1691	Atilio	Fernandez	controller@tecnodesign.com.py	f	t	2017-08-16 14:32:22.524016-04
9	pbkdf2_sha256$24000$JfOoqKOGoOau$xVK5r0r18lvfac6jDHwmkbbXhlG0kBPj6xwJ3ZDlyP8=	2017-08-23 13:51:56.474596-04	f	1740	Maxima	Quiñonez	controller@tecnodesign.com.py	f	t	2017-08-16 14:28:43.969216-04
30	pbkdf2_sha256$36000$dS0Tz2nW68lC$q8l/VeK6mQSCv40AVLqzRN2xqRLoHxGsj301aFjBDOg=	\N	f	1809	CARMEN	BAZAN ROA	controller@tecnodesign.com.py	f	t	2017-09-18 09:23:47.451525-04
6	pbkdf2_sha256$36000$XNdDlqdLLtXw$z18FiCZazCYonXZLNZ+4oVBJKjKuMwadeV6wuUc3wK4=	2017-10-06 10:28:12.427608-04	f	2812	Corazón de María	Dominguez	controller@tecnodesign.com.py	f	t	2017-08-16 14:25:30.757235-04
5	pbkdf2_sha256$24000$UD339WazEMii$NGOJ84aDE8/ufA8JWWlBtxUhC+T07c4OrfbUw34EfkY=	2017-08-16 14:25:49.065573-04	f	1685	Nilce Noelia	Benitez Vera	controller@tecnodesign.com.py	f	t	2017-08-16 14:24:36.236146-04
18	pbkdf2_sha256$36000$SR6UJ8Rr9tjF$+GHK4AAnVfnZBzrnrlM8ctkUzFpgfnupDwK8vxLxRVw=	2017-10-06 16:43:30.831585-04	t	gcaceres	Gustavo	Caceres		t	t	2017-08-24 11:59:16-04
31	pbkdf2_sha256$36000$m8N3LdPA48Ym$Izqm4uGP1wd/O5PFzqOVfniNipwmJUEydnxVf4ASziU=	2017-09-18 18:46:51.99613-04	f	1686	MARINA	GONZALEZ FLORENTIN	controller@tecnodesign.com.py	f	t	2017-09-18 09:24:32.068209-04
35	pbkdf2_sha256$36000$pTzK26yreMG5$KPLkN4DK9P91xN7VWAhGocTJ0cSDj+MOVB23WLLJzO0=	2017-09-23 13:24:35.350544-04	f	1622	VICTOR NARCISO	CAÑETE INSFRAN	controller@tecnodesign.com.py	f	t	2017-09-22 11:31:26.511179-04
29	pbkdf2_sha256$36000$d8jVSMUQkgUL$1zo6EIN4QiydZE4+K1obEA3boxdPubnJFSQ26rX2IkA=	2017-09-18 19:33:32.904154-04	f	1566	CRISMILDA SOLEDAD	MOLINA VERA	controller@tecnodesign.com.py	f	t	2017-09-18 09:22:59.547066-04
20	pbkdf2_sha256$36000$sJSOeQS1HeSb$4e6nIrJN1oTWizBMeACWwFybsfZrK2vXRCOURZbk7kY=	2017-09-15 11:49:03.798665-04	f	2345	ANA RAQUEL	JUSTINIANO MARECO	controller@tecnodesign.com.py	f	t	2017-09-15 08:15:48.889705-04
21	pbkdf2_sha256$36000$cMMC0nofNDtt$UH9N55IzVSz7QShMJYQJUOLyKAS/mgRORGFp8XTOtfM=	2017-09-15 12:13:42.387494-04	f	1611	ARSENIO RAMON	GALEANO	controller@tecnodesign.com.py	f	t	2017-09-15 08:18:47.394022-04
13	pbkdf2_sha256$24000$Lpy30pKg6Eg4$qjZk5hRQ0X0lb4qvU+uABs8yg2gSERQEuyMARx4wJYk=	\N	f	1892	Rommy	Salanueva	controller@tecnodesign.com.py	f	t	2017-08-16 14:37:12.9145-04
7	pbkdf2_sha256$36000$6Fldqyi431e1$4FjFQzzQ32oNUwOSm8B5sNXG4sdPvamgzhRkBAbUWWk=	2017-09-06 12:18:51.334643-04	f	2766	Lidia	Benitez Insaurralde	controller@tecnodesign.com.py	f	t	2017-08-16 14:26:56.446336-04
14	pbkdf2_sha256$24000$fYaBtJ9QYyq8$H3PjzFC0h1IgLlh90Gvaio+7FSjeZBBeSDypiQCTzmU=	2017-08-24 20:07:50.823776-04	f	1735	Gustavo	González	controller@tecnodesign.com.py	f	t	2017-08-16 14:37:59.423874-04
4	pbkdf2_sha256$36000$xusGe72c8MGt$WtT9WlvnrShGcMLH191sGvGo1DG6mex4gr4N+itoPZ4=	2017-09-06 12:32:49.259156-04	f	2316	Lucio Antonio	Bogado Baez	controller@tecnodesign.com.py	f	t	2017-08-16 14:23:38.792129-04
24	pbkdf2_sha256$36000$bfZ0C9Aw6mue$JxOz+uaMoZQ9bwLYwgPH/CzWSXem0QO9cS8jYBaG5Zg=	\N	f	1706	YEIMY BEATRIZ	GONZALEZ GIMENEZ	controller@tecnodesign.com.py	f	t	2017-09-18 07:49:03.865301-04
27	pbkdf2_sha256$36000$H0xOz0sYMXuI$gv3V6DQLcIUDxC3awdcDCGhmZtUJ5dvYAVHCgZwcfZM=	2017-10-11 17:59:07.632927-04	f	2479	EMILCE MABEL	VELAZQUEZ AMARILLA	controller@tecnodesign.com.py	f	t	2017-09-18 09:20:50.024764-04
11	pbkdf2_sha256$36000$LJEmHTK7cVOb$xE+kGHeMKofjvJ9XPAK7DGgphAG9LEJstHMYZzt4e8Q=	2017-09-14 11:04:30.39379-04	f	1730	Christian	Ferreira	controller@tecnodesign.com.py	f	t	2017-08-16 14:34:29.778216-04
16	pbkdf2_sha256$36000$f5GlpjnMrEo0$7JhfCmyLNf3udPEaPKnmry6pOa30FYsNg45L7KRj3qU=	2017-10-03 12:10:58.150124-04	f	1927	Gabriel	Spaini	controller@tecnodesign.com.py	f	t	2017-08-16 14:40:24.319543-04
37	pbkdf2_sha256$36000$nafRKbApNkWx$9oMSdGMEAvWfLx4z95C9/7qzL8bYsCTBj6QdlxESQ1I=	\N	f	1681	YDALINA	ROMERO MORENO	controller@tecnodesign.com.py	f	t	2017-09-22 11:32:49.417773-04
17	pbkdf2_sha256$36000$Kwp9mJDeLnt3$rhaTN4ANuF0hZS04khGx0Gt3TxI1ylDhvrCrShzzLk4=	2017-10-06 14:08:57.827569-04	t	rrhh	RRHH			t	t	2017-08-23 12:27:23-04
1	pbkdf2_sha256$36000$XoFW0ys3GRT6$D2+XggaoS+OUmk9VEr69RdXzZay7+DRlD6Z8VFmr3HM=	2017-10-10 15:43:11.282457-04	t	admin			admin@admin.com	t	t	2017-08-16 12:59:16.652029-04
26	pbkdf2_sha256$36000$BlI3divX2sPr$7tncUUTOSKmwR/fz7OnlrlCjJGdoB2pgjqsg7FHDUdQ=	\N	f	1613	ALICIA	RAMIREZ RODAS	controller@tecnodesign.com.py	f	t	2017-09-18 09:19:04.951851-04
32	pbkdf2_sha256$36000$R95AAxG6uQdm$ET9fHYqXAp9fm5+/kQp5U9nyaH7bTdlE4JndtTTjnIU=	2017-09-22 19:33:22.201057-04	f	2638	RODRIGO ARIEL	GAETE DUARTE	controller@tecnodesign.com.py	f	t	2017-09-18 09:25:34.852282-04
19	pbkdf2_sha256$36000$1GYnJhbT3ojt$b2PRSQhr1JzrAuJQzPsL6DnMVsctP/1W/m1uR1dr04s=	2017-09-19 05:22:25.142712-04	f	1620	Laura	Fernandez	controller@tecnodesign.com.py	f	t	2017-08-25 07:51:27.784648-04
28	pbkdf2_sha256$36000$hOUNqRW9uzmU$RimDvJ/l0xmXgN2BvLf6F0LBJzLfwnB18tKCal8jZ6k=	\N	f	1615	SONIA LIZ	MOREL DIAZ	controller@tecnodesign.com.py	f	t	2017-09-18 09:22:23.417437-04
34	pbkdf2_sha256$36000$gDhoUZd0CMje$QZ2/ts7GncP7dt7GXodi9APl0bc74lYuStQL35ckqCc=	\N	f	3146	LAURA	GONZALEZ	controller@tecnodesign.com.py	f	t	2017-09-18 10:17:47.996981-04
39	pbkdf2_sha256$36000$h5X9OTRMe8Cu$pd8151dsUAIrM/DfjqnhgFgC4vFchtpVExKCYsf2A8I=	2017-09-28 15:41:07.982032-04	f	1693	NILDA CAROLINA	AGUERO	controller@tecnodesign.com.py	f	t	2017-09-28 15:40:15.476197-04
25	pbkdf2_sha256$36000$PuT9J3lDbfhY$RFWymurIxs7P3rezN2kTBre7S67/a7IJM9LDOh+dQwQ=	2017-09-18 15:38:50.771628-04	f	1604	MARIA ESTHER	ARGUELLO	controller@tecnodesign.com.py	f	t	2017-09-18 09:18:05.563897-04
23	pbkdf2_sha256$36000$6UMRZ5l9SuNR$q8hWiDVdhuds4bTNr7YMg8X8jmGl1vwcuTjoZB2le1E=	2017-09-18 17:33:37.843864-04	f	1000	RRHH	POLLPAR S.A	controller@tecnodesign.com.py	f	t	2017-09-15 08:54:49.587988-04
15	pbkdf2_sha256$36000$8qKDlKBa6euD$SRNBxf9hNehnoJYvUuS1XrK6h+J7kmsU2+669Y8SD3w=	2017-09-26 22:58:41.320001-04	f	1573	Lidia	Galeano	controller@tecnodesign.com.py	f	t	2017-08-16 14:39:12.185361-04
38	pbkdf2_sha256$36000$zVz5oHSxeIsR$iygliaeomn4sYM9rk4duA9N67494Gemew++3SG1vaLY=	2017-09-22 12:21:15.730365-04	f	2390	ADA RAMONA	DIAZ PORTILLO	controller@tecnodesign.com.py	f	t	2017-09-22 11:33:33.596589-04
8	pbkdf2_sha256$36000$rFb6x60vKAjQ$KsZ/Gv+JVrwqwRZwmD7Pob5QeA+Q/jU9v80KUkkszvg=	2017-09-26 12:32:07.489034-04	f	1697	Aldo	Mendez	controller@tecnodesign.com.py	f	t	2017-08-16 14:27:58.152794-04
36	pbkdf2_sha256$36000$c8O9KN7J7cQX$Jis9APIQ2RFgxLJOFT+ePRNCMYFzMGeBVJyO23f30s4=	2017-09-23 05:41:48.067418-04	f	1943	NELSON ANTONIO	LEZCANO NUÑEZ	controller@tecnodesign.com.py	f	t	2017-09-22 11:32:08.710361-04
12	pbkdf2_sha256$36000$OfaG9S4t2Sky$UVf1OCdWSZadNOMcawTCfT7wm2fwrF7vrTqh0cshHoA=	2017-10-03 14:53:56.916758-04	f	1492	Gabriel	Ruíz Díaz	controller@tecnodesign.com.py	f	t	2017-08-16 14:35:48.748632-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_user_id_seq', 39, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY authtoken_token (key, created, user_id) FROM stdin;
00dee5b3ac7c2c8f13921e54b1ca3829e7f6f84a	2017-08-16 13:00:19.307702-04	1
74e849ddc888d8d03147c7895be74698ac88fa22	2017-08-16 14:25:49.05852-04	5
63e4244e318d1040691ec1dc2e856b0179eda5d3	2017-08-16 14:45:57.661187-04	16
81c4bcfcdbfc58d348345ce9b236c77ef43b737f	2017-08-16 14:45:58.137641-04	14
20139eaba005e9eaac51141968b928c7c89a5b16	2017-08-16 14:45:58.389898-04	4
c37fc3ed9f5a259e80b687ac280d73762bde5414	2017-08-16 14:45:59.012576-04	15
1de2b936635b4f6f42b6f5a96d9910c5d9ac0758	2017-08-16 14:45:59.800816-04	11
d19ebbfca38b32765f574c784601fc9c32a635b0	2017-08-16 14:46:36.077626-04	8
69ab1df522d4786930715ac88a78a48310bdb6e7	2017-08-16 14:47:11.578057-04	12
9486d953cc9d436a13895b036f7d6b7dd5328f3c	2017-08-16 14:49:54.537287-04	7
8d9c9b79d034a2632f8c84a6b8f004cad45e1557	2017-08-16 14:50:55.27237-04	6
9cf4fbc26d3cf3e64a7d4813ea2b9c64ef935c99	2017-08-16 14:55:42.895454-04	10
244c44878b6297bbebe3180a310383074184deaf	2017-08-23 13:51:56.463133-04	9
fbeb5c2889b2b76bc86fa06e6075788ee8e57a16	2017-08-25 11:31:58.330595-04	19
ba390084722d55d1e25131c71d2aa9a9e58806aa	2017-09-15 11:15:49.551279-04	23
9b14d4defde8ca07de292572b1f2bf7d6faceb88	2017-09-15 11:43:51.131853-04	21
64ddc7ccbbbea5670df3635fbf3791a6e7d9af12	2017-09-15 11:44:42.128858-04	20
e03ead7d34cd600a626a907bd1a820eb16f5b759	2017-09-16 05:53:42.317421-04	22
067252f2a84daecaa43e39e6be03fffa2426d853	2017-09-18 11:38:10.699817-04	18
c11cb697712b2c0c17a1ac1c4a974e5dc0de2a0d	2017-09-18 15:38:50.75934-04	25
a13642212336a59c9d572b2607393c263fcf67e0	2017-09-18 18:04:47.161949-04	27
a5e5f442cbbe1926f531d299432fd177be8617da	2017-09-18 18:46:51.986991-04	31
fa2f5d516df40ddeebdef17cb3ca4eb22b46ba11	2017-09-18 19:33:32.881543-04	29
493fcc31df5f1ce9e1f462d30983c7fca3dbb3d1	2017-09-22 12:21:15.721291-04	38
42adcc11d2521806e6cc0179e4329f71b7e81f45	2017-09-22 19:33:22.190576-04	32
ca3f630ac67e6b4e5ab1c5a67b51ba69cf02697d	2017-09-23 05:41:48.0593-04	36
c1f4789898d67742799ecdc77736dd1951a744b5	2017-09-23 13:24:35.340918-04	35
b5495bdbfea973dfefd7847d94eed547d37e23f3	2017-09-28 15:41:07.972189-04	39
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-08-16 13:19:09.03712-04	4	admin	3		7	1
2	2017-08-16 13:19:09.04213-04	3	admin	3		7	1
3	2017-08-16 13:19:09.043962-04	2	admin	3		7	1
4	2017-08-16 13:19:09.045646-04	1	admin	3		7	1
5	2017-08-16 14:22:53.679179-04	1	admin	1	Añadido.	8	1
6	2017-08-16 14:24:00.779832-04	2	1685	3		4	1
7	2017-08-23 08:17:07.244637-04	1	1492	1	Añadido.	17	1
8	2017-08-23 08:17:14.417739-04	2	1573	1	Añadido.	17	1
9	2017-08-23 08:17:22.570017-04	3	1685	1	Añadido.	17	1
10	2017-08-23 08:17:30.320334-04	4	1691	1	Añadido.	17	1
11	2017-08-23 08:17:38.345592-04	5	1697	1	Añadido.	17	1
12	2017-08-23 08:17:45.800202-04	6	1730	1	Añadido.	17	1
13	2017-08-23 08:17:54.40393-04	7	1735	1	Añadido.	17	1
14	2017-08-23 08:18:02.325095-04	8	1740	1	Añadido.	17	1
15	2017-08-23 08:18:08.780511-04	9	1892	1	Añadido.	17	1
16	2017-08-23 08:18:15.955796-04	10	1927	1	Añadido.	17	1
17	2017-08-23 08:18:22.834953-04	11	2316	1	Añadido.	17	1
18	2017-08-23 08:18:29.708022-04	12	2766	1	Añadido.	17	1
19	2017-08-23 08:18:38.147786-04	13	2812	1	Añadido.	17	1
20	2017-08-23 12:27:23.660105-04	17	rrhh	1	Añadido.	4	1
21	2017-08-23 12:27:38.179469-04	17	rrhh	2	Modificado/a first_name, is_staff y is_superuser.	4	1
22	2017-08-24 11:59:16.788061-04	18	gcaceres	1	Añadido.	4	1
23	2017-08-24 12:01:46.281974-04	18	gcaceres	2	Modificado/a is_staff y is_superuser.	4	1
24	2017-09-05 14:41:32.241593-04	302	admin	3		7	1
25	2017-09-05 22:09:11.233901-04	303	admin	3		7	1
26	2017-09-06 12:11:53.154616-04	304	admin	3		7	1
27	2017-09-07 09:40:49.962474-04	17	rrhh	2	[{"changed": {"fields": ["password"]}}]	4	1
28	2017-09-13 13:14:22.244952-04	418	admin	3		7	17
29	2017-09-13 13:14:22.25091-04	417	admin	3		7	17
30	2017-09-13 13:14:22.253015-04	416	admin	3		7	17
31	2017-09-13 13:14:22.254735-04	415	admin	3		7	17
32	2017-09-13 14:15:17.00081-04	420	admin	3		7	17
33	2017-09-13 14:15:17.006804-04	419	admin	3		7	17
34	2017-09-13 16:22:39.140401-04	426	admin	3		7	17
35	2017-09-13 16:22:39.144215-04	425	admin	3		7	17
36	2017-09-13 16:22:39.146159-04	424	admin	3		7	17
37	2017-09-13 16:22:39.147866-04	423	admin	3		7	17
38	2017-09-13 16:22:39.149432-04	422	admin	3		7	17
39	2017-09-13 17:07:45.118612-04	428	admin	3		7	17
40	2017-09-13 17:07:45.122697-04	427	admin	3		7	17
41	2017-09-18 12:25:30.221053-04	18	gcaceres	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	17
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 41, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	app	marcacione
8	app	jefesupermercado
9	app	perfile
10	authtoken	token
11	sites	site
12	account	emailaddress
13	account	emailconfirmation
14	socialaccount	socialapp
15	socialaccount	socialaccount
16	socialaccount	socialtoken
17	app	usuario
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('django_content_type_id_seq', 17, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY django_migrations (id, app, name, applied) FROM stdin;
38	contenttypes	0001_initial	2017-08-22 23:24:05.40907-04
39	auth	0001_initial	2017-08-22 23:24:05.433651-04
40	account	0001_initial	2017-08-22 23:24:05.459987-04
41	account	0002_email_max_length	2017-08-22 23:24:05.491991-04
42	admin	0001_initial	2017-08-22 23:24:05.5138-04
43	admin	0002_logentry_remove_auto_add	2017-08-22 23:24:05.532994-04
44	app	0001_initial	2017-08-22 23:26:01.166855-04
45	contenttypes	0002_remove_content_type_name	2017-08-22 23:26:47.681378-04
46	auth	0002_alter_permission_name_max_length	2017-08-22 23:26:47.68508-04
47	auth	0003_alter_user_email_max_length	2017-08-22 23:26:47.68732-04
48	auth	0004_alter_user_username_opts	2017-08-22 23:26:47.690499-04
49	auth	0005_alter_user_last_login_null	2017-08-22 23:26:47.694267-04
50	auth	0006_require_contenttypes_0002	2017-08-22 23:26:47.697567-04
51	auth	0007_alter_validators_add_error_messages	2017-08-22 23:26:47.701092-04
52	authtoken	0001_initial	2017-08-22 23:26:47.704525-04
53	sessions	0001_initial	2017-08-22 23:26:47.70847-04
54	sites	0001_initial	2017-08-22 23:26:47.711724-04
55	sites	0002_alter_domain_unique	2017-08-22 23:26:47.714914-04
56	socialaccount	0001_initial	2017-08-22 23:26:47.717518-04
57	socialaccount	0002_token_max_lengths	2017-08-22 23:26:47.719973-04
58	socialaccount	0003_extra_data_default_dict	2017-08-22 23:26:47.722999-04
59	app	0002_usuario	2017-08-22 23:30:11.518834-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('django_migrations_id_seq', 59, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
zcrneth36dmuhpg6xuyna0ym52sbdq92	MDk5ZTg4Zjg0M2YwMmQzMWI2MDk0YWI1OTE3ZmUyODhkN2FiYWQyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTVkYTNkOTAxNzBhZWI1MjM2NjJmM2Q4YTNlY2NiODNiYTlmYWVlYSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-08-30 13:00:19.325206-04
4cc2bvq4ynhsef6nid04rrsvc7wptxpv	Y2U5MTUwZDhhMzE3N2MyMzIyZGVmNzQ1OTEzYTg0MzBhNGQxZjBiMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZGEzZDkwMTcwYWViNTIzNjYyZjNkOGEzZWNjYjgzYmE5ZmFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 13:09:11.567594-04
vismwulleaolyyavikol1jpm9c1prdar	Y2U5MTUwZDhhMzE3N2MyMzIyZGVmNzQ1OTEzYTg0MzBhNGQxZjBiMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZGEzZDkwMTcwYWViNTIzNjYyZjNkOGEzZWNjYjgzYmE5ZmFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 13:17:45.237051-04
b69dkvrrm0h5s541vlruja2in6zuo5w6	Y2U5MTUwZDhhMzE3N2MyMzIyZGVmNzQ1OTEzYTg0MzBhNGQxZjBiMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZGEzZDkwMTcwYWViNTIzNjYyZjNkOGEzZWNjYjgzYmE5ZmFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 13:18:12.917148-04
souhgqyc7v1vodj3eavg3i2153hunc5m	NzM1Mjc2Y2NmZmY0YmRiYWZlMzI3ZWY5NmRlZjYzMjFmZTdiODFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY2NzU3MmVlMzgxNDI3ZWYyNDc4ZGZiMTA0ODlmZDNjYzhkZjBhMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-15 13:19:57.257105-04
sagmfro33dwkh75vt2ojlnja62eud8yw	NDI5ZDIzNWNkYzY1ZjJlODVkNWZjYzNlNjA2OTgwYzllZjk2MjJiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRiZGZkYjVjMjlmODgzZGFjZDM2ZjEwNGQ3MWU1MDA4OGNiNjNiY2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9	2017-08-30 14:45:59.036706-04
uk0dwn04zmfw7n1o380p70mtk06i0ydz	OWY1ZWVhYTg0NmNlYTkzMTlkY2IyMjI2ZTQ3NTY3MWQ3OTI1ZjYxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRjOGI5ZjdlMjg5MjRlZjQxY2ZmMWQwMDBhNmI2ZThhNTE1MzA5YTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9	2017-08-30 14:45:59.813102-04
9du9n8zvtl1tfuxaojfvyggthjfizqmf	N2UyM2ExN2QzNjYzZDBkOGViMmU4ZjY2NGZhNzU3M2YyMmNkODE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-18 18:16:15.157537-04
i733ly1gzgbxv4e095sifi69e6irxf72	MWJjMTM3OWY3YWFmYmY3ZmM0ZTA3ZDJjOTcxMjM5MjNjNGVlZGI3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAwYTM1ZTg5Yzg1MzRiODA4NWUzNmFkZGQ0Zjk3OGM0ODg2Y2E1NWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2017-08-30 14:49:54.553891-04
2oqs04rpbcmh6h87iuvsvmc8zmaabspl	N2ZjMDBhNWYyOTQ2MGFkMDg2NGUxYmIwZjQwNmZkYzdkNGVhYjc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE1MDVmZGQ3OTE2NTk0NWViY2YzMTRjMWUzZGNiNjE3NTg2ODM3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-08-30 14:50:55.296016-04
14z36nqot783ap2k391v2eazfhozxwhc	Y2U5MTUwZDhhMzE3N2MyMzIyZGVmNzQ1OTEzYTg0MzBhNGQxZjBiMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZGEzZDkwMTcwYWViNTIzNjYyZjNkOGEzZWNjYjgzYmE5ZmFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-30 15:24:32.609439-04
5f1be8yae9ys8ya2va2vi3m8jbprgvkj	NzIzMzFhNTVhOTU2NTQ0ZjQ1NTFhYzE0NmZiNDcyMzk4M2QwMjk1ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmM2NjOTI1YTA5MGM4YjRiNTgzODczMmFhOGYxNTQ0OTQ4N2I1Y2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-08-31 15:11:35.134923-04
m6srp9x400i9juasercwqlxrj35sl1vw	Y2U5MTUwZDhhMzE3N2MyMzIyZGVmNzQ1OTEzYTg0MzBhNGQxZjBiMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZGEzZDkwMTcwYWViNTIzNjYyZjNkOGEzZWNjYjgzYmE5ZmFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-01 07:20:05.490523-04
7dt0xplnuccd7c7izloxdb0xrjisl3ju	N2UyM2ExN2QzNjYzZDBkOGViMmU4ZjY2NGZhNzU3M2YyMmNkODE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-04 15:16:23.578364-04
smybr0k9sqliumq9vyxoqhuw02ldf378	Yjg1MzI2ODRmNjYxNzY3YTk1NTZiYWM5MGExNGVjYzlmMzIwYWU0YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZDg0ODc5NmY0Mjc5Y2FkM2FmMzMzNjk0MTNkMWQ1MjFmYjkzNzUwIn0=	2017-09-04 18:25:53.168725-04
w9pfspdobx0dn1148aerm4dtg0kxtest	YWM5MjNmYTI3ZGUyYTQwN2I2MzBiNWZkOWJmZWIyZjUwYTk3Yzk0MDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZjNlOGY5ZDBmOTNhZjY5NjI2ZDQ3Zjg3MjlkODYzOWFkZDI0MzUwIn0=	2017-09-05 11:39:40.261296-04
nj1vwjm68fr4f41n26k730c4pys77qcn	ZjI1OWJhMWU3YWVjNWQyMTQxNzc1ODdiYTc5N2ZmYzE5Njg2OTI4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTVkYTNkOTAxNzBhZWI1MjM2NjJmM2Q4YTNlY2NiODNiYTlmYWVlYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-05 22:10:01.591543-04
46uowzvmzgjxuw5gacccrv5a1a0r9jo9	NWJkMzZhZjExYzQyNDczYTc5MGUzM2UwY2ZhYWE2MTJiMWZiYjE4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI3N2FlODdiOWNmNDM4ZmYwNDMxZGRkMzQ3YTY2OWRhNGM3NTI3YmUiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-06 13:51:56.479594-04
gkq16yrjqrzc2alqczbpypnmui0f8urf	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-19 14:15:32.32442-04
y99i7gyqg3xzywbaorixph4bwoqqr9o2	MDI5OGMxZGY0MzhjYTgzNmYzZTQ3MGFlMzk1YzE1YzcxNTJhMWRkOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NzU3MmVlMzgxNDI3ZWYyNDc4ZGZiMTA0ODlmZDNjYzhkZjBhMGEiLCJfYXV0aF91c2VyX2lkIjoiMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-07 12:02:38.410857-04
zrtvg01mc1deat6vmzoz7krfldx03uta	YjFkODkzODEwYmE3NzVhM2Y5MjA3ZmQxYjdmOWUzYmU3ZWZiYzkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0ZDAzYjZjMDlmODU3ZGY1Yjc3NTM1NWRmOGMyMDBjZjlkOGMwMWQiLCJfYXV0aF91c2VyX2lkIjoiMTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-07 20:07:50.831224-04
5pkwvtezejcodo3jmtak3jcj2j1wj65y	MGQxNWM4NjkzMjk2OTBjN2ZiNDgxZWRmYmUxNmY5ZGRlMTVjZWJmNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImViZGRlZDY5M2RjNzg4NWUzZjg5NDVkNjBjNjcyZTAxNzViZjg4NDEiLCJfYXV0aF91c2VyX2lkIjoiMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-08 11:31:58.348746-04
everax043o84vixs7ij4mwc06drsc22u	MDI5OGMxZGY0MzhjYTgzNmYzZTQ3MGFlMzk1YzE1YzcxNTJhMWRkOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NzU3MmVlMzgxNDI3ZWYyNDc4ZGZiMTA0ODlmZDNjYzhkZjBhMGEiLCJfYXV0aF91c2VyX2lkIjoiMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-08 13:38:49.326164-04
1dea7hguauk3cd9exfgw5vnqdb9xjpd1	NzM1Mjc2Y2NmZmY0YmRiYWZlMzI3ZWY5NmRlZjYzMjFmZTdiODFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY2NzU3MmVlMzgxNDI3ZWYyNDc4ZGZiMTA0ODlmZDNjYzhkZjBhMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-15 16:22:43.046841-04
ibfax2rwgljdj57rrn6kp4yyh469w4ph	N2Q0Y2M2NzViNzg3ZWY2MWM4NjUyZDc5OGM4M2Y5MWI1OTQwMGU5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzBhNmNjZWE3ZjAzMjE4MmRjMjVhMWZhYTVlM2U4YThmNDgxZGQ4MiJ9	2017-09-16 11:50:13.458639-04
5seu6k02l8nqbr3i0douuhucb8bhc2t6	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 22:08:17.786146-04
sphhmqluvhiscxhzzqmamjbvyr5prj6t	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-25 08:03:08.692404-04
jjo116mvv02xlzqs0350yr5my72vka87	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 11:23:31.907238-04
y3xp4nzedoi7lpzyfwu9iyes8uygtzgj	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-04 12:59:49.999268-04
jiairdf806knvqxa1uifoo4ufheny2m6	NjBiMGMzZWU3NWZiY2RkNmNhYzVjN2RiOGZmNTEyMjkwOTJhYzJiMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTZhNWM4ZTE1YzY4ZDNmYWZlMjRlY2U0NzQ0Y2ZjY2M2NDc1ODg1NCIsIl9hdXRoX3VzZXJfaWQiOiIyMyJ9	2017-10-02 17:33:37.852378-04
dx7819crcdd7p744skf9b9aoqxexcs79	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-02 20:11:53.2759-04
5rvfmhrk4ps6971wsf46t22zuklvf03d	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-22 22:02:52.339108-04
n781adfj3fdqt6pkl4d49pl66stkrsuf	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-18 19:04:12.005011-04
8pq8hr6d7saccm5lggp7gj8uvu1bo241	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 22:19:00.094657-04
2nz2le6pqmbbbjn9s3df3ek7cvcnvy6r	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 11:41:08.183314-04
aei1tgz4a1a9n1uwihinvoxmzq2lulgf	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-20 09:55:17.031412-04
kgrpi2zlt0z40at65hrt253kl05yoeq5	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-05 14:32:01.006209-04
xdxqkni6tsbflvdywkexqzaum09fm2l4	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-20 12:08:36.422988-04
3adh9k2xlvftyx0v9lxl03v1f4yrfduw	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-23 08:25:28.963447-04
qvmszunbls6iau3sletmhipnj158yy6o	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-03 12:46:01.367851-04
ot462qbte0vzmd42qxaw63d5g2dcthms	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-18 19:04:35.816584-04
7fi3d8wuuezwwzyccmwvalhmvo9tg055	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 22:22:58.616338-04
0nlnu625obq4wbchabgtrhk47yiff77y	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 12:01:49.170029-04
2tp2p9n96xmny5579vwkw8u8a4i17w3j	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-20 09:55:32.155993-04
b08xct0bwtzserbajknqe3g2xddcdn6g	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-05 19:03:53.256803-04
c4rbn02615s4163gqsha4cz65xit8xdg	MWY3NTFiMjFhZjllNTM0ZjFiOGU4NjY4YmI0NDVkNDg2M2M5ZDVkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4ZDRmMmVlNjBkNjc2ZjY2YWJkOTgwZjZjOGEwMWYwNDE0MWYwZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2017-09-20 12:18:51.339522-04
2mhrfjbqzq61gtkzzzb47xbjwcowl6c8	ZDc3OWE2MTVjODhkY2M4NGQ4NmNkNWQxYmZjOTRlMzFhYzVjYWY4Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIwIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjI0N2ExMThjMTAzZmFhMTM3ODJkN2E1YzE4ZDk2MGYyMDEzNDhhNSJ9	2017-09-29 11:48:48.984139-04
h5p601wnxnqmbnto4k2ol8881kpnuvek	ZDJiNTkxZTE4ZWJhYTdiOTU5ZWIyNmEzMzJiOThiNGJlYjY5ZTBiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTEyMTI1ZTFiZDE5NmZhMzczMzliOTFkNjk5OWNmZmYwY2ZhNWNjMiIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2017-10-03 13:03:27.474922-04
8belued8cwuljtp1fmk0fdh8sfl2beio	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-24 15:43:11.286717-04
dvymcx7yatqhtkdpfu2u16rniwwxh790	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 22:31:59.570151-04
gxr9v2p9978g3o45igdj6xtw69d9ntak	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 12:03:11.639924-04
lihdap66ugxuvufr8yervd3mqqc7hw3j	ODM1YTFjMmEzYjc0ODJhMDBlZTVhMDk5MGZkN2M2YzFlNjBiZjdmODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjI0N2ExMThjMTAzZmFhMTM3ODJkN2E1YzE4ZDk2MGYyMDEzNDhhNSIsIl9hdXRoX3VzZXJfaWQiOiIyMCJ9	2017-09-29 11:48:12.282777-04
5l6kh2ezwlmygdssn57s7ywsp2fp58d0	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-20 10:07:48.913639-04
v2nyzxb2x9j1hvq0v14oez4yc1iayrk7	Y2M0MTcxMjZiMmJkNzQ3MzA2ZDRjYWM0NjVhNjljYzNiNWRkNjFlYjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1MjBhMDhkNWE1NGVlMTE1YWNkZGRkNDE5MDYwNzE0NTJlOGJlMWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2017-09-20 12:32:49.26519-04
ihwzjbpexcgcd9emvwkjd46mtj37xv6f	OTJmMzViZDlmZTBhYTQzZmM5NjFmNjhmNzU4YzA3MDQzZDVhYjYwODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWY5M2VlMmVkZWYxMDgzOWQ1M2ExZWYwZTAxZDljMGIyMzllYTlkNSIsIl9hdXRoX3VzZXJfaWQiOiIzOCJ9	2017-10-06 12:21:15.735666-04
r80beqx6jtcka5cdpfygf46frhgx38xl	NjFlNDkwMzYxNTVjMzQwYzExOTc0Y2VmZTEyZjc1MmQ2NzdmY2QxNTp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIl9hdXRoX3VzZXJfaGFzaCI6IjE1NGRkNmVlZGU0Y2E0NTYxZTZiNmI3NGU2ODRiMzVjYmEwODc1MDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-10-25 17:59:07.638359-04
d9vg89d6gsxovuc6w4k6uq96myq6ezun	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 09:00:43.340441-04
bs2ekseaec2qw237qmt8amjy74702x1b	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 23:20:28.055613-04
qbyljyuos8hgk22jmzvexx69o32t5lsa	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 12:18:07.027647-04
55jynyv392gmc21wn7v9duysaqsmgazt	YzFkYTEzMDIxNGFhYmIzMjFhOGI4OWYxY2Y4MTE0OGZlZDg3OGM3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmNjZjJmNTg2YzNhZTMxNGI1YjQ4Y2FmMWE3OTc0YzA0MGFmZmY1In0=	2017-09-20 10:59:30.001192-04
35gs3lqy7t5eydlnxqvi9pbq3jafnng2	NDhiMjE2MDU5MjcwODcyNTYwY2EzOWVjZGVlMzU0ZTJiOGM4NzJkNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTFmZDUyNzA5MjdjNzRlYWE2YjdhZWUzOWZkMDMyNGMzNWVjMzY1YyIsIl9hdXRoX3VzZXJfaWQiOiIzMiJ9	2017-10-06 19:33:22.205409-04
oyb4saawdu0jrnuxpxtxhh946z6gvj03	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-20 14:29:08.845911-04
vsfy4io8xlzcjeqk8f5n9pvfotyiobgf	ODM1YTFjMmEzYjc0ODJhMDBlZTVhMDk5MGZkN2M2YzFlNjBiZjdmODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjI0N2ExMThjMTAzZmFhMTM3ODJkN2E1YzE4ZDk2MGYyMDEzNDhhNSIsIl9hdXRoX3VzZXJfaWQiOiIyMCJ9	2017-09-29 11:49:03.803322-04
d783atgr4g8d514npgx7qi641ew0zvm8	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 09:35:32.508416-04
7uturr3xcq8a7qew9m93medmlehle8lq	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 09:43:38.062659-04
1jvby2v717rssx67r8s0upg9dntuneh6	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 23:21:20.285732-04
msdwhzr7y9b4gxrefg2wfl6h2fakzgxr	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 13:12:30.427235-04
6qirkx8dfobkcji8aljoahqrussh8uf2	YzFkYTEzMDIxNGFhYmIzMjFhOGI4OWYxY2Y4MTE0OGZlZDg3OGM3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmNjZjJmNTg2YzNhZTMxNGI1YjQ4Y2FmMWE3OTc0YzA0MGFmZmY1In0=	2017-09-20 11:01:01.714706-04
29nbymwfhda2jemk6h7g8sr1rp0go9nc	OGRiZGQwZmJhZGIxYTk5YzcyYmYyMGRjNzA3ZmUzNTU1MDYwMGQzNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDUyNDRiMjNiZDRjNDJmMzI2N2ZlZGVmY2YyMmY1OTkwNjdjYzM5OCIsIl9hdXRoX3VzZXJfaWQiOiIzNiJ9	2017-10-07 05:41:48.071967-04
mnxb4y85h9n3qnkgdxzktxor40qkxkkf	NDM2M2YwYTcyMDc5MTY0NzM5ZDJiMTUzYTM5NjMwOGE5MmI4ZmE2OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2QzZjM5OWU1NWY3NjNlMmMyZDI0OTM3OGQ4OGVmZTIwOTMyZTZhMyIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9	2017-09-29 12:13:42.392335-04
ifnuifwx9i0jvnztnckqe1kr9lb78133	MjM2ZDgwNzc3M2E0MTUxNWNlYWUwMWZkMzVkZDVhODM4NzQwZmZjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTM2ZTUwMTQyYjgzYzA0YTAzNzQwN2Q1NzZhZjdlNzljZDBlZGQxMCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-10-10 12:32:07.495344-04
tn9hdv5x3jsa6larv538igs6nq5112go	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 10:59:20.624909-04
qwew1t0d55x71zcwc7awc75r8dbfr874	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 23:21:46.793727-04
nv3idr5j3eitc7fbxiqtfb3xi86i7z1p	N2QxMDBmYmFjYzM5YTNlZTQ1ZWM2YzVlNzBhZmFmM2U3MGFjMzAxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODY1MjM0YzAxMzMyMzdlNzlkMjcxYWE5YjQ0ODliMjM0YmUwNDYwZCIsIl9hdXRoX3VzZXJfaWQiOiIzNSJ9	2017-10-07 13:24:35.355203-04
su9v3ii50y31vlrksm7qel1h19wveimr	YzFkYTEzMDIxNGFhYmIzMjFhOGI4OWYxY2Y4MTE0OGZlZDg3OGM3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmNjZjJmNTg2YzNhZTMxNGI1YjQ4Y2FmMWE3OTc0YzA0MGFmZmY1In0=	2017-09-27 13:34:17.155966-04
ld0jjfm9avjglq8dlwsgqju4hrmqp28f	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-20 22:40:08.314488-04
2nfyajerloaapntw1o192b4mc50tqufy	NmExY2MyN2QxNjM2YTBkZGM2NDZkMmEyZTM5MWRlOGQ3YWM1NjQxNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0ZGI3MjJhNDYyNTE2ZTEyNjFiY2ZmYTUyZjE4YTA3NDcxMTkxY2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9	2017-09-27 10:05:28.92202-04
zsr0u30ryigrh1zhmsqb2abvh419zpkk	NmJkNzE0Y2I1NTIwYmRmNGRmNWM5MzkxNWRiNTFhODUxOTdjYWNkMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmI5MTgzMmJjNzBkZjMzY2JlMTMzNTkwNjRhYWQ4ZjNhMzA5ODNlMyIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9	2017-09-29 17:32:17.848725-04
m6wy58l6k2oc3qglo27svwpo7856743m	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:01:07.047118-04
vtp0k6fk872bl26racoivzq3jps8hizc	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 13:34:01.233541-04
tvzw7zyupazfaqgwgy6a6f6opic7m3fw	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 18:16:05.425347-04
0jvbnkomko24kz0x399kt55dr3hz1lgk	ZDNhYWJiMWNmZTMzMzMwNTdhNjlhOTU0YjhhZmU0MDE1ZGFiYjQ0MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI2YmNjZjJmNTg2YzNhZTMxNGI1YjQ4Y2FmMWE3OTc0YzA0MGFmZmY1In0=	2017-10-10 08:13:17.991112-04
59v3ohmssv0ikqhxg1hx3pyjytc6nuvt	MzE5ZjhhNzM1ODU2MmQwM2Y3OGJkM2UyNTQzZTQ5NTk5YmY5YWZkZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDliZDJlNzJlOGUzNjg1MDhjNzYxNGM4YjY4M2M4YmMxNTRjZjdkYiIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9	2017-10-17 12:10:58.159805-04
i4esto9uzjo7xjlaxoidq6eb3sq9auoj	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:03:10.332133-04
7ggaoa9nbxzcj8bbyjxlum7vhiry7aga	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 14:25:13.953698-04
cew56mx5z6fjz36tazwbdoqwcziqtii6	MGM3MzM0YTgzY2UyNDg3NTM3NWE0MjNjMTlmYzg0M2M4YWZkZGYyODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1IiwiX2F1dGhfdXNlcl9oYXNoIjoiYmI5MTgzMmJjNzBkZjMzY2JlMTMzNTkwNjRhYWQ4ZjNhMzA5ODNlMyJ9	2017-10-10 22:58:41.331148-04
ryio7ipdb0jdh1o9cc1orkespfn6z3jq	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 19:28:18.016321-04
90sk9nr2as11mgj1eoab9c8aork1teaf	ZTgyODU1MmVjMGZmOTgyYTBkMGY4NjAyMDljNzk0ZjlhNzhmNTMxNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmU1ZDc1ZGI3N2Q4Y2IyZmI5ZjI3NTgxN2Q4Yzg5ZjlkZjM2ZTZhZSIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9	2017-10-03 05:22:25.147977-04
6uabwgafounaitreh71si9uud74o53cd	ZWQ4MTZkNWFkYjcxYTk3ZjgyYjZjMjU1NmRlOTlkMWM5OWZjZmU4Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:06:31.324192-04
kqdls12kmj0dpr3f716ygnj7n7p9p2n4	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 16:18:58.241657-04
zper6pew94oq2ak877tqr7tix4lsiqvj	ZTM0NzI5YThmMjVmMjdmNWYwY2QyOTRiYzg1MDhiNWNhZDExZDgzMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVkY2Y4MzM1NmE5MTk3OTYwMDU3YjBiZGU0M2YyNjkzOGQ5ZWJjNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-23 11:09:23.556975-04
jzioi3ib0tbuu0rxp9si0j47xtm8f4v4	ZWJkMTcxY2I2YjNlMDA0MWQyY2Q1MWM3NTk3M2RlODg0MjA0ZDkxMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE4IiwiX2F1dGhfdXNlcl9oYXNoIjoiNTEyMTI1ZTFiZDE5NmZhMzczMzliOTFkNjk5OWNmZmYwY2ZhNWNjMiJ9	2017-10-12 13:48:10.968241-04
loldkpfrqaoo4idqplf01q9elyp8d5b6	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 20:25:43.565075-04
ujhv4ywehcgrcldjkja1niw4a3heiiyp	N2UyM2ExN2QzNjYzZDBkOGViMmU4ZjY2NGZhNzU3M2YyMmNkODE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:29:36.905067-04
km5llmz6tv4vz29ydrrzic2s467fyuqi	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 16:48:16.749277-04
9ussqwyctmafbxxw46ix0tko4rjy2reg	ZDNhYWJiMWNmZTMzMzMwNTdhNjlhOTU0YjhhZmU0MDE1ZGFiYjQ0MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI2YmNjZjJmNTg2YzNhZTMxNGI1YjQ4Y2FmMWE3OTc0YzA0MGFmZmY1In0=	2017-10-12 15:28:04.667568-04
i9gettibyt42rxnnco0owma8ca9e9cve	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 21:41:39.88916-04
6xj7kfd7oji6swh0gdbq8vuglkcpj6wr	N2UyM2ExN2QzNjYzZDBkOGViMmU4ZjY2NGZhNzU3M2YyMmNkODE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:30:14.286579-04
mte0ixadt3nj51xxac2pqkw6ga1lvk0f	NmFlZWQ2OGVkNTI4YjA2N2Y3MGIyMzVhMzBlY2FkMjFhNDM3Y2I0ODp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfaGFzaCI6IjI5MzFkYjNjNzUzZjM2NDRjYmUzZTA5OTAzYmJiODc2YjMwOWJlNjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-21 09:41:11.720021-04
1adjq50wgah0him4l3z8b67mre5o6h69	YWZiMWI3NzJjMWMzMmVkYjViZTdmM2QzNGRkY2U0ZDRhMTE0MmY3ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVkY2Y4MzM1NmE5MTk3OTYwMDU3YjBiZGU0M2YyNjkzOGQ5ZWJjNSIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-09-27 16:58:57.396554-04
dpyqe60dtxnostex4w5dh9qcrxo5sqnj	MTM2NGIwMTU1MWIzYWNiNjcyNWY4NmQzOGUwNGFhOWYwZWQwOTY3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjM5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMTI4YTM0MTcyNWM4MTgyM2Q1MzRhNWU0OGU3MGQ0ZmJhNTAzZjYyMyJ9	2017-10-12 15:41:07.987545-04
4ujpt8jf5nzv9kd6r1aht76oa9xi6otd	ZDJjMGU4NWRjYjMxM2EyMTBkMjg0MDhjNDEwZGNjZmZmMDA5MDk1MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjY1ODUxNjA2ZmRkOWFhZWVkNmZjN2QzYjVlYzUzNjQzNDhiMTQ3NiIsIl9hdXRoX3VzZXJfaWQiOiIyMiJ9	2017-09-30 05:53:42.332578-04
q5lz3htxkhemflhb22qui0i8as85pf37	N2UyM2ExN2QzNjYzZDBkOGViMmU4ZjY2NGZhNzU3M2YyMmNkODE5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWRhM2Q5MDE3MGFlYjUyMzY2MmYzZDhhM2VjY2I4M2JhOWZhZWVhIn0=	2017-09-19 11:32:17.311228-04
o20dw0pcvbfo2a8cqbuir88ds9m4gcbo	OGQ5NGJiNGQyNzhhMDVlMmZhNmI1MDRjMjQ2NzczNGZmNDNmODRjNjp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfaGFzaCI6IjUxMjEyNWUxYmQxOTZmYTM3MzM5YjkxZDY5OTljZmZmMGNmYTVjYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-22 11:18:18.890912-04
r175mxqsenphy8wc58qfodnwwzrxjfs7	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-27 17:00:13.769996-04
znk9ihaaa0hgrnsb5xifhjf609xt5ldi	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-30 08:13:50.112083-04
k98omn722jilykoyxqegwfv3tn06qtuf	Mzk0OWM3ZjNiYTg3NzkzN2MwZGE1NjcwNmY2ZTVjNDU3NmQ2MzMyNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTIyZDFiZmJiZTVlNGQyMjhmY2ZiNjllY2UxMTdiMDBlYTI1YzFhOSIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-10-17 14:53:56.923036-04
a3xfcojpn8hrlf0ptie58div4uay4pek	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-22 19:01:15.377407-04
gjtj6dxv18efi8j85ksxe781makbov6c	Mzk0OWM3ZjNiYTg3NzkzN2MwZGE1NjcwNmY2ZTVjNDU3NmQ2MzMyNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTIyZDFiZmJiZTVlNGQyMjhmY2ZiNjllY2UxMTdiMDBlYTI1YzFhOSIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-09-27 18:03:51.688374-04
z6walxqzdd1dr7bi31g6pj7r135k4bsq	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-17 12:36:03.997345-04
8q3ka0za06wru4jbnf3a4bdvjl7btnm4	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-30 08:16:40.404583-04
to2uw47wrwhzc9yvrss37xnthv8uto8e	M2U3YTEzOGE3MDU1YWQ3MDViMzgwMzM1NzE1MmExYzAxZjQ2ODFkYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxMjEyNWUxYmQxOTZmYTM3MzM5YjkxZDY5OTljZmZmMGNmYTVjYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2017-09-19 14:18:53.208511-04
88o7rpynd9s7pp97eelpsxs7pzd8b896	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-22 22:09:25.57865-04
tjea9oju4aeylarz5v41j99f5w7lne7p	ZDJiNTkxZTE4ZWJhYTdiOTU5ZWIyNmEzMzJiOThiNGJlYjY5ZTBiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTEyMTI1ZTFiZDE5NmZhMzczMzliOTFkNjk5OWNmZmYwY2ZhNWNjMiIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2017-10-02 11:38:10.716569-04
k8jrgp89ymps9zj9opa8iidmb9zhq8gj	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-23 07:56:03.672751-04
9ewdnnmgv1i3t7mm85uxpiv2zp766eh2	YWZiMWI3NzJjMWMzMmVkYjViZTdmM2QzNGRkY2U0ZDRhMTE0MmY3ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVkY2Y4MzM1NmE5MTk3OTYwMDU3YjBiZGU0M2YyNjkzOGQ5ZWJjNSIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-09-28 10:45:27.512258-04
xesd3ag9kutfyivh1ylzz2sfte448ssh	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-20 10:24:33.797401-04
c5903ukmn8f41pw90orwcf3hpyb8yc7y	ZDJiNTkxZTE4ZWJhYTdiOTU5ZWIyNmEzMzJiOThiNGJlYjY5ZTBiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTEyMTI1ZTFiZDE5NmZhMzczMzliOTFkNjk5OWNmZmYwY2ZhNWNjMiIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2017-10-02 11:41:58.275305-04
sc5z8l380n768m7hdkerslwwci302e7m	NzRmMDcyNzY3OTRhNGI5ODljM2I3Mjg4MzRiYzMxYTUwMjg5NjJkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyMmQxYmZiYmU1ZTRkMjI4ZmNmYjY5ZWNlMTE3YjAwZWEyNWMxYTkiLCJfYXV0aF91c2VyX2lkIjoiMTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-09-19 14:28:11.827198-04
z46mwd4e0fc69jkme9426lca66xlb3nv	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-23 09:58:58.293052-04
krqtzg0ctrxcplct16qhaf05o6mi1lpc	ZDJiNTkxZTE4ZWJhYTdiOTU5ZWIyNmEzMzJiOThiNGJlYjY5ZTBiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTEyMTI1ZTFiZDE5NmZhMzczMzliOTFkNjk5OWNmZmYwY2ZhNWNjMiIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2017-09-29 05:33:54.551644-04
fo7jcg4y38m69728lah061tgcecjb3w5	YTFmNmFkNzNkNjAzNmY5NDg1NjdlNTE4MzhkYzQ3MzU0NGYzYTA1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-20 10:27:37.410222-04
wwjq56mer0n0hj5du5dtbp6dt0rpjhda	MmI5Yzk0OThhMjcwMWM0YWM2ODkzNTMwYzk3YzE5ZDMzMGQ5ZTExNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2JjYjVlZTBmN2Y4YjBiNTVkYWNhMGI2MjY3YTIwODI0NGZkMWRhMiIsIl9hdXRoX3VzZXJfaWQiOiIyNSJ9	2017-10-02 15:38:50.777459-04
6z1b7j2wjqpudsj38a6n4up9yiw9pfjv	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 14:28:48.060354-04
l8lqp4u0x043qf0px84lv2cxxs57gpfa	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-24 11:48:21.231495-04
t80hg9ga41ey6ogl15jm4gpr1em7vq2x	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 05:49:14.501432-04
szoben4l8b69fi3mm9g6bygpn87r832l	ZTM0NzI5YThmMjVmMjdmNWYwY2QyOTRiYzg1MDhiNWNhZDExZDgzMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVkY2Y4MzM1NmE5MTk3OTYwMDU3YjBiZGU0M2YyNjkzOGQ5ZWJjNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-20 10:28:12.435011-04
j2oiqvnnnlcw1o2f2mxcgbj7iswyyuh8	MzQ2ZTM3NjM2NTJiM2JjZGNjNjVmYWRjNjEwYjk5NDkxZTk0NzEwNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTU0ZGQ2ZWVkZTRjYTQ1NjFlNmI2Yjc0ZTY4NGIzNWNiYTA4NzUwNiIsIl9hdXRoX3VzZXJfaWQiOiIyNyJ9	2017-10-03 03:33:18.069094-04
acudcywo7dqd4f951cd8c564uttpog1a	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 14:30:33.72278-04
9vpzbhv77bvo22q88rq0lkh9vppro71t	NmM2ODQ2ZjkxM2EwM2FmN2RjM2QxNDQ0YzM5MWQ3Nzg0Y2UxOGUyMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTRkYjcyMmE0NjI1MTZlMTI2MWJjZmZhNTJmMThhMDc0NzExOTFjYiJ9	2017-09-28 11:04:30.400852-04
xg14vp5vnplrlo5p1jr8fea35g3j895p	OTAyOTZlODcxMTRjOGU3ZDNkMjg5MDQ2NzEzNzdmZDkzMzc4MWU3Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjkzMWRiM2M3NTNmMzY0NGNiZTNlMDk5MDNiYmI4NzZiMzA5YmU2OSIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9	2017-09-29 08:02:28.974125-04
84j9l9baur87i3dh9run095br2l2u4ia	ZmMzMDkzNjEwMTE1NGNhYzJiNDdiMmJmMjE3OTU4ZmUxODE3YmMxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODdiNGQwNjQ4M2NjNDY4ZjUxNGFiYWRmODc0Yzg3Y2E3MWE1YzVjMiIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9	2017-10-02 18:46:52.000656-04
8cg6t838maorwfb4tkh0ex6h0riwoxwu	OWI1YzEzZmRhMzQwMzllZjc2NTljZmIzMDAxMGIxOTRjMzgwNGNhMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-19 21:06:50.30993-04
jhccfuzcy6zf8owjexkg8cz7yuh4spvb	YzUyOGZiYjIxYjMzZjFlYTg5ZThkMTNjOTRmYzczNjE3NmFjNjM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiY2NmMmY1ODZjM2FlMzE0YjViNDhjYWYxYTc5NzRjMDQwYWZmZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-24 23:29:15.020081-04
nquoj2a4gsntf2re1fzp8p5ahv3depjj	MzQ5NmVhNDVjYjA0YmQzMWFhNGRkYzA1NzA0OWVjZDQzODcyYmM1ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmJjY2YyZjU4NmMzYWUzMTRiNWI0OGNhZjFhNzk3NGMwNDBhZmZmNSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-09-29 09:45:58.322609-04
3mpwze0lyamzx8cc94ej79b3v1h11zux	OGQ5NGJiNGQyNzhhMDVlMmZhNmI1MDRjMjQ2NzczNGZmNDNmODRjNjp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfaGFzaCI6IjUxMjEyNWUxYmQxOTZmYTM3MzM5YjkxZDY5OTljZmZmMGNmYTVjYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2017-10-20 16:43:30.835352-04
6d2vauxtsgy3bio8qx00uk6jbugk7xtu	ZDA0YjU0MWE5MzQ2OTE4ZmY3YmU4MTI3ZWRlYjg2ZWM4MjEyNGM5OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDkyOTU3ZmM3ZTBmNzQwNWQ2NTlkYjE4MGYwZjQ5NzJjYWNjY2ExOCIsIl9hdXRoX3VzZXJfaWQiOiIyOSJ9	2017-10-02 19:33:32.909323-04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('socialaccount_socialaccount_id_seq', 1, false);


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('socialaccount_socialapp_id_seq', 1, false);


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: pollpar
--

COPY socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pollpar
--

SELECT pg_catalog.setval('socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: app_jefesupermercado_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY app_jefesupermercado
    ADD CONSTRAINT app_jefesupermercado_pkey PRIMARY KEY (id);


--
-- Name: app_marcacione_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY app_marcacione
    ADD CONSTRAINT app_marcacione_pkey PRIMARY KEY (id);


--
-- Name: app_perfile_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY app_perfile
    ADD CONSTRAINT app_perfile_pkey PRIMARY KEY (id);


--
-- Name: app_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY app_usuario
    ADD CONSTRAINT app_usuario_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount_provider_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialtoken_app_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: pollpar; Tablespace: 
--

ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_e8701ad4; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX account_emailaddress_e8701ad4 ON account_emailaddress USING btree (user_id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailconfirmation_6f1edeac; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX account_emailconfirmation_6f1edeac ON account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: app_jefesupermercado_abfe0f96; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX app_jefesupermercado_abfe0f96 ON app_jefesupermercado USING btree (usuario_id);


--
-- Name: app_marcacione_abfe0f96; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX app_marcacione_abfe0f96 ON app_marcacione USING btree (usuario_id);


--
-- Name: app_perfile_abfe0f96; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX app_perfile_abfe0f96 ON app_perfile USING btree (usuario_id);


--
-- Name: app_perfile_bac5e582; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX app_perfile_bac5e582 ON app_perfile USING btree (jefe_id);


--
-- Name: app_usuario_abfe0f96; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX app_usuario_abfe0f96 ON app_usuario USING btree (usuario_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_e8701ad4; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX socialaccount_socialaccount_e8701ad4 ON socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_9365d6e7; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX socialaccount_socialapp_sites_9365d6e7 ON socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_fe95b0a0; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX socialaccount_socialapp_sites_fe95b0a0 ON socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_8a089c2a; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX socialaccount_socialtoken_8a089c2a ON socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_f382adfe; Type: INDEX; Schema: public; Owner: pollpar; Tablespace: 
--

CREATE INDEX socialaccount_socialtoken_f382adfe ON socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_em_email_address_id_5b7f8c58_fk_account_emailaddress_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_em_email_address_id_5b7f8c58_fk_account_emailaddress_id FOREIGN KEY (email_address_id) REFERENCES account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_jefesupermercado_usuario_id_31a8396e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_jefesupermercado
    ADD CONSTRAINT app_jefesupermercado_usuario_id_31a8396e_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_marcacione_usuario_id_ca33074d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_marcacione
    ADD CONSTRAINT app_marcacione_usuario_id_ca33074d_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_perfile_jefe_id_a096aba0_fk_app_jefesupermercado_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_perfile
    ADD CONSTRAINT app_perfile_jefe_id_a096aba0_fk_app_jefesupermercado_id FOREIGN KEY (jefe_id) REFERENCES app_jefesupermercado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_perfile_usuario_id_8e4e0375_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_perfile
    ADD CONSTRAINT app_perfile_usuario_id_8e4e0375_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_usuario_usuario_id_62fc5af8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY app_usuario
    ADD CONSTRAINT app_usuario_usuario_id_62fc5af8_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialacc_account_id_951f210e_fk_socialaccount_socialaccount_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialacc_account_id_951f210e_fk_socialaccount_socialaccount_id FOREIGN KEY (account_id) REFERENCES socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccou_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccou_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id FOREIGN KEY (socialapp_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_soc_app_id_636a42d7_fk_socialaccount_socialapp_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_soc_app_id_636a42d7_fk_socialaccount_socialapp_id FOREIGN KEY (app_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_site_site_id_2579dee5_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: pollpar
--

ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_site_site_id_2579dee5_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

