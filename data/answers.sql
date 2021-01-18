SELECT * FROM public.customers WHERE country = 'Germany';
UPDATE public.customers SET country = 'United Kingdom' WHERE country = 'UK';
DELETE FROM public.customers WHERE fax IS NULL;
INSERT INTO customers VALUES ('ARTKE', 'Artur Kemmerer', 'Artur Kemmerer', 'Owner', 'Lichtensteinstr 33', 'VS', 'BW', '78056', 'Germany', null, null); --Im too lazy to think of 5 more
SELECT * FROM public.customers WHERE contact_title = 'Sales Representative';
UPDATE public.customers SET company_name = 'Linkedin' WHERE customer_id = 'BOTTM';
SELECT * FROM public.customers WHERE region IS NULL AND country = 'USA';
DELETE FROM public.customers WHERE postal_code = '1734';
SELECT * FROM public.customers WHERE contact_title = 'Owner';
SELECT company_name , contact_name, contact_title FROM public.customers WHERE country = 'Brazil';
SELECT contact_name AS name, contact_title AS title FROM public.customers WHERE country = 'Finland';
DELETE FROM public.customers WHERE city = 'Lyon';
UPDATE public.customers SET region = 'Unknown' WHERE region is NULL;

CREATE TABLE public.article
(
    article_id integer NOT NULL PRIMARY KEY,
    headline character varying (50) NOT NULL,
    subhead character varying (50) NOT NULL,
    category character varying (50) NOT NULL,
    author character varying (50) NOT NULL,
    cover character varying (50),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);

CREATE TABLE public.author
(
    author_id integer NOT NULL PRIMARY KEY,
    name character varying (50) NOT NULL,
    img character varying (50)
);

CREATE TABLE public.review
(
    review_id integer NOT NULL PRIMARY KEY,
    text character varying (50) NOT NULL,
    "user" character varying (50) NOT NULL
);