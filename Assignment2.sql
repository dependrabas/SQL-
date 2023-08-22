-- Create the Student table
CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    Name VARCHAR(255),
    DoB DATE,
    Gender VARCHAR(10),
    Class VARCHAR(20),
    College VARCHAR(255),
    City VARCHAR(100),
    Marks DECIMAL(5, 2)
);

-- Insert 5 records
INSERT INTO Student (Rno, Name, DoB, Gender, Class, College, City, Marks)
VALUES
    (1, 'John Doe', '2000-05-15', 'Male', '10th', 'ABC College', 'New York', 85.5),
    (2, 'Jane Smith', '2001-02-20', 'Female', '11th', 'XYZ University', 'Los Angeles', 92.0),
    (3, 'Michael Johnson', '1999-09-10', 'Male', '12th', 'LMN Institute', 'Chicago', 78.3),
    (4, 'Emily Brown', '2002-07-08', 'Female', '9th', 'PQR School', 'Houston', 63.7),
    (5, 'David Williams', '2003-11-25', 'Male', '8th', 'EFG Academy', 'Miami', 45.2);

-- Display information of all students
SELECT * FROM Student;

-- Display details structure of the Student table
DESCRIBE Student;

-- Display Rno, Name, and Class of 'Patialia' students
SELECT Rno, Name, Class FROM Student WHERE City = 'Patialia';

-- Display information in ascending order of marks
SELECT * FROM Student ORDER BY Marks ASC;

-- Change the marks of Rno 5 to 89
UPDATE Student SET Marks = 89 WHERE Rno = 5;

-- Change the name and city of Rno 9
UPDATE Student SET Name = 'New Name', City = 'New City' WHERE Rno = 9;

-- Delete records of "Amritsar" city
DELETE FROM Student WHERE City = 'Amritsar';

-- Delete records where marks < 30
DELETE FROM Student WHERE Marks < 30;
