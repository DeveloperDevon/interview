CREATE TABLE orgs (
    org_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_orgs_name ON orgs(name);


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);


CREATE TABLE user_org_map (
    user_id INT NOT NULL,
    org_id INT NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, org_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (org_id) REFERENCES orgs(org_id) ON DELETE CASCADE
);

CREATE INDEX idx_user_org_map_user ON user_org_map(user_id);
CREATE INDEX idx_user_org_map_org ON user_org_map(org_id);


CREATE TABLE user_groups (
    group_id SERIAL,
    org_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (group_id, org_id),
    FOREIGN KEY (org_id) REFERENCES orgs(org_id) ON DELETE CASCADE,
    UNIQUE (org_id, name)
);

CREATE INDEX idx_user_groups_org ON user_groups(org_id);



CREATE TABLE user_group_map (
    user_id INT NOT NULL,
    group_id INT NOT NULL,
    org_id INT NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, group_id, org_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (org_id) REFERENCES orgs(org_id) ON DELETE CASCADE,
    FOREIGN KEY (group_id, org_id) REFERENCES user_groups(group_id, org_id) ON DELETE CASCADE
);


CREATE INDEX idx_user_group_map_user ON user_group_map(user_id);
CREATE INDEX idx_user_group_map_group ON user_group_map(group_id);
CREATE INDEX idx_user_group_map_org ON user_group_map(org_id);
CREATE INDEX idx_user_group_map_group_org ON user_group_map(group_id, org_id);



CREATE TABLE reports (
    report_id SERIAL,
    org_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (report_id, org_id),
    FOREIGN KEY (org_id) REFERENCES orgs(org_id) ON DELETE CASCADE
);

CREATE INDEX idx_reports_org ON reports(org_id);



CREATE TABLE report_group_map (
    report_id INT NOT NULL,
    group_id INT NOT NULL,
    org_id INT NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (report_id, group_id, org_id),
    FOREIGN KEY (org_id) REFERENCES orgs(org_id) ON DELETE CASCADE,
    FOREIGN KEY (report_id, org_id) REFERENCES reports(report_id, org_id) ON DELETE CASCADE,
    FOREIGN KEY (group_id, org_id) REFERENCES user_groups(group_id, org_id) ON DELETE CASCADE
);

CREATE INDEX idx_report_group_map_report ON report_group_map(report_id);
CREATE INDEX idx_report_group_map_group ON report_group_map(group_id);
CREATE INDEX idx_report_group_map_org ON report_group_map(org_id);
CREATE INDEX idx_report_group_map_report_org ON report_group_map(report_id, org_id);
CREATE INDEX idx_report_group_map_group_org ON report_group_map(group_id, org_id);