/* Задача 1
 * Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 */




use vk;

select count(from_user_id) as `msgs sent`, count(to_user_id) as `msgs get`,from_user_id from messages 
where (to_user_id = 1 or from_user_id = 1) and (
(to_user_id in(SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved'))
or
(from_user_id in (SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved'))
)
order by `msgs sent`  