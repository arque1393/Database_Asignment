
CREATE TABLE User (
	user_id integer PRIMARY KEY AUTOINCREMENT,
	email varchar,
	full_name varchar,
	contact_no varchar
);

CREATE TABLE Twits (
	twit_id integer PRIMARY KEY AUTOINCREMENT,
	user_id integer ,
	content varchar,
	created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	comments integer,
    FOREIGN KEY(user_id) REFERENCES USER(user_id)
); 

CREATE TABLE Likes (
	like_id integer PRIMARY KEY AUTOINCREMENT,
	user_id integer,
	twit_id integer,
	time timestamp DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES USER(user_id),
    FOREIGN KEY(twit_id) REFERENCES twits(twit_id)
);

CREATE TABLE Retwits (
	retwit_id integer PRIMARY KEY AUTOINCREMENT,
	twit_id integer,
	user_id integer,
	content varchar,
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(twit_id) REFERENCES twits(twit_id),
    FOREIGN KEY(user_id) REFERENCES USER(user_id)
);

CREATE TABLE Followers (
	followers_id integer PRIMARY KEY AUTOINCREMENT,
	this_user_id integer,
	follower_user_id integer,
    FOREIGN KEY(follower_user_id) REFERENCES twits(user_id),
    FOREIGN KEY(this_user_id) REFERENCES USER(user_id)
);
