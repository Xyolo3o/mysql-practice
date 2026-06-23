-- 案件表
CREATE TABLE case_info (
    case_id INT PRIMARY KEY AUTO_INCREMENT,
    case_no VARCHAR(30) UNIQUE,
    case_type VARCHAR(20),
    filed_date DATE,
    status VARCHAR(10)
);

-- 当事人表
CREATE TABLE litigant (
    litigant_id INT PRIMARY KEY AUTO_INCREMENT,
    case_id INT,
    name VARCHAR(50),
    role VARCHAR(10)  
);

-- 插入案件
INSERT INTO case_info(case_no,case_type,filed_date,status) VALUES
('ZHE-2025-民初-001','民间借贷','2025-01-10','已结'),
('ZHE-2025-民初-002','民间借贷','2025-02-15','审理中'),
('ZHE-2025-刑初-001','盗窃','2025-03-05','已结'),
('ZHE-2025-民初-003','买卖合同','2025-04-20','审理中'),
('ZHE-2025-民初-004','民间借贷','2025-05-08','审理中');

-- 插入当事人
INSERT INTO litigant(case_id,name,role) VALUES
(1,'张三','原告'),
(1,'李四','被告'),
(2,'王五','原告'),
(2,'赵六','被告'),
(3,'钱七','被告'),
(4,'孙八','原告'),
(4,'周九','被告'),
(5,'吴十','原告');