-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.BookID) AS Count, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Loans.PatronID
ORDER BY Count
LIMIT 15;