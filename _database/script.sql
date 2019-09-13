CREATE TABLE tb_users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    email VARCHAR(256) NOT NULL,
    password VARCHAR(512) NOT NULL,
    photo VARCHAR(512)
);

INSERT INTO tb_users(name, email, password) VALUES('Felipe Riboldi', 'feliperiboldimarques@gmail.com', '123');