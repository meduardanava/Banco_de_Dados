CREATE TABLE public."DADOS_COVID"
(
    city character varying(50),
    city_ibge integer,
    date character varying(10),
    epidemiological_wee character varying(10),
    epidemated_population bigint,
    epidemated_population_2019 bigint,
    is_last boolean,
    is_repeated boolean,
    last_available_confirmed bigint,
    last_available_confirmed_per_100k_inhabitants character varying(50),
    last_available_date character varying(10),
    last_available_death_rate numeric(8, 5),
    last_available_deaths bigint,
    order_for_place integer,
    place_type character varying(10),
    statea character(5),
    new_confirmed bigint,
    new_deaths bigint
);

Select * from "DADOS_COVID"