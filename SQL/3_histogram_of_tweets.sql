SELECT no_tweets AS tweet_bucket, COUNT(*) users_num
FROM 
    (SELECT user_id,
      COUNT(*) no_tweets
    FROM tweets
    WHERE 2022 = EXTRACT(YEAR FROM tweet_date) 
    GROUP BY user_id) AS tweets_per_user -- FROM subquery
GROUP BY no_tweets;