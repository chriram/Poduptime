CREATE TABLE pods (
 id serial8 UNIQUE PRIMARY KEY,
 domain text UNIQUE NOT NULL,
 name text,
 score int DEFAULT 10,
 adminrating decimal DEFAULT 10,
 userrating decimal DEFAULT 10,
 whois text,
 hidden text DEFAULT 'yes',
 ip text,
 ptr text,
 country text,
 city text,
 state text, 
 lat text,
 long text,
 connection text,
 postalcode text,
 email text,
 ipv6 text,
 secure text,
 sslvalid text,
 Hgitdate text,
 Hgitref text,
 Hruntime text,
 Hencoding text,
 pingdomurl text,
 pingdomlast text,
 monthsmonitored int,
 signup int,
 total_users int, 
 active_users_halfyear int,
 active_users_monthly int,
 local_posts int,
 uptimelast7 numeric(5,2),
 status text,
 responsetimelast7 text,
 dateUpdated timestamp DEFAULT current_timestamp,
 dateLaststats timestamp DEFAULT current_timestamp,
 dateCreated timestamp DEFAULT current_timestamp
);
CREATE TABLE rating_comments (
 id serial8 UNIQUE PRIMARY KEY,
 domain text NOT NULL,
 comment text,
 admin text, 
 pod_id int,
 rating int,
 username text,
 userurl text,
 date timestamp DEFAULT current_timestamp
);
CREATE TABLE users (
 id serial8 UNIQUE PRIMARY KEY,
 admin int NOT NULL,
 username text UNIQUE NOT NULL,
 password text NOT NULL,
 userurl text,
 userpod text,
 dateCreated timestamp DEFAULT current_timestamp
);
