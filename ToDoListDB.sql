create database todo_list

drop database todo_list

use todo_list

create table tasks(
	idTask int IDENTITY(1,1) not null primary key,
	title nvarchar(255) not null,
	description text,
	due_date datetime not null,
	isCompleted bit not null
);

create table categories(
	idCategory int IDENTITY(1,1) not null primary key,
	category_name nvarchar(255) not null
);

alter table tasks add idCategory int
alter table tasks add foreign key (idCategory) references dbo.categories(idCategory) on delete no action on update cascade


select * from categories
select * from tasks

INSERT INTO categories (category_name)
VALUES
    ('Work Tasks'),
    ('Personal Tasks'),
    ('Education Tasks');

INSERT INTO tasks (title, description, due_date, isCompleted, idCategory)
VALUES 
    ('Finish creating button', 'Create button for cart', '2023-04-15', 0, 1),
    ('Go to shop', 'Buy product for the week', '2023-04-03', 0, 2),
    ('Pass test at netacad', 'Go to netacad', '2023-04-10', 0, 3);

select * from categories
select * from tasks
select * from tasks where isCompleted = 1;
select * from tasks where idCategory = 2;
select * from categories LEFT JOIN tasks ON categories.idCategory = tasks.idCategory
select * from tasks RIGHT JOIN categories ON categories.idCategory = tasks.idCategory
select * from tasks JOIN categories ON categories.idCategory = tasks.idCategory
