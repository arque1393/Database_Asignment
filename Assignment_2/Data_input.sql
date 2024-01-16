-- System has three users. Vader, Leia and Obi-Wan.
INSERT INTO User (email, full_name, contact_no) VALUES ('vader@gmail.com','Vader','57464736');
INSERT INTO User (email, full_name, contact_no) VALUES ('leia@gmail.com','Leia','35857736');
INSERT INTO User (email, full_name, contact_no) VALUES ('obi.wan@gmail.com','Obi-Wan','46246356');

-- -- Vader posts tweets with content “I find your lack of faith disturbing.”
INSERT INTO Twits (user_id,content) VALUES(1,'I find your lack of faith disturbing.');
-- -- Leia likes Vader’s tweet.
INSERT INTO Likes (user_id,twit_id) VALUES(2,1);
-- -- Obi-Wan retweets Vader’s tweet.
INSERT INTO Retwits (user_id,twit_id,content) VALUES(3,1,'Retwit');

-- -- Leia follows Vader and Vader follows Obi-Wan.
INSERT INTO Followers (this_user_id, follower_user_id) VALUES(1,2);
INSERT INTO Followers (this_user_id, follower_user_id) VALUES(3,1);
-- -- Obi-Wan tweets with content “The Force will be with you. Always.”
INSERT INTO Twits (user_id,content) VALUES(3,'The Force will be with you. Always.');

-- -- Leia comments on Obi-Wan’s tweet with content “Help me, Obi-Wan Kenobi. You’re my only hope.”

INSERT INTO Twits (user_id,content,comments) VALUES(2,'Help me, Obi-Wan Kenobi. You’re my only hope.',2);
