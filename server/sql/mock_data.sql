-- Mock data for PostgreSQL database
-- First: Insert organizations
INSERT INTO orgs (name) VALUES
('Acme Corporation'),
('Globex Industries'),
('Initech Technologies'),
('Umbrella Corporation'),
('Stark Enterprises');

-- Second: Insert users
INSERT INTO users (email, name) VALUES
-- Acme users
('john.doe@acme.com', 'John Doe'),
('jane.smith@acme.com', 'Jane Smith'),
('bob.johnson@acme.com', 'Bob Johnson'),
('alice.williams@acme.com', 'Alice Williams'),
('david.brown@acme.com', 'David Brown'),
-- Globex users
('michael.davis@globex.com', 'Michael Davis'),
('sarah.miller@globex.com', 'Sarah Miller'),
('james.wilson@globex.com', 'James Wilson'),
('emily.moore@globex.com', 'Emily Moore'),
('richard.taylor@globex.com', 'Richard Taylor'),
-- Initech users
('thomas.anderson@initech.com', 'Thomas Anderson'),
('jennifer.white@initech.com', 'Jennifer White'),
('robert.martin@initech.com', 'Robert Martin'),
('patricia.thompson@initech.com', 'Patricia Thompson'),
('william.garcia@initech.com', 'William Garcia'),
-- Umbrella users
('chris.evans@umbrella.com', 'Chris Evans'),
('lisa.rodriguez@umbrella.com', 'Lisa Rodriguez'),
('kevin.lewis@umbrella.com', 'Kevin Lewis'),
('nancy.lee@umbrella.com', 'Nancy Lee'),
('george.walker@umbrella.com', 'George Walker'),
-- Stark users
('tony.stark@stark.com', 'Tony Stark'),
('pepper.potts@stark.com', 'Pepper Potts'),
('james.rhodes@stark.com', 'James Rhodes'),
('natasha.romanoff@stark.com', 'Natasha Romanoff'),
('bruce.banner@stark.com', 'Bruce Banner');

-- Third: Map users to organizations
INSERT INTO user_org_map (user_id, org_id) VALUES
-- Acme users (org_id 1)
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
-- Globex users (org_id 2)
(6, 2), (7, 2), (8, 2), (9, 2), (10, 2),
-- Initech users (org_id 3)
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
-- Umbrella users (org_id 4)
(16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
-- Stark users (org_id 5)
(21, 5), (22, 5), (23, 5), (24, 5), (25, 5);

-- Fourth: Create user groups
INSERT INTO user_groups (org_id, name) VALUES
-- Acme groups
(1, 'Engineering'),
(1, 'Marketing'),
(1, 'Sales'),
(1, 'Finance'),
(1, 'Human Resources'),
-- Globex groups
(2, 'Research'),
(2, 'Development'),
(2, 'Operations'),
(2, 'Customer Support'),
(2, 'Executive'),
-- Initech groups
(3, 'Product'),
(3, 'Quality Assurance'),
(3, 'Infrastructure'),
(3, 'Data Science'),
(3, 'Design'),
-- Umbrella groups
(4, 'Biotech'),
(4, 'Security'),
(4, 'Legal'),
(4, 'Pharmaceuticals'),
(4, 'Manufacturing'),
-- Stark groups
(5, 'Innovation'),
(5, 'Robotics'),
(5, 'Energy'),
(5, 'Aerospace'),
(5, 'Defense');

-- Fifth: Map users to groups
INSERT INTO user_group_map (user_id, group_id, org_id) VALUES
-- Acme users in groups
(1, 1, 1), (2, 1, 1), (3, 2, 1), (4, 3, 1), (5, 4, 1),
(1, 2, 1), (2, 3, 1), (3, 4, 1), (4, 5, 1), (5, 5, 1),
-- Globex users in groups
(6, 6, 2), (7, 7, 2), (8, 8, 2), (9, 9, 2), (10, 10, 2),
(6, 7, 2), (7, 8, 2), (8, 9, 2), (9, 10, 2), (10, 6, 2),
-- Initech users in groups
(11, 11, 3), (12, 12, 3), (13, 13, 3), (14, 14, 3), (15, 15, 3),
(11, 12, 3), (12, 13, 3), (13, 14, 3), (14, 15, 3), (15, 11, 3),
-- Umbrella users in groups
(16, 16, 4), (17, 17, 4), (18, 18, 4), (19, 19, 4), (20, 20, 4),
(16, 17, 4), (17, 18, 4), (18, 19, 4), (19, 20, 4), (20, 16, 4),
-- Stark users in groups
(21, 21, 5), (22, 22, 5), (23, 23, 5), (24, 24, 5), (25, 25, 5),
(21, 22, 5), (22, 23, 5), (23, 24, 5), (24, 25, 5), (25, 21, 5);

-- Sixth: Create reports
INSERT INTO reports (org_id, title) VALUES
-- Acme reports (20 reports)
(1, 'Q1 Sales Metrics'),
(1, 'Engineering Roadmap 2023'),
(1, 'Marketing Campaign Analysis'),
(1, 'Employee Satisfaction Survey'),
(1, 'Annual Budget Review'),
(1, 'Product Launch Strategy'),
(1, 'Cost Reduction Opportunities'),
(1, 'Customer Acquisition Report'),
(1, 'Software Development Lifecycle'),
(1, 'Competitor Analysis'),
(1, 'HR Policy Update'),
(1, 'Supply Chain Optimization'),
(1, 'Brand Awareness Study'),
(1, 'Quality Assurance Metrics'),
(1, 'IT Infrastructure Assessment'),
(1, 'Talent Acquisition Strategy'),
(1, 'Department Performance Review'),
(1, 'Industry Trend Analysis'),
(1, 'Risk Management Overview'),
(1, 'Project Management Methodology'),
-- Globex reports (20 reports)
(2, 'Research Grant Proposal'),
(2, 'New Product Development'),
(2, 'Market Expansion Plan'),
(2, 'Technology Stack Evaluation'),
(2, 'Annual Shareholder Report'),
(2, 'Operational Efficiency Metrics'),
(2, 'Customer Support Analysis'),
(2, 'Executive Strategy Overview'),
(2, 'Patent Application Status'),
(2, 'Innovation Pipeline Review'),
(2, 'Financial Forecast 2023-2025'),
(2, 'International Expansion Strategy'),
(2, 'Data Center Migration Plan'),
(2, 'Legacy System Replacement'),
(2, 'Compliance Audit Results'),
(2, 'Customer Satisfaction Survey'),
(2, 'Security Vulnerability Assessment'),
(2, 'API Performance Metrics'),
(2, 'Remote Work Policy'),
(2, 'Cloud Migration Strategy'),
-- Initech reports (20 reports)
(3, 'TPS Report Summary'),
(3, 'Software Bug Analysis'),
(3, 'UX Research Findings'),
(3, 'Machine Learning Model Performance'),
(3, 'Design System Documentation'),
(3, 'Server Utilization Metrics'),
(3, 'Mobile App Analytics'),
(3, 'Code Quality Assessment'),
(3, 'Agile Sprint Retrospective'),
(3, 'Database Optimization Plan'),
(3, 'Website Traffic Analysis'),
(3, 'Feature Adoption Metrics'),
(3, 'Team Velocity Report'),
(3, 'Accessibility Compliance Review'),
(3, 'Software Architecture Review'),
(3, 'Data Pipeline Performance'),
(3, 'User Interview Insights'),
(3, 'Microservice Migration Strategy'),
(3, 'DevOps Process Improvements'),
(3, 'API Documentation'),
-- Umbrella reports (20 reports)
(4, 'Pharmaceutical Research Results'),
(4, 'Security Protocol Review'),
(4, 'Legal Compliance Assessment'),
(4, 'Manufacturing Efficiency Report'),
(4, 'Drug Trial Results'),
(4, 'Facility Security Audit'),
(4, 'Intellectual Property Portfolio'),
(4, 'Production Line Optimization'),
(4, 'Regulatory Submission Status'),
(4, 'Chemical Compound Analysis'),
(4, 'Incident Response Report'),
(4, 'Supply Chain Risk Assessment'),
(4, 'Laboratory Safety Protocols'),
(4, 'Clinical Trial Data'),
(4, 'Environmental Impact Study'),
(4, 'Global Market Access Strategy'),
(4, 'Equipment Maintenance Schedule'),
(4, 'Quality Control Metrics'),
(4, 'Research Grant Allocation'),
(4, 'Biocontainment Procedures'),
-- Stark reports (20 reports)
(5, 'Arc Reactor Efficiency'),
(5, 'Robotics Development Timeline'),
(5, 'Clean Energy Initiative'),
(5, 'Aerospace Engineering Breakthrough'),
(5, 'Defense Contract Overview'),
(5, 'Innovation Lab Results'),
(5, 'Material Science Research'),
(5, 'AI Development Progress'),
(5, 'Stark Tower Energy Consumption'),
(5, 'Quantum Computing Research'),
(5, 'Nanotechnology Applications'),
(5, 'Space Exploration Initiative'),
(5, 'Weapons System Safety Report'),
(5, 'Sustainable Technology Roadmap'),
(5, 'Medical Technology Innovation'),
(5, 'Global Security Assessment'),
(5, 'Autonomous Vehicle Testing'),
(5, 'Renewable Energy Implementation'),
(5, 'Satellite Communications Network'),
(5, 'Holographic Interface Development');

-- Seventh: Map reports to groups
INSERT INTO report_group_map (report_id, group_id, org_id) VALUES
-- Acme report-group mappings (sample)
(1, 3, 1), (1, 4, 1), -- Sales report to Sales and Finance groups
(2, 1, 1), -- Engineering roadmap to Engineering group
(3, 2, 1), -- Marketing report to Marketing group
(4, 5, 1), -- HR report to Human Resources group
(5, 4, 1), -- Budget to Finance
-- Globex report-group mappings (sample)
(21, 6, 2), -- Research grant to Research group
(22, 7, 2), -- Product development to Development group
(23, 10, 2), -- Market expansion to Executive group
(24, 7, 2), (24, 8, 2), -- Tech evaluation to Development and Operations
(25, 10, 2), -- Shareholder report to Executive
-- Initech report-group mappings (sample)
(41, 11, 3), (41, 12, 3), -- TPS report to Product and QA groups
(42, 12, 3), -- Bug analysis to QA
(43, 15, 3), -- UX research to Design
(44, 14, 3), -- Machine learning to Data Science
(45, 15, 3), -- Design system to Design
-- Umbrella report-group mappings (sample)
(61, 16, 4), -- Pharmaceutical research to Biotech
(62, 17, 4), -- Security protocol to Security group
(63, 18, 4), -- Legal compliance to Legal
(64, 20, 4), -- Manufacturing to Manufacturing
(65, 16, 4), (65, 19, 4), -- Drug trials to Biotech and Pharmaceuticals
-- Stark report-group mappings (sample)
(81, 23, 5), -- Arc reactor to Energy group
(82, 22, 5), -- Robotics to Robotics group
(83, 23, 5), -- Clean energy to Energy group
(84, 24, 5), -- Aerospace to Aerospace group
(85, 25, 5); -- Defense contract to Defense group

-- Add more report-group mappings (each report should belong to at least one group)
INSERT INTO report_group_map (report_id, group_id, org_id) VALUES
-- More Acme mappings
(6, 1, 1), (6, 2, 1), (6, 3, 1), -- Product launch to Engineering, Marketing, Sales
(7, 4, 1), -- Cost reduction to Finance
(8, 2, 1), (8, 3, 1), -- Customer acquisition to Marketing and Sales
(9, 1, 1), -- SDLC to Engineering
(10, 2, 1), (10, 3, 1), -- Competitor analysis to Marketing and Sales
-- Additional Acme mappings for reports 11-20
(11, 5, 1), (11, 1, 1), -- HR Policy Update to HR and Engineering
(12, 3, 1), (12, 4, 1), -- Supply Chain Optimization to Sales and Finance
(13, 2, 1), (13, 3, 1), (13, 5, 1), -- Brand Awareness Study to Marketing, Sales, and HR
(14, 1, 1), (14, 5, 1), -- Quality Assurance Metrics to Engineering and HR
(15, 1, 1), (15, 4, 1), -- IT Infrastructure Assessment to Engineering and Finance
(16, 5, 1), (16, 2, 1), (16, 4, 1), -- Talent Acquisition Strategy to HR, Marketing, and Finance
(17, 1, 1), (17, 2, 1), (17, 3, 1), (17, 4, 1), (17, 5, 1), -- Department Performance Review to all groups
(18, 2, 1), (18, 3, 1), -- Industry Trend Analysis to Marketing and Sales
(19, 4, 1), (19, 1, 1), -- Risk Management Overview to Finance and Engineering
(20, 1, 1), (20, 3, 1), (20, 5, 1), -- Project Management Methodology to Engineering, Sales, and HR
-- More Globex mappings
(26, 8, 2), -- Operational efficiency to Operations
(27, 9, 2), -- Customer support to Customer Support
(28, 10, 2), -- Executive strategy to Executive
(29, 6, 2), (29, 7, 2), -- Patent status to Research and Development
(30, 6, 2), (30, 10, 2), -- Innovation pipeline to Research and Executive
-- More Initech mappings
(46, 13, 3), -- Server utilization to Infrastructure
(47, 11, 3), (47, 15, 3), -- Mobile app analytics to Product and Design
(48, 12, 3), -- Code quality to QA
(49, 11, 3), (49, 12, 3), (49, 13, 3), -- Sprint retrospective to Product, QA, Infrastructure
(50, 13, 3), (50, 14, 3), -- Database optimization to Infrastructure and Data Science
-- More Umbrella mappings
(66, 17, 4), -- Facility security to Security
(67, 18, 4), -- Intellectual property to Legal
(68, 20, 4), -- Production line to Manufacturing
(69, 18, 4), (69, 19, 4), -- Regulatory submission to Legal and Pharmaceuticals
(70, 16, 4), (70, 19, 4), -- Chemical compound analysis to Biotech and Pharmaceuticals
-- More Stark mappings
(86, 21, 5), (86, 22, 5), -- Robotics development to Innovation and Robotics
(87, 23, 5), -- Clean energy to Energy
(88, 21, 5), (88, 24, 5), -- Aerospace engineering to Innovation and Aerospace
(89, 25, 5), -- Defense contract to Defense
(90, 21, 5); -- Innovation lab to Innovation 