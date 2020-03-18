 /* Задача 2
  * Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..
 */
 
 use vk;
 
select count(*) from likes
where user_id in(select user_id from profiles where timestampdiff(year,birthday,now()) < 10)

