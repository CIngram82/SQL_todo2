-- Using the todolist database from the previous project,
--  write another set of SQL statements in a file called todo2.sql.
--
-- Write INSERT statements to insert 20 todos into the todos table,
-- with a combination of priorities, created times, and completed times,
-- with not all having a completed time.


INSERT INTO todo (title ,details, priority, created_at, completed_at) Values
('TIY Daily', 'Check newline and do daily', 1, '2017-08-29 09:00:00', NOW()),
('Call mom', '704-865-5309', 9, '1982-06-01 12:00:00',NULL),
('Play Video Games', 'X-com 2 expanction', 5, NOW(), NULL),
('Make a todo list', 'Think up 15 more things', 2 , NOW(),NOW()),
('Random thing', 'Lorem Ipsum', 9, '2017-07-27 12:34:56', NULL),
('Life Lemons', 'Wear shirt that says “Life”. Hand out lemons on street corner.', 9, NOW(), NULL),
('Make the bed', 'Check for cat under sheet first', 4,'2017-08-29 07:23:54', '2017-08-29 08:00:00'),
('wake up sophia', 'turn on light and tell her to get up', 3, '2017-08-29 07:25:54','2017-08-29 07:30:54'),
('wake up sophia again', 'Steal her blanket tell her to get out of bed', 3, '2017-08-29 07:35:54','2017-08-29 07:40:54'),
('wake up sophia for real', ' drag child out of bed kicking and screaming', 3, '2017-08-29 07:42:54', '2017-08-29 07:43:54'),
('stick sophia in car', 'respond to all complaints with "you over slept"', 3, '2017-08-29 07:45:54',NULL),
('drop off sophia', 'use headphones to not hear complaints about being up', 3, '2017-08-29 07:48:54',NULL),
('make lots more items', 'for real thinking of 20 things is a lot', 1, NOW(),NOW()),
('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Aliquam tincidunt mauris eu risus.', 8,NOW(),NULL),
('Vestibulum auctor dapibus neque.','Nunc dignissim risus id metus.', 8,NOW(),NULL),
('Cras ornare tristique elit.','Vivamus vestibulum nulla nec ante.',8,NOW(),NULL),
('Praesent placerat risus quis eros.' ,'Fusce pellentesque suscipit nibh.', 7, NOW(), NOW()),
('Integer vitae libero ac risus egestas placerat.' ,'Vestibulum commodo felis quis tortor.',6,'2004-10-19 10:23:54',NULL),
('Ut aliquam sollicitudin leo.','Cras iaculis ultricies nulla.',5,NOW(),NULL),
('Donec quis dui at dolor tempor interdum.', 'Vivamus molestie gravida turpis.', 4, NOW(),NULL),
('Fusce lobortis lorem at ipsum semper sagittis.' ,'Nam convallis pellentesque nisl.', 3, NOW(),NULL);

-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todo WHERE priority = 3 AND completed_at IS NULL;

-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT * FROM todo WHERE completed_at IS NULL ORDER BY priority;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT * FROM todo WHERE created_at BETWEEN NOW() AND
DATEADD(created_at, -30, GETDATE())
ORDER BY priority;

-- Write a SELECT statement to find the next todo you should work on.
-- This is the todo with the highest priority that was created first.
SELECT * FROM todo
WHERE completed_at IS NULL
ORDER BY priority
LIMIT 1;
-- Was trying to get it to ORDER BY created_at and then ORDER BY priority
--so that for each priority level it would be ordered by created_at but this wasn't working
