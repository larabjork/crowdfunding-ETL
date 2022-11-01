-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT cf_id, backers_count FROM campaign
WHERE outcome = 'live'
ORDER BY campaign.backers_count;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT b.cf_id, COUNT(b.backer_id) 
FROM backers AS b, campaign AS ca
WHERE ca.outcome = 'live'
AND b.cf_id = ca.cf_id
GROUP BY b.cf_id
ORDER BY b.count;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT b.first_name, b.last_name, b.email, ca.goal, ca.pledged, (ca.goal-ca.pledged) AS remaining_goal_amount
INTO email_contacts_remaining_goal_amount
FROM backers as b
JOIN campaign as ca ON b.cf_id = ca.cf_id
WHERE ca.outcome = 'live'
ORDER BY remaining_goal_amount DESC;

ALTER TABLE email_contacts_remaining_goal_amount
DROP COLUMN goal;

ALTER TABLE email_contacts_remaining_goal_amount
DROP COLUMN pledged;


-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT b.email, b.first_name, b.last_name, b.cf_id, ca.company_name, ca.description, ca.end_date, ca.goal, ca. pledged, (ca.goal-ca.pledged) AS left_of_goal
INTO email_backers_remaining_goal_amount
FROM backers as b
JOIN campaign as ca ON b.cf_id = ca.cf_id
WHERE ca.outcome = 'live'
ORDER BY b.email DESC;

-- Check the table
SELECT * FROM email_backers_remaining_goal_amount;


