Part1
task4
answer: D
because we already have Johnson in Borrower and 1990 in Loan
CREATE TABLE LOAN(
    loan_number varchar(100),
    amount integer
);
CREATE VIEW loan_info AS
    SELECT customer_name, amount
        FROM Borrower, Loan
WHERE
      Borrower.loan_number=Loan.loan_number;

INSERT INTO Borrower VALUES ("Johnson", null)
INSERT INTO LOAN VALUES (null,1900)

INSERT INTO Borrower
    VALUES ("Johnson",1900);

SELECT * FROM loan_info




task3
answer:
        D. Apply.sID, Student. GPA
    Because varchar types search takes longer time than number formats .
    Apply.sID, Student. GPA are umber and they are involved in Select and used as one of the = <>
task2
answer: D. (2,5,3)
CREATE TABLE R(
    A integer,
    B integer,
    C integer
              );
INSERT INTO R( A, B, C) VALUES (1,2,3);
INSERT INTO R( A, B, C) VALUES (4,2,3);
INSERT INTO R( A, B, C) VALUES (4,5,6);
INSERT INTO R( A, B, C) VALUES (2,5,3);
INSERT INTO R( A, B, C) VALUES (1,2,6);

CREATE TABLE S(
    A integer,
    B integer,
    C integer
              );
INSERT INTO S( A, B, C) VALUES (2,5,3);
INSERT INTO S( A, B, C) VALUES (2,5,4);
INSERT INTO S( A, B, C) VALUES (4,5,6);
INSERT INTO S( A, B, C) VALUES (1,2,3);

SELECT FROM R INTERSECT
SELECT FROM S;
task5
answer: C. c>=(SELECT SUM(b) FROM R)
C equals 9 and SUm( 4 + 3+ 3) = 10 more than 9
task1
answer: C.(1,2,4,6)

CREATE TABLE R(
    A integer,
    B integer,
    C integer,
    D integer
              );
INSERT INTO R( A, B, C, D ) VALUES (1,100,2,200);
INSERT INTO R( A, B, C, D ) VALUES (3,300,4,400);
INSERT INTO R( A, B, C, D ) VALUES (5,500,6,600);


CREATE TABLE S(
    A integer,
    B integer,
    C integer,
    D integer
              );
INSERT INTO S( A, B, C, D) VALUES (700,2,4,6);
INSERT INTO S( A, B, C, D) VALUES (800,4,6,8);
INSERT INTO S( A, B, C, D) VALUES (900,4,7,9);

SELECT * FROM R INNER JOIN S USING (C);


SELECT FROM R INTERSECT
SELECT FROM S;






Part2
SELECT title, AVG(stars) AS average
FROM Movie
INNER JOIN Rating USING(mid)
GROUP BY mid
ORDER BY average DESC, title;

SELECT title, MIN(stars)
FROM Movie
INNER JOIN Rating USING(mid)
GROUP BY mid
ORDER BY title;

SELECT name
FROM Reviewer
INNER JOIN Rating USING(rid)
WHERE RatingDate is NULL;

CREATE MATERIALIZED VIEW
no rating AS
SELECT title
FROM Movie
WHERE mid NOT IN (SELECT mid FROM RATING);

CREATE ROLE any_role;
GRANT SELECT, UPDATE ON
no_rating TO any_role;

