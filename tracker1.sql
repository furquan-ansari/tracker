CREATE TABLE tbl_departments (
  D_id int(11) NOT NULL,
  D_name varchar(255) NOT NULL,
  P_id int(11) NOT NULL,
  D_start_date datetime
);

select * from tbl_departments;
drop table tbl_departments;
truncate table tbl_departments;

INSERT INTO tbl_departments (D_id, D_name, P_id, D_start_date) VALUES
(1, 'Match Move', 1, '2024-03-01'),
(2, 'Layout', 1, '2024-03-01'),
(3, 'ROTO', 1, '2024-03-01'),
(4, 'Clean-up', 1, '2024-03-01'),
(5, 'Matte-paint', 1, '2024-03-01'),
(6, 'Motion Graphics', 1, '2024-03-01'),
(7, 'Match Move', 2, '2024-03-01'),
(8, 'ROTO', 2, '2024-03-01'),
(9, 'Layout', 2, '2024-03-01'),
(10, 'Clean-up', 2, '2024-03-01'),
(11, 'Motion Graphics', 2, '2024-03-01'),
(12, 'Render', 2, '2024-03-01'),
(13, 'FX', 1, '2024-03-01'),
(14, 'Render', 1, '2024-03-01'),
(15, 'Lightining', 1, '2024-03-01'),
(16, 'Compositing', 1, '2024-03-01'),
(17, 'Match Move', 3, '2024-03-01'),
(18, 'Layout', 3, '2024-03-01'),
(19, 'ROTO', 3, '2024-03-01'),
(20, 'Motion Graphics', 3, '2024-03-01'),
(21, 'Matte-paint', 3, '2024-03-01'),
(22, 'Lightining', 3, '2024-03-01');


CREATE TABLE tbl_newproject (
  P_id int(11) NOT NULL,
  P_name varchar(255) NOT NULL,
  P_description varchar(300) NOT NULL,
  P_startDate date NOT NULL,
  P_departments varchar(300) NOT NULL,
  P_status tinyint(1) NOT NULL,
  P_created_at datetime NOT NULL,
  P_updated_at datetime NOT NULL
);

select * from tbl_newproject;


INSERT INTO tbl_newproject (P_id, P_name, P_description, P_startDate, P_departments, P_status, P_created_at, P_updated_at) VALUES
(1, 'Animal', 'Animal is a 2023 Hindi action, crime, and drama film about a hardened son who returns home to take revenge on those who threaten his father\'s life.', '2023-02-08', 'Match Move, Layout, ROTO, Clean-up, Matte-paint, Motion Graphics, FX, Render, Lightining, Compositing', 0, '2023-02-08', '2023-02-08'),
(2, 'Salaar', 'The film explores themes of friendship, determination, and brotherhood, and is set in a dystopian world with high-stakes action and political drama. Some say it\'s an unabashed celebration of Prabhas\' stardom, while others say it\'s a riveting watch for those who enjoy grand narratives.', '2023-01-11', 'Match Move, ROTO, Layout, Clean-up, Motion Graphics, Render', 0, '2023-02-08', '2023-02-08'),
(3, 'KGF', 'KGF stands for Kolar Gold Fields, a gold mine in the Kolar district of Karnataka, India, about 90 kilometers from Bengaluru.', '2020-02-04', 'Match Move, Layout, ROTO, Motion Graphics, Matte-paint, Lightining', 0, '2023-02-08', '2023-02-08');



CREATE TABLE tracker_login (
  login_id int(11) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  username varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  role varchar(100) NOT NULL,
  status tinyint(1) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL
);


select * from tracker_login;

INSERT INTO `tracker_login` (`login_id`, `firstName`, `lastName`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad', 'Karadiya', 'mohammad@gmail.com', '1234', 'admin', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43'),
(2, 'Asad', 'Shaikh', 'asad@gmail.com', '1234', 'admin', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43'),
(3, 'Ahmed', 'Mansuri', 'ahmed@gmail.com', '1234', 'Production', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43');


