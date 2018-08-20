/* PostgreSQL */

CREATE TABLE public.publishing(
id uuid NOT NULL,
name VARCHAR(255) NOT NULL,
CONSTRAINT pk_publishing PRIMARY KEY (id)
);

CREATE TABLE public.genre(
id UUID NOT NULL,
name VARCHAR(255) NOT NULL,
parent_id UUID,
CONSTRAINT pk_genre PRIMARY KEY (id),
CONSTRAINT fk_genre_genre_id FOREIGN KEY (parent_id) REFERENCES genre(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_genre_name UNIQUE (name)
);

CREATE TABLE public.country(
id UUID NOT NULL,
caption TEXT NOT NULL,
CONSTRAINT pk_country PRIMARY KEY (id),
CONSTRAINT uq_country_caption UNIQUE (caption));

CREATE TABLE public.city(
id UUID NOT NULL,
caption TEXT NOT NULL,
country_id UUID NOT NULL,
CONSTRAINT pk_city PRIMARY KEY (id),
CONSTRAINT uq_city_caption UNIQUE (caption, country_id),
CONSTRAINT fk_city_country_id FOREIGN KEY (country_id) REFERENCES country(id));

CREATE TABLE public.author(
id UUID NOT NULL,
name VARCHAR(255) NOT NULL,
lastname VARCHAR(255) NOT NULL,
middlename VARCHAR(255),
country_id UUID NOT NULL,
CONSTRAINT pk_id PRIMARY KEY (id),
CONSTRAINT fk_author_country_id FOREIGN KEY (country_id) REFERENCES country(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE public.roleuser(
id UUID NOT NULL,
code TEXT NOT NULL,
description TEXT,
CONSTRAINT pk_roleuser PRIMARY KEY (id),
CONSTRAINT uq_roleuser_code UNIQUE (code));

CREATE TABLE public.userx(
id UUID NOT NULL,
username TEXT NOT NULL,
passwordencode TEXT NOT NULL,
CONSTRAINT pk_userx PRIMARY KEY (id),
CONSTRAINT uq_userx_username UNIQUE (username));

CREATE TABLE public.user_on_role(
id UUID NOT NULL,
userx_id UUID NOT NULL,
roleuser_id UUID NOT NULL,
CONSTRAINT pk_user_on_role PRIMARY KEY (id),
CONSTRAINT uq_userx__role_transit UNIQUE (userx_id, roleuser_id),
CONSTRAINT fk_user__role_userx_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_user__role_roleuser_id FOREIGN KEY (roleuser_id) REFERENCES roleuser(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE public.profile(
id UUID NOT NULL,
name TEXT NOT NULL,
surname TEXT NOT NULL,
middlename TEXT,
userx_id UUID NOT NULL,
datebirth DATE,
phone TEXT,
city_id UUID,
CONSTRAINT pk_profile PRIMARY KEY (id),
CONSTRAINT uq_profile_userx_id UNIQUE (userx_id),
CONSTRAINT fk_profile_userx_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_profile_city_id FOREIGN KEY (city_id) REFERENCES city(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE public.token(
id UUID NOT NULL,
accessToken TEXT NOT NULL,
refreshToken TEXT NOT NULL,
expireTimeAccess DATE NOT NULL,
expireTimeRefresh DATE NOT NULL,
issuedAt DATE NOT NULL,
issuer TEXT,
subject TEXT,
notBefore DATE,
audience TEXT,
secret TEXT,
algorithm TEXT,
type TEXT,
userx_id UUID NOT NULL,
roleuser_id UUID NOT NULL,
CONSTRAINT pk_token PRIMARY KEY (id),
CONSTRAINT fk_token_userx_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_token_roleuser_id FOREIGN KEY (roleuser_id) REFERENCES roleuser(id) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE public.comment(
id UUID NOT NULL,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
datesend DATE NOT NULL,
CONSTRAINT pk_comment PRIMARY KEY (id)
);

CREATE TYPE agelimit AS ENUM ('0+', '6+', '12+', '16+', '18+');

CREATE TABLE public.book(
id UUID NOT NULL,
name VARCHAR(255) NOT NULL,
yearpublication DATE NOT NULL,
coverpath TEXT,
publishing_id UUID NOT NULL,
countpages SMALLINT NOT NULL,
isbn VARCHAR(255),
agelimit agelimit NOT NULL,
description TEXT NOT NULL,
author_id UUID NOT NULL,
pdfpath TEXT,
fb2path TEXT,
mp3path TEXT,
wavpath TEXT,
CONSTRAINT pk_book PRIMARY KEY (id),
CONSTRAINT fk_book_publishing_id FOREIGN KEY (publishing_id) REFERENCES publishing(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_book_author_id FOREIGN KEY (author_id) REFERENCES author(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_book_isbn UNIQUE (isbn)
);

CREATE TABLE public.favorite(
id UUID NOT NULL,
userx_id UUID NOT NULL,
book_id UUID NOT NULL,
CONSTRAINT pk_favorite PRIMARY KEY (id),
CONSTRAINT fk_favorite_user_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_favorite_book_id FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_favorite_transit UNIQUE (userx_id, book_id)
);

CREATE TYPE star_value AS ENUM ('0', '0.5', '1', '1.5', '2', '2.5', '3', '3.5', '4', '4,5', '5');

CREATE TABLE public.star(
id UUID NOT NULL,
book_id UUID NOT NULL,
userx_id UUID NOT NULL,
value star_value NOT NULL,
CONSTRAINT pk_star PRIMARY KEY (id),
CONSTRAINT fk_star_user_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_star_book_id FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_star_userbook UNIQUE (userx_id, book_id)
);

CREATE TABLE public.comment_on_user(
id UUID NOT NULL,
userx_id UUID NOT NULL,
comment_id UUID NOT NULL,
CONSTRAINT pk_comment__user PRIMARY KEY (id),
CONSTRAINT fk_comment__user_user_id FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_comment__user_comment_id FOREIGN KEY (comment_id) REFERENCES comment(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_comment__user_transit UNIQUE (userx_id, comment_id)
);

CREATE TABLE public.comment_on_book(
id UUID NOT NULL,
book_id UUID NOT NULL,
comment_id UUID NOT NULL,
CONSTRAINT pk_comment__book PRIMARY KEY (id),
CONSTRAINT fk_comment__book_book_id FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_comment__book_comment_id FOREIGN KEY (comment_id) REFERENCES comment(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_comment__book_transit UNIQUE (book_id, comment_id)
);


CREATE TABLE public.book_on_genre(
id UUID NOT NULL,
book_id UUID NOT NULL,
genre_id UUID NOT NULL,
CONSTRAINT pk_book__genre PRIMARY KEY (id),
CONSTRAINT fk_book__genre_book_id FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_book__genre_genre_id FOREIGN KEY (genre_id) REFERENCES genre(id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT uq_book__genre_transit UNIQUE (book_id, genre_id)
);
