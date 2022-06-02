--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg20.04+1+b1)
-- Dumped by pg_dump version 14.1

-- Started on 2022-06-02 23:47:47

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
-- TOC entry 218 (class 1259 OID 10175878)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 217 (class 1259 OID 10175877)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 217
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 267 (class 1259 OID 10176132)
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 222 (class 1259 OID 10175900)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 221 (class 1259 OID 10175899)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 221
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 220 (class 1259 OID 10175889)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 219 (class 1259 OID 10175888)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 219
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 268 (class 1259 OID 10176137)
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 236 (class 1259 OID 10175975)
-- Name: bidangs; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.bidangs (
    id integer NOT NULL,
    nama_bidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.bidangs OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 235 (class 1259 OID 10175974)
-- Name: bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bidangs_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 235
-- Name: bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.bidangs_id_seq OWNED BY public.bidangs.id;


--
-- TOC entry 238 (class 1259 OID 10175984)
-- Name: direktorats; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.direktorats (
    id integer NOT NULL,
    nama_direktorat character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.direktorats OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 237 (class 1259 OID 10175983)
-- Name: direktorats_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.direktorats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direktorats_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 237
-- Name: direktorats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.direktorats_id_seq OWNED BY public.direktorats.id;


--
-- TOC entry 240 (class 1259 OID 10175993)
-- Name: divisis; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.divisis (
    id integer NOT NULL,
    nama_divisi character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.divisis OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 239 (class 1259 OID 10175992)
-- Name: divisis_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.divisis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisis_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 239
-- Name: divisis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.divisis_id_seq OWNED BY public.divisis.id;


--
-- TOC entry 226 (class 1259 OID 10175922)
-- Name: files; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 225 (class 1259 OID 10175921)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 225
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 269 (class 1259 OID 10176142)
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 242 (class 1259 OID 10176002)
-- Name: fit_propers; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.fit_propers (
    id integer NOT NULL,
    status character varying(255),
    cat_kelebihan text,
    cat_kekurangan text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.fit_propers OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 241 (class 1259 OID 10176001)
-- Name: fit_propers_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.fit_propers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fit_propers_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 241
-- Name: fit_propers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.fit_propers_id_seq OWNED BY public.fit_propers.id;


--
-- TOC entry 244 (class 1259 OID 10176013)
-- Name: grades; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    nama_grade character varying(255),
    level_kompetensi character varying(255),
    ki_inti integer,
    ki_peran integer,
    ki_bidang integer,
    kode_grade character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.grades OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 243 (class 1259 OID 10176012)
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 243
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- TOC entry 273 (class 1259 OID 10176163)
-- Name: grades_jenjang_fungsional_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.grades_jenjang_fungsional_links (
    grade_id integer,
    jenjang_fungsional_id integer
);


ALTER TABLE public.grades_jenjang_fungsional_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 272 (class 1259 OID 10176158)
-- Name: grades_jenjang_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.grades_jenjang_links (
    grade_id integer,
    jenjang_id integer
);


ALTER TABLE public.grades_jenjang_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 274 (class 1259 OID 10176168)
-- Name: grades_jenjang_struktural_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.grades_jenjang_struktural_links (
    grade_id integer,
    jenjang_struktural_id integer
);


ALTER TABLE public.grades_jenjang_struktural_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 228 (class 1259 OID 10175933)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 227 (class 1259 OID 10175932)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 246 (class 1259 OID 10176024)
-- Name: jabatans; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jabatans (
    id integer NOT NULL,
    nama_jabatan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jabatans OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 277 (class 1259 OID 10176183)
-- Name: jabatans_grade_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jabatans_grade_links (
    jabatan_id integer,
    grade_id integer
);


ALTER TABLE public.jabatans_grade_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 245 (class 1259 OID 10176023)
-- Name: jabatans_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.jabatans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jabatans_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 245
-- Name: jabatans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.jabatans_id_seq OWNED BY public.jabatans.id;


--
-- TOC entry 276 (class 1259 OID 10176178)
-- Name: jabatans_jenjang_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jabatans_jenjang_links (
    jabatan_id integer,
    jenjang_id integer
);


ALTER TABLE public.jabatans_jenjang_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 275 (class 1259 OID 10176173)
-- Name: jabatans_unit_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jabatans_unit_links (
    jabatan_id integer,
    unit_id integer
);


ALTER TABLE public.jabatans_unit_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 250 (class 1259 OID 10176044)
-- Name: jenjang_fungsionals; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jenjang_fungsionals (
    id integer NOT NULL,
    nama_jenjang character varying(255),
    jenis_jenjang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jenjang_fungsionals OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 249 (class 1259 OID 10176043)
-- Name: jenjang_fungsionals_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.jenjang_fungsionals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenjang_fungsionals_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 249
-- Name: jenjang_fungsionals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.jenjang_fungsionals_id_seq OWNED BY public.jenjang_fungsionals.id;


--
-- TOC entry 252 (class 1259 OID 10176055)
-- Name: jenjang_strukturals; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jenjang_strukturals (
    id integer NOT NULL,
    nama_jabatan character varying(255),
    jenis_jabatan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jenjang_strukturals OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 251 (class 1259 OID 10176054)
-- Name: jenjang_strukturals_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.jenjang_strukturals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenjang_strukturals_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 251
-- Name: jenjang_strukturals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.jenjang_strukturals_id_seq OWNED BY public.jenjang_strukturals.id;


--
-- TOC entry 248 (class 1259 OID 10176033)
-- Name: jenjangs; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.jenjangs (
    id integer NOT NULL,
    nama_jenjang character varying(255),
    jenis_jenjang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jenjangs OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 247 (class 1259 OID 10176032)
-- Name: jenjangs_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.jenjangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenjangs_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 247
-- Name: jenjangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.jenjangs_id_seq OWNED BY public.jenjangs.id;


--
-- TOC entry 254 (class 1259 OID 10176066)
-- Name: pegawais; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais (
    id integer NOT NULL,
    nip character varying(255),
    nama_pegawai character varying(255),
    religion character varying(255),
    email character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    gender character varying(255),
    no_hp character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pegawais OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 283 (class 1259 OID 10176213)
-- Name: pegawais_bidang_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_bidang_links (
    pegawai_id integer,
    bidang_id integer
);


ALTER TABLE public.pegawais_bidang_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 281 (class 1259 OID 10176203)
-- Name: pegawais_direktorat_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_direktorat_links (
    pegawai_id integer,
    direktorat_id integer
);


ALTER TABLE public.pegawais_direktorat_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 282 (class 1259 OID 10176208)
-- Name: pegawais_divisi_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_divisi_links (
    pegawai_id integer,
    divisi_id integer
);


ALTER TABLE public.pegawais_divisi_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 278 (class 1259 OID 10176188)
-- Name: pegawais_grade_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_grade_links (
    pegawai_id integer,
    grade_id integer
);


ALTER TABLE public.pegawais_grade_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 253 (class 1259 OID 10176065)
-- Name: pegawais_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.pegawais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pegawais_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 253
-- Name: pegawais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.pegawais_id_seq OWNED BY public.pegawais.id;


--
-- TOC entry 285 (class 1259 OID 10176223)
-- Name: pegawais_jabatan_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_jabatan_links (
    pegawai_id integer,
    jabatan_id integer
);


ALTER TABLE public.pegawais_jabatan_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 279 (class 1259 OID 10176193)
-- Name: pegawais_jenjang_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_jenjang_links (
    pegawai_id integer,
    jenjang_id integer
);


ALTER TABLE public.pegawais_jenjang_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 286 (class 1259 OID 10176228)
-- Name: pegawais_pendidikan_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_pendidikan_links (
    pegawai_id integer,
    pendidikan_id integer
);


ALTER TABLE public.pegawais_pendidikan_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 294 (class 1259 OID 11792522)
-- Name: pegawais_penguji_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_penguji_links (
    pegawai_id integer,
    penguji_id integer
);


ALTER TABLE public.pegawais_penguji_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 295 (class 1259 OID 13007980)
-- Name: pegawais_peserta_nip_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_peserta_nip_links (
    pegawai_id integer,
    peserta_id integer
);


ALTER TABLE public.pegawais_peserta_nip_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 284 (class 1259 OID 10176218)
-- Name: pegawais_sub_bidang_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_sub_bidang_links (
    pegawai_id integer,
    sub_bidang_id integer
);


ALTER TABLE public.pegawais_sub_bidang_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 280 (class 1259 OID 10176198)
-- Name: pegawais_unit_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pegawais_unit_links (
    pegawai_id integer,
    unit_id integer
);


ALTER TABLE public.pegawais_unit_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 256 (class 1259 OID 10176077)
-- Name: pendidikans; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pendidikans (
    id integer NOT NULL,
    nama_pendidikan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pendidikans OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 255 (class 1259 OID 10176076)
-- Name: pendidikans_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.pendidikans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pendidikans_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 255
-- Name: pendidikans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.pendidikans_id_seq OWNED BY public.pendidikans.id;


--
-- TOC entry 258 (class 1259 OID 10176086)
-- Name: pengujis; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pengujis (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pengujis OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 287 (class 1259 OID 10176243)
-- Name: pengujis_fit_proper_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pengujis_fit_proper_links (
    penguji_id integer,
    fit_proper_id integer
);


ALTER TABLE public.pengujis_fit_proper_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 257 (class 1259 OID 10176085)
-- Name: pengujis_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.pengujis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengujis_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 257
-- Name: pengujis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.pengujis_id_seq OWNED BY public.pengujis.id;


--
-- TOC entry 289 (class 1259 OID 10176253)
-- Name: pengujis_penilaian_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pengujis_penilaian_links (
    penguji_id integer,
    penilaian_id integer
);


ALTER TABLE public.pengujis_penilaian_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 288 (class 1259 OID 10176248)
-- Name: pengujis_peserta_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pengujis_peserta_links (
    penguji_id integer,
    peserta_id integer
);


ALTER TABLE public.pengujis_peserta_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 260 (class 1259 OID 10176095)
-- Name: penilaians; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.penilaians (
    id integer NOT NULL,
    enthusiasthic integer,
    creative integer,
    building integer,
    strategic integer,
    customer integer,
    driving integer,
    visionary integer,
    empowering integer,
    keandalan integer,
    kecepatan integer,
    manajemen integer,
    kontribusi_kpi integer,
    internal integer,
    eksternal integer,
    akumulasi_nilai double precision,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.penilaians OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 290 (class 1259 OID 10176258)
-- Name: penilaians_fit_proper_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.penilaians_fit_proper_links (
    penilaian_id integer,
    fit_proper_id integer
);


ALTER TABLE public.penilaians_fit_proper_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 259 (class 1259 OID 10176094)
-- Name: penilaians_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.penilaians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penilaians_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 259
-- Name: penilaians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.penilaians_id_seq OWNED BY public.penilaians.id;


--
-- TOC entry 262 (class 1259 OID 10176104)
-- Name: pesertas; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pesertas (
    id integer NOT NULL,
    proyeksi character varying(255),
    jenis_fit_proper character varying(255),
    uraian_jabatan character varying(255),
    peserta_ki_inti integer,
    peserta_ki_peran integer,
    peserta_ki_bidang integer,
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pesertas OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 292 (class 1259 OID 10176268)
-- Name: pesertas_fit_proper_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pesertas_fit_proper_links (
    peserta_id integer,
    fit_proper_id integer
);


ALTER TABLE public.pesertas_fit_proper_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 261 (class 1259 OID 10176103)
-- Name: pesertas_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.pesertas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesertas_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 261
-- Name: pesertas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.pesertas_id_seq OWNED BY public.pesertas.id;


--
-- TOC entry 291 (class 1259 OID 10176263)
-- Name: pesertas_jenjang_bidangs_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pesertas_jenjang_bidangs_links (
    peserta_id integer,
    jenjang_id integer
);


ALTER TABLE public.pesertas_jenjang_bidangs_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 296 (class 1259 OID 13007985)
-- Name: pesertas_peserta_nip_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.pesertas_peserta_nip_links (
    peserta_id integer,
    pegawai_id integer
);


ALTER TABLE public.pesertas_peserta_nip_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 224 (class 1259 OID 10175911)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 223 (class 1259 OID 10175910)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 214 (class 1259 OID 10175860)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 213 (class 1259 OID 10175859)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 213
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 212 (class 1259 OID 10175851)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 211 (class 1259 OID 10175850)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 211
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 210 (class 1259 OID 10175844)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 209 (class 1259 OID 10175843)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 209
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 216 (class 1259 OID 10175869)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 215 (class 1259 OID 10175868)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 264 (class 1259 OID 10176115)
-- Name: sub_bidangs; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.sub_bidangs (
    id integer NOT NULL,
    nama_subbidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sub_bidangs OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 293 (class 1259 OID 10176273)
-- Name: sub_bidangs_bidangs_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.sub_bidangs_bidangs_links (
    sub_bidang_id integer,
    bidang_id integer
);


ALTER TABLE public.sub_bidangs_bidangs_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 263 (class 1259 OID 10176114)
-- Name: sub_bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.sub_bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_bidangs_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 263
-- Name: sub_bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.sub_bidangs_id_seq OWNED BY public.sub_bidangs.id;


--
-- TOC entry 266 (class 1259 OID 10176124)
-- Name: units; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.units (
    id integer NOT NULL,
    nama_unit character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.units OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 265 (class 1259 OID 10176123)
-- Name: units_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.units_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 265
-- Name: units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;


--
-- TOC entry 230 (class 1259 OID 10175944)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 229 (class 1259 OID 10175943)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 229
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 270 (class 1259 OID 10176148)
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 232 (class 1259 OID 10175953)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 231 (class 1259 OID 10175952)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 231
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 234 (class 1259 OID 10175964)
-- Name: up_users; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 233 (class 1259 OID 10175963)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 233
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 271 (class 1259 OID 10176153)
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO cxwfuysjdcshsd;

--
-- TOC entry 4415 (class 2604 OID 10177820)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 4417 (class 2604 OID 10177821)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 4416 (class 2604 OID 10177822)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 4424 (class 2604 OID 10177823)
-- Name: bidangs id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.bidangs ALTER COLUMN id SET DEFAULT nextval('public.bidangs_id_seq'::regclass);


--
-- TOC entry 4425 (class 2604 OID 10177824)
-- Name: direktorats id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.direktorats ALTER COLUMN id SET DEFAULT nextval('public.direktorats_id_seq'::regclass);


--
-- TOC entry 4426 (class 2604 OID 10177825)
-- Name: divisis id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.divisis ALTER COLUMN id SET DEFAULT nextval('public.divisis_id_seq'::regclass);


--
-- TOC entry 4419 (class 2604 OID 10177826)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 4427 (class 2604 OID 10177827)
-- Name: fit_propers id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.fit_propers ALTER COLUMN id SET DEFAULT nextval('public.fit_propers_id_seq'::regclass);


--
-- TOC entry 4428 (class 2604 OID 10177828)
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- TOC entry 4420 (class 2604 OID 10177829)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 4429 (class 2604 OID 10177830)
-- Name: jabatans id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans ALTER COLUMN id SET DEFAULT nextval('public.jabatans_id_seq'::regclass);


--
-- TOC entry 4431 (class 2604 OID 10177831)
-- Name: jenjang_fungsionals id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_fungsionals ALTER COLUMN id SET DEFAULT nextval('public.jenjang_fungsionals_id_seq'::regclass);


--
-- TOC entry 4432 (class 2604 OID 10177833)
-- Name: jenjang_strukturals id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_strukturals ALTER COLUMN id SET DEFAULT nextval('public.jenjang_strukturals_id_seq'::regclass);


--
-- TOC entry 4430 (class 2604 OID 10177834)
-- Name: jenjangs id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjangs ALTER COLUMN id SET DEFAULT nextval('public.jenjangs_id_seq'::regclass);


--
-- TOC entry 4433 (class 2604 OID 10177835)
-- Name: pegawais id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais ALTER COLUMN id SET DEFAULT nextval('public.pegawais_id_seq'::regclass);


--
-- TOC entry 4434 (class 2604 OID 10177836)
-- Name: pendidikans id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pendidikans ALTER COLUMN id SET DEFAULT nextval('public.pendidikans_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 10177837)
-- Name: pengujis id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis ALTER COLUMN id SET DEFAULT nextval('public.pengujis_id_seq'::regclass);


--
-- TOC entry 4436 (class 2604 OID 10177838)
-- Name: penilaians id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians ALTER COLUMN id SET DEFAULT nextval('public.penilaians_id_seq'::regclass);


--
-- TOC entry 4437 (class 2604 OID 10177839)
-- Name: pesertas id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas ALTER COLUMN id SET DEFAULT nextval('public.pesertas_id_seq'::regclass);


--
-- TOC entry 4418 (class 2604 OID 10177840)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 10177841)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 4412 (class 2604 OID 10177842)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 10177843)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 4414 (class 2604 OID 10177844)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 4438 (class 2604 OID 10177845)
-- Name: sub_bidangs id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs ALTER COLUMN id SET DEFAULT nextval('public.sub_bidangs_id_seq'::regclass);


--
-- TOC entry 4439 (class 2604 OID 10177846)
-- Name: units id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);


--
-- TOC entry 4421 (class 2604 OID 10177847)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 4422 (class 2604 OID 10177848)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 4423 (class 2604 OID 10177849)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 4864 (class 0 OID 10175878)
-- Dependencies: 218
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:35.067	2022-05-12 01:46:35.067	\N	\N
2	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:35.077	2022-05-12 01:46:35.077	\N	\N
3	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:35.093	2022-05-12 01:46:35.093	\N	\N
4	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:35.101	2022-05-12 01:46:35.101	\N	\N
5	plugin::content-manager.explorer.create	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:35.109	2022-05-12 01:46:35.109	\N	\N
6	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:35.116	2022-05-12 01:46:35.116	\N	\N
7	plugin::content-manager.explorer.create	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:35.123	2022-05-12 01:46:35.123	\N	\N
8	plugin::content-manager.explorer.create	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:35.134	2022-05-12 01:46:35.134	\N	\N
9	plugin::content-manager.explorer.create	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:35.142	2022-05-12 01:46:35.142	\N	\N
11	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:35.161	2022-05-12 01:46:35.161	\N	\N
12	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:35.168	2022-05-12 01:46:35.168	\N	\N
13	plugin::content-manager.explorer.create	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:35.178	2022-05-12 01:46:35.178	\N	\N
14	plugin::content-manager.explorer.create	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	[]	2022-05-12 01:46:35.185	2022-05-12 01:46:35.185	\N	\N
15	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:35.191	2022-05-12 01:46:35.191	\N	\N
16	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:35.198	2022-05-12 01:46:35.198	\N	\N
17	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:35.205	2022-05-12 01:46:35.205	\N	\N
18	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:35.211	2022-05-12 01:46:35.211	\N	\N
19	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:35.218	2022-05-12 01:46:35.218	\N	\N
20	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:35.234	2022-05-12 01:46:35.234	\N	\N
21	plugin::content-manager.explorer.read	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:35.242	2022-05-12 01:46:35.242	\N	\N
22	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:35.255	2022-05-12 01:46:35.255	\N	\N
23	plugin::content-manager.explorer.read	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:35.266	2022-05-12 01:46:35.266	\N	\N
24	plugin::content-manager.explorer.read	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:35.276	2022-05-12 01:46:35.276	\N	\N
25	plugin::content-manager.explorer.read	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:35.284	2022-05-12 01:46:35.284	\N	\N
27	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:35.297	2022-05-12 01:46:35.297	\N	\N
28	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:35.305	2022-05-12 01:46:35.305	\N	\N
29	plugin::content-manager.explorer.read	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:35.313	2022-05-12 01:46:35.313	\N	\N
30	plugin::content-manager.explorer.read	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	[]	2022-05-12 01:46:35.325	2022-05-12 01:46:35.325	\N	\N
31	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:35.343	2022-05-12 01:46:35.343	\N	\N
32	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:35.354	2022-05-12 01:46:35.354	\N	\N
33	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:35.364	2022-05-12 01:46:35.364	\N	\N
34	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:35.375	2022-05-12 01:46:35.375	\N	\N
35	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:35.385	2022-05-12 01:46:35.385	\N	\N
245	plugin::upload.assets.create	\N	{}	[]	2022-05-12 01:46:37.788	2022-05-12 01:46:37.788	\N	\N
36	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:35.392	2022-05-12 01:46:35.392	\N	\N
37	plugin::content-manager.explorer.update	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:35.401	2022-05-12 01:46:35.401	\N	\N
38	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:35.408	2022-05-12 01:46:35.408	\N	\N
39	plugin::content-manager.explorer.update	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:35.418	2022-05-12 01:46:35.418	\N	\N
40	plugin::content-manager.explorer.update	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:35.426	2022-05-12 01:46:35.426	\N	\N
41	plugin::content-manager.explorer.update	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:35.434	2022-05-12 01:46:35.434	\N	\N
43	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:35.447	2022-05-12 01:46:35.447	\N	\N
44	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:35.453	2022-05-12 01:46:35.453	\N	\N
45	plugin::content-manager.explorer.update	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:35.461	2022-05-12 01:46:35.461	\N	\N
46	plugin::content-manager.explorer.update	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	[]	2022-05-12 01:46:35.468	2022-05-12 01:46:35.468	\N	\N
47	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:35.474	2022-05-12 01:46:35.474	\N	\N
48	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:35.48	2022-05-12 01:46:35.48	\N	\N
49	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	[]	2022-05-12 01:46:35.485	2022-05-12 01:46:35.485	\N	\N
50	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	[]	2022-05-12 01:46:35.492	2022-05-12 01:46:35.492	\N	\N
51	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	[]	2022-05-12 01:46:35.499	2022-05-12 01:46:35.499	\N	\N
52	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	[]	2022-05-12 01:46:35.505	2022-05-12 01:46:35.505	\N	\N
53	plugin::content-manager.explorer.delete	api::grade.grade	{}	[]	2022-05-12 01:46:35.511	2022-05-12 01:46:35.511	\N	\N
54	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	[]	2022-05-12 01:46:35.519	2022-05-12 01:46:35.519	\N	\N
55	plugin::content-manager.explorer.delete	api::jenjang.jenjang	{}	[]	2022-05-12 01:46:35.53	2022-05-12 01:46:35.53	\N	\N
56	plugin::content-manager.explorer.delete	api::jenjang-fungsional.jenjang-fungsional	{}	[]	2022-05-12 01:46:35.538	2022-05-12 01:46:35.538	\N	\N
57	plugin::content-manager.explorer.delete	api::jenjang-struktural.jenjang-struktural	{}	[]	2022-05-12 01:46:35.544	2022-05-12 01:46:35.544	\N	\N
58	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	[]	2022-05-12 01:46:35.551	2022-05-12 01:46:35.551	\N	\N
59	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	[]	2022-05-12 01:46:35.566	2022-05-12 01:46:35.566	\N	\N
60	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	[]	2022-05-12 01:46:35.579	2022-05-12 01:46:35.579	\N	\N
61	plugin::content-manager.explorer.delete	api::penilaian.penilaian	{}	[]	2022-05-12 01:46:35.588	2022-05-12 01:46:35.588	\N	\N
62	plugin::content-manager.explorer.delete	api::peserta.peserta	{}	[]	2022-05-12 01:46:35.597	2022-05-12 01:46:35.597	\N	\N
63	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	[]	2022-05-12 01:46:35.604	2022-05-12 01:46:35.604	\N	\N
64	plugin::content-manager.explorer.delete	api::unit.unit	{}	[]	2022-05-12 01:46:35.611	2022-05-12 01:46:35.611	\N	\N
65	plugin::content-manager.explorer.publish	api::bidang.bidang	{}	[]	2022-05-12 01:46:35.617	2022-05-12 01:46:35.617	\N	\N
66	plugin::content-manager.explorer.publish	api::direktorat.direktorat	{}	[]	2022-05-12 01:46:35.624	2022-05-12 01:46:35.624	\N	\N
67	plugin::content-manager.explorer.publish	api::divisi.divisi	{}	[]	2022-05-12 01:46:35.631	2022-05-12 01:46:35.631	\N	\N
68	plugin::content-manager.explorer.publish	api::fit-proper.fit-proper	{}	[]	2022-05-12 01:46:35.638	2022-05-12 01:46:35.638	\N	\N
69	plugin::content-manager.explorer.publish	api::grade.grade	{}	[]	2022-05-12 01:46:35.645	2022-05-12 01:46:35.645	\N	\N
70	plugin::content-manager.explorer.publish	api::jabatan.jabatan	{}	[]	2022-05-12 01:46:35.651	2022-05-12 01:46:35.651	\N	\N
71	plugin::content-manager.explorer.publish	api::jenjang.jenjang	{}	[]	2022-05-12 01:46:35.658	2022-05-12 01:46:35.658	\N	\N
72	plugin::content-manager.explorer.publish	api::jenjang-fungsional.jenjang-fungsional	{}	[]	2022-05-12 01:46:35.664	2022-05-12 01:46:35.664	\N	\N
73	plugin::content-manager.explorer.publish	api::jenjang-struktural.jenjang-struktural	{}	[]	2022-05-12 01:46:35.671	2022-05-12 01:46:35.671	\N	\N
74	plugin::content-manager.explorer.publish	api::pegawai.pegawai	{}	[]	2022-05-12 01:46:35.678	2022-05-12 01:46:35.678	\N	\N
75	plugin::content-manager.explorer.publish	api::pendidikan.pendidikan	{}	[]	2022-05-12 01:46:35.689	2022-05-12 01:46:35.689	\N	\N
76	plugin::content-manager.explorer.publish	api::penguji.penguji	{}	[]	2022-05-12 01:46:35.7	2022-05-12 01:46:35.7	\N	\N
77	plugin::content-manager.explorer.publish	api::penilaian.penilaian	{}	[]	2022-05-12 01:46:35.716	2022-05-12 01:46:35.716	\N	\N
78	plugin::content-manager.explorer.publish	api::peserta.peserta	{}	[]	2022-05-12 01:46:35.728	2022-05-12 01:46:35.728	\N	\N
79	plugin::content-manager.explorer.publish	api::sub-bidang.sub-bidang	{}	[]	2022-05-12 01:46:35.736	2022-05-12 01:46:35.736	\N	\N
80	plugin::content-manager.explorer.publish	api::unit.unit	{}	[]	2022-05-12 01:46:35.744	2022-05-12 01:46:35.744	\N	\N
81	plugin::upload.read	\N	{}	[]	2022-05-12 01:46:35.751	2022-05-12 01:46:35.751	\N	\N
82	plugin::upload.assets.create	\N	{}	[]	2022-05-12 01:46:35.758	2022-05-12 01:46:35.758	\N	\N
83	plugin::upload.assets.update	\N	{}	[]	2022-05-12 01:46:35.765	2022-05-12 01:46:35.765	\N	\N
84	plugin::upload.assets.download	\N	{}	[]	2022-05-12 01:46:35.775	2022-05-12 01:46:35.775	\N	\N
85	plugin::upload.assets.copy-link	\N	{}	[]	2022-05-12 01:46:35.781	2022-05-12 01:46:35.781	\N	\N
86	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:35.805	2022-05-12 01:46:35.805	\N	\N
87	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	["admin::is-creator"]	2022-05-12 01:46:35.813	2022-05-12 01:46:35.813	\N	\N
88	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	["admin::is-creator"]	2022-05-12 01:46:35.82	2022-05-12 01:46:35.82	\N	\N
89	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:35.832	2022-05-12 01:46:35.832	\N	\N
90	plugin::content-manager.explorer.create	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	["admin::is-creator"]	2022-05-12 01:46:35.845	2022-05-12 01:46:35.845	\N	\N
91	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	["admin::is-creator"]	2022-05-12 01:46:35.857	2022-05-12 01:46:35.857	\N	\N
92	plugin::content-manager.explorer.create	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:35.868	2022-05-12 01:46:35.868	\N	\N
93	plugin::content-manager.explorer.create	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:35.875	2022-05-12 01:46:35.875	\N	\N
94	plugin::content-manager.explorer.create	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:35.882	2022-05-12 01:46:35.882	\N	\N
96	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	["admin::is-creator"]	2022-05-12 01:46:35.896	2022-05-12 01:46:35.896	\N	\N
97	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	["admin::is-creator"]	2022-05-12 01:46:35.902	2022-05-12 01:46:35.902	\N	\N
98	plugin::content-manager.explorer.create	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:35.911	2022-05-12 01:46:35.911	\N	\N
99	plugin::content-manager.explorer.create	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	["admin::is-creator"]	2022-05-12 01:46:35.918	2022-05-12 01:46:35.918	\N	\N
100	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:35.923	2022-05-12 01:46:35.923	\N	\N
101	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:35.93	2022-05-12 01:46:35.93	\N	\N
102	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:35.936	2022-05-12 01:46:35.936	\N	\N
103	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	["admin::is-creator"]	2022-05-12 01:46:35.942	2022-05-12 01:46:35.942	\N	\N
104	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	["admin::is-creator"]	2022-05-12 01:46:35.949	2022-05-12 01:46:35.949	\N	\N
105	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:35.957	2022-05-12 01:46:35.957	\N	\N
106	plugin::content-manager.explorer.read	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	["admin::is-creator"]	2022-05-12 01:46:35.964	2022-05-12 01:46:35.964	\N	\N
107	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	["admin::is-creator"]	2022-05-12 01:46:35.971	2022-05-12 01:46:35.971	\N	\N
108	plugin::content-manager.explorer.read	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:35.977	2022-05-12 01:46:35.977	\N	\N
109	plugin::content-manager.explorer.read	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:35.984	2022-05-12 01:46:35.984	\N	\N
110	plugin::content-manager.explorer.read	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:35.991	2022-05-12 01:46:35.991	\N	\N
112	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	["admin::is-creator"]	2022-05-12 01:46:36.006	2022-05-12 01:46:36.006	\N	\N
113	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	["admin::is-creator"]	2022-05-12 01:46:36.013	2022-05-12 01:46:36.013	\N	\N
114	plugin::content-manager.explorer.read	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:36.019	2022-05-12 01:46:36.019	\N	\N
115	plugin::content-manager.explorer.read	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	["admin::is-creator"]	2022-05-12 01:46:36.026	2022-05-12 01:46:36.026	\N	\N
116	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:36.033	2022-05-12 01:46:36.033	\N	\N
117	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:36.052	2022-05-12 01:46:36.052	\N	\N
118	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:36.059	2022-05-12 01:46:36.059	\N	\N
119	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	["admin::is-creator"]	2022-05-12 01:46:36.072	2022-05-12 01:46:36.072	\N	\N
120	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	["admin::is-creator"]	2022-05-12 01:46:36.085	2022-05-12 01:46:36.085	\N	\N
121	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:36.093	2022-05-12 01:46:36.093	\N	\N
122	plugin::content-manager.explorer.update	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	["admin::is-creator"]	2022-05-12 01:46:36.103	2022-05-12 01:46:36.103	\N	\N
123	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	["admin::is-creator"]	2022-05-12 01:46:36.111	2022-05-12 01:46:36.111	\N	\N
124	plugin::content-manager.explorer.update	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:36.12	2022-05-12 01:46:36.12	\N	\N
125	plugin::content-manager.explorer.update	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:36.129	2022-05-12 01:46:36.129	\N	\N
126	plugin::content-manager.explorer.update	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	["admin::is-creator"]	2022-05-12 01:46:36.141	2022-05-12 01:46:36.141	\N	\N
128	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	["admin::is-creator"]	2022-05-12 01:46:36.161	2022-05-12 01:46:36.161	\N	\N
129	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	["admin::is-creator"]	2022-05-12 01:46:36.175	2022-05-12 01:46:36.175	\N	\N
130	plugin::content-manager.explorer.update	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	["admin::is-creator"]	2022-05-12 01:46:36.182	2022-05-12 01:46:36.182	\N	\N
131	plugin::content-manager.explorer.update	api::peserta.peserta	{"fields": ["peserta_nip", "proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper"]}	["admin::is-creator"]	2022-05-12 01:46:36.189	2022-05-12 01:46:36.189	\N	\N
132	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	["admin::is-creator"]	2022-05-12 01:46:36.198	2022-05-12 01:46:36.198	\N	\N
133	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	["admin::is-creator"]	2022-05-12 01:46:36.205	2022-05-12 01:46:36.205	\N	\N
134	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	["admin::is-creator"]	2022-05-12 01:46:36.212	2022-05-12 01:46:36.212	\N	\N
135	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	["admin::is-creator"]	2022-05-12 01:46:36.219	2022-05-12 01:46:36.219	\N	\N
136	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	["admin::is-creator"]	2022-05-12 01:46:36.23	2022-05-12 01:46:36.23	\N	\N
137	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	["admin::is-creator"]	2022-05-12 01:46:36.238	2022-05-12 01:46:36.238	\N	\N
138	plugin::content-manager.explorer.delete	api::grade.grade	{}	["admin::is-creator"]	2022-05-12 01:46:36.246	2022-05-12 01:46:36.246	\N	\N
139	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	["admin::is-creator"]	2022-05-12 01:46:36.268	2022-05-12 01:46:36.268	\N	\N
140	plugin::content-manager.explorer.delete	api::jenjang.jenjang	{}	["admin::is-creator"]	2022-05-12 01:46:36.278	2022-05-12 01:46:36.278	\N	\N
141	plugin::content-manager.explorer.delete	api::jenjang-fungsional.jenjang-fungsional	{}	["admin::is-creator"]	2022-05-12 01:46:36.285	2022-05-12 01:46:36.285	\N	\N
142	plugin::content-manager.explorer.delete	api::jenjang-struktural.jenjang-struktural	{}	["admin::is-creator"]	2022-05-12 01:46:36.294	2022-05-12 01:46:36.294	\N	\N
143	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	["admin::is-creator"]	2022-05-12 01:46:36.303	2022-05-12 01:46:36.303	\N	\N
144	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	["admin::is-creator"]	2022-05-12 01:46:36.311	2022-05-12 01:46:36.311	\N	\N
145	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	["admin::is-creator"]	2022-05-12 01:46:36.322	2022-05-12 01:46:36.322	\N	\N
146	plugin::content-manager.explorer.delete	api::penilaian.penilaian	{}	["admin::is-creator"]	2022-05-12 01:46:36.333	2022-05-12 01:46:36.333	\N	\N
147	plugin::content-manager.explorer.delete	api::peserta.peserta	{}	["admin::is-creator"]	2022-05-12 01:46:36.34	2022-05-12 01:46:36.34	\N	\N
148	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	["admin::is-creator"]	2022-05-12 01:46:36.348	2022-05-12 01:46:36.348	\N	\N
149	plugin::content-manager.explorer.delete	api::unit.unit	{}	["admin::is-creator"]	2022-05-12 01:46:36.356	2022-05-12 01:46:36.356	\N	\N
150	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-05-12 01:46:36.363	2022-05-12 01:46:36.363	\N	\N
151	plugin::upload.assets.create	\N	{}	[]	2022-05-12 01:46:36.375	2022-05-12 01:46:36.375	\N	\N
152	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-05-12 01:46:36.393	2022-05-12 01:46:36.393	\N	\N
153	plugin::upload.assets.download	\N	{}	[]	2022-05-12 01:46:36.411	2022-05-12 01:46:36.411	\N	\N
154	plugin::upload.assets.copy-link	\N	{}	[]	2022-05-12 01:46:36.421	2022-05-12 01:46:36.421	\N	\N
155	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-05-12 01:46:36.618	2022-05-12 01:46:36.618	\N	\N
156	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:36.629	2022-05-12 01:46:36.629	\N	\N
157	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:36.636	2022-05-12 01:46:36.636	\N	\N
158	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:36.644	2022-05-12 01:46:36.644	\N	\N
159	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:36.651	2022-05-12 01:46:36.651	\N	\N
160	plugin::content-manager.explorer.create	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:36.657	2022-05-12 01:46:36.657	\N	\N
161	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:36.664	2022-05-12 01:46:36.664	\N	\N
162	plugin::content-manager.explorer.create	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:36.674	2022-05-12 01:46:36.674	\N	\N
163	plugin::content-manager.explorer.create	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:36.682	2022-05-12 01:46:36.682	\N	\N
164	plugin::content-manager.explorer.create	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:36.689	2022-05-12 01:46:36.689	\N	\N
166	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:36.729	2022-05-12 01:46:36.729	\N	\N
167	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:36.739	2022-05-12 01:46:36.739	\N	\N
168	plugin::content-manager.explorer.create	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:36.746	2022-05-12 01:46:36.746	\N	\N
170	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:36.764	2022-05-12 01:46:36.764	\N	\N
171	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:36.775	2022-05-12 01:46:36.775	\N	\N
172	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-05-12 01:46:36.787	2022-05-12 01:46:36.787	\N	\N
173	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:36.796	2022-05-12 01:46:36.796	\N	\N
174	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:36.815	2022-05-12 01:46:36.815	\N	\N
175	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:36.827	2022-05-12 01:46:36.827	\N	\N
176	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:36.838	2022-05-12 01:46:36.838	\N	\N
177	plugin::content-manager.explorer.read	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:36.848	2022-05-12 01:46:36.848	\N	\N
178	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:36.856	2022-05-12 01:46:36.856	\N	\N
179	plugin::content-manager.explorer.read	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:36.866	2022-05-12 01:46:36.866	\N	\N
180	plugin::content-manager.explorer.read	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:36.917	2022-05-12 01:46:36.917	\N	\N
181	plugin::content-manager.explorer.read	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:36.988	2022-05-12 01:46:36.988	\N	\N
183	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:37.054	2022-05-12 01:46:37.054	\N	\N
184	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:37.065	2022-05-12 01:46:37.065	\N	\N
185	plugin::content-manager.explorer.read	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:37.077	2022-05-12 01:46:37.077	\N	\N
187	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:37.096	2022-05-12 01:46:37.096	\N	\N
188	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:37.109	2022-05-12 01:46:37.109	\N	\N
189	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-05-12 01:46:37.119	2022-05-12 01:46:37.119	\N	\N
190	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["nama_bidang", "sub_bidangs"]}	[]	2022-05-12 01:46:37.135	2022-05-12 01:46:37.135	\N	\N
191	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["nama_direktorat"]}	[]	2022-05-12 01:46:37.149	2022-05-12 01:46:37.149	\N	\N
192	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["nama_divisi", "pegawais"]}	[]	2022-05-12 01:46:37.161	2022-05-12 01:46:37.161	\N	\N
193	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["status", "cat_kelebihan", "cat_kekurangan", "pesertas", "penilaians", "pengujis"]}	[]	2022-05-12 01:46:37.168	2022-05-12 01:46:37.168	\N	\N
246	plugin::upload.assets.update	\N	{}	[]	2022-05-12 01:46:37.799	2022-05-12 01:46:37.799	\N	\N
194	plugin::content-manager.explorer.update	api::grade.grade	{"fields": ["nama_grade", "level_kompetensi", "jenjang", "ki_inti", "ki_peran", "ki_bidang", "kode_grade", "jenjang_fungsional", "jenjang_struktural"]}	[]	2022-05-12 01:46:37.185	2022-05-12 01:46:37.185	\N	\N
195	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["nama_jabatan", "unit", "jenjang", "grade"]}	[]	2022-05-12 01:46:37.205	2022-05-12 01:46:37.205	\N	\N
196	plugin::content-manager.explorer.update	api::jenjang.jenjang	{"fields": ["nama_jenjang", "grades", "jenis_jenjang", "jabatans"]}	[]	2022-05-12 01:46:37.214	2022-05-12 01:46:37.214	\N	\N
197	plugin::content-manager.explorer.update	api::jenjang-fungsional.jenjang-fungsional	{"fields": ["nama_jenjang", "jenis_jenjang", "grades"]}	[]	2022-05-12 01:46:37.22	2022-05-12 01:46:37.22	\N	\N
198	plugin::content-manager.explorer.update	api::jenjang-struktural.jenjang-struktural	{"fields": ["nama_jabatan", "jenis_jabatan", "grades"]}	[]	2022-05-12 01:46:37.235	2022-05-12 01:46:37.235	\N	\N
200	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["nama_pendidikan"]}	[]	2022-05-12 01:46:37.261	2022-05-12 01:46:37.261	\N	\N
201	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["penguji_nip", "fit_proper", "peserta", "penilaian"]}	[]	2022-05-12 01:46:37.274	2022-05-12 01:46:37.274	\N	\N
202	plugin::content-manager.explorer.update	api::penilaian.penilaian	{"fields": ["enthusiasthic", "creative", "building", "strategic", "customer", "driving", "visionary", "empowering", "keandalan", "kecepatan", "manajemen", "kontribusi_kpi", "internal", "eksternal", "akumulasi_nilai", "fit_proper", "pengujis"]}	[]	2022-05-12 01:46:37.29	2022-05-12 01:46:37.29	\N	\N
204	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["nama_subbidang", "bidangs"]}	[]	2022-05-12 01:46:37.318	2022-05-12 01:46:37.318	\N	\N
205	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["nama_unit", "jabatans"]}	[]	2022-05-12 01:46:37.337	2022-05-12 01:46:37.337	\N	\N
206	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-05-12 01:46:37.353	2022-05-12 01:46:37.353	\N	\N
207	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	[]	2022-05-12 01:46:37.365	2022-05-12 01:46:37.365	\N	\N
208	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	[]	2022-05-12 01:46:37.377	2022-05-12 01:46:37.377	\N	\N
209	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	[]	2022-05-12 01:46:37.397	2022-05-12 01:46:37.397	\N	\N
210	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	[]	2022-05-12 01:46:37.413	2022-05-12 01:46:37.413	\N	\N
211	plugin::content-manager.explorer.delete	api::grade.grade	{}	[]	2022-05-12 01:46:37.423	2022-05-12 01:46:37.423	\N	\N
212	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	[]	2022-05-12 01:46:37.432	2022-05-12 01:46:37.432	\N	\N
213	plugin::content-manager.explorer.delete	api::jenjang.jenjang	{}	[]	2022-05-12 01:46:37.439	2022-05-12 01:46:37.439	\N	\N
214	plugin::content-manager.explorer.delete	api::jenjang-fungsional.jenjang-fungsional	{}	[]	2022-05-12 01:46:37.445	2022-05-12 01:46:37.445	\N	\N
215	plugin::content-manager.explorer.delete	api::jenjang-struktural.jenjang-struktural	{}	[]	2022-05-12 01:46:37.454	2022-05-12 01:46:37.454	\N	\N
216	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	[]	2022-05-12 01:46:37.464	2022-05-12 01:46:37.464	\N	\N
217	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	[]	2022-05-12 01:46:37.489	2022-05-12 01:46:37.489	\N	\N
218	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	[]	2022-05-12 01:46:37.503	2022-05-12 01:46:37.503	\N	\N
219	plugin::content-manager.explorer.delete	api::penilaian.penilaian	{}	[]	2022-05-12 01:46:37.512	2022-05-12 01:46:37.512	\N	\N
220	plugin::content-manager.explorer.delete	api::peserta.peserta	{}	[]	2022-05-12 01:46:37.519	2022-05-12 01:46:37.519	\N	\N
221	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	[]	2022-05-12 01:46:37.527	2022-05-12 01:46:37.527	\N	\N
222	plugin::content-manager.explorer.delete	api::unit.unit	{}	[]	2022-05-12 01:46:37.537	2022-05-12 01:46:37.537	\N	\N
223	plugin::content-manager.explorer.publish	api::bidang.bidang	{}	[]	2022-05-12 01:46:37.553	2022-05-12 01:46:37.553	\N	\N
224	plugin::content-manager.explorer.publish	api::direktorat.direktorat	{}	[]	2022-05-12 01:46:37.564	2022-05-12 01:46:37.564	\N	\N
225	plugin::content-manager.explorer.publish	api::divisi.divisi	{}	[]	2022-05-12 01:46:37.574	2022-05-12 01:46:37.574	\N	\N
226	plugin::content-manager.explorer.publish	api::fit-proper.fit-proper	{}	[]	2022-05-12 01:46:37.585	2022-05-12 01:46:37.585	\N	\N
227	plugin::content-manager.explorer.publish	api::grade.grade	{}	[]	2022-05-12 01:46:37.596	2022-05-12 01:46:37.596	\N	\N
228	plugin::content-manager.explorer.publish	api::jabatan.jabatan	{}	[]	2022-05-12 01:46:37.61	2022-05-12 01:46:37.61	\N	\N
229	plugin::content-manager.explorer.publish	api::jenjang.jenjang	{}	[]	2022-05-12 01:46:37.62	2022-05-12 01:46:37.62	\N	\N
230	plugin::content-manager.explorer.publish	api::jenjang-fungsional.jenjang-fungsional	{}	[]	2022-05-12 01:46:37.626	2022-05-12 01:46:37.626	\N	\N
231	plugin::content-manager.explorer.publish	api::jenjang-struktural.jenjang-struktural	{}	[]	2022-05-12 01:46:37.639	2022-05-12 01:46:37.639	\N	\N
232	plugin::content-manager.explorer.publish	api::pegawai.pegawai	{}	[]	2022-05-12 01:46:37.647	2022-05-12 01:46:37.647	\N	\N
233	plugin::content-manager.explorer.publish	api::pendidikan.pendidikan	{}	[]	2022-05-12 01:46:37.654	2022-05-12 01:46:37.654	\N	\N
234	plugin::content-manager.explorer.publish	api::penguji.penguji	{}	[]	2022-05-12 01:46:37.66	2022-05-12 01:46:37.66	\N	\N
235	plugin::content-manager.explorer.publish	api::penilaian.penilaian	{}	[]	2022-05-12 01:46:37.67	2022-05-12 01:46:37.67	\N	\N
236	plugin::content-manager.explorer.publish	api::peserta.peserta	{}	[]	2022-05-12 01:46:37.682	2022-05-12 01:46:37.682	\N	\N
237	plugin::content-manager.explorer.publish	api::sub-bidang.sub-bidang	{}	[]	2022-05-12 01:46:37.691	2022-05-12 01:46:37.691	\N	\N
238	plugin::content-manager.explorer.publish	api::unit.unit	{}	[]	2022-05-12 01:46:37.7	2022-05-12 01:46:37.7	\N	\N
239	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-05-12 01:46:37.707	2022-05-12 01:46:37.707	\N	\N
240	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-05-12 01:46:37.743	2022-05-12 01:46:37.743	\N	\N
241	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-05-12 01:46:37.75	2022-05-12 01:46:37.75	\N	\N
242	plugin::content-type-builder.read	\N	{}	[]	2022-05-12 01:46:37.756	2022-05-12 01:46:37.756	\N	\N
243	plugin::email.settings.read	\N	{}	[]	2022-05-12 01:46:37.763	2022-05-12 01:46:37.763	\N	\N
244	plugin::upload.read	\N	{}	[]	2022-05-12 01:46:37.779	2022-05-12 01:46:37.779	\N	\N
247	plugin::upload.assets.download	\N	{}	[]	2022-05-12 01:46:37.805	2022-05-12 01:46:37.805	\N	\N
248	plugin::upload.assets.copy-link	\N	{}	[]	2022-05-12 01:46:37.811	2022-05-12 01:46:37.811	\N	\N
249	plugin::upload.settings.read	\N	{}	[]	2022-05-12 01:46:37.817	2022-05-12 01:46:37.817	\N	\N
250	plugin::i18n.locale.create	\N	{}	[]	2022-05-12 01:46:37.825	2022-05-12 01:46:37.825	\N	\N
251	plugin::i18n.locale.read	\N	{}	[]	2022-05-12 01:46:37.832	2022-05-12 01:46:37.832	\N	\N
252	plugin::i18n.locale.update	\N	{}	[]	2022-05-12 01:46:37.839	2022-05-12 01:46:37.839	\N	\N
253	plugin::i18n.locale.delete	\N	{}	[]	2022-05-12 01:46:37.846	2022-05-12 01:46:37.846	\N	\N
254	plugin::users-permissions.roles.create	\N	{}	[]	2022-05-12 01:46:37.852	2022-05-12 01:46:37.852	\N	\N
255	plugin::users-permissions.roles.read	\N	{}	[]	2022-05-12 01:46:37.859	2022-05-12 01:46:37.859	\N	\N
256	plugin::users-permissions.roles.update	\N	{}	[]	2022-05-12 01:46:37.865	2022-05-12 01:46:37.865	\N	\N
257	plugin::users-permissions.roles.delete	\N	{}	[]	2022-05-12 01:46:37.879	2022-05-12 01:46:37.879	\N	\N
258	plugin::users-permissions.providers.read	\N	{}	[]	2022-05-12 01:46:37.886	2022-05-12 01:46:37.886	\N	\N
259	plugin::users-permissions.providers.update	\N	{}	[]	2022-05-12 01:46:37.901	2022-05-12 01:46:37.901	\N	\N
260	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-05-12 01:46:37.911	2022-05-12 01:46:37.911	\N	\N
261	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-05-12 01:46:37.919	2022-05-12 01:46:37.919	\N	\N
262	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-05-12 01:46:37.928	2022-05-12 01:46:37.928	\N	\N
263	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-05-12 01:46:37.936	2022-05-12 01:46:37.936	\N	\N
264	admin::marketplace.read	\N	{}	[]	2022-05-12 01:46:37.943	2022-05-12 01:46:37.943	\N	\N
265	admin::marketplace.plugins.install	\N	{}	[]	2022-05-12 01:46:37.952	2022-05-12 01:46:37.952	\N	\N
266	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-05-12 01:46:37.958	2022-05-12 01:46:37.958	\N	\N
267	admin::webhooks.create	\N	{}	[]	2022-05-12 01:46:37.97	2022-05-12 01:46:37.97	\N	\N
268	admin::webhooks.read	\N	{}	[]	2022-05-12 01:46:37.985	2022-05-12 01:46:37.985	\N	\N
269	admin::webhooks.update	\N	{}	[]	2022-05-12 01:46:38.001	2022-05-12 01:46:38.001	\N	\N
270	admin::webhooks.delete	\N	{}	[]	2022-05-12 01:46:38.013	2022-05-12 01:46:38.013	\N	\N
271	admin::users.create	\N	{}	[]	2022-05-12 01:46:38.029	2022-05-12 01:46:38.029	\N	\N
272	admin::users.read	\N	{}	[]	2022-05-12 01:46:38.038	2022-05-12 01:46:38.038	\N	\N
273	admin::users.update	\N	{}	[]	2022-05-12 01:46:38.048	2022-05-12 01:46:38.048	\N	\N
274	admin::users.delete	\N	{}	[]	2022-05-12 01:46:38.061	2022-05-12 01:46:38.061	\N	\N
275	admin::roles.create	\N	{}	[]	2022-05-12 01:46:38.07	2022-05-12 01:46:38.07	\N	\N
276	admin::roles.read	\N	{}	[]	2022-05-12 01:46:38.085	2022-05-12 01:46:38.085	\N	\N
277	admin::roles.update	\N	{}	[]	2022-05-12 01:46:38.098	2022-05-12 01:46:38.098	\N	\N
278	admin::roles.delete	\N	{}	[]	2022-05-12 01:46:38.105	2022-05-12 01:46:38.105	\N	\N
279	admin::api-tokens.create	\N	{}	[]	2022-05-12 01:46:38.114	2022-05-12 01:46:38.114	\N	\N
280	admin::api-tokens.read	\N	{}	[]	2022-05-12 01:46:38.12	2022-05-12 01:46:38.12	\N	\N
281	admin::api-tokens.update	\N	{}	[]	2022-05-12 01:46:38.133	2022-05-12 01:46:38.133	\N	\N
282	admin::api-tokens.delete	\N	{}	[]	2022-05-12 01:46:38.149	2022-05-12 01:46:38.149	\N	\N
454	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai", "penguji", "peserta_nip"]}	[]	2022-06-01 09:35:31.63	2022-06-01 09:35:31.63	\N	\N
455	plugin::content-manager.explorer.create	api::peserta.peserta	{"fields": ["proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper", "peserta_nip"]}	[]	2022-06-01 09:35:31.909	2022-06-01 09:35:31.909	\N	\N
456	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai", "penguji", "peserta_nip"]}	[]	2022-06-01 09:35:31.916	2022-06-01 09:35:31.916	\N	\N
457	plugin::content-manager.explorer.read	api::peserta.peserta	{"fields": ["proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper", "peserta_nip"]}	[]	2022-06-01 09:35:31.924	2022-06-01 09:35:31.924	\N	\N
458	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai", "penguji", "peserta_nip"]}	[]	2022-06-01 09:35:31.931	2022-06-01 09:35:31.931	\N	\N
26	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	[]	2022-05-12 01:46:35.291	2022-06-01 09:35:32.1	\N	\N
459	plugin::content-manager.explorer.update	api::peserta.peserta	{"fields": ["proyeksi", "jenjang_bidangs", "jenis_fit_proper", "uraian_jabatan", "ppt", "cv_docs", "peserta_ki_inti", "peserta_ki_peran", "peserta_ki_bidang", "date", "pengujis", "fit_proper", "peserta_nip"]}	[]	2022-06-01 09:35:31.938	2022-06-01 09:35:31.938	\N	\N
111	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	["admin::is-creator"]	2022-05-12 01:46:35.998	2022-06-01 09:35:32.1	\N	\N
42	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	[]	2022-05-12 01:46:35.441	2022-06-01 09:35:32.1	\N	\N
10	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	[]	2022-05-12 01:46:35.15	2022-06-01 09:35:32.1	\N	\N
95	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	["admin::is-creator"]	2022-05-12 01:46:35.889	2022-06-01 09:35:32.1	\N	\N
127	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["nip", "nama_pegawai", "grade", "religion", "email", "tempat_lahir", "tanggal_lahir", "gender", "jenjang", "unit", "direktorat", "divisi", "bidang", "sub_bidang", "jabatan", "no_hp", "pendidikan", "foto_pegawai"]}	["admin::is-creator"]	2022-05-12 01:46:36.152	2022-06-01 09:35:32.1	\N	\N
\.


--
-- TOC entry 4913 (class 0 OID 10176132)
-- Dependencies: 267
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
7	2
8	2
9	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
26	2
27	2
28	2
29	2
30	2
31	2
32	2
33	2
34	2
35	2
36	2
37	2
38	2
39	2
40	2
41	2
42	2
43	2
44	2
45	2
46	2
47	2
48	2
49	2
50	2
51	2
52	2
53	2
54	2
55	2
56	2
57	2
58	2
59	2
60	2
61	2
62	2
63	2
64	2
65	2
66	2
67	2
68	2
69	2
70	2
71	2
72	2
73	2
74	2
75	2
76	2
77	2
78	2
79	2
80	2
81	2
82	2
83	2
84	2
85	2
86	3
87	3
88	3
89	3
90	3
91	3
92	3
93	3
94	3
95	3
96	3
97	3
98	3
99	3
100	3
101	3
102	3
103	3
104	3
105	3
106	3
107	3
108	3
109	3
110	3
111	3
112	3
113	3
114	3
115	3
116	3
117	3
118	3
119	3
120	3
121	3
122	3
123	3
124	3
125	3
126	3
127	3
128	3
129	3
130	3
131	3
132	3
133	3
134	3
135	3
136	3
137	3
138	3
139	3
140	3
141	3
142	3
143	3
144	3
145	3
146	3
147	3
148	3
149	3
150	3
151	3
152	3
153	3
154	3
155	1
156	1
157	1
158	1
159	1
160	1
161	1
162	1
163	1
164	1
166	1
167	1
168	1
170	1
171	1
172	1
173	1
174	1
175	1
176	1
177	1
178	1
179	1
180	1
181	1
183	1
184	1
185	1
187	1
188	1
189	1
190	1
191	1
192	1
193	1
194	1
195	1
196	1
197	1
198	1
200	1
201	1
202	1
204	1
205	1
206	1
207	1
208	1
209	1
210	1
211	1
212	1
213	1
214	1
215	1
216	1
217	1
218	1
219	1
220	1
221	1
222	1
223	1
224	1
225	1
226	1
227	1
228	1
229	1
230	1
231	1
232	1
233	1
234	1
235	1
236	1
237	1
238	1
239	1
240	1
241	1
242	1
243	1
244	1
245	1
246	1
247	1
248	1
249	1
250	1
251	1
252	1
253	1
254	1
255	1
256	1
257	1
258	1
259	1
260	1
261	1
262	1
263	1
264	1
265	1
266	1
267	1
268	1
269	1
270	1
271	1
272	1
273	1
274	1
275	1
276	1
277	1
278	1
279	1
280	1
281	1
282	1
454	1
455	1
456	1
457	1
458	1
459	1
\.


--
-- TOC entry 4868 (class 0 OID 10175900)
-- Dependencies: 222
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-05-12 01:46:34.816	2022-05-12 01:46:34.816	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-05-12 01:46:34.832	2022-05-12 01:46:34.832	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-05-12 01:46:34.84	2022-05-12 01:46:34.84	\N	\N
\.


--
-- TOC entry 4866 (class 0 OID 10175889)
-- Dependencies: 220
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Hasya Ayuni	Sonia	\N	hasyaayunisonia@gmail.com	$2a$10$WliziIEmyq8CF4GmKwfk4.gDCUzNKUp0rvIlgMUU68d9bxe3nbaNW	\N	\N	t	f	\N	2022-05-12 01:53:28.84	2022-05-12 01:53:28.84	\N	\N
3	Yosua	Lumbanraja	\N	yosua.lumbanraja.tif20@polban.ac.id	$2a$10$4lJgrP0izoTWd1CARwuEK.iZEs4djBsEsW1ylF.OWdu50w2hzmrc2	\N	\N	t	f	\N	2022-05-12 03:50:10.275	2022-05-12 03:51:22.091	\N	\N
4	Hipzzy		\N	habban.masykur.tif20@polban.ac.id	\N	\N	58e881c366cb06df305d8ffe33562618f1a40a91	f	f	\N	2022-05-12 03:53:39.461	2022-05-12 03:53:39.461	\N	\N
5	Ragil	Azis 	\N	ragil.azis.tif20@polban.ac.id	\N	\N	3086cc9dafa6cd8bd37b9a1a781c8487711adba7	f	f	\N	2022-05-12 04:05:20.674	2022-05-12 04:05:20.674	\N	\N
6	Salsabila	Putri F	\N	salsabila.putri.fathiyah.tif20@polban.ac.id	\N	\N	07ee7c08ab1819a58eb473cb8973b310762a9636	f	f	\N	2022-05-22 15:02:31.662	2022-05-22 15:02:31.662	\N	\N
\.


--
-- TOC entry 4914 (class 0 OID 10176137)
-- Dependencies: 268
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
3	1
4	1
4	2
4	3
5	1
6	1
\.


--
-- TOC entry 4882 (class 0 OID 10175975)
-- Dependencies: 236
-- Data for Name: bidangs; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.bidangs (id, nama_bidang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
6	SEKSI TEKNO	2022-03-24 22:00:32.734	2022-03-24 22:02:20.143	\N	1	1
5	BIDANG PEMASANGAN	2022-03-03 14:26:05.714	2022-03-24 22:29:37.629	\N	1	1
1	BIDANG PENGEMBANGAN TALENTA EKSEKUTIF	2022-03-03 14:23:28.083	2022-03-24 22:29:42.575	2022-03-24 22:29:42.572	1	1
2	BIDANG STRATEGI REGULASI DAN MANAJEMEN STAKEHOLDER STRATEGIS	2022-03-03 14:25:06.12	2022-03-24 22:29:46.868	2022-03-24 22:29:46.865	1	1
3	SEKSI JARINGAN DAN GARDU INDUK PANAKKUKANG	2022-03-03 14:25:20.484	2022-03-24 22:29:51.541	2022-03-24 22:29:51.538	1	1
4	SEKSI TEKNIK	2022-03-03 14:25:46.628	2022-03-24 22:29:54.74	2022-03-24 22:29:54.736	1	1
\.


--
-- TOC entry 4884 (class 0 OID 10175984)
-- Dependencies: 238
-- Data for Name: direktorats; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.direktorats (id, nama_direktorat, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	BIDANG KEUANGAN, KOMUNIKASI DAN UMUM	2022-03-03 14:11:36.143	2022-03-24 22:30:13.871	2022-03-24 22:30:13.869	1	1
2	DIREKTORAT KEUANGAN DAN MANAJEMEN RISIKO	2022-03-03 14:12:07.577	2022-03-24 22:30:17.594	2022-03-24 22:30:17.591	1	1
3	DIREKTORAT MANAJEMEN SUMBER DAYA MANUSIA	2022-03-03 14:13:48.764	2022-03-24 22:30:21.15	2022-03-24 22:30:21.148	1	1
4	SATUAN PUSAT KEUNGGULAN	2022-03-03 14:14:30.325	2022-03-24 22:30:24.528	2022-03-24 22:30:24.521	1	1
5	UNIT PELAKSANA PELAYANAN PELANGGAN BOJONEGORO	2022-03-03 14:16:03.809	2022-03-24 22:30:30.51	2022-03-24 22:30:30.507	1	1
6	UNIT PELAKSANA PELAYANAN PELANGGAN CIMAHI	2022-03-03 14:16:28.922	2022-03-24 22:30:33.924	2022-03-24 22:30:33.919	1	1
7	UNIT PELAKSANA TRANSMISI MAKASSAR	2022-03-03 14:16:45.63	2022-03-24 22:30:37.456	2022-03-24 22:30:37.453	1	1
8	WAKIL DIREKTUR UTAMA	2022-03-03 14:17:09.168	2022-03-24 22:30:41.38	2022-03-24 22:30:41.372	1	1
\.


--
-- TOC entry 4886 (class 0 OID 10175993)
-- Dependencies: 240
-- Data for Name: divisis; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.divisis (id, nama_divisi, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
7	DIREKTORAT KEUANGAN DAN MANAJEMEN RISIKO	2022-03-24 21:14:51.381	2022-03-24 21:14:53.22	2022-03-24 21:14:53.215	1	1
1	BAGIAN TRANSAKSI ENERGI LISTRIK	2022-03-03 14:27:49.989	2022-03-24 21:14:59.142	2022-03-24 21:14:59.139	1	1
4	DIVISI PENGEMBANGAN TALENTA	2022-03-03 14:28:55.414	2022-03-24 21:15:12.092	2022-03-24 21:15:12.089	1	1
2	DIVISI MANAJEMEN REGULATOR	2022-03-03 14:28:05.512	2022-03-24 21:15:17.15	2022-03-24 21:15:17.146	1	1
3	DIVISI PEMBANGKITAN DAN EBT	2022-03-03 14:28:23.186	2022-03-24 21:15:21.169	2022-03-24 21:15:21.165	1	1
5	DIVISI TRANSMISI DAN DISTRIBUSI	2022-03-03 14:29:09.853	2022-03-24 21:15:24.58	2022-03-24 21:15:24.576	1	1
6	SUB BIDANG KEUANGAN	2022-03-03 14:29:23.889	2022-03-24 21:15:28.07	2022-03-24 21:15:28.067	1	1
8	SUB DIREKTORAT MANAJEMEN ASET	2022-03-24 21:16:12.574	2022-03-24 21:16:13.608	2022-03-24 21:16:13.602	1	1
9	UNIT LAYANAN PELANGGAN BRONDONG	2022-03-24 21:59:49.596	2022-03-24 22:30:47.971	2022-03-24 22:30:47.968	1	1
\.


--
-- TOC entry 4872 (class 0 OID 10175922)
-- Dependencies: 226
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	fotopp.jpg	fotopp.jpg	fotopp.jpg	318	159	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_fotopp_21b2581526.jpg", "hash": "thumbnail_fotopp_21b2581526", "mime": "image/jpeg", "name": "thumbnail_fotopp.jpg", "path": null, "size": 5.09, "width": 245, "height": 123}}	fotopp_21b2581526	.jpg	image/jpeg	4.79	/uploads/fotopp_21b2581526.jpg	\N	local	\N	2022-05-12 04:02:10.054	2022-05-12 04:02:10.054	3	3
\.


--
-- TOC entry 4915 (class 0 OID 10176142)
-- Dependencies: 269
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
1	16	api::pegawai.pegawai	foto_pegawai	1
\.


--
-- TOC entry 4888 (class 0 OID 10176002)
-- Dependencies: 242
-- Data for Name: fit_propers; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.fit_propers (id, status, cat_kelebihan, cat_kekurangan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4890 (class 0 OID 10176013)
-- Dependencies: 244
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.grades (id, nama_grade, level_kompetensi, ki_inti, ki_peran, ki_bidang, kode_grade, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
22	System 4	System	8	6	10	SYS04	2022-03-24 18:07:43.709	2022-03-24 18:07:44.695	2022-03-24 18:07:44.691	1	1
24	Specific 2	Specific	7	4	9	SPE02	2022-03-24 18:09:52.009	2022-03-24 18:09:52.937	2022-03-24 18:09:52.934	1	1
25	Specific 3	Specific	6	4	9	SPE03	2022-03-24 18:10:20.682	2022-03-24 18:10:22.056	2022-03-24 18:10:22.052	1	1
23	Specific 1	Specific	7	5	10	SPE01	2022-03-24 18:08:58.837	2022-03-24 18:52:33.331	2022-03-24 18:08:59.809	1	1
1	Advanced 1	Advanced	15	12	18	ADV01	2022-03-03 14:56:41.814	2022-03-24 17:32:43.671	2022-03-24 17:32:43.665	1	1
8	Advanced 2	Advanced	14	11	17	ADV02	2022-03-03 14:59:44.472	2022-03-24 17:35:10.585	2022-03-24 17:35:10.58	1	1
11	Advanced 3	Advanced	14	10	16	ADV03	2022-03-23 15:15:27.366	2022-03-24 17:36:47.211	2022-03-24 17:35:55.637	1	1
12	Basic 1	Basic	5	2	8	BAS01	2022-03-23 15:17:01.063	2022-03-24 17:38:13.854	2022-03-24 17:38:13.843	1	1
7	Basic 2	Basic	5	2	7	BAS02	2022-03-03 14:59:30.911	2022-03-24 17:39:35.572	2022-03-24 17:39:25.885	1	1
2	Basic 3	Basic	5	2	6	BAS03	2022-03-03 14:57:25.386	2022-03-24 17:40:11.506	2022-03-24 17:40:11.5	1	1
13	Basic 4e	Basic	5	1	6	BAS4E	2022-03-23 15:17:30.45	2022-03-24 17:43:11.375	2022-03-24 17:43:11.369	1	1
14	Basic 4d	Basic	5	1	6	BAS4D	2022-03-24 17:47:02.803	2022-03-24 17:48:13.878	2022-03-24 17:48:13.873	1	1
15	Basic 4c	Basic	5	1	6	BAS4C	2022-03-24 17:49:33.47	2022-03-24 17:49:35.026	2022-03-24 17:49:35.023	1	1
16	Basic 4b	Basic	5	1	6	BAS4B	2022-03-24 17:50:16.635	2022-03-24 17:50:17.676	2022-03-24 17:50:17.667	1	1
17	Basic 4a	Basic 	5	1	2	BAS4A	2022-03-24 17:50:44.427	2022-03-24 17:50:45.683	2022-03-24 17:50:45.677	1	1
3	Integration 1	Integration	18	14	20	INT01	2022-03-03 14:57:40.821	2022-03-24 17:52:25.386	2022-03-24 17:52:25.381	1	1
18	Integration 2	Integration	17	14	19	INT02	2022-03-24 17:53:19.706	2022-03-24 17:53:21.612	2022-03-24 17:53:21.607	1	1
19	Integration 3	Integration	16	13	18	INT03	2022-03-24 17:53:56.983	2022-03-24 17:53:58.034	2022-03-24 17:53:58.029	1	1
5	Optimization 1	Optimization	13	9	16	OPT01	2022-03-03 14:58:05.597	2022-03-24 17:56:29.725	2022-03-24 17:56:29.722	1	1
10	Optimization 2	Optimization	13	9	16	OPT02	2022-03-23 15:14:31.894	2022-03-24 17:57:27.238	2022-03-24 17:57:27.228	1	1
6	Optimization 3	Optimization	12	9	14	OPT03	2022-03-03 14:58:35.81	2022-03-24 17:58:19.479	2022-03-24 17:58:19.462	1	1
20	Optimization 4	Optimization	11	9	13	OPT04	2022-03-24 17:59:02.156	2022-03-24 17:59:03.299	2022-03-24 17:59:03.291	1	1
4	System 1	System	10	8	13	SYS01	2022-03-03 14:57:51.99	2022-03-24 18:05:51.029	2022-03-24 18:05:51.012	1	1
9	System 2	System	10	7	12	SYS02	2022-03-03 14:59:55.237	2022-03-24 18:06:31.418	2022-03-24 18:06:31.413	1	1
21	System 3	System	9	7	11	SYS03	2022-03-24 18:07:08.213	2022-03-24 18:07:09.195	2022-03-24 18:07:09.192	1	1
\.


--
-- TOC entry 4919 (class 0 OID 10176163)
-- Dependencies: 273
-- Data for Name: grades_jenjang_fungsional_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.grades_jenjang_fungsional_links (grade_id, jenjang_fungsional_id) FROM stdin;
\.


--
-- TOC entry 4918 (class 0 OID 10176158)
-- Dependencies: 272
-- Data for Name: grades_jenjang_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.grades_jenjang_links (grade_id, jenjang_id) FROM stdin;
\.


--
-- TOC entry 4920 (class 0 OID 10176168)
-- Dependencies: 274
-- Data for Name: grades_jenjang_struktural_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.grades_jenjang_struktural_links (grade_id, jenjang_struktural_id) FROM stdin;
\.


--
-- TOC entry 4874 (class 0 OID 10175933)
-- Dependencies: 228
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-05-12 01:46:34.605	2022-05-12 01:46:34.605	\N	\N
\.


--
-- TOC entry 4892 (class 0 OID 10176024)
-- Dependencies: 246
-- Data for Name: jabatans; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jabatans (id, nama_jabatan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	ANALYST PENGEMBANGAN EKSEKUTIF	2022-03-24 19:57:38.874	2022-03-24 19:57:39.843	2022-03-24 19:57:39.84	1	1
2	ASSISTANT ANALYST PENGEMBANGAN EKSEKUTIF	2022-03-24 20:07:44.574	2022-03-24 20:07:45.421	2022-03-24 20:07:45.417	1	1
3	SENIOR EXECUTIVE VICE PRESIDENT MANAJEMEN ASET	2022-03-24 21:17:33.748	2022-03-24 21:17:34.9	2022-03-24 21:17:34.892	1	1
4	DIREKTUR KEUANGAN pada PT PJB INVESTASI	2022-03-24 21:20:35.734	2022-03-24 21:20:36.787	2022-03-24 21:20:36.781	1	1
5	SENIOR SPECIALIST I SISTEM MANAJEMEN TERINTEGRASI	2022-03-24 21:26:48.767	2022-03-24 21:26:50.102	2022-03-24 21:26:50.098	1	1
8	JUNIOR ENGINEER OPERASI DAN PEMELIHARAAN DISTRIBUSI	2022-03-24 22:04:22.923	2022-03-24 22:04:24.12	2022-03-24 22:04:24.11	1	1
9	EXPERT STRATEGI DAN KEBIJAKAN PEMBANGKITAN DAN EBT	2022-03-24 22:07:32.074	2022-03-24 22:07:33.226	2022-03-24 22:07:33.22	1	1
10	JUNIOR ANALYST CUSTOMER EXPERIENCE (PLT SUPERVISOR ADMINISTRASI NIAGADAN CUSTOMER EXPERIENCE)	2022-03-24 22:10:52.859	2022-03-24 22:10:55.031	2022-03-24 22:10:55.028	1	1
11	EXECUTIVE VICE PRESIDENT GAS DAN BBM	2022-03-24 22:20:52.563	2022-03-24 22:20:53.796	2022-03-24 22:20:53.793	1	1
12	EXPERT HUMAN CAPITAL MANAGEMENT	2022-03-24 22:25:33.974	2022-03-24 22:25:35.42	2022-03-24 22:25:35.417	1	1
7	GENERAL MANAGER	2022-03-24 21:51:55.152	2022-03-24 22:30:56.172	2022-03-24 22:30:56.169	1	1
6	JUNIOR ANALYST ADMINISTRASI DAN UMUM	2022-03-24 21:35:22.27	2022-03-24 22:30:59.42	2022-03-24 22:30:59.417	1	1
\.


--
-- TOC entry 4923 (class 0 OID 10176183)
-- Dependencies: 277
-- Data for Name: jabatans_grade_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jabatans_grade_links (jabatan_id, grade_id) FROM stdin;
\.


--
-- TOC entry 4922 (class 0 OID 10176178)
-- Dependencies: 276
-- Data for Name: jabatans_jenjang_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jabatans_jenjang_links (jabatan_id, jenjang_id) FROM stdin;
\.


--
-- TOC entry 4921 (class 0 OID 10176173)
-- Dependencies: 275
-- Data for Name: jabatans_unit_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jabatans_unit_links (jabatan_id, unit_id) FROM stdin;
\.


--
-- TOC entry 4896 (class 0 OID 10176044)
-- Dependencies: 250
-- Data for Name: jenjang_fungsionals; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jenjang_fungsionals (id, nama_jenjang, jenis_jenjang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Fungsional I	Fungsional	2022-03-31 09:03:55	2022-03-31 09:03:55	\N	1	1
2	Fungsional II	Fungsional	2022-03-31 09:10:41.609	2022-03-31 09:10:41.609	\N	1	1
3	Fungsional III	Fungsional	2022-03-31 09:12:03.837	2022-03-31 09:12:03.837	\N	1	1
4	Fungsional IV	Fungsional	2022-03-31 09:12:45.108	2022-03-31 09:12:45.108	\N	1	1
5	Fungsional V	Fungsional	2022-03-31 09:13:13.387	2022-03-31 09:13:13.387	\N	1	1
6	Fungsional VI	Fungsional	2022-03-31 10:11:39.589	2022-03-31 10:11:39.589	\N	1	1
\.


--
-- TOC entry 4898 (class 0 OID 10176055)
-- Dependencies: 252
-- Data for Name: jenjang_strukturals; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jenjang_strukturals (id, nama_jabatan, jenis_jabatan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Manajemen Atas	Struktural	2022-03-31 10:12:55.844	2022-03-31 10:12:55.844	\N	1	1
2	Manajemen Menengah	Struktural	2022-03-31 10:16:34.303	2022-03-31 10:16:34.303	\N	1	1
3	Manajemen Dasar	Struktural	2022-03-31 10:17:23.786	2022-03-31 10:17:23.786	\N	1	1
4	Supervisor A	Struktural	2022-03-31 10:19:06.021	2022-03-31 10:19:06.021	\N	1	1
5	Supervisor D	Struktural	2022-03-31 10:20:37.062	2022-03-31 10:20:37.062	\N	1	1
\.


--
-- TOC entry 4894 (class 0 OID 10176033)
-- Dependencies: 248
-- Data for Name: jenjangs; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.jenjangs (id, nama_jenjang, jenis_jenjang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
11	Supervisori Dasar	Supervisori	2022-03-23 15:35:05.543	2022-03-23 15:35:05.543	\N	1	1
1	Fungsional I	Fungsional	2022-03-23 15:31:05.92	2022-03-23 15:52:04.993	2022-03-23 15:39:48.098	1	1
2	Fungsional II	Fungsional	2022-03-23 15:31:25.799	2022-03-23 15:52:27.928	2022-03-23 15:52:27.925	1	1
3	Fungsional  III	Fungsional	2022-03-23 15:31:48.572	2022-03-23 15:52:40.467	2022-03-23 15:52:40.464	1	1
4	Fungsional IV	Fungsional	2022-03-23 15:31:59.486	2022-03-23 15:53:33.329	2022-03-23 15:52:52.057	1	1
5	Fungsional V	Fungsional	2022-03-23 15:32:13.71	2022-03-23 15:53:46.792	2022-03-23 15:53:46.777	1	1
6	Fungsional VI	Fungsional	2022-03-23 15:32:29.053	2022-03-23 15:53:54.402	2022-03-23 15:53:54.397	1	1
7	Manajemen Atas	Struktural	2022-03-23 15:32:58.827	2022-03-23 16:08:13.52	2022-03-23 16:08:13.508	1	1
9	Manajemen Dasar	Struktural	2022-03-23 15:34:10.018	2022-03-24 22:31:06.06	2022-03-24 22:31:06.056	1	1
8	Manajemen Menengah	Struktural	2022-03-23 15:33:25.544	2022-03-24 22:31:09.308	2022-03-24 22:31:09.304	1	1
10	Supervisori Atas	Supervisori	2022-03-23 15:34:46.792	2022-03-24 22:31:12.474	2022-03-24 22:31:12.47	1	1
\.


--
-- TOC entry 4900 (class 0 OID 10176066)
-- Dependencies: 254
-- Data for Name: pegawais; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais (id, nip, nama_pegawai, religion, email, tempat_lahir, tanggal_lahir, gender, no_hp, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
3	191817161510	UDIN KOMARUDIN	Islam	udin.komarudin@pln.co.id	Surabaya	1972-03-25	Male	6281234567890	2022-03-24 21:07:30.636	2022-03-24 22:31:17.649	2022-03-24 22:31:17.636	1	1
4	191817161511	KEZIA FARIDA	Kristen	kezia.farida@pln.co.id	Jakarta	1995-05-06	Female	6281234567891	2022-03-24 21:20:29.24	2022-03-24 22:31:21.691	2022-03-24 22:31:21.68	1	1
5	191817161512	LEMBAH SIMBOLON	Islam	lembah.simbolon@pln.co.id	Solo	1977-11-21	Male	6281234567892	2022-03-24 21:25:56.714	2022-03-24 22:31:25.309	2022-03-24 22:31:25.301	1	1
6	191817161513	MARSITO GUNARTO	Islam	marsito.gunarto@pln.co.id	Madiun	1979-03-05	Male	6281234567893	2022-03-24 21:29:29.485	2022-03-24 22:31:28.344	2022-03-24 22:31:28.329	1	1
7	191817161514	PARIS PADMASARI	Kristen	paris.padmasari@pln.co.id	Denpasar	1992-07-29	Female	6281234567894	2022-03-24 21:37:53.963	2022-03-24 22:31:32.029	2022-03-24 22:31:32.007	1	1
8	191817161515	ZELDA WULANDARI	Islam	zelda.wulandari@pln.co.id	Bandung	1992-10-03	Female	6281234567895	2022-03-24 21:51:47.835	2022-03-24 22:31:37.022	2022-03-24 22:31:37.014	1	1
9	191817161516	WARDI MEGANTARA	Hindu	wardi.megantara@pln.co.id	Balikpapan	1989-09-28	Male	6281234567896	2022-03-24 21:54:40.998	2022-03-24 22:32:07.327	2022-03-24 22:32:07.32	1	1
10	191817161517	LEO ARDIANTO	Kristen	leo.ardianto@pln.co.id	Jakarta	1990-02-07	Male	6281234567897	2022-03-24 21:58:03.199	2022-03-24 22:32:32.255	2022-03-24 22:32:32.243	1	1
11	191817161518	DALIMA NURAINI	Islam	dalima.nuraini@pln.co.id	Riau	1993-07-21	Female	6281234567898	2022-03-24 22:06:33.364	2022-03-24 22:32:50.07	2022-03-24 22:32:50.059	1	1
12	191817161519	CITRA USADA	Islam	citra.usada@pln.co.id	Surabaya	1995-09-19	Female	6281234567899	2022-03-24 22:10:05.935	2022-03-24 22:32:56.195	2022-03-24 22:32:56.185	1	1
14	198603102008201021	ZAENAL ABIDIN KOMARULLAH	Islam	zaenal.abidin@gmail.com	Balikpapan	1986-03-10	Male	6289824561214	2022-03-24 22:20:45.847	2022-03-24 22:33:03.167	2022-03-24 22:33:03.159	1	1
13	198802122008131020	YAYA ROSMAYA	Islam	yaya.rosmaya@gmail.com	Bandung	1998-02-12	Male	6289824561213	2022-03-24 22:16:01.676	2022-03-24 22:33:10.812	2022-03-24 22:33:10.803	1	1
15	198901132019212022	ASTIA PUTRI BAHCTIAR	Islam	astia.putri@gmail.com	Bandung	1989-01-13	Female	6289824561215	2022-03-24 22:23:55.938	2022-03-24 22:33:17.556	2022-03-24 22:33:17.543	1	1
1	8310073Z	SOFAZ GENIALZENI	Islam	SOFAZ.GENIAL@PLN.CO.ID	SEMARANG 	1983-11-30	Male	081958196644	2022-03-03 14:37:41.393	2022-03-24 22:33:24.874	2022-03-24 22:33:24.865	1	1
2	9519721ZY	GARANG SYAHPUTRA SIREGAR	Islam	garang.syahputra@pln.co.id	SIPUPUS LOMBANG	1995-07-10	Male	6282298913525	2022-03-24 20:05:17.783	2022-03-24 22:33:31.306	2022-03-24 22:33:31.297	1	1
16	201511010Z	Hipzzy	Krislam	banyakemail@pln.ac.id	Bidan	2002-01-03	Male	08999999999999	2022-05-12 04:03:15.533	2022-05-12 04:03:20.778	2022-05-12 04:03:20.772	3	3
\.


--
-- TOC entry 4929 (class 0 OID 10176213)
-- Dependencies: 283
-- Data for Name: pegawais_bidang_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_bidang_links (pegawai_id, bidang_id) FROM stdin;
1	1
2	1
7	1
14	1
13	1
15	2
9	1
10	4
\.


--
-- TOC entry 4927 (class 0 OID 10176203)
-- Dependencies: 281
-- Data for Name: pegawais_direktorat_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_direktorat_links (pegawai_id, direktorat_id) FROM stdin;
1	3
2	3
3	2
4	2
7	3
14	3
13	3
15	5
9	3
10	5
11	4
16	1
\.


--
-- TOC entry 4928 (class 0 OID 10176208)
-- Dependencies: 282
-- Data for Name: pegawais_divisi_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_divisi_links (pegawai_id, divisi_id) FROM stdin;
1	4
2	4
3	8
7	4
14	4
13	4
15	9
9	4
10	9
11	3
16	7
\.


--
-- TOC entry 4924 (class 0 OID 10176188)
-- Dependencies: 278
-- Data for Name: pegawais_grade_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_grade_links (pegawai_id, grade_id) FROM stdin;
1	21
2	25
3	18
4	1
6	12
7	21
8	19
12	12
14	3
13	19
15	18
5	11
9	25
10	7
11	18
16	3
\.


--
-- TOC entry 4931 (class 0 OID 10176223)
-- Dependencies: 285
-- Data for Name: pegawais_jabatan_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_jabatan_links (pegawai_id, jabatan_id) FROM stdin;
1	1
2	2
3	3
4	4
6	6
7	1
8	7
12	10
14	11
13	7
15	12
5	5
9	1
10	8
11	9
\.


--
-- TOC entry 4925 (class 0 OID 10176193)
-- Dependencies: 279
-- Data for Name: pegawais_jenjang_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_jenjang_links (pegawai_id, jenjang_id) FROM stdin;
1	4
2	5
3	7
4	8
6	6
7	4
8	10
12	11
14	10
13	10
15	1
5	2
9	4
10	6
11	1
16	7
\.


--
-- TOC entry 4932 (class 0 OID 10176228)
-- Dependencies: 286
-- Data for Name: pegawais_pendidikan_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_pendidikan_links (pegawai_id, pendidikan_id) FROM stdin;
16	4
\.


--
-- TOC entry 4940 (class 0 OID 11792522)
-- Dependencies: 294
-- Data for Name: pegawais_penguji_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_penguji_links (pegawai_id, penguji_id) FROM stdin;
3	1
4	2
7	5
5	3
10	4
\.


--
-- TOC entry 4941 (class 0 OID 13007980)
-- Dependencies: 295
-- Data for Name: pegawais_peserta_nip_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_peserta_nip_links (pegawai_id, peserta_id) FROM stdin;
\.


--
-- TOC entry 4930 (class 0 OID 10176218)
-- Dependencies: 284
-- Data for Name: pegawais_sub_bidang_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_sub_bidang_links (pegawai_id, sub_bidang_id) FROM stdin;
\.


--
-- TOC entry 4926 (class 0 OID 10176198)
-- Dependencies: 280
-- Data for Name: pegawais_unit_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pegawais_unit_links (pegawai_id, unit_id) FROM stdin;
16	1
\.


--
-- TOC entry 4902 (class 0 OID 10176077)
-- Dependencies: 256
-- Data for Name: pendidikans; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pendidikans (id, nama_pendidikan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	S2 Bidang Psikologi	2022-03-24 19:57:54.823	2022-03-24 19:57:55.795	2022-03-24 19:57:55.785	1	1
2	S1 Informatika	2022-03-24 20:05:36.644	2022-03-24 20:05:37.534	2022-03-24 20:05:37.532	1	1
3	S1 Listrik	2022-03-24 21:18:34.217	2022-03-24 21:18:36.618	2022-03-24 21:18:36.613	1	1
4	S1 Akuntansi	2022-03-24 21:30:54.917	2022-03-24 21:30:55.954	2022-03-24 21:30:55.946	1	1
5	S2 Bidang Kelistrikan	2022-03-24 21:52:23.224	2022-03-24 21:52:24.973	2022-03-24 21:52:24.97	1	1
6	D3 Listrik	2022-03-24 22:04:49.09	2022-03-24 22:33:40.781	2022-03-24 22:33:40.779	1	1
8	S1 Ekonomi	2022-03-24 22:11:10.9	2022-03-24 22:33:44.372	2022-03-24 22:33:44.369	1	1
9	S2 Tenaga Surya	2022-03-24 22:21:25.07	2022-03-24 22:33:47.793	2022-03-24 22:33:47.79	1	1
7	S3 Bidang Ekonomi Lainnya	2022-03-24 22:07:40.97	2022-03-24 22:33:50.779	2022-03-24 22:33:50.777	1	1
\.


--
-- TOC entry 4904 (class 0 OID 10176086)
-- Dependencies: 258
-- Data for Name: pengujis; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pengujis (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2022-03-24 22:35:26.427	2022-05-19 05:03:46.199	2022-03-24 22:37:59.259	1	1
2	2022-03-24 22:35:46.178	2022-05-31 16:41:37.107	2022-03-24 22:38:04.832	1	1
5	2022-03-24 22:37:42.257	2022-05-31 16:42:21.983	2022-03-24 22:38:14.577	1	1
3	2022-03-24 22:36:14.199	2022-05-31 16:42:37.638	2022-03-24 22:38:08.109	1	1
4	2022-03-24 22:37:22.176	2022-05-31 16:42:48.033	2022-03-24 22:38:11.513	1	1
\.


--
-- TOC entry 4933 (class 0 OID 10176243)
-- Dependencies: 287
-- Data for Name: pengujis_fit_proper_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pengujis_fit_proper_links (penguji_id, fit_proper_id) FROM stdin;
\.


--
-- TOC entry 4935 (class 0 OID 10176253)
-- Dependencies: 289
-- Data for Name: pengujis_penilaian_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pengujis_penilaian_links (penguji_id, penilaian_id) FROM stdin;
\.


--
-- TOC entry 4934 (class 0 OID 10176248)
-- Dependencies: 288
-- Data for Name: pengujis_peserta_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pengujis_peserta_links (penguji_id, peserta_id) FROM stdin;
1	2
2	1
3	4
4	3
\.


--
-- TOC entry 4906 (class 0 OID 10176095)
-- Dependencies: 260
-- Data for Name: penilaians; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.penilaians (id, enthusiasthic, creative, building, strategic, customer, driving, visionary, empowering, keandalan, kecepatan, manajemen, kontribusi_kpi, internal, eksternal, akumulasi_nilai, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4936 (class 0 OID 10176258)
-- Dependencies: 290
-- Data for Name: penilaians_fit_proper_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.penilaians_fit_proper_links (penilaian_id, fit_proper_id) FROM stdin;
\.


--
-- TOC entry 4908 (class 0 OID 10176104)
-- Dependencies: 262
-- Data for Name: pesertas; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pesertas (id, proyeksi, jenis_fit_proper, uraian_jabatan, peserta_ki_inti, peserta_ki_peran, peserta_ki_bidang, date, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
2	SENIOR SPECIALIST II MANAJEMEN ASET PROPERTI	Reguler	Jabatan mengenai manajemen aset properti	\N	\N	\N	\N	2022-03-24 21:03:50.762	2022-06-01 10:01:51.571	2022-03-25 07:27:57.114	1	1
1	MASA PERSIAPAN PENSIUN	Reguler	Mendapatkan jabatan untuk persiapan masa pensiun bagi pegawai yang memasuki masa pensiun	\N	\N	\N	\N	2022-03-24 20:00:36.547	2022-06-02 03:48:36.152	2022-03-25 07:27:48.558	1	3
4	persiapan	\N	\N	\N	\N	\N	\N	2022-05-19 01:05:31.752	2022-06-02 03:49:54.89	2022-05-19 01:05:38.788	1	3
3	SENIOR SPECIALIST II KINERJA NIAGA DAN MANAJEMEN PELANGGAN	Reguler	Jabatan tentang kinerja niaga dan manajemen pelanggan	\N	\N	\N	\N	2022-03-24 22:46:36.136	2022-06-02 03:50:25.168	2022-03-25 07:27:53.601	1	3
\.


--
-- TOC entry 4938 (class 0 OID 10176268)
-- Dependencies: 292
-- Data for Name: pesertas_fit_proper_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pesertas_fit_proper_links (peserta_id, fit_proper_id) FROM stdin;
\.


--
-- TOC entry 4937 (class 0 OID 10176263)
-- Dependencies: 291
-- Data for Name: pesertas_jenjang_bidangs_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pesertas_jenjang_bidangs_links (peserta_id, jenjang_id) FROM stdin;
2	3
1	3
4	4
3	3
\.


--
-- TOC entry 4942 (class 0 OID 13007985)
-- Dependencies: 296
-- Data for Name: pesertas_peserta_nip_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.pesertas_peserta_nip_links (peserta_id, pegawai_id) FROM stdin;
2	14
1	3
4	4
3	5
\.


--
-- TOC entry 4870 (class 0 OID 10175911)
-- Dependencies: 224
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4860 (class 0 OID 10175860)
-- Dependencies: 214
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
27	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::bidang.bidang":{"kind":"collectionType","collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_bidang":{"type":"string","unique":true},"sub_bidangs":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang","mappedBy":"bidangs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_bidang":{"type":"string","unique":true},"sub_bidangs":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang","mappedBy":"bidangs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bidang","connection":"default","uid":"api::bidang.bidang","apiName":"bidang","globalId":"Bidang","actions":{},"lifecycles":{}},"api::direktorat.direktorat":{"kind":"collectionType","collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_direktorat":{"type":"string","unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_direktorat":{"type":"string","unique":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"direktorat","connection":"default","uid":"api::direktorat.direktorat","apiName":"direktorat","globalId":"Direktorat","actions":{},"lifecycles":{}},"api::divisi.divisi":{"kind":"collectionType","collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_divisi":{"type":"string","unique":true},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"divisi"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_divisi":{"type":"string","unique":true},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"divisi"}},"kind":"collectionType"},"modelType":"contentType","modelName":"divisi","connection":"default","uid":"api::divisi.divisi","apiName":"divisi","globalId":"Divisi","actions":{},"lifecycles":{}},"api::fit-proper.fit-proper":{"kind":"collectionType","collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"FitProper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"status":{"type":"string","required":true},"cat_kelebihan":{"type":"text"},"cat_kekurangan":{"type":"text"},"pesertas":{"type":"relation","relation":"oneToMany","target":"api::peserta.peserta","mappedBy":"fit_proper"},"penilaians":{"type":"relation","relation":"oneToMany","target":"api::penilaian.penilaian","mappedBy":"fit_proper"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"fit_proper"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"FitProper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"status":{"type":"string","required":true},"cat_kelebihan":{"type":"text"},"cat_kekurangan":{"type":"text"},"pesertas":{"type":"relation","relation":"oneToMany","target":"api::peserta.peserta","mappedBy":"fit_proper"},"penilaians":{"type":"relation","relation":"oneToMany","target":"api::penilaian.penilaian","mappedBy":"fit_proper"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"fit_proper"}},"kind":"collectionType"},"modelType":"contentType","modelName":"fit-proper","connection":"default","uid":"api::fit-proper.fit-proper","apiName":"fit-proper","globalId":"FitProper","actions":{},"lifecycles":{}},"api::grade.grade":{"kind":"collectionType","collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"Grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_grade":{"type":"string","required":true,"unique":false,"maxLength":100},"level_kompetensi":{"type":"string"},"jenjang":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"grades"},"ki_inti":{"type":"integer"},"ki_peran":{"type":"integer"},"ki_bidang":{"type":"integer"},"kode_grade":{"type":"string","required":true,"unique":true},"jenjang_fungsional":{"type":"relation","relation":"manyToOne","target":"api::jenjang-fungsional.jenjang-fungsional","inversedBy":"grades"},"jenjang_struktural":{"type":"relation","relation":"manyToOne","target":"api::jenjang-struktural.jenjang-struktural","inversedBy":"grades"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"Grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_grade":{"type":"string","required":true,"unique":false,"maxLength":100},"level_kompetensi":{"type":"string"},"jenjang":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"grades"},"ki_inti":{"type":"integer"},"ki_peran":{"type":"integer"},"ki_bidang":{"type":"integer"},"kode_grade":{"type":"string","required":true,"unique":true},"jenjang_fungsional":{"type":"relation","relation":"manyToOne","target":"api::jenjang-fungsional.jenjang-fungsional","inversedBy":"grades"},"jenjang_struktural":{"type":"relation","relation":"manyToOne","target":"api::jenjang-struktural.jenjang-struktural","inversedBy":"grades"}},"kind":"collectionType"},"modelType":"contentType","modelName":"grade","connection":"default","uid":"api::grade.grade","apiName":"grade","globalId":"Grade","actions":{},"lifecycles":{}},"api::jabatan.jabatan":{"kind":"collectionType","collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jabatan":{"type":"string","unique":true,"required":false},"unit":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"jabatans"},"jenjang":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"jabatans"},"grade":{"type":"relation","relation":"oneToOne","target":"api::grade.grade"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jabatan":{"type":"string","unique":true,"required":false},"unit":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"jabatans"},"jenjang":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"jabatans"},"grade":{"type":"relation","relation":"oneToOne","target":"api::grade.grade"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jabatan","connection":"default","uid":"api::jabatan.jabatan","apiName":"jabatan","globalId":"Jabatan","actions":{},"lifecycles":{}},"api::jenjang.jenjang":{"kind":"collectionType","collectionName":"jenjangs","info":{"singularName":"jenjang","pluralName":"jenjangs","displayName":"Jenjang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jenjang":{"type":"string","unique":true},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang"},"jenis_jenjang":{"type":"string"},"jabatans":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"jenjang"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jenjangs","info":{"singularName":"jenjang","pluralName":"jenjangs","displayName":"Jenjang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jenjang":{"type":"string","unique":true},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang"},"jenis_jenjang":{"type":"string"},"jabatans":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"jenjang"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jenjang","connection":"default","uid":"api::jenjang.jenjang","apiName":"jenjang","globalId":"Jenjang","actions":{},"lifecycles":{}},"api::jenjang-fungsional.jenjang-fungsional":{"kind":"collectionType","collectionName":"jenjang_fungsionals","info":{"singularName":"jenjang-fungsional","pluralName":"jenjang-fungsionals","displayName":"JenjangFungsional","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jenjang":{"type":"string","required":false,"unique":true},"jenis_jenjang":{"type":"string"},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang_fungsional"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jenjang_fungsionals","info":{"singularName":"jenjang-fungsional","pluralName":"jenjang-fungsionals","displayName":"JenjangFungsional","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jenjang":{"type":"string","required":false,"unique":true},"jenis_jenjang":{"type":"string"},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang_fungsional"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jenjang-fungsional","connection":"default","uid":"api::jenjang-fungsional.jenjang-fungsional","apiName":"jenjang-fungsional","globalId":"JenjangFungsional","actions":{},"lifecycles":{}},"api::jenjang-struktural.jenjang-struktural":{"kind":"collectionType","collectionName":"jenjang_strukturals","info":{"singularName":"jenjang-struktural","pluralName":"jenjang-strukturals","displayName":"JenjangStruktural"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jabatan":{"type":"string"},"jenis_jabatan":{"type":"string"},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang_struktural"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jenjang_strukturals","info":{"singularName":"jenjang-struktural","pluralName":"jenjang-strukturals","displayName":"JenjangStruktural"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_jabatan":{"type":"string"},"jenis_jabatan":{"type":"string"},"grades":{"type":"relation","relation":"oneToMany","target":"api::grade.grade","mappedBy":"jenjang_struktural"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jenjang-struktural","connection":"default","uid":"api::jenjang-struktural.jenjang-struktural","apiName":"jenjang-struktural","globalId":"JenjangStruktural","actions":{},"lifecycles":{}},"api::pegawai.pegawai":{"kind":"collectionType","collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nip":{"type":"string","required":true,"unique":true},"nama_pegawai":{"type":"string"},"grade":{"type":"relation","relation":"oneToOne","target":"api::grade.grade"},"religion":{"type":"string"},"email":{"type":"email"},"tempat_lahir":{"type":"string"},"tanggal_lahir":{"type":"date"},"gender":{"type":"string"},"jenjang":{"type":"relation","relation":"oneToOne","target":"api::jenjang.jenjang"},"unit":{"type":"relation","relation":"oneToOne","target":"api::unit.unit"},"direktorat":{"type":"relation","relation":"oneToOne","target":"api::direktorat.direktorat"},"divisi":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"pegawais"},"bidang":{"type":"relation","relation":"oneToOne","target":"api::bidang.bidang"},"sub_bidang":{"type":"relation","relation":"oneToOne","target":"api::sub-bidang.sub-bidang"},"jabatan":{"type":"relation","relation":"oneToOne","target":"api::jabatan.jabatan"},"no_hp":{"type":"string"},"pendidikan":{"type":"relation","relation":"oneToOne","target":"api::pendidikan.pendidikan"},"foto_pegawai":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","inversedBy":"penguji_nip"},"peserta_nip":{"type":"relation","relation":"oneToOne","target":"api::peserta.peserta","inversedBy":"peserta_nip"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nip":{"type":"string","required":true,"unique":true},"nama_pegawai":{"type":"string"},"grade":{"type":"relation","relation":"oneToOne","target":"api::grade.grade"},"religion":{"type":"string"},"email":{"type":"email"},"tempat_lahir":{"type":"string"},"tanggal_lahir":{"type":"date"},"gender":{"type":"string"},"jenjang":{"type":"relation","relation":"oneToOne","target":"api::jenjang.jenjang"},"unit":{"type":"relation","relation":"oneToOne","target":"api::unit.unit"},"direktorat":{"type":"relation","relation":"oneToOne","target":"api::direktorat.direktorat"},"divisi":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"pegawais"},"bidang":{"type":"relation","relation":"oneToOne","target":"api::bidang.bidang"},"sub_bidang":{"type":"relation","relation":"oneToOne","target":"api::sub-bidang.sub-bidang"},"jabatan":{"type":"relation","relation":"oneToOne","target":"api::jabatan.jabatan"},"no_hp":{"type":"string"},"pendidikan":{"type":"relation","relation":"oneToOne","target":"api::pendidikan.pendidikan"},"foto_pegawai":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","inversedBy":"penguji_nip"},"peserta_nip":{"type":"relation","relation":"oneToOne","target":"api::peserta.peserta","inversedBy":"peserta_nip"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pegawai","connection":"default","uid":"api::pegawai.pegawai","apiName":"pegawai","globalId":"Pegawai","actions":{},"lifecycles":{}},"api::pendidikan.pendidikan":{"kind":"collectionType","collectionName":"pendidikans","info":{"singularName":"pendidikan","pluralName":"pendidikans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_pendidikan":{"type":"string","unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pendidikans","info":{"singularName":"pendidikan","pluralName":"pendidikans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_pendidikan":{"type":"string","unique":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"pendidikan","connection":"default","uid":"api::pendidikan.pendidikan","apiName":"pendidikan","globalId":"Pendidikan","actions":{},"lifecycles":{}},"api::penguji.penguji":{"kind":"collectionType","collectionName":"pengujis","info":{"singularName":"penguji","pluralName":"pengujis","displayName":"Penguji","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"penguji_nip":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"penguji"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"pengujis"},"peserta":{"type":"relation","relation":"manyToOne","target":"api::peserta.peserta","inversedBy":"pengujis"},"penilaian":{"type":"relation","relation":"manyToOne","target":"api::penilaian.penilaian","inversedBy":"pengujis"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pengujis","info":{"singularName":"penguji","pluralName":"pengujis","displayName":"Penguji","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"penguji_nip":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"penguji"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"pengujis"},"peserta":{"type":"relation","relation":"manyToOne","target":"api::peserta.peserta","inversedBy":"pengujis"},"penilaian":{"type":"relation","relation":"manyToOne","target":"api::penilaian.penilaian","inversedBy":"pengujis"}},"kind":"collectionType"},"modelType":"contentType","modelName":"penguji","connection":"default","uid":"api::penguji.penguji","apiName":"penguji","globalId":"Penguji","actions":{},"lifecycles":{}},"api::penilaian.penilaian":{"kind":"collectionType","collectionName":"penilaians","info":{"singularName":"penilaian","pluralName":"penilaians","displayName":"Penilaian"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"enthusiasthic":{"type":"integer"},"creative":{"type":"integer"},"building":{"type":"integer"},"strategic":{"type":"integer"},"customer":{"type":"integer"},"driving":{"type":"integer"},"visionary":{"type":"integer"},"empowering":{"type":"integer"},"keandalan":{"type":"integer"},"kecepatan":{"type":"integer"},"manajemen":{"type":"integer"},"kontribusi_kpi":{"type":"integer"},"internal":{"type":"integer"},"eksternal":{"type":"integer"},"akumulasi_nilai":{"type":"float"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"penilaians"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"penilaian"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"penilaians","info":{"singularName":"penilaian","pluralName":"penilaians","displayName":"Penilaian"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"enthusiasthic":{"type":"integer"},"creative":{"type":"integer"},"building":{"type":"integer"},"strategic":{"type":"integer"},"customer":{"type":"integer"},"driving":{"type":"integer"},"visionary":{"type":"integer"},"empowering":{"type":"integer"},"keandalan":{"type":"integer"},"kecepatan":{"type":"integer"},"manajemen":{"type":"integer"},"kontribusi_kpi":{"type":"integer"},"internal":{"type":"integer"},"eksternal":{"type":"integer"},"akumulasi_nilai":{"type":"float"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"penilaians"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"penilaian"}},"kind":"collectionType"},"modelType":"contentType","modelName":"penilaian","connection":"default","uid":"api::penilaian.penilaian","apiName":"penilaian","globalId":"Penilaian","actions":{},"lifecycles":{}},"api::peserta.peserta":{"kind":"collectionType","collectionName":"pesertas","info":{"singularName":"peserta","pluralName":"pesertas","displayName":"Peserta","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"proyeksi":{"type":"string"},"jenjang_bidangs":{"type":"relation","relation":"oneToOne","target":"api::jenjang.jenjang"},"jenis_fit_proper":{"type":"string"},"uraian_jabatan":{"type":"string"},"ppt":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"cv_docs":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"peserta_ki_inti":{"type":"integer"},"peserta_ki_peran":{"type":"integer"},"peserta_ki_bidang":{"type":"integer"},"date":{"type":"date"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"peserta"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"pesertas"},"peserta_nip":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","inversedBy":"peserta_nip"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pesertas","info":{"singularName":"peserta","pluralName":"pesertas","displayName":"Peserta","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"proyeksi":{"type":"string"},"jenjang_bidangs":{"type":"relation","relation":"oneToOne","target":"api::jenjang.jenjang"},"jenis_fit_proper":{"type":"string"},"uraian_jabatan":{"type":"string"},"ppt":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"cv_docs":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"peserta_ki_inti":{"type":"integer"},"peserta_ki_peran":{"type":"integer"},"peserta_ki_bidang":{"type":"integer"},"date":{"type":"date"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"peserta"},"fit_proper":{"type":"relation","relation":"manyToOne","target":"api::fit-proper.fit-proper","inversedBy":"pesertas"},"peserta_nip":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","inversedBy":"peserta_nip"}},"kind":"collectionType"},"modelType":"contentType","modelName":"peserta","connection":"default","uid":"api::peserta.peserta","apiName":"peserta","globalId":"Peserta","actions":{},"lifecycles":{}},"api::sub-bidang.sub-bidang":{"kind":"collectionType","collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"SubBidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_subbidang":{"type":"string","unique":true},"bidangs":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"sub_bidangs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"SubBidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_subbidang":{"type":"string","unique":true},"bidangs":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"sub_bidangs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"sub-bidang","connection":"default","uid":"api::sub-bidang.sub-bidang","apiName":"sub-bidang","globalId":"SubBidang","actions":{},"lifecycles":{}},"api::unit.unit":{"kind":"collectionType","collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_unit":{"type":"string","unique":true},"jabatans":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"unit"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"nama_unit":{"type":"string","unique":true},"jabatans":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"unit"}},"kind":"collectionType"},"modelType":"contentType","modelName":"unit","connection":"default","uid":"api::unit.unit","apiName":"unit","globalId":"Unit","actions":{},"lifecycles":{}}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::api::direktorat.direktorat	{"uid":"api::direktorat.direktorat","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_direktorat","defaultSortBy":"nama_direktorat","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_direktorat":{"edit":{"label":"nama_direktorat","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_direktorat","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_direktorat","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"nama_direktorat","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::fit-proper.fit-proper	{"uid":"api::fit-proper.fit-proper","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"status","defaultSortBy":"status","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"cat_kelebihan":{"edit":{"label":"cat_kelebihan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cat_kelebihan","searchable":true,"sortable":true}},"cat_kekurangan":{"edit":{"label":"cat_kekurangan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cat_kekurangan","searchable":true,"sortable":true}},"pesertas":{"edit":{"label":"pesertas","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"pesertas","searchable":false,"sortable":false}},"penilaians":{"edit":{"label":"penilaians","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penilaians","searchable":false,"sortable":false}},"pengujis":{"edit":{"label":"pengujis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pengujis","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","status","cat_kelebihan","cat_kekurangan"],"editRelations":["pesertas","penilaians","pengujis"],"edit":[[{"name":"status","size":6},{"name":"cat_kelebihan","size":6}],[{"name":"cat_kekurangan","size":6}]]}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::jenjang-struktural.jenjang-struktural	{"uid":"api::jenjang-struktural.jenjang-struktural","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_jabatan","defaultSortBy":"nama_jabatan","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_jabatan":{"edit":{"label":"nama_jabatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_jabatan","searchable":true,"sortable":true}},"jenis_jabatan":{"edit":{"label":"jenis_jabatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenis_jabatan","searchable":true,"sortable":true}},"grades":{"edit":{"label":"grades","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_grade"},"list":{"label":"grades","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_jabatan","jenis_jabatan","grades"],"editRelations":["grades"],"edit":[[{"name":"nama_jabatan","size":6},{"name":"jenis_jabatan","size":6}]]}}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::peserta.peserta	{"uid":"api::peserta.peserta","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proyeksi","defaultSortBy":"proyeksi","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"peserta_nip":{"edit":{"label":"peserta_nip","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nip"},"list":{"label":"peserta_nip","searchable":false,"sortable":false}},"proyeksi":{"edit":{"label":"proyeksi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proyeksi","searchable":true,"sortable":true}},"jenjang_bidangs":{"edit":{"label":"jenjang_bidangs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jenjang"},"list":{"label":"jenjang_bidangs","searchable":true,"sortable":true}},"jenis_fit_proper":{"edit":{"label":"jenis_fit_proper","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenis_fit_proper","searchable":true,"sortable":true}},"uraian_jabatan":{"edit":{"label":"uraian_jabatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uraian_jabatan","searchable":true,"sortable":true}},"ppt":{"edit":{"label":"ppt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ppt","searchable":false,"sortable":false}},"cv_docs":{"edit":{"label":"cv_docs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cv_docs","searchable":false,"sortable":false}},"peserta_ki_inti":{"edit":{"label":"peserta_ki_inti","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"peserta_ki_inti","searchable":true,"sortable":true}},"peserta_ki_peran":{"edit":{"label":"peserta_ki_peran","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"peserta_ki_peran","searchable":true,"sortable":true}},"peserta_ki_bidang":{"edit":{"label":"peserta_ki_bidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"peserta_ki_bidang","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"pengujis":{"edit":{"label":"pengujis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pengujis","searchable":false,"sortable":false}},"fit_proper":{"edit":{"label":"fit_proper","description":"","placeholder":"","visible":true,"editable":true,"mainField":"status"},"list":{"label":"fit_proper","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","peserta_nip","proyeksi","jenjang_bidangs"],"editRelations":["peserta_nip","jenjang_bidangs","pengujis","fit_proper"],"edit":[[{"name":"proyeksi","size":6},{"name":"jenis_fit_proper","size":6}],[{"name":"uraian_jabatan","size":6},{"name":"ppt","size":6}],[{"name":"cv_docs","size":6},{"name":"peserta_ki_inti","size":4}],[{"name":"peserta_ki_peran","size":4},{"name":"peserta_ki_bidang","size":4},{"name":"date","size":4}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::api::bidang.bidang	{"uid":"api::bidang.bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_bidang","defaultSortBy":"nama_bidang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_bidang":{"edit":{"label":"nama_bidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_bidang","searchable":true,"sortable":true}},"sub_bidangs":{"edit":{"label":"sub_bidangs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_subbidang"},"list":{"label":"sub_bidangs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_bidang","sub_bidangs","createdAt"],"editRelations":["sub_bidangs"],"edit":[[{"name":"nama_bidang","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::divisi.divisi	{"uid":"api::divisi.divisi","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_divisi","defaultSortBy":"nama_divisi","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_divisi":{"edit":{"label":"nama_divisi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_divisi","searchable":true,"sortable":true}},"pegawais":{"edit":{"label":"pegawais","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nip"},"list":{"label":"pegawais","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_divisi","pegawais","createdAt"],"editRelations":["pegawais"],"edit":[[{"name":"nama_divisi","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::grade.grade	{"uid":"api::grade.grade","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_grade","defaultSortBy":"nama_grade","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_grade":{"edit":{"label":"nama_grade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_grade","searchable":true,"sortable":true}},"level_kompetensi":{"edit":{"label":"level_kompetensi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"level_kompetensi","searchable":true,"sortable":true}},"jenjang":{"edit":{"label":"jenjang","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jenjang"},"list":{"label":"jenjang","searchable":true,"sortable":true}},"ki_inti":{"edit":{"label":"ki_inti","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ki_inti","searchable":true,"sortable":true}},"ki_peran":{"edit":{"label":"ki_peran","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ki_peran","searchable":true,"sortable":true}},"ki_bidang":{"edit":{"label":"ki_bidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ki_bidang","searchable":true,"sortable":true}},"kode_grade":{"edit":{"label":"kode_grade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kode_grade","searchable":true,"sortable":true}},"jenjang_fungsional":{"edit":{"label":"jenjang_fungsional","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jenjang"},"list":{"label":"jenjang_fungsional","searchable":true,"sortable":true}},"jenjang_struktural":{"edit":{"label":"jenjang_struktural","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jabatan"},"list":{"label":"jenjang_struktural","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_grade","level_kompetensi","jenjang"],"editRelations":["jenjang","jenjang_fungsional","jenjang_struktural"],"edit":[[{"name":"nama_grade","size":6},{"name":"level_kompetensi","size":6}],[{"name":"ki_inti","size":4},{"name":"ki_peran","size":4},{"name":"ki_bidang","size":4}],[{"name":"kode_grade","size":6}]]}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::pendidikan.pendidikan	{"uid":"api::pendidikan.pendidikan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_pendidikan","defaultSortBy":"nama_pendidikan","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_pendidikan":{"edit":{"label":"nama_pendidikan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_pendidikan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_pendidikan","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"nama_pendidikan","size":6}]]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::jenjang.jenjang	{"uid":"api::jenjang.jenjang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_jenjang","defaultSortBy":"nama_jenjang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_jenjang":{"edit":{"label":"nama_jenjang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_jenjang","searchable":true,"sortable":true}},"grades":{"edit":{"label":"grades","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_grade"},"list":{"label":"grades","searchable":false,"sortable":false}},"jenis_jenjang":{"edit":{"label":"jenis_jenjang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenis_jenjang","searchable":true,"sortable":true}},"jabatans":{"edit":{"label":"jabatans","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jabatan"},"list":{"label":"jabatans","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_jenjang","grades","jenis_jenjang"],"editRelations":["grades","jabatans"],"edit":[[{"name":"nama_jenjang","size":6},{"name":"jenis_jenjang","size":6}]]}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::jabatan.jabatan	{"uid":"api::jabatan.jabatan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_jabatan","defaultSortBy":"nama_jabatan","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_jabatan":{"edit":{"label":"nama_jabatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_jabatan","searchable":true,"sortable":true}},"unit":{"edit":{"label":"unit","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_unit"},"list":{"label":"unit","searchable":true,"sortable":true}},"jenjang":{"edit":{"label":"jenjang","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jenjang"},"list":{"label":"jenjang","searchable":true,"sortable":true}},"grade":{"edit":{"label":"grade","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_grade"},"list":{"label":"grade","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_jabatan","unit","jenjang"],"editRelations":["unit","jenjang","grade"],"edit":[[{"name":"nama_jabatan","size":6}]]}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::sub-bidang.sub-bidang	{"uid":"api::sub-bidang.sub-bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_subbidang","defaultSortBy":"nama_subbidang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_subbidang":{"edit":{"label":"nama_subbidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_subbidang","searchable":true,"sortable":true}},"bidangs":{"edit":{"label":"bidangs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_bidang"},"list":{"label":"bidangs","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_subbidang","bidangs","createdAt"],"editRelations":["bidangs"],"edit":[[{"name":"nama_subbidang","size":6}]]}}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::penilaian.penilaian	{"uid":"api::penilaian.penilaian","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"enthusiasthic":{"edit":{"label":"enthusiasthic","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enthusiasthic","searchable":true,"sortable":true}},"creative":{"edit":{"label":"creative","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"creative","searchable":true,"sortable":true}},"building":{"edit":{"label":"building","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"building","searchable":true,"sortable":true}},"strategic":{"edit":{"label":"strategic","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"strategic","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"customer","searchable":true,"sortable":true}},"driving":{"edit":{"label":"driving","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"driving","searchable":true,"sortable":true}},"visionary":{"edit":{"label":"visionary","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visionary","searchable":true,"sortable":true}},"empowering":{"edit":{"label":"empowering","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"empowering","searchable":true,"sortable":true}},"keandalan":{"edit":{"label":"keandalan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keandalan","searchable":true,"sortable":true}},"kecepatan":{"edit":{"label":"kecepatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kecepatan","searchable":true,"sortable":true}},"manajemen":{"edit":{"label":"manajemen","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"manajemen","searchable":true,"sortable":true}},"kontribusi_kpi":{"edit":{"label":"kontribusi_kpi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kontribusi_kpi","searchable":true,"sortable":true}},"internal":{"edit":{"label":"internal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"internal","searchable":true,"sortable":true}},"eksternal":{"edit":{"label":"eksternal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"eksternal","searchable":true,"sortable":true}},"akumulasi_nilai":{"edit":{"label":"akumulasi_nilai","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"akumulasi_nilai","searchable":true,"sortable":true}},"fit_proper":{"edit":{"label":"fit_proper","description":"","placeholder":"","visible":true,"editable":true,"mainField":"status"},"list":{"label":"fit_proper","searchable":true,"sortable":true}},"pengujis":{"edit":{"label":"pengujis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pengujis","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","enthusiasthic","creative","building"],"editRelations":["fit_proper","pengujis"],"edit":[[{"name":"enthusiasthic","size":4},{"name":"creative","size":4},{"name":"building","size":4}],[{"name":"strategic","size":4},{"name":"customer","size":4},{"name":"driving","size":4}],[{"name":"visionary","size":4},{"name":"empowering","size":4},{"name":"keandalan","size":4}],[{"name":"kecepatan","size":4},{"name":"manajemen","size":4},{"name":"kontribusi_kpi","size":4}],[{"name":"internal","size":4},{"name":"eksternal","size":4},{"name":"akumulasi_nilai","size":4}]]}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::jenjang-fungsional.jenjang-fungsional	{"uid":"api::jenjang-fungsional.jenjang-fungsional","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_jenjang","defaultSortBy":"nama_jenjang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_jenjang":{"edit":{"label":"nama_jenjang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_jenjang","searchable":true,"sortable":true}},"jenis_jenjang":{"edit":{"label":"jenis_jenjang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenis_jenjang","searchable":true,"sortable":true}},"grades":{"edit":{"label":"grades","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_grade"},"list":{"label":"grades","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_jenjang","jenis_jenjang","grades"],"editRelations":["grades"],"edit":[[{"name":"nama_jenjang","size":6},{"name":"jenis_jenjang","size":6}]]}}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::penguji.penguji	{"uid":"api::penguji.penguji","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"penguji_nip":{"edit":{"label":"penguji_nip","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nip"},"list":{"label":"penguji_nip","searchable":false,"sortable":false}},"fit_proper":{"edit":{"label":"fit_proper","description":"","placeholder":"","visible":true,"editable":true,"mainField":"status"},"list":{"label":"fit_proper","searchable":true,"sortable":true}},"peserta":{"edit":{"label":"peserta","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"peserta","searchable":true,"sortable":true}},"penilaian":{"edit":{"label":"penilaian","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penilaian","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","penguji_nip","fit_proper","peserta"],"editRelations":["penguji_nip","fit_proper","peserta","penilaian"],"edit":[]}}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::unit.unit	{"uid":"api::unit.unit","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nama_unit","defaultSortBy":"nama_unit","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nama_unit":{"edit":{"label":"nama_unit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_unit","searchable":true,"sortable":true}},"jabatans":{"edit":{"label":"jabatans","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jabatan"},"list":{"label":"jabatans","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nama_unit","jabatans","createdAt"],"editRelations":["jabatans"],"edit":[[{"name":"nama_unit","size":6}]]}}	object	\N	\N
28	plugin_i18n_default_locale	"en"	string	\N	\N
29	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"https://plnstrapi.herokuapp.com/api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"https://plnstrapi.herokuapp.com/api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"https://plnstrapi.herokuapp.com/api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"https://plnstrapi.herokuapp.com/api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
30	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
31	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
32	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::pegawai.pegawai	{"uid":"api::pegawai.pegawai","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"nip","defaultSortBy":"nip","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"nip":{"edit":{"label":"nip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nip","searchable":true,"sortable":true}},"nama_pegawai":{"edit":{"label":"nama_pegawai","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nama_pegawai","searchable":true,"sortable":true}},"grade":{"edit":{"label":"grade","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_grade"},"list":{"label":"grade","searchable":true,"sortable":true}},"religion":{"edit":{"label":"religion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"religion","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"tempat_lahir":{"edit":{"label":"tempat_lahir","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tempat_lahir","searchable":true,"sortable":true}},"tanggal_lahir":{"edit":{"label":"tanggal_lahir","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tanggal_lahir","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"jenjang":{"edit":{"label":"jenjang","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jenjang"},"list":{"label":"jenjang","searchable":true,"sortable":true}},"unit":{"edit":{"label":"unit","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_unit"},"list":{"label":"unit","searchable":true,"sortable":true}},"direktorat":{"edit":{"label":"direktorat","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_direktorat"},"list":{"label":"direktorat","searchable":true,"sortable":true}},"divisi":{"edit":{"label":"divisi","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_divisi"},"list":{"label":"divisi","searchable":true,"sortable":true}},"bidang":{"edit":{"label":"bidang","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_bidang"},"list":{"label":"bidang","searchable":true,"sortable":true}},"sub_bidang":{"edit":{"label":"sub_bidang","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_subbidang"},"list":{"label":"sub_bidang","searchable":true,"sortable":true}},"jabatan":{"edit":{"label":"jabatan","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_jabatan"},"list":{"label":"jabatan","searchable":true,"sortable":true}},"no_hp":{"edit":{"label":"no_hp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"no_hp","searchable":true,"sortable":true}},"pendidikan":{"edit":{"label":"pendidikan","description":"","placeholder":"","visible":true,"editable":true,"mainField":"nama_pendidikan"},"list":{"label":"pendidikan","searchable":true,"sortable":true}},"foto_pegawai":{"edit":{"label":"foto_pegawai","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"foto_pegawai","searchable":false,"sortable":false}},"penguji":{"edit":{"label":"penguji","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penguji","searchable":true,"sortable":true}},"peserta_nip":{"edit":{"label":"peserta_nip","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"peserta_nip","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","nip","nama_pegawai","grade"],"edit":[[{"name":"nip","size":6},{"name":"nama_pegawai","size":6}],[{"name":"religion","size":6},{"name":"email","size":6}],[{"name":"tempat_lahir","size":6},{"name":"tanggal_lahir","size":4}],[{"name":"gender","size":6},{"name":"no_hp","size":6}],[{"name":"foto_pegawai","size":6}]],"editRelations":["grade","jenjang","unit","direktorat","divisi","bidang","sub_bidang","jabatan","pendidikan","penguji","peserta_nip"]}}	object	\N	\N
\.


--
-- TOC entry 4858 (class 0 OID 10175851)
-- Dependencies: 212
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
74	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bidangs","indexes":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_bidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"direktorats","indexes":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"]},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_direktorat","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"divisis","indexes":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"]},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_divisi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers","indexes":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"]},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cat_kelebihan","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cat_kekurangan","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades","indexes":[{"name":"grades_created_by_id_fk","columns":["created_by_id"]},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"grades_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_grade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"level_kompetensi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ki_inti","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ki_peran","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ki_bidang","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kode_grade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans","indexes":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"]},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jenjangs","indexes":[{"name":"jenjangs_created_by_id_fk","columns":["created_by_id"]},{"name":"jenjangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jenjangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jenjangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis_jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jenjang_fungsionals","indexes":[{"name":"jenjang_fungsionals_created_by_id_fk","columns":["created_by_id"]},{"name":"jenjang_fungsionals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jenjang_fungsionals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jenjang_fungsionals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis_jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jenjang_strukturals","indexes":[{"name":"jenjang_strukturals_created_by_id_fk","columns":["created_by_id"]},{"name":"jenjang_strukturals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jenjang_strukturals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jenjang_strukturals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais","indexes":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"]},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nama_pegawai","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"religion","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tempat_lahir","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tanggal_lahir","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"no_hp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pendidikans","indexes":[{"name":"pendidikans_created_by_id_fk","columns":["created_by_id"]},{"name":"pendidikans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pendidikans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pendidikans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_pendidikan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis","indexes":[{"name":"pengujis_created_by_id_fk","columns":["created_by_id"]},{"name":"pengujis_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pengujis_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pengujis_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"penilaians","indexes":[{"name":"penilaians_created_by_id_fk","columns":["created_by_id"]},{"name":"penilaians_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"penilaians_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"penilaians_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"enthusiasthic","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"creative","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"building","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"strategic","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"driving","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visionary","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"empowering","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keandalan","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kecepatan","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"manajemen","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kontribusi_kpi","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"internal","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"eksternal","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"akumulasi_nilai","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pesertas","indexes":[{"name":"pesertas_created_by_id_fk","columns":["created_by_id"]},{"name":"pesertas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pesertas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pesertas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proyeksi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis_fit_proper","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"uraian_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"peserta_ki_inti","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"peserta_ki_peran","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"peserta_ki_bidang","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sub_bidangs","indexes":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_subbidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"units","indexes":[{"name":"units_created_by_id_fk","columns":["created_by_id"]},{"name":"units_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"units_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"units_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_unit","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades_jenjang_links","indexes":[{"name":"grades_jenjang_links_fk","columns":["grade_id"]},{"name":"grades_jenjang_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"grades_jenjang_links_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"},{"name":"grades_jenjang_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades_jenjang_fungsional_links","indexes":[{"name":"grades_jenjang_fungsional_links_fk","columns":["grade_id"]},{"name":"grades_jenjang_fungsional_links_inv_fk","columns":["jenjang_fungsional_id"]}],"foreignKeys":[{"name":"grades_jenjang_fungsional_links_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"},{"name":"grades_jenjang_fungsional_links_inv_fk","columns":["jenjang_fungsional_id"],"referencedColumns":["id"],"referencedTable":"jenjang_fungsionals","onDelete":"CASCADE"}],"columns":[{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_fungsional_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades_jenjang_struktural_links","indexes":[{"name":"grades_jenjang_struktural_links_fk","columns":["grade_id"]},{"name":"grades_jenjang_struktural_links_inv_fk","columns":["jenjang_struktural_id"]}],"foreignKeys":[{"name":"grades_jenjang_struktural_links_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"},{"name":"grades_jenjang_struktural_links_inv_fk","columns":["jenjang_struktural_id"],"referencedColumns":["id"],"referencedTable":"jenjang_strukturals","onDelete":"CASCADE"}],"columns":[{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_struktural_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans_unit_links","indexes":[{"name":"jabatans_unit_links_fk","columns":["jabatan_id"]},{"name":"jabatans_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"jabatans_unit_links_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"},{"name":"jabatans_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans_jenjang_links","indexes":[{"name":"jabatans_jenjang_links_fk","columns":["jabatan_id"]},{"name":"jabatans_jenjang_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"jabatans_jenjang_links_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"},{"name":"jabatans_jenjang_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans_grade_links","indexes":[{"name":"jabatans_grade_links_fk","columns":["jabatan_id"]},{"name":"jabatans_grade_links_inv_fk","columns":["grade_id"]}],"foreignKeys":[{"name":"jabatans_grade_links_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"},{"name":"jabatans_grade_links_inv_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"}],"columns":[{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_grade_links","indexes":[{"name":"pegawais_grade_links_fk","columns":["pegawai_id"]},{"name":"pegawais_grade_links_inv_fk","columns":["grade_id"]}],"foreignKeys":[{"name":"pegawais_grade_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_grade_links_inv_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_jenjang_links","indexes":[{"name":"pegawais_jenjang_links_fk","columns":["pegawai_id"]},{"name":"pegawais_jenjang_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"pegawais_jenjang_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_jenjang_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_unit_links","indexes":[{"name":"pegawais_unit_links_fk","columns":["pegawai_id"]},{"name":"pegawais_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"pegawais_unit_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_direktorat_links","indexes":[{"name":"pegawais_direktorat_links_fk","columns":["pegawai_id"]},{"name":"pegawais_direktorat_links_inv_fk","columns":["direktorat_id"]}],"foreignKeys":[{"name":"pegawais_direktorat_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_direktorat_links_inv_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_divisi_links","indexes":[{"name":"pegawais_divisi_links_fk","columns":["pegawai_id"]},{"name":"pegawais_divisi_links_inv_fk","columns":["divisi_id"]}],"foreignKeys":[{"name":"pegawais_divisi_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_divisi_links_inv_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_bidang_links","indexes":[{"name":"pegawais_bidang_links_fk","columns":["pegawai_id"]},{"name":"pegawais_bidang_links_inv_fk","columns":["bidang_id"]}],"foreignKeys":[{"name":"pegawais_bidang_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_bidang_links_inv_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_sub_bidang_links","indexes":[{"name":"pegawais_sub_bidang_links_fk","columns":["pegawai_id"]},{"name":"pegawais_sub_bidang_links_inv_fk","columns":["sub_bidang_id"]}],"foreignKeys":[{"name":"pegawais_sub_bidang_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_sub_bidang_links_inv_fk","columns":["sub_bidang_id"],"referencedColumns":["id"],"referencedTable":"sub_bidangs","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sub_bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_jabatan_links","indexes":[{"name":"pegawais_jabatan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_jabatan_links_inv_fk","columns":["jabatan_id"]}],"foreignKeys":[{"name":"pegawais_jabatan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_jabatan_links_inv_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_pendidikan_links","indexes":[{"name":"pegawais_pendidikan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_pendidikan_links_inv_fk","columns":["pendidikan_id"]}],"foreignKeys":[{"name":"pegawais_pendidikan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_pendidikan_links_inv_fk","columns":["pendidikan_id"],"referencedColumns":["id"],"referencedTable":"pendidikans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pendidikan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_penguji_links","indexes":[{"name":"pegawais_penguji_links_fk","columns":["pegawai_id"]},{"name":"pegawais_penguji_links_inv_fk","columns":["penguji_id"]}],"foreignKeys":[{"name":"pegawais_penguji_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_penguji_links_inv_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_peserta_nip_links","indexes":[{"name":"pegawais_peserta_nip_links_fk","columns":["pegawai_id"]},{"name":"pegawais_peserta_nip_links_inv_fk","columns":["peserta_id"]}],"foreignKeys":[{"name":"pegawais_peserta_nip_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_peserta_nip_links_inv_fk","columns":["peserta_id"],"referencedColumns":["id"],"referencedTable":"pesertas","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"peserta_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_fit_proper_links","indexes":[{"name":"pengujis_fit_proper_links_fk","columns":["penguji_id"]},{"name":"pengujis_fit_proper_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"pengujis_fit_proper_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_fit_proper_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_peserta_links","indexes":[{"name":"pengujis_peserta_links_fk","columns":["penguji_id"]},{"name":"pengujis_peserta_links_inv_fk","columns":["peserta_id"]}],"foreignKeys":[{"name":"pengujis_peserta_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_peserta_links_inv_fk","columns":["peserta_id"],"referencedColumns":["id"],"referencedTable":"pesertas","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"peserta_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_penilaian_links","indexes":[{"name":"pengujis_penilaian_links_fk","columns":["penguji_id"]},{"name":"pengujis_penilaian_links_inv_fk","columns":["penilaian_id"]}],"foreignKeys":[{"name":"pengujis_penilaian_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_penilaian_links_inv_fk","columns":["penilaian_id"],"referencedColumns":["id"],"referencedTable":"penilaians","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"penilaian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"penilaians_fit_proper_links","indexes":[{"name":"penilaians_fit_proper_links_fk","columns":["penilaian_id"]},{"name":"penilaians_fit_proper_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"penilaians_fit_proper_links_fk","columns":["penilaian_id"],"referencedColumns":["id"],"referencedTable":"penilaians","onDelete":"CASCADE"},{"name":"penilaians_fit_proper_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"penilaian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pesertas_jenjang_bidangs_links","indexes":[{"name":"pesertas_jenjang_bidangs_links_fk","columns":["peserta_id"]},{"name":"pesertas_jenjang_bidangs_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"pesertas_jenjang_bidangs_links_fk","columns":["peserta_id"],"referencedColumns":["id"],"referencedTable":"pesertas","onDelete":"CASCADE"},{"name":"pesertas_jenjang_bidangs_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"peserta_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pesertas_fit_proper_links","indexes":[{"name":"pesertas_fit_proper_links_fk","columns":["peserta_id"]},{"name":"pesertas_fit_proper_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"pesertas_fit_proper_links_fk","columns":["peserta_id"],"referencedColumns":["id"],"referencedTable":"pesertas","onDelete":"CASCADE"},{"name":"pesertas_fit_proper_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"peserta_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pesertas_peserta_nip_links","indexes":[{"name":"pesertas_peserta_nip_links_fk","columns":["peserta_id"]},{"name":"pesertas_peserta_nip_links_inv_fk","columns":["pegawai_id"]}],"foreignKeys":[{"name":"pesertas_peserta_nip_links_fk","columns":["peserta_id"],"referencedColumns":["id"],"referencedTable":"pesertas","onDelete":"CASCADE"},{"name":"pesertas_peserta_nip_links_inv_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"}],"columns":[{"name":"peserta_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sub_bidangs_bidangs_links","indexes":[{"name":"sub_bidangs_bidangs_links_fk","columns":["sub_bidang_id"]},{"name":"sub_bidangs_bidangs_links_inv_fk","columns":["bidang_id"]}],"foreignKeys":[{"name":"sub_bidangs_bidangs_links_fk","columns":["sub_bidang_id"],"referencedColumns":["id"],"referencedTable":"sub_bidangs","onDelete":"CASCADE"},{"name":"sub_bidangs_bidangs_links_inv_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"}],"columns":[{"name":"sub_bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-06-01 09:35:31.022	3721be87b4ec106355878a2d5ed6f595
\.


--
-- TOC entry 4856 (class 0 OID 10175844)
-- Dependencies: 210
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 4862 (class 0 OID 10175869)
-- Dependencies: 216
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 4910 (class 0 OID 10176115)
-- Dependencies: 264
-- Data for Name: sub_bidangs; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.sub_bidangs (id, nama_subbidang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	SUB BIDANG PENGEMBANGAN EKSEKUTIF	2022-03-03 14:32:48.827	2022-03-24 19:56:50.997	2022-03-24 19:56:50.993	1	1
\.


--
-- TOC entry 4939 (class 0 OID 10176273)
-- Dependencies: 293
-- Data for Name: sub_bidangs_bidangs_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.sub_bidangs_bidangs_links (sub_bidang_id, bidang_id) FROM stdin;
\.


--
-- TOC entry 4912 (class 0 OID 10176124)
-- Dependencies: 266
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.units (id, nama_unit, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN SUMATERA BAGIAN SELATAN	2022-03-24 20:01:37.201	2022-03-24 20:01:38.2	2022-03-24 20:01:38.19	1	1
2	PT PLN (PERSERO) UNIT INDUK TRANSMISI JAWA BAGIAN TENGAH	2022-03-24 20:06:40.571	2022-03-24 20:06:41.496	2022-03-24 20:06:41.493	1	1
3	PT PLN (PERSERO) KANTOR PUSAT	2022-03-24 21:13:16.395	2022-03-24 21:13:17.248	2022-03-24 21:13:17.242	1	1
4	PT PLN (PERSERO) PUSAT PENDIDIKAN DAN PELATIHAN (CORPORATE UNIVERSITY)	2022-03-24 21:26:04.477	2022-03-24 21:26:06.525	2022-03-24 21:26:06.523	1	1
5	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAWA TIMUR	2022-03-24 21:29:40.63	2022-03-24 21:29:42.371	2022-03-24 21:29:42.361	1	1
6	PT PLN (PERSERO) UNIT INDUK WILAYAH KALIMANTAN BARAT	2022-03-24 21:58:25.209	2022-03-24 21:58:26.492	2022-03-24 21:58:26.489	1	1
7	UNIT PELAKSANA PELAYANAN PELANGGAN BOJONEGORO	2022-03-24 21:58:53.458	2022-03-24 21:58:54.516	2022-03-24 21:58:54.511	1	1
9	PT PLN (PERSERO) UNIT INDUK WILAYAH KALIMANTAN TIMUR DAN KALIMANTAN UTARA	2022-03-24 22:10:11.347	2022-03-24 22:10:14.232	2022-03-24 22:10:14.229	1	1
8	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAWA BARAT	2022-03-24 22:06:42.473	2022-03-24 22:34:03.637	2022-03-24 22:34:03.634	1	1
\.


--
-- TOC entry 4876 (class 0 OID 10175944)
-- Dependencies: 230
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-05-12 01:46:34.739	2022-05-12 01:46:34.739	\N	\N
2	plugin::users-permissions.user.me	2022-05-12 01:46:34.739	2022-05-12 01:46:34.739	\N	\N
5	plugin::users-permissions.auth.callback	2022-05-12 01:46:34.75	2022-05-12 01:46:34.75	\N	\N
7	plugin::users-permissions.auth.connect	2022-05-12 01:46:34.75	2022-05-12 01:46:34.75	\N	\N
9	plugin::users-permissions.auth.register	2022-05-12 01:46:34.75	2022-05-12 01:46:34.75	\N	\N
4	plugin::users-permissions.user.me	2022-05-12 01:46:34.75	2022-05-12 01:46:34.75	\N	\N
93	api::penguji.penguji.findOne	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
94	api::penguji.penguji.create	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
96	api::penguji.penguji.update	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
97	api::penguji.penguji.delete	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
95	api::penguji.penguji.find	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
98	api::peserta.peserta.find	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
99	api::peserta.peserta.findOne	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
100	api::peserta.peserta.update	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
101	api::peserta.peserta.delete	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
102	api::peserta.peserta.create	2022-05-12 04:54:47.913	2022-05-12 04:54:47.913	\N	\N
103	api::grade.grade.find	2022-05-12 05:50:10.489	2022-05-12 05:50:10.489	\N	\N
104	api::grade.grade.create	2022-05-12 05:50:10.489	2022-05-12 05:50:10.489	\N	\N
106	api::grade.grade.update	2022-05-12 05:50:10.489	2022-05-12 05:50:10.489	\N	\N
105	api::grade.grade.findOne	2022-05-12 05:50:10.489	2022-05-12 05:50:10.489	\N	\N
107	api::grade.grade.delete	2022-05-12 05:50:10.489	2022-05-12 05:50:10.489	\N	\N
108	api::bidang.bidang.find	2022-05-15 15:07:20.217	2022-05-15 15:07:20.217	\N	\N
109	api::bidang.bidang.findOne	2022-05-15 15:07:20.217	2022-05-15 15:07:20.217	\N	\N
110	api::bidang.bidang.create	2022-05-15 15:07:20.217	2022-05-15 15:07:20.217	\N	\N
111	api::bidang.bidang.update	2022-05-15 15:07:20.217	2022-05-15 15:07:20.217	\N	\N
112	api::bidang.bidang.delete	2022-05-15 15:07:20.217	2022-05-15 15:07:20.217	\N	\N
113	api::direktorat.direktorat.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
114	api::direktorat.direktorat.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
115	api::direktorat.direktorat.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
116	api::direktorat.direktorat.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
118	api::divisi.divisi.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
117	api::direktorat.direktorat.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
119	api::divisi.divisi.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
120	api::divisi.divisi.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
121	api::divisi.divisi.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
122	api::divisi.divisi.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
123	api::fit-proper.fit-proper.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
124	api::fit-proper.fit-proper.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
125	api::fit-proper.fit-proper.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
126	api::fit-proper.fit-proper.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
127	api::fit-proper.fit-proper.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
128	api::jabatan.jabatan.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
129	api::jabatan.jabatan.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
130	api::jabatan.jabatan.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
131	api::jabatan.jabatan.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
132	api::jabatan.jabatan.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
133	api::jenjang.jenjang.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
134	api::jenjang.jenjang.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
135	api::jenjang.jenjang.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
136	api::jenjang.jenjang.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
137	api::jenjang.jenjang.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
138	api::jenjang-fungsional.jenjang-fungsional.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
139	api::jenjang-fungsional.jenjang-fungsional.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
140	api::jenjang-fungsional.jenjang-fungsional.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
141	api::jenjang-fungsional.jenjang-fungsional.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
142	api::jenjang-fungsional.jenjang-fungsional.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
143	api::jenjang-struktural.jenjang-struktural.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
144	api::jenjang-struktural.jenjang-struktural.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
145	api::jenjang-struktural.jenjang-struktural.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
146	api::jenjang-struktural.jenjang-struktural.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
147	api::jenjang-struktural.jenjang-struktural.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
148	api::pegawai.pegawai.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
149	api::pegawai.pegawai.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
150	api::pegawai.pegawai.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
151	api::pegawai.pegawai.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
152	api::pendidikan.pendidikan.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
153	api::pendidikan.pendidikan.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
154	api::penilaian.penilaian.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
155	api::penilaian.penilaian.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
156	api::penilaian.penilaian.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
158	api::penilaian.penilaian.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
159	api::penilaian.penilaian.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
160	api::pendidikan.pendidikan.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
161	api::sub-bidang.sub-bidang.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
162	api::sub-bidang.sub-bidang.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
163	api::sub-bidang.sub-bidang.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
164	api::pendidikan.pendidikan.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
165	api::pegawai.pegawai.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
157	api::pendidikan.pendidikan.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
166	api::sub-bidang.sub-bidang.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
167	api::sub-bidang.sub-bidang.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
168	api::unit.unit.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
169	api::unit.unit.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
170	api::unit.unit.delete	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
171	plugin::upload.content-api.find	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
172	plugin::upload.content-api.count	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
173	api::unit.unit.update	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
174	plugin::upload.content-api.destroy	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
176	plugin::upload.content-api.upload	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
175	api::unit.unit.create	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
177	plugin::upload.content-api.findOne	2022-05-15 15:07:20.218	2022-05-15 15:07:20.218	\N	\N
178	api::bidang.bidang.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
179	api::bidang.bidang.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
180	api::bidang.bidang.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
181	api::bidang.bidang.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
182	api::bidang.bidang.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
183	api::direktorat.direktorat.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
184	api::direktorat.direktorat.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
185	api::direktorat.direktorat.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
186	api::direktorat.direktorat.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
188	api::divisi.divisi.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
190	api::divisi.divisi.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
192	api::divisi.divisi.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
194	api::fit-proper.fit-proper.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
197	api::fit-proper.fit-proper.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
200	api::grade.grade.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
202	api::grade.grade.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
204	api::jabatan.jabatan.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
206	api::jabatan.jabatan.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
209	api::jenjang.jenjang.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
210	api::jenjang.jenjang.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
213	api::jenjang-fungsional.jenjang-fungsional.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
223	api::jenjang-fungsional.jenjang-fungsional.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
229	api::pendidikan.pendidikan.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
235	api::penguji.penguji.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
243	api::peserta.peserta.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
250	api::sub-bidang.sub-bidang.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
257	api::unit.unit.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
187	api::direktorat.direktorat.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
189	api::divisi.divisi.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
191	api::divisi.divisi.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
193	api::fit-proper.fit-proper.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
195	api::fit-proper.fit-proper.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
196	api::grade.grade.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
198	api::fit-proper.fit-proper.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
199	api::grade.grade.findOne	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
201	api::grade.grade.update	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
203	api::jabatan.jabatan.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
205	api::jabatan.jabatan.create	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
207	api::jabatan.jabatan.delete	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
208	api::jenjang.jenjang.find	2022-06-01 10:19:37.034	2022-06-01 10:19:37.034	\N	\N
211	api::jenjang.jenjang.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
212	api::jenjang.jenjang.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
214	api::jenjang-fungsional.jenjang-fungsional.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
215	api::jenjang-fungsional.jenjang-fungsional.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
216	api::jenjang-fungsional.jenjang-fungsional.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
217	api::jenjang-struktural.jenjang-struktural.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
218	api::pegawai.pegawai.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
219	api::jenjang-struktural.jenjang-struktural.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
220	api::jenjang-struktural.jenjang-struktural.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
221	api::jenjang-struktural.jenjang-struktural.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
222	api::pegawai.pegawai.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
224	api::jenjang-struktural.jenjang-struktural.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
225	api::pegawai.pegawai.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
226	api::pegawai.pegawai.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
227	api::pendidikan.pendidikan.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
228	api::pendidikan.pendidikan.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
230	api::pegawai.pegawai.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
231	api::pendidikan.pendidikan.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
232	api::pendidikan.pendidikan.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
233	api::penguji.penguji.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
234	api::penguji.penguji.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
236	api::penilaian.penilaian.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
237	api::penguji.penguji.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
238	api::penguji.penguji.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
239	api::penilaian.penilaian.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
240	api::peserta.peserta.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
241	api::penilaian.penilaian.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
242	api::penilaian.penilaian.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
244	api::peserta.peserta.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
246	api::peserta.peserta.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
247	api::sub-bidang.sub-bidang.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
248	api::sub-bidang.sub-bidang.delete	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
251	api::sub-bidang.sub-bidang.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
252	api::unit.unit.find	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
249	api::sub-bidang.sub-bidang.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
253	api::peserta.peserta.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
245	api::penilaian.penilaian.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
254	api::unit.unit.findOne	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
255	api::unit.unit.create	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
256	api::unit.unit.update	2022-06-01 10:19:37.035	2022-06-01 10:19:37.035	\N	\N
258	plugin::content-type-builder.components.getComponents	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
259	plugin::content-type-builder.components.getComponent	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
260	plugin::content-type-builder.content-types.getContentTypes	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
261	plugin::content-type-builder.content-types.getContentType	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
262	plugin::upload.content-api.find	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
263	plugin::upload.content-api.findOne	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
264	plugin::upload.content-api.count	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
265	plugin::upload.content-api.destroy	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
266	plugin::upload.content-api.upload	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
267	plugin::users-permissions.auth.callback	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
268	plugin::users-permissions.auth.resetPassword	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
269	plugin::users-permissions.auth.forgotPassword	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
270	plugin::users-permissions.auth.register	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
271	plugin::users-permissions.auth.emailConfirmation	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
272	plugin::users-permissions.auth.sendEmailConfirmation	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
273	plugin::users-permissions.user.create	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
274	plugin::users-permissions.user.update	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
275	plugin::users-permissions.user.find	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
276	plugin::users-permissions.user.findOne	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
277	plugin::users-permissions.user.count	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
278	plugin::users-permissions.user.destroy	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
279	plugin::users-permissions.role.createRole	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
280	plugin::users-permissions.role.getRole	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
281	plugin::users-permissions.role.getRoles	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
282	plugin::users-permissions.role.updateRole	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
283	plugin::users-permissions.role.deleteRole	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
284	plugin::users-permissions.permissions.getPermissions	2022-06-01 10:21:26.579	2022-06-01 10:21:26.579	\N	\N
\.


--
-- TOC entry 4916 (class 0 OID 10176148)
-- Dependencies: 270
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
2	1
1	1
7	2
4	2
5	2
9	2
93	2
94	2
97	2
96	2
95	2
98	2
99	2
100	2
101	2
102	2
103	2
104	2
106	2
107	2
105	2
110	2
112	2
108	2
115	2
109	2
114	2
113	2
116	2
111	2
118	2
117	2
119	2
121	2
120	2
122	2
127	2
129	2
123	2
130	2
124	2
131	2
125	2
126	2
128	2
132	2
133	2
134	2
136	2
135	2
137	2
138	2
139	2
140	2
141	2
142	2
144	2
143	2
145	2
146	2
147	2
148	2
149	2
150	2
151	2
152	2
153	2
154	2
155	2
156	2
158	2
161	2
163	2
164	2
159	2
162	2
167	2
166	2
170	2
171	2
160	2
165	2
157	2
172	2
168	2
174	2
173	2
176	2
169	2
177	2
175	2
178	1
179	1
180	1
181	1
182	1
184	1
185	1
186	1
187	1
183	1
188	1
189	1
191	1
193	1
192	1
195	1
194	1
196	1
190	1
197	1
199	1
202	1
201	1
203	1
200	1
204	1
205	1
198	1
207	1
206	1
209	1
210	1
208	1
213	1
211	1
212	1
216	1
214	1
217	1
222	1
218	1
220	1
223	1
224	1
215	1
225	1
226	1
227	1
219	1
228	1
221	1
229	1
231	1
230	1
233	1
232	1
234	1
235	1
236	1
243	1
239	1
237	1
242	1
241	1
246	1
252	1
240	1
244	1
248	1
247	1
250	1
251	1
238	1
249	1
254	1
257	1
255	1
256	1
253	1
245	1
258	1
259	1
260	1
261	1
262	1
263	1
264	1
265	1
266	1
267	1
268	1
269	1
270	1
271	1
272	1
273	1
274	1
277	1
278	1
275	1
281	1
283	1
280	1
284	1
279	1
276	1
282	1
\.


--
-- TOC entry 4878 (class 0 OID 10175953)
-- Dependencies: 232
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	2022-05-12 01:46:34.722	2022-05-16 02:55:13.243	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	2022-05-12 01:46:34.716	2022-06-01 10:21:26.573	\N	\N
\.


--
-- TOC entry 4880 (class 0 OID 10175964)
-- Dependencies: 234
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4917 (class 0 OID 10176153)
-- Dependencies: 271
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: cxwfuysjdcshsd
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 217
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 459, true);


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 221
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 219
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 6, true);


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 235
-- Name: bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.bidangs_id_seq', 6, true);


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 237
-- Name: direktorats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.direktorats_id_seq', 8, true);


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 239
-- Name: divisis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.divisis_id_seq', 9, true);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 225
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.files_id_seq', 1, true);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 241
-- Name: fit_propers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.fit_propers_id_seq', 1, false);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 243
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.grades_id_seq', 25, true);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 245
-- Name: jabatans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.jabatans_id_seq', 12, true);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 249
-- Name: jenjang_fungsionals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.jenjang_fungsionals_id_seq', 6, true);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 251
-- Name: jenjang_strukturals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.jenjang_strukturals_id_seq', 5, true);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 247
-- Name: jenjangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.jenjangs_id_seq', 11, true);


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 253
-- Name: pegawais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.pegawais_id_seq', 16, true);


--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 255
-- Name: pendidikans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.pendidikans_id_seq', 9, true);


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 257
-- Name: pengujis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.pengujis_id_seq', 5, true);


--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 259
-- Name: penilaians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.penilaians_id_seq', 1, false);


--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 261
-- Name: pesertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.pesertas_id_seq', 4, true);


--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 213
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 35, true);


--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 211
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 74, true);


--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 209
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 263
-- Name: sub_bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.sub_bidangs_id_seq', 1, true);


--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 265
-- Name: units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.units_id_seq', 9, true);


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 229
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 284, true);


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 231
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 233
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cxwfuysjdcshsd
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 4450 (class 2606 OID 10175885)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 10175907)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4454 (class 2606 OID 10175896)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4486 (class 2606 OID 10175980)
-- Name: bidangs bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 4490 (class 2606 OID 10175989)
-- Name: direktorats direktorats_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_pkey PRIMARY KEY (id);


--
-- TOC entry 4494 (class 2606 OID 10175998)
-- Name: divisis divisis_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_pkey PRIMARY KEY (id);


--
-- TOC entry 4466 (class 2606 OID 10175929)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 4498 (class 2606 OID 10176009)
-- Name: fit_propers fit_propers_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_pkey PRIMARY KEY (id);


--
-- TOC entry 4502 (class 2606 OID 10176020)
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- TOC entry 4470 (class 2606 OID 10175940)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 4506 (class 2606 OID 10176029)
-- Name: jabatans jabatans_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_pkey PRIMARY KEY (id);


--
-- TOC entry 4514 (class 2606 OID 10176051)
-- Name: jenjang_fungsionals jenjang_fungsionals_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_fungsionals
    ADD CONSTRAINT jenjang_fungsionals_pkey PRIMARY KEY (id);


--
-- TOC entry 4518 (class 2606 OID 10176062)
-- Name: jenjang_strukturals jenjang_strukturals_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_strukturals
    ADD CONSTRAINT jenjang_strukturals_pkey PRIMARY KEY (id);


--
-- TOC entry 4510 (class 2606 OID 10176040)
-- Name: jenjangs jenjangs_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_pkey PRIMARY KEY (id);


--
-- TOC entry 4522 (class 2606 OID 10176073)
-- Name: pegawais pegawais_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_pkey PRIMARY KEY (id);


--
-- TOC entry 4526 (class 2606 OID 10176082)
-- Name: pendidikans pendidikans_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_pkey PRIMARY KEY (id);


--
-- TOC entry 4530 (class 2606 OID 10176091)
-- Name: pengujis pengujis_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_pkey PRIMARY KEY (id);


--
-- TOC entry 4534 (class 2606 OID 10176100)
-- Name: penilaians penilaians_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians
    ADD CONSTRAINT penilaians_pkey PRIMARY KEY (id);


--
-- TOC entry 4538 (class 2606 OID 10176111)
-- Name: pesertas pesertas_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas
    ADD CONSTRAINT pesertas_pkey PRIMARY KEY (id);


--
-- TOC entry 4462 (class 2606 OID 10175918)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4445 (class 2606 OID 10175867)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4443 (class 2606 OID 10175858)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 4441 (class 2606 OID 10175849)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4447 (class 2606 OID 10175876)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 4542 (class 2606 OID 10176120)
-- Name: sub_bidangs sub_bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 4546 (class 2606 OID 10176129)
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- TOC entry 4474 (class 2606 OID 10175949)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4478 (class 2606 OID 10175960)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 10175971)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4448 (class 1259 OID 10175886)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 4548 (class 1259 OID 10176135)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 4549 (class 1259 OID 10176136)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 4451 (class 1259 OID 10175887)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 4456 (class 1259 OID 10175908)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 4459 (class 1259 OID 10175909)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 4452 (class 1259 OID 10175897)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 4550 (class 1259 OID 10176140)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 4551 (class 1259 OID 10176141)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 4455 (class 1259 OID 10175898)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 4484 (class 1259 OID 10175981)
-- Name: bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX bidangs_created_by_id_fk ON public.bidangs USING btree (created_by_id);


--
-- TOC entry 4487 (class 1259 OID 10175982)
-- Name: bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX bidangs_updated_by_id_fk ON public.bidangs USING btree (updated_by_id);


--
-- TOC entry 4488 (class 1259 OID 10175990)
-- Name: direktorats_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX direktorats_created_by_id_fk ON public.direktorats USING btree (created_by_id);


--
-- TOC entry 4491 (class 1259 OID 10175991)
-- Name: direktorats_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX direktorats_updated_by_id_fk ON public.direktorats USING btree (updated_by_id);


--
-- TOC entry 4492 (class 1259 OID 10175999)
-- Name: divisis_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX divisis_created_by_id_fk ON public.divisis USING btree (created_by_id);


--
-- TOC entry 4495 (class 1259 OID 10176000)
-- Name: divisis_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX divisis_updated_by_id_fk ON public.divisis USING btree (updated_by_id);


--
-- TOC entry 4464 (class 1259 OID 10175930)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 4552 (class 1259 OID 10176147)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 4467 (class 1259 OID 10175931)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 4496 (class 1259 OID 10176010)
-- Name: fit_propers_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX fit_propers_created_by_id_fk ON public.fit_propers USING btree (created_by_id);


--
-- TOC entry 4499 (class 1259 OID 10176011)
-- Name: fit_propers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX fit_propers_updated_by_id_fk ON public.fit_propers USING btree (updated_by_id);


--
-- TOC entry 4500 (class 1259 OID 10176021)
-- Name: grades_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_created_by_id_fk ON public.grades USING btree (created_by_id);


--
-- TOC entry 4559 (class 1259 OID 10176166)
-- Name: grades_jenjang_fungsional_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_fungsional_links_fk ON public.grades_jenjang_fungsional_links USING btree (grade_id);


--
-- TOC entry 4560 (class 1259 OID 10176167)
-- Name: grades_jenjang_fungsional_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_fungsional_links_inv_fk ON public.grades_jenjang_fungsional_links USING btree (jenjang_fungsional_id);


--
-- TOC entry 4557 (class 1259 OID 10176161)
-- Name: grades_jenjang_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_links_fk ON public.grades_jenjang_links USING btree (grade_id);


--
-- TOC entry 4558 (class 1259 OID 10176162)
-- Name: grades_jenjang_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_links_inv_fk ON public.grades_jenjang_links USING btree (jenjang_id);


--
-- TOC entry 4561 (class 1259 OID 10176171)
-- Name: grades_jenjang_struktural_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_struktural_links_fk ON public.grades_jenjang_struktural_links USING btree (grade_id);


--
-- TOC entry 4562 (class 1259 OID 10176172)
-- Name: grades_jenjang_struktural_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_jenjang_struktural_links_inv_fk ON public.grades_jenjang_struktural_links USING btree (jenjang_struktural_id);


--
-- TOC entry 4503 (class 1259 OID 10176022)
-- Name: grades_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX grades_updated_by_id_fk ON public.grades USING btree (updated_by_id);


--
-- TOC entry 4468 (class 1259 OID 10175941)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 4471 (class 1259 OID 10175942)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 4504 (class 1259 OID 10176030)
-- Name: jabatans_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_created_by_id_fk ON public.jabatans USING btree (created_by_id);


--
-- TOC entry 4567 (class 1259 OID 10176186)
-- Name: jabatans_grade_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_grade_links_fk ON public.jabatans_grade_links USING btree (jabatan_id);


--
-- TOC entry 4568 (class 1259 OID 10176187)
-- Name: jabatans_grade_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_grade_links_inv_fk ON public.jabatans_grade_links USING btree (grade_id);


--
-- TOC entry 4565 (class 1259 OID 10176181)
-- Name: jabatans_jenjang_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_jenjang_links_fk ON public.jabatans_jenjang_links USING btree (jabatan_id);


--
-- TOC entry 4566 (class 1259 OID 10176182)
-- Name: jabatans_jenjang_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_jenjang_links_inv_fk ON public.jabatans_jenjang_links USING btree (jenjang_id);


--
-- TOC entry 4563 (class 1259 OID 10176176)
-- Name: jabatans_unit_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_unit_links_fk ON public.jabatans_unit_links USING btree (jabatan_id);


--
-- TOC entry 4564 (class 1259 OID 10176177)
-- Name: jabatans_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_unit_links_inv_fk ON public.jabatans_unit_links USING btree (unit_id);


--
-- TOC entry 4507 (class 1259 OID 10176031)
-- Name: jabatans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jabatans_updated_by_id_fk ON public.jabatans USING btree (updated_by_id);


--
-- TOC entry 4512 (class 1259 OID 10176052)
-- Name: jenjang_fungsionals_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjang_fungsionals_created_by_id_fk ON public.jenjang_fungsionals USING btree (created_by_id);


--
-- TOC entry 4515 (class 1259 OID 10176053)
-- Name: jenjang_fungsionals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjang_fungsionals_updated_by_id_fk ON public.jenjang_fungsionals USING btree (updated_by_id);


--
-- TOC entry 4516 (class 1259 OID 10176063)
-- Name: jenjang_strukturals_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjang_strukturals_created_by_id_fk ON public.jenjang_strukturals USING btree (created_by_id);


--
-- TOC entry 4519 (class 1259 OID 10176064)
-- Name: jenjang_strukturals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjang_strukturals_updated_by_id_fk ON public.jenjang_strukturals USING btree (updated_by_id);


--
-- TOC entry 4508 (class 1259 OID 10176041)
-- Name: jenjangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjangs_created_by_id_fk ON public.jenjangs USING btree (created_by_id);


--
-- TOC entry 4511 (class 1259 OID 10176042)
-- Name: jenjangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX jenjangs_updated_by_id_fk ON public.jenjangs USING btree (updated_by_id);


--
-- TOC entry 4579 (class 1259 OID 10176216)
-- Name: pegawais_bidang_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_bidang_links_fk ON public.pegawais_bidang_links USING btree (pegawai_id);


--
-- TOC entry 4580 (class 1259 OID 10176217)
-- Name: pegawais_bidang_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_bidang_links_inv_fk ON public.pegawais_bidang_links USING btree (bidang_id);


--
-- TOC entry 4520 (class 1259 OID 10176074)
-- Name: pegawais_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_created_by_id_fk ON public.pegawais USING btree (created_by_id);


--
-- TOC entry 4575 (class 1259 OID 10176206)
-- Name: pegawais_direktorat_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_direktorat_links_fk ON public.pegawais_direktorat_links USING btree (pegawai_id);


--
-- TOC entry 4576 (class 1259 OID 10176207)
-- Name: pegawais_direktorat_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_direktorat_links_inv_fk ON public.pegawais_direktorat_links USING btree (direktorat_id);


--
-- TOC entry 4577 (class 1259 OID 10176211)
-- Name: pegawais_divisi_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_divisi_links_fk ON public.pegawais_divisi_links USING btree (pegawai_id);


--
-- TOC entry 4578 (class 1259 OID 10176212)
-- Name: pegawais_divisi_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_divisi_links_inv_fk ON public.pegawais_divisi_links USING btree (divisi_id);


--
-- TOC entry 4569 (class 1259 OID 10176191)
-- Name: pegawais_grade_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_grade_links_fk ON public.pegawais_grade_links USING btree (pegawai_id);


--
-- TOC entry 4570 (class 1259 OID 10176192)
-- Name: pegawais_grade_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_grade_links_inv_fk ON public.pegawais_grade_links USING btree (grade_id);


--
-- TOC entry 4583 (class 1259 OID 10176226)
-- Name: pegawais_jabatan_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_jabatan_links_fk ON public.pegawais_jabatan_links USING btree (pegawai_id);


--
-- TOC entry 4584 (class 1259 OID 10176227)
-- Name: pegawais_jabatan_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_jabatan_links_inv_fk ON public.pegawais_jabatan_links USING btree (jabatan_id);


--
-- TOC entry 4571 (class 1259 OID 10176196)
-- Name: pegawais_jenjang_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_jenjang_links_fk ON public.pegawais_jenjang_links USING btree (pegawai_id);


--
-- TOC entry 4572 (class 1259 OID 10176197)
-- Name: pegawais_jenjang_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_jenjang_links_inv_fk ON public.pegawais_jenjang_links USING btree (jenjang_id);


--
-- TOC entry 4585 (class 1259 OID 10176231)
-- Name: pegawais_pendidikan_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_pendidikan_links_fk ON public.pegawais_pendidikan_links USING btree (pegawai_id);


--
-- TOC entry 4586 (class 1259 OID 10176232)
-- Name: pegawais_pendidikan_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_pendidikan_links_inv_fk ON public.pegawais_pendidikan_links USING btree (pendidikan_id);


--
-- TOC entry 4601 (class 1259 OID 11792525)
-- Name: pegawais_penguji_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_penguji_links_fk ON public.pegawais_penguji_links USING btree (pegawai_id);


--
-- TOC entry 4602 (class 1259 OID 11792526)
-- Name: pegawais_penguji_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_penguji_links_inv_fk ON public.pegawais_penguji_links USING btree (penguji_id);


--
-- TOC entry 4603 (class 1259 OID 13007983)
-- Name: pegawais_peserta_nip_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_peserta_nip_links_fk ON public.pegawais_peserta_nip_links USING btree (pegawai_id);


--
-- TOC entry 4604 (class 1259 OID 13007984)
-- Name: pegawais_peserta_nip_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_peserta_nip_links_inv_fk ON public.pegawais_peserta_nip_links USING btree (peserta_id);


--
-- TOC entry 4581 (class 1259 OID 10176221)
-- Name: pegawais_sub_bidang_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_sub_bidang_links_fk ON public.pegawais_sub_bidang_links USING btree (pegawai_id);


--
-- TOC entry 4582 (class 1259 OID 10176222)
-- Name: pegawais_sub_bidang_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_sub_bidang_links_inv_fk ON public.pegawais_sub_bidang_links USING btree (sub_bidang_id);


--
-- TOC entry 4573 (class 1259 OID 10176201)
-- Name: pegawais_unit_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_unit_links_fk ON public.pegawais_unit_links USING btree (pegawai_id);


--
-- TOC entry 4574 (class 1259 OID 10176202)
-- Name: pegawais_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_unit_links_inv_fk ON public.pegawais_unit_links USING btree (unit_id);


--
-- TOC entry 4523 (class 1259 OID 10176075)
-- Name: pegawais_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pegawais_updated_by_id_fk ON public.pegawais USING btree (updated_by_id);


--
-- TOC entry 4524 (class 1259 OID 10176083)
-- Name: pendidikans_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pendidikans_created_by_id_fk ON public.pendidikans USING btree (created_by_id);


--
-- TOC entry 4527 (class 1259 OID 10176084)
-- Name: pendidikans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pendidikans_updated_by_id_fk ON public.pendidikans USING btree (updated_by_id);


--
-- TOC entry 4528 (class 1259 OID 10176092)
-- Name: pengujis_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_created_by_id_fk ON public.pengujis USING btree (created_by_id);


--
-- TOC entry 4587 (class 1259 OID 10176246)
-- Name: pengujis_fit_proper_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_fit_proper_links_fk ON public.pengujis_fit_proper_links USING btree (penguji_id);


--
-- TOC entry 4588 (class 1259 OID 10176247)
-- Name: pengujis_fit_proper_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_fit_proper_links_inv_fk ON public.pengujis_fit_proper_links USING btree (fit_proper_id);


--
-- TOC entry 4591 (class 1259 OID 10176256)
-- Name: pengujis_penilaian_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_penilaian_links_fk ON public.pengujis_penilaian_links USING btree (penguji_id);


--
-- TOC entry 4592 (class 1259 OID 10176257)
-- Name: pengujis_penilaian_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_penilaian_links_inv_fk ON public.pengujis_penilaian_links USING btree (penilaian_id);


--
-- TOC entry 4589 (class 1259 OID 10176251)
-- Name: pengujis_peserta_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_peserta_links_fk ON public.pengujis_peserta_links USING btree (penguji_id);


--
-- TOC entry 4590 (class 1259 OID 10176252)
-- Name: pengujis_peserta_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_peserta_links_inv_fk ON public.pengujis_peserta_links USING btree (peserta_id);


--
-- TOC entry 4531 (class 1259 OID 10176093)
-- Name: pengujis_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pengujis_updated_by_id_fk ON public.pengujis USING btree (updated_by_id);


--
-- TOC entry 4532 (class 1259 OID 10176101)
-- Name: penilaians_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX penilaians_created_by_id_fk ON public.penilaians USING btree (created_by_id);


--
-- TOC entry 4593 (class 1259 OID 10176261)
-- Name: penilaians_fit_proper_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX penilaians_fit_proper_links_fk ON public.penilaians_fit_proper_links USING btree (penilaian_id);


--
-- TOC entry 4594 (class 1259 OID 10176262)
-- Name: penilaians_fit_proper_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX penilaians_fit_proper_links_inv_fk ON public.penilaians_fit_proper_links USING btree (fit_proper_id);


--
-- TOC entry 4535 (class 1259 OID 10176102)
-- Name: penilaians_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX penilaians_updated_by_id_fk ON public.penilaians USING btree (updated_by_id);


--
-- TOC entry 4536 (class 1259 OID 10176112)
-- Name: pesertas_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_created_by_id_fk ON public.pesertas USING btree (created_by_id);


--
-- TOC entry 4597 (class 1259 OID 10176271)
-- Name: pesertas_fit_proper_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_fit_proper_links_fk ON public.pesertas_fit_proper_links USING btree (peserta_id);


--
-- TOC entry 4598 (class 1259 OID 10176272)
-- Name: pesertas_fit_proper_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_fit_proper_links_inv_fk ON public.pesertas_fit_proper_links USING btree (fit_proper_id);


--
-- TOC entry 4595 (class 1259 OID 10176266)
-- Name: pesertas_jenjang_bidangs_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_jenjang_bidangs_links_fk ON public.pesertas_jenjang_bidangs_links USING btree (peserta_id);


--
-- TOC entry 4596 (class 1259 OID 10176267)
-- Name: pesertas_jenjang_bidangs_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_jenjang_bidangs_links_inv_fk ON public.pesertas_jenjang_bidangs_links USING btree (jenjang_id);


--
-- TOC entry 4605 (class 1259 OID 13007988)
-- Name: pesertas_peserta_nip_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_peserta_nip_links_fk ON public.pesertas_peserta_nip_links USING btree (peserta_id);


--
-- TOC entry 4606 (class 1259 OID 13007989)
-- Name: pesertas_peserta_nip_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_peserta_nip_links_inv_fk ON public.pesertas_peserta_nip_links USING btree (pegawai_id);


--
-- TOC entry 4539 (class 1259 OID 10176113)
-- Name: pesertas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX pesertas_updated_by_id_fk ON public.pesertas USING btree (updated_by_id);


--
-- TOC entry 4460 (class 1259 OID 10175919)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 4463 (class 1259 OID 10175920)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 4599 (class 1259 OID 10176276)
-- Name: sub_bidangs_bidangs_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX sub_bidangs_bidangs_links_fk ON public.sub_bidangs_bidangs_links USING btree (sub_bidang_id);


--
-- TOC entry 4600 (class 1259 OID 10176277)
-- Name: sub_bidangs_bidangs_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX sub_bidangs_bidangs_links_inv_fk ON public.sub_bidangs_bidangs_links USING btree (bidang_id);


--
-- TOC entry 4540 (class 1259 OID 10176121)
-- Name: sub_bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX sub_bidangs_created_by_id_fk ON public.sub_bidangs USING btree (created_by_id);


--
-- TOC entry 4543 (class 1259 OID 10176122)
-- Name: sub_bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX sub_bidangs_updated_by_id_fk ON public.sub_bidangs USING btree (updated_by_id);


--
-- TOC entry 4544 (class 1259 OID 10176130)
-- Name: units_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX units_created_by_id_fk ON public.units USING btree (created_by_id);


--
-- TOC entry 4547 (class 1259 OID 10176131)
-- Name: units_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX units_updated_by_id_fk ON public.units USING btree (updated_by_id);


--
-- TOC entry 4472 (class 1259 OID 10175950)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 4553 (class 1259 OID 10176151)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 4554 (class 1259 OID 10176152)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 4475 (class 1259 OID 10175951)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 4476 (class 1259 OID 10175961)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 4479 (class 1259 OID 10175962)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 4480 (class 1259 OID 10175972)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 4555 (class 1259 OID 10176156)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 4556 (class 1259 OID 10176157)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 4483 (class 1259 OID 10175973)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: cxwfuysjdcshsd
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 4607 (class 2606 OID 10176278)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4657 (class 2606 OID 10176528)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4658 (class 2606 OID 10176533)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4608 (class 2606 OID 10176283)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4611 (class 2606 OID 10176298)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4612 (class 2606 OID 10176303)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4609 (class 2606 OID 10176288)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4659 (class 2606 OID 10176538)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 4660 (class 2606 OID 10176543)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4610 (class 2606 OID 10176293)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4625 (class 2606 OID 10176368)
-- Name: bidangs bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4626 (class 2606 OID 10176373)
-- Name: bidangs bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4627 (class 2606 OID 10176378)
-- Name: direktorats direktorats_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4628 (class 2606 OID 10176383)
-- Name: direktorats direktorats_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4629 (class 2606 OID 10176388)
-- Name: divisis divisis_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4630 (class 2606 OID 10176393)
-- Name: divisis divisis_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4615 (class 2606 OID 10176318)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4661 (class 2606 OID 10176548)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 4616 (class 2606 OID 10176323)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4631 (class 2606 OID 10176398)
-- Name: fit_propers fit_propers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4632 (class 2606 OID 10176403)
-- Name: fit_propers fit_propers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4633 (class 2606 OID 10176408)
-- Name: grades grades_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4668 (class 2606 OID 10176583)
-- Name: grades_jenjang_fungsional_links grades_jenjang_fungsional_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_fungsional_links
    ADD CONSTRAINT grades_jenjang_fungsional_links_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 4669 (class 2606 OID 10176588)
-- Name: grades_jenjang_fungsional_links grades_jenjang_fungsional_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_fungsional_links
    ADD CONSTRAINT grades_jenjang_fungsional_links_inv_fk FOREIGN KEY (jenjang_fungsional_id) REFERENCES public.jenjang_fungsionals(id) ON DELETE CASCADE;


--
-- TOC entry 4666 (class 2606 OID 10176573)
-- Name: grades_jenjang_links grades_jenjang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_links
    ADD CONSTRAINT grades_jenjang_links_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 4667 (class 2606 OID 10176578)
-- Name: grades_jenjang_links grades_jenjang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_links
    ADD CONSTRAINT grades_jenjang_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 4670 (class 2606 OID 10176593)
-- Name: grades_jenjang_struktural_links grades_jenjang_struktural_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_struktural_links
    ADD CONSTRAINT grades_jenjang_struktural_links_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 4671 (class 2606 OID 10176598)
-- Name: grades_jenjang_struktural_links grades_jenjang_struktural_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades_jenjang_struktural_links
    ADD CONSTRAINT grades_jenjang_struktural_links_inv_fk FOREIGN KEY (jenjang_struktural_id) REFERENCES public.jenjang_strukturals(id) ON DELETE CASCADE;


--
-- TOC entry 4634 (class 2606 OID 10176413)
-- Name: grades grades_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4617 (class 2606 OID 10176328)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4618 (class 2606 OID 10176333)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4635 (class 2606 OID 10176418)
-- Name: jabatans jabatans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4676 (class 2606 OID 10176623)
-- Name: jabatans_grade_links jabatans_grade_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_grade_links
    ADD CONSTRAINT jabatans_grade_links_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4677 (class 2606 OID 10176628)
-- Name: jabatans_grade_links jabatans_grade_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_grade_links
    ADD CONSTRAINT jabatans_grade_links_inv_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 4674 (class 2606 OID 10176613)
-- Name: jabatans_jenjang_links jabatans_jenjang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_jenjang_links
    ADD CONSTRAINT jabatans_jenjang_links_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4675 (class 2606 OID 10176618)
-- Name: jabatans_jenjang_links jabatans_jenjang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_jenjang_links
    ADD CONSTRAINT jabatans_jenjang_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 4672 (class 2606 OID 10176603)
-- Name: jabatans_unit_links jabatans_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_unit_links
    ADD CONSTRAINT jabatans_unit_links_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4673 (class 2606 OID 10176608)
-- Name: jabatans_unit_links jabatans_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans_unit_links
    ADD CONSTRAINT jabatans_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 4636 (class 2606 OID 10176423)
-- Name: jabatans jabatans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4639 (class 2606 OID 10176438)
-- Name: jenjang_fungsionals jenjang_fungsionals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_fungsionals
    ADD CONSTRAINT jenjang_fungsionals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4640 (class 2606 OID 10176443)
-- Name: jenjang_fungsionals jenjang_fungsionals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_fungsionals
    ADD CONSTRAINT jenjang_fungsionals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4641 (class 2606 OID 10176448)
-- Name: jenjang_strukturals jenjang_strukturals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_strukturals
    ADD CONSTRAINT jenjang_strukturals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4642 (class 2606 OID 10176453)
-- Name: jenjang_strukturals jenjang_strukturals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjang_strukturals
    ADD CONSTRAINT jenjang_strukturals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4637 (class 2606 OID 10176428)
-- Name: jenjangs jenjangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4638 (class 2606 OID 10176433)
-- Name: jenjangs jenjangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4688 (class 2606 OID 10176683)
-- Name: pegawais_bidang_links pegawais_bidang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_bidang_links
    ADD CONSTRAINT pegawais_bidang_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4689 (class 2606 OID 10176688)
-- Name: pegawais_bidang_links pegawais_bidang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_bidang_links
    ADD CONSTRAINT pegawais_bidang_links_inv_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4643 (class 2606 OID 10176458)
-- Name: pegawais pegawais_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4684 (class 2606 OID 10176663)
-- Name: pegawais_direktorat_links pegawais_direktorat_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_direktorat_links
    ADD CONSTRAINT pegawais_direktorat_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4685 (class 2606 OID 10176668)
-- Name: pegawais_direktorat_links pegawais_direktorat_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_direktorat_links
    ADD CONSTRAINT pegawais_direktorat_links_inv_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 4686 (class 2606 OID 10176673)
-- Name: pegawais_divisi_links pegawais_divisi_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_divisi_links
    ADD CONSTRAINT pegawais_divisi_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4687 (class 2606 OID 10176678)
-- Name: pegawais_divisi_links pegawais_divisi_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_divisi_links
    ADD CONSTRAINT pegawais_divisi_links_inv_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 4678 (class 2606 OID 10176633)
-- Name: pegawais_grade_links pegawais_grade_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_grade_links
    ADD CONSTRAINT pegawais_grade_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4679 (class 2606 OID 10176638)
-- Name: pegawais_grade_links pegawais_grade_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_grade_links
    ADD CONSTRAINT pegawais_grade_links_inv_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 4692 (class 2606 OID 10176703)
-- Name: pegawais_jabatan_links pegawais_jabatan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_jabatan_links
    ADD CONSTRAINT pegawais_jabatan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4693 (class 2606 OID 10176708)
-- Name: pegawais_jabatan_links pegawais_jabatan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_jabatan_links
    ADD CONSTRAINT pegawais_jabatan_links_inv_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4680 (class 2606 OID 10176643)
-- Name: pegawais_jenjang_links pegawais_jenjang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_jenjang_links
    ADD CONSTRAINT pegawais_jenjang_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4681 (class 2606 OID 10176648)
-- Name: pegawais_jenjang_links pegawais_jenjang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_jenjang_links
    ADD CONSTRAINT pegawais_jenjang_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 4694 (class 2606 OID 10176713)
-- Name: pegawais_pendidikan_links pegawais_pendidikan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_pendidikan_links
    ADD CONSTRAINT pegawais_pendidikan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4695 (class 2606 OID 10176718)
-- Name: pegawais_pendidikan_links pegawais_pendidikan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_pendidikan_links
    ADD CONSTRAINT pegawais_pendidikan_links_inv_fk FOREIGN KEY (pendidikan_id) REFERENCES public.pendidikans(id) ON DELETE CASCADE;


--
-- TOC entry 4710 (class 2606 OID 11792527)
-- Name: pegawais_penguji_links pegawais_penguji_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_penguji_links
    ADD CONSTRAINT pegawais_penguji_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4711 (class 2606 OID 11792532)
-- Name: pegawais_penguji_links pegawais_penguji_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_penguji_links
    ADD CONSTRAINT pegawais_penguji_links_inv_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4712 (class 2606 OID 13007990)
-- Name: pegawais_peserta_nip_links pegawais_peserta_nip_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_peserta_nip_links
    ADD CONSTRAINT pegawais_peserta_nip_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4713 (class 2606 OID 13007995)
-- Name: pegawais_peserta_nip_links pegawais_peserta_nip_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_peserta_nip_links
    ADD CONSTRAINT pegawais_peserta_nip_links_inv_fk FOREIGN KEY (peserta_id) REFERENCES public.pesertas(id) ON DELETE CASCADE;


--
-- TOC entry 4690 (class 2606 OID 10176693)
-- Name: pegawais_sub_bidang_links pegawais_sub_bidang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_sub_bidang_links
    ADD CONSTRAINT pegawais_sub_bidang_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4691 (class 2606 OID 10176698)
-- Name: pegawais_sub_bidang_links pegawais_sub_bidang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_sub_bidang_links
    ADD CONSTRAINT pegawais_sub_bidang_links_inv_fk FOREIGN KEY (sub_bidang_id) REFERENCES public.sub_bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4682 (class 2606 OID 10176653)
-- Name: pegawais_unit_links pegawais_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_unit_links
    ADD CONSTRAINT pegawais_unit_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4683 (class 2606 OID 10176658)
-- Name: pegawais_unit_links pegawais_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais_unit_links
    ADD CONSTRAINT pegawais_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 4644 (class 2606 OID 10176463)
-- Name: pegawais pegawais_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4645 (class 2606 OID 10176468)
-- Name: pendidikans pendidikans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4646 (class 2606 OID 10176473)
-- Name: pendidikans pendidikans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4647 (class 2606 OID 10176478)
-- Name: pengujis pengujis_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4696 (class 2606 OID 10176743)
-- Name: pengujis_fit_proper_links pengujis_fit_proper_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_fit_proper_links
    ADD CONSTRAINT pengujis_fit_proper_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4697 (class 2606 OID 10176748)
-- Name: pengujis_fit_proper_links pengujis_fit_proper_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_fit_proper_links
    ADD CONSTRAINT pengujis_fit_proper_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4700 (class 2606 OID 10176763)
-- Name: pengujis_penilaian_links pengujis_penilaian_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_penilaian_links
    ADD CONSTRAINT pengujis_penilaian_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4701 (class 2606 OID 10176768)
-- Name: pengujis_penilaian_links pengujis_penilaian_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_penilaian_links
    ADD CONSTRAINT pengujis_penilaian_links_inv_fk FOREIGN KEY (penilaian_id) REFERENCES public.penilaians(id) ON DELETE CASCADE;


--
-- TOC entry 4698 (class 2606 OID 10176753)
-- Name: pengujis_peserta_links pengujis_peserta_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_peserta_links
    ADD CONSTRAINT pengujis_peserta_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4699 (class 2606 OID 10176758)
-- Name: pengujis_peserta_links pengujis_peserta_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis_peserta_links
    ADD CONSTRAINT pengujis_peserta_links_inv_fk FOREIGN KEY (peserta_id) REFERENCES public.pesertas(id) ON DELETE CASCADE;


--
-- TOC entry 4648 (class 2606 OID 10176483)
-- Name: pengujis pengujis_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4649 (class 2606 OID 10176488)
-- Name: penilaians penilaians_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians
    ADD CONSTRAINT penilaians_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4702 (class 2606 OID 10176773)
-- Name: penilaians_fit_proper_links penilaians_fit_proper_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians_fit_proper_links
    ADD CONSTRAINT penilaians_fit_proper_links_fk FOREIGN KEY (penilaian_id) REFERENCES public.penilaians(id) ON DELETE CASCADE;


--
-- TOC entry 4703 (class 2606 OID 10176778)
-- Name: penilaians_fit_proper_links penilaians_fit_proper_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians_fit_proper_links
    ADD CONSTRAINT penilaians_fit_proper_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4650 (class 2606 OID 10176493)
-- Name: penilaians penilaians_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.penilaians
    ADD CONSTRAINT penilaians_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4651 (class 2606 OID 10176498)
-- Name: pesertas pesertas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas
    ADD CONSTRAINT pesertas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4706 (class 2606 OID 10176793)
-- Name: pesertas_fit_proper_links pesertas_fit_proper_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_fit_proper_links
    ADD CONSTRAINT pesertas_fit_proper_links_fk FOREIGN KEY (peserta_id) REFERENCES public.pesertas(id) ON DELETE CASCADE;


--
-- TOC entry 4707 (class 2606 OID 10176798)
-- Name: pesertas_fit_proper_links pesertas_fit_proper_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_fit_proper_links
    ADD CONSTRAINT pesertas_fit_proper_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4704 (class 2606 OID 10176783)
-- Name: pesertas_jenjang_bidangs_links pesertas_jenjang_bidangs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_jenjang_bidangs_links
    ADD CONSTRAINT pesertas_jenjang_bidangs_links_fk FOREIGN KEY (peserta_id) REFERENCES public.pesertas(id) ON DELETE CASCADE;


--
-- TOC entry 4705 (class 2606 OID 10176788)
-- Name: pesertas_jenjang_bidangs_links pesertas_jenjang_bidangs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_jenjang_bidangs_links
    ADD CONSTRAINT pesertas_jenjang_bidangs_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 4714 (class 2606 OID 13008000)
-- Name: pesertas_peserta_nip_links pesertas_peserta_nip_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_peserta_nip_links
    ADD CONSTRAINT pesertas_peserta_nip_links_fk FOREIGN KEY (peserta_id) REFERENCES public.pesertas(id) ON DELETE CASCADE;


--
-- TOC entry 4715 (class 2606 OID 13008005)
-- Name: pesertas_peserta_nip_links pesertas_peserta_nip_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas_peserta_nip_links
    ADD CONSTRAINT pesertas_peserta_nip_links_inv_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4652 (class 2606 OID 10176503)
-- Name: pesertas pesertas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.pesertas
    ADD CONSTRAINT pesertas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4613 (class 2606 OID 10176308)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4614 (class 2606 OID 10176313)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4708 (class 2606 OID 10176803)
-- Name: sub_bidangs_bidangs_links sub_bidangs_bidangs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs_bidangs_links
    ADD CONSTRAINT sub_bidangs_bidangs_links_fk FOREIGN KEY (sub_bidang_id) REFERENCES public.sub_bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4709 (class 2606 OID 10176808)
-- Name: sub_bidangs_bidangs_links sub_bidangs_bidangs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs_bidangs_links
    ADD CONSTRAINT sub_bidangs_bidangs_links_inv_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4653 (class 2606 OID 10176508)
-- Name: sub_bidangs sub_bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4654 (class 2606 OID 10176513)
-- Name: sub_bidangs sub_bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4655 (class 2606 OID 10176518)
-- Name: units units_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4656 (class 2606 OID 10176523)
-- Name: units units_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4619 (class 2606 OID 10176338)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4662 (class 2606 OID 10176553)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4663 (class 2606 OID 10176558)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4620 (class 2606 OID 10176343)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4621 (class 2606 OID 10176348)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4622 (class 2606 OID 10176353)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4623 (class 2606 OID 10176358)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4664 (class 2606 OID 10176563)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 4665 (class 2606 OID 10176568)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4624 (class 2606 OID 10176363)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cxwfuysjdcshsd
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: cxwfuysjdcshsd
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cxwfuysjdcshsd;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 1086
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO cxwfuysjdcshsd;


-- Completed on 2022-06-02 23:50:04

--
-- PostgreSQL database dump complete
--

