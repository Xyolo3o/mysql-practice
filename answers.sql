--Q1:查询所有 民间借贷​ 案件的案号、立案日期、状态。
Q1:SELECT * FROM case_info
WHERE case_type='民间借贷';   

--Q2:查询 2025-03-01 之后​ 立案的案件，按立案日期从新到旧排序。
SELECT * FROM case_info
WHERE filed_date > '2025-03-01'
ORDER BY filed_date DESC ;     


--Q3: 查询案号中包含 “民初”​ 的案件。
SELECT * FROM case_info
WHERE case_no LIKE '%民初%';    


--Q4:统计每种 案件类型​ 分别有多少件。
SELECT case_type, COUNT(*) AS number FROM case_info
GROUP BY case_type;   


--Q5: 查询案件数量大于等于2的案件类型。
SELECT case_type, COUNT(*) AS number FROM case_info
GROUP BY case_type
HAVING number >= 2;   


--Q6:查询 每个案件的案号 + 原告姓名。
SELECT case_no,name,role
FROM case_info
LEFT JOIN litigant
ON case_info.case_id = litigant.case_id
WHERE role='原告';    


--Q7:列出 所有案件​ 的案号、当事人姓名（没有当事人也要显示）。
SELECT case_no,name,role
FROM case_info
LEFT JOIN litigant
ON case_info.case_id = litigant.case_id;   


--Q8:查询每个案件的案号、案件类型以及当事人数量。
SELECT case_info.case_id, case_no, case_type, COUNT(name) AS number
FROM case_info
LEFT JOIN litigant
ON case_info.case_id = litigant.case_id
GROUP BY case_id, case_no, case_type;