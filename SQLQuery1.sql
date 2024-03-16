create database Library

use Library

create table dbo.Books(
[Id] int primary key identity(1,1),
[Name] varchar(40) not null,
[Author] varchar(20),
[Genre] varchar(20) not null,
[Price] float ,
[PageCount] int,
[Published] datetime not null,
[CreatedDate] datetime DEFAULT GETDATE())

drop table Books

INSERT INTO dbo.Books (Name, Author, Genre, Price, PageCount, Published, CreatedDate)
VALUES
('1984', 'George Orwell', 'Distopik Roman', 328, 25.99, '1949-06-08'),
('Sapiens: Ýnsan Türünün Kýsa Bir Tarihi', 'Yuval Noah Harari', 'Tarih', 464, 34.50, '2011-02-10'),
('Sessizlik', 'Shusaku Endo', 'Roman', 256, 19.90, '1966-11-25'),
('Yüzüklerin Efendisi', 'J.R.R. Tolkien', 'Fantastik Roman', 1178, 45.75, '1954-07-29'),
('Savaþ ve Barýþ', 'Lev Tolstoy', 'Roman', 1225, 55.00, '1869-01-01');


select * from Books

--1) Ordering by price

SELECT * FROM Books
ORDER BY Price DESC;

--2) Select top3 lowest

SELECT TOP 3 Price
FROM Books
ORDER BY Price;

--3) Select by Author

SELECT *
FROM Books
WHERE Author = 'Shusaku Endo',;

--4) Delete the Books whose price is higher than 30Azn

Delete from Books where Price>30


--5) Drop the table

DROP TABLE IF EXISTS Books;

--6) Update the table so the price will increase by 5% to the Books of Author Jane Austen

UPDATE Books
SET Price = Price * 1.05
WHERE Author = 'J.R.R. Tolkien'