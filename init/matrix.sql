-- 创建matrix用户并设置密码
CREATE USER matrix WITH PASSWORD 'zR7Kd5AKb3BE7Y5k'; -- 记得要改成你的数据库密码，需要和.env文件中设置的相同

-- 创建使用C排序规则的matrix数据库
CREATE DATABASE matrix
    WITH 
    OWNER = matrix
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TEMPLATE = template0;  -- 使用纯净模板，避免继承默认设置

-- 授予所有权限
GRANT ALL PRIVILEGES ON DATABASE matrix TO matrix;