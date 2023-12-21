CREATE USER 'monitor'@'%' IDENTIFIED BY 'hello';
GRANT SELECT on sys.* to 'monitor'@'%';
CREATE USER 'playground'@'%' IDENTIFIED BY 'hello';
GRANT ALL PRIVILEGES on playground.* to 'playground'@'%';
FLUSH PRIVILEGES;
