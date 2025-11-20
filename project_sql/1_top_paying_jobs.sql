/* 
Question : What are the top-paying data analyst jobs?
- Identify the top 10 highest paying data analyst job roles.
- Focus on hob postings with specified salaries(remove null values).
- Why? Highlight the top-paying opportunities in the data analyst field.
*/

SELECT 
    job_id,
    job_title,
    job_location,
    name AS company_name,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;