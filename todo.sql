create table todo (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT 1,
    created_at  TIMESTAMP WITHOUT TIME ZONE NULL,
    completed_at TIMESTAMP WITHOUT TIME ZONE NULL
);

insert into todo (title, priority, created_at, completed_at)
values ('Run for your life from Shia Labeouf', 1, '2017-08-28 13:23:35', '2017-08-28 14:41:10'),
('Wrestling a knife from Shia Labeouf', 2, '2017-08-29 21:23:05', null),
('Strangling superstar Shia Labeouf', 3, '2017-09-01 12:29:13', null),
('Stab it in his kidney', 4, '2017-09-01 12:20:19', null),
('Stop blood oozing from stump leg', 5, '2017-09-01 12:30:39', null);

select * from todo where completed_at = null;

select * from todo where priority > 1;

update todo SET completed_at = '2017-09-01 01:13:01' WHERE id = 2; 

delete from todo where completed_at IS NOT NULL;
