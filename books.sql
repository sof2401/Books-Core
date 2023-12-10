-- Create Database
CREATE DATABASE IF NOT EXISTS your_database_name;
USE your_database_name;

-- Create title_basics Table
CREATE TABLE IF NOT EXISTS title_basics (
    tconst VARCHAR(20) PRIMARY KEY,
    primaryTitle VARCHAR(255),
    originalTitle VARCHAR(255),
    startYear INT,
    genres VARCHAR(255)
);

-- Create ratings Table
CREATE TABLE IF NOT EXISTS ratings (
    tconst VARCHAR(20) PRIMARY KEY,
    averageRating FLOAT,
    numVotes INT
);
import pymysql
from sqlalchemy import create_engine
countrieslanguagesauthors
# Connect to MySQL Database
engine = create_engine("mysql+pymysql://your_username:your_password@localhost/your_database_name")

# Insert title_basics DataFrame into title_basics Table
df_title_basics.to_sql("title_basics", con=engine, if_exists="append", index=False)

# Insert ratings DataFrame into ratings Table
df_ratings.to_sql("ratings", con=engine, if_exists="append", index=False)

SHOW TABLES

DESCRIBE authors
DESCRIBE favorites
DESCRIBE books

SELECT books.title, favorites.user_id
FROM books
JOIN favorites ON books.id = favorites.book_id
WHERE favorites.users_id = 
    (SELECT users.id FROM users WHERE (users.last_name = "Doe" AND users.first_name = "John"));