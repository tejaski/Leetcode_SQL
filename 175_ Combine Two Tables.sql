/* 175. Combine Two Tables */

Select p.FirstName, p.LastName, a.City, a.State
FROM Person p left join Address a on p.PersonId = a.PersonID