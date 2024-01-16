
--Q 1:Fetch all users name from database.
select full_name from User;

-- Q 2:Fetch all tweets of user by user id most recent tweets first.
select User.user_id, Twits.content, Twits.created_time
from twits,user
where user.user_id = twits.user_id
order by Twits.created_time;

-- Q 3:Fetch like count of particular tweet by tweet id.
-- Let particular tweet id = 1.
select count (Likes.like_id) from likes
where Likes.Twit_id =1; --particular tweet id = 1.


--Q 4:Fetch retweet count of particular tweet by tweet id.
-- Let particular tweet id = 1.
select count (Retwits.retwit_id) from Retwits
where Retwits.Twit_id =1;

-- Fetch comment count of particular tweet by tweet id.
-- Let particular tweet id = 2.
select count (Twits.twit_id) from Twits
where Twits.comments = 2;

-- Fetch all user’s name who have retweeted particular tweet by tweet id.
-- Let particular tweet id = 1.
select count (User.user_id) from User
where User.user_id in (
select Retwits.user_id from Retwits
WHERE Retwits.twit_id=1 );

-- Fetch all commented tweet’s content for particular tweet by tweet id.
-- Let particular tweet id = 2.
SELECT Twits.twit_id, Twits.content from Twits
where Twits.comments=2;

-- Fetch user’s timeline (All tweets from users whom I am following with tweet content and user name who has tweeted it)
select User.full_name , Twits.content from User,Twits
where User.user_id == Twits.twit_id and
User.user_id in (select Followers.this_user_id
from Followers WHERE Followers.follower_user_id=1);