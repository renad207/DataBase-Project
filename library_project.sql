


CREATE DATABASE mydb;

USE mydb;



CREATE TABLE Admin (
    id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    information VARCHAR(20)
);



CREATE TABLE Genres (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE Author (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    FOREIGN KEY (book_id) REFERENCES Book(id)
);

CREATE TABLE Book (
    id INT PRIMARY KEY,
    title VARCHAR(20),
    genre_id INT,
    admin_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(id),
    FOREIGN KEY (admin_id) REFERENCES Admin(id)
);


CREATE TABLE Member (
    id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    membership_status VARCHAR(20)
);

CREATE TABLE Borrowing (
    id INT PRIMARY KEY ,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(id),
    FOREIGN KEY (book_id) REFERENCES Book(id)
);


CREATE TABLE Librarian (
    id INT PRIMARY KEY ,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    shift_time VARCHAR(20),
    email VARCHAR(20),
);



INSERT INTO Author (id, name, book_id) VALUES
    (1, 'George Orwell', 1),
     (2, 'Stephen Hawking', 2),
     (3, 'Yuval Harari', 3),
     (4, 'Walter Isaacson', 4),
     (5, 'J.K. Rowling', 5),
     (6, 'Plato', 6),
     (7, 'Arthur Conan Doyle', 7),
     (8, 'Stephen King', 8),
     (9, 'Erich Segal', 9),
     (10, 'James Clear', 10);



 INSERT INTO Book (id, title, genre_id, admin_id) VALUES
     (1, '1984', 1, 1),
     (2, 'Time Brief', 2, 2),
     (3, 'Sapiens', 3, 3),
     (4, 'Steve Jobs', 4, 4),
     (5, 'Harry Potter', 5, 5),
     (6, 'The Republic', 6, 6),
     (7, 'Sherlock', 7, 7),
     (8, 'IT', 8, 8),
     (9, 'Love Story', 9, 9),
     (10, 'Atomic Habits', 10, 10);





     INSERT INTO Member (id, first_name, last_name, membership_status) VALUES
     (1, 'Khaled', 'Nasser', 'Active'),
     (2, 'Laila', 'Youssef', 'Inactive'),
     (3, 'Mona', 'Hassan', 'Active'),
     (4, 'Salma', 'Zayed', 'Active'),
     (5, 'Ahmed', 'Omar', 'Inactive'),
     (6, 'Yara', 'Mohamed', 'Active'),
     (7, 'Tamer', 'Ali', 'Active'),
     (8, 'Nour', 'Gamal', 'Inactive'),
     (9, 'Rami', 'Ibrahim', 'Active'),
     (10, 'Dalia', 'Sami', 'Active');



     INSERT INTO Borrowing (id, member_id, book_id, borrow_date, return_date) VALUES
     (1, 1, 1, '2025-05-01', '2025-05-10'),
     (2, 2, 2, '2025-05-02', NULL),
     (3, 3, 3, '2025-05-03', '2025-05-07'),
     (4, 4, 4, '2025-05-04', NULL),
     (5, 5, 5, '2025-05-05', '2025-05-15'),
     (6, 6, 6, '2025-05-06', '2025-05-12'),
     (7, 7, 7, '2025-05-07', NULL),
     (8, 8, 8, '2025-05-08', '2025-05-14'),
     (9, 9, 9, '2025-05-09', NULL),
     (10, 10, 10, '2025-05-10', NULL);




     INSERT INTO Admin (id, first_name, last_name, information) VALUES
     (1, 'Ali', 'Hassan', 'Main Librarian'),
     (2, 'Sara', 'Ahmed', 'Assistant'),
     (4, 'Lina', 'Salem', 'Manager'),
     (5, 'Hadi', 'Kamal', 'Intern'),
     (6, 'Nada', 'Zaki', 'Coordinator'),
     (7, 'Ziad', 'Fahmy', 'Archivist'),
     (8, 'Reem', 'Ali', 'Clerk'),
     (9, 'Amr', 'Tarek', 'Security'),
     (10, 'Dina', 'Samir', 'HR');






     INSERT INTO Librarian (id , first_name , last_name , shift_time , email) VALUES
     (1, 'Ahmed', 'Hassan', 'Morning', 'ahmed.hassan@example.com'),
     (2, 'Sara', 'Ali', 'Evening', 'sara.ali@example.com'),
     (3, 'Omar', 'Youssef', 'Night', 'omar.youssef@example.com'),
     (4, 'Laila', 'Mostafa', 'Morning', 'laila.mostafa@example.com'),
     (5, 'Khaled', 'Nabil', 'Evening', 'khaled.nabil@example.com'),
      (6, 'Mona', 'Ibrahim', 'Night', 'mona.ibrahim@example.com'),
      (7, 'Tamer', 'Adel', 'Morning', 'tamer.adel@example.com'),
     (8, 'Nour', 'Fathy', 'Evening', 'nour.fathy@example.com'),
       (9, 'Hany', 'Kamal', 'Night', 'hany.kamal@example.com'),
     (10, 'Rania', 'Sami', 'Morning', 'rania.sami@example.com');



     INSERT INTO Genres (id, name) VALUES
     (1, 'Fiction'),
     (2, 'Science'),
     (3, 'History'),
     (4, 'Biography'),
     (5, 'Fantasy'),
     (6, 'Philosophy'),
     (7, 'Mystery'),
     (8, 'Horror'),
     (9, 'Romance'),
    (10, 'Self-help');
     