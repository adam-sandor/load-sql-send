CREATE TABLE `user` (
    `id` int(11) PRIMARY KEY AUTO_INCREMENT,
    `user_id` varchar(10) NOT NULL,
    `first_name` varchar(20) NOT NULL,
    `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

CREATE TABLE `permission` (
    `id` int(11) PRIMARY KEY AUTO_INCREMENT,
    `permission_id` varchar(10) NOT NULL,
    `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

CREATE TABLE `user_permissions` (
    `user_id` varchar(10) NOT NULL,
    `permission_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

INSERT INTO `user` (`user_id`, `first_name`, `last_name`) VALUES
('john', 'John', 'Doe'),
('jane', 'Jane', 'Doe');

INSERT INTO `permission` (`permission_id`, `description`) VALUES
('vets', 'Able to view veterinarians'),
('owners', 'Able to list owners'),
('owners/1', ''),
('owners/2', ''),
('owners/3', ''),
('owners/4', '');

INSERT INTO `user_permissions` (`user_id`, `permission_id`) VALUES
('john', 'vets'),
('john', 'owners'),
('john', 'owners/1'),
('john', 'owners/2'),
('jane', 'vets');
