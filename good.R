setwd("C:/Users/edmon_000/Desktop/data mining/")

ds <- read.csv("movie_metadata.csv")

ds <- ds[complete.cases(ds),] 

#select all numerical columsn
sc = c('imdb_score', 
                   'num_user_for_reviews', 
                   'num_critic_for_reviews', 
                   'duration','director_facebook_likes', 
                   'movie_facebook_likes', 
                   'cast_total_facebook_likes', 
                   'actor_1_facebook_likes', 
                   'actor_2_facebook_likes', 
                   'actor_3_facebook_likes', 
                   'gross', 
                   'num_voted_users', 
                   'facenumber_in_poster', 
                   'budget',
                   'title_year', 
                   'aspect_ratio')

# what variables are important? correlation between all the factors

ds1 <- ds[,sc]


# transform to log
ds2 <- log(ds[,1:15])






