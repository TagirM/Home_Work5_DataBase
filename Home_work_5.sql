-- Задача 1. Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]

USE vk;
	SELECT DISTINCT firstname
	FROM users
	ORDER BY firstname;
    
CREATE OR REPLACE VIEW new_view AS
	SELECT DISTINCT firstname
	FROM users
	ORDER BY firstname;

    
-- Задача 2. Выведите данные, используя написанное представление [SELECT]

SELECT * FROM new_view;


-- Задача 3. Удалите представление [DROP VIEW]

DROP VIEW new_view;


/* Задача 4. * Сколько новостей (записей в таблице media) у каждого пользователя? Вывести поля: news_count (количество новостей), user_id (номер пользователя), 
user_email (email пользователя). Попробовать решить с помощью CTE или с помощью обычного JOIN.*/

USE vk;
	SELECT 
		user_id,
        COUNT(*) AS news_count,
        u.email AS user_email
	FROM media AS m
    JOIN users AS u ON u.id = m.user_id
    GROUP BY m.user_id;
    

 

