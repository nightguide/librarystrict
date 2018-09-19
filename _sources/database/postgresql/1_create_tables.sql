/* PostgreSQL */

CREATE TABLE public.country(
id UUID NOT NULL,
caption VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
UNIQUE (caption)
);

CREATE TABLE public.city(
id UUID NOT NULL,
caption VARCHAR(255) NOT NULL,
country_id UUID NOT NULL,
PRIMARY KEY (id),
UNIQUE (caption, country_id),
FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE public.roleuser(
id UUID NOT NULL,
code VARCHAR(255) NOT NULL,
description TEXT,
PRIMARY KEY (id),
UNIQUE (code)
);

CREATE TABLE public.userx(
id UUID NOT NULL,
username VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
passwordencode TEXT NOT NULL,
isBlocked BOOLEAN NOT NULL,
isDeleted BOOLEAN NOT NULL,
isConfirmEmail BOOLEAN NOT NULL,
PRIMARY KEY (id),
UNIQUE (username),
UNIQUE (email)
);

CREATE TABLE public.user_on_role(
id UUID NOT NULL,
userx_id UUID NOT NULL,
roleuser_id UUID NOT NULL,
PRIMARY KEY (id),
UNIQUE (userx_id, roleuser_id),
FOREIGN KEY (userx_id) REFERENCES userx(id)ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (roleuser_id) REFERENCES roleuser(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE public.profile(
id UUID NOT NULL,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
middlename VARCHAR(255),
userx_id UUID NOT NULL,
datebirth DATE,
phone VARCHAR(51),
city_id UUID,
PRIMARY KEY (id),
UNIQUE (userx_id),
FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (city_id) REFERENCES city(id) ON UPDATE CASCADE ON DELETE CASCADE
);

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
PRIMARY KEY (id),
FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (roleuser_id) REFERENCES roleuser(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE public.publishing(
id uuid NOT NULL,
caption VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE public.genre(
id UUID NOT NULL,
caption VARCHAR(255) NOT NULL,
parent_id UUID,
PRIMARY KEY (id),
FOREIGN KEY (parent_id) REFERENCES genre(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (caption)
);

CREATE TABLE public.author(
id UUID NOT NULL,
name VARCHAR(255) NOT NULL,
lastname VARCHAR(255) NOT NULL,
middlename VARCHAR(255),
country_id UUID NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (country_id) REFERENCES country(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE public.comment(
id UUID NOT NULL,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
datesend DATE NOT NULL,
PRIMARY KEY (id)
);

CREATE TYPE agelimit AS ENUM ('0+', '6+', '12+', '16+', '18+');

CREATE TABLE public.book(
id UUID NOT NULL,
caption VARCHAR(255) NOT NULL,
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
PRIMARY KEY (id),
FOREIGN KEY (publishing_id) REFERENCES publishing(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (author_id) REFERENCES author(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (isbn)
);

CREATE TABLE public.favorite(
id UUID NOT NULL,
userx_id UUID NOT NULL,
book_id UUID NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (userx_id, book_id)
);

CREATE TYPE star_value AS ENUM ('0', '0.5', '1', '1.5', '2', '2.5', '3', '3.5', '4', '4.5', '5');

CREATE TABLE public.star(
id UUID NOT NULL,
book_id UUID NOT NULL,
userx_id UUID NOT NULL,
value star_value NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (userx_id, book_id)
);

CREATE TABLE public.comment_on_user(
id UUID NOT NULL,
userx_id UUID NOT NULL,
comment_id UUID NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (userx_id) REFERENCES userx(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (comment_id) REFERENCES comment(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (userx_id, comment_id)
);

CREATE TABLE public.comment_on_book(
id UUID NOT NULL,
book_id UUID NOT NULL,
comment_id UUID NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (comment_id) REFERENCES comment(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (book_id, comment_id)
);

CREATE TABLE public.book_on_genre(
id UUID NOT NULL,
book_id UUID NOT NULL,
genre_id UUID NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (book_id) REFERENCES book(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (genre_id) REFERENCES genre(id) ON UPDATE CASCADE ON DELETE CASCADE,
UNIQUE (book_id, genre_id)
);
