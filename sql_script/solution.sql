--1 get reports from that specific day
SELECT *
FROM crime_scene_report
WHERE event_date = '2018-01-15' 
    AND city = 'SQL City' 
    AND event_type = 'murder';

--2 get details of the person living in the last house
SELECT *
FROM person
WHERE address_street_name LIKE 'Northwestern Dr'
ORDER By address_number DESC
LIMIT 1;

--3 get Annabel details who lives around Franklin Ave
SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name LIKE 'Franklin Ave';

--4 and 5 get details from the interview table
-- first person
SELECT *
FROM interview
WHERE person_id = 14887;

-- second person
SELECT *
FROM interview
WHERE person_id = 16371;

--6 combine the details from the 2 interviews		
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = '2018-01-09'
AND membership_id LIKE '%48Z%';		
	
--7 get the suspects with gold membership
SELECT *
FROM get_fit_now_member
WHERE id LIKE '%48Z%'
AND membership_status = 'gold';

--8 get the suspect
SELECT *
FROM drivers_license
INNER JOIN person
ON drivers_license.id = person.license_id
WHERE name = 'Joe Germuska' OR name = 'Jeremy Bowers';
