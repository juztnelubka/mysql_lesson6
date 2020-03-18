 /* Задача 3
  * Определить кто больше поставил лайков (всего) - мужчины или женщины?

 */
 
 use vk;
 
select count(user_id) as `Female likes` from likes 
where user_id in(select user_id from profiles where gender = 'f'); 

select count(user_id) as `Male likes` from likes 
where user_id in(select user_id from profiles where gender = 'm');
