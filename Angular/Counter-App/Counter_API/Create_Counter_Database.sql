CREATE DATABASE counter;

USE counter;

CREATE TABLE `counter_category` (
  `category_id` int(255) NOT NULL PRIMARY KEY,
  `category_name` varchar(255) NOT NULL,
  `category_counter` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;