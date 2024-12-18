-- Create admin user and grant all privileges
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON db.* TO 'admin'@'%';

-- Create the role and grant READ-ONLY permissions
CREATE ROLE 'user_role';
GRANT SELECT ON db.* TO 'user_role';

-- Create user and assign the role to the user
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
GRANT 'user_role' TO 'user'@'%';
SET DEFAULT ROLE 'user_role' TO 'user'@'%';

-- Aplly the changes
FLUSH PRIVILEGES;
