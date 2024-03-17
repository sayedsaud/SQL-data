CREATE TABLE MOVIE (
    MovieID int PRIMARY KEY,
    MovieName VARCHAR(255),
    Category VARCHAR(255),
    ReleaseDate DATE,
    ProductionCost bigint,
    BusinessCost bigint
);
INSERT INTO MOVIE (MovieID, MovieName, Category, ReleaseDate, ProductionCost, BusinessCost)
VALUES (002,'Tamil_Movie','Action','2016-05-17',112000,118000),(003,'English_Movie' ,'Horror','2017-08-06',245000 ,360000),(004,'Bengali_Movie','Adventure', '2017-01-04' ,72000 , 100000);
INSERT INTO MOVIE (MovieID, MovieName, Category, ReleaseDate, ProductionCost, BusinessCost)
VALUES(005,'Telugu_Movie','Action',null,100000 ,null),(006,'Punjabi_Movie','Comedy',null,30500,null);
select * from movie;
SELECT MovieID, MovieName, (ProductionCost + BusinessCost) AS Total_Earning FROM MOVIE;
 select category from movie;
 select movieid,moviename,(BusinessCost-ProductionCost) as netprofit from movie;





