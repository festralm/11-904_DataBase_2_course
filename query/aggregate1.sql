# выбрать id и полные имена заказчиков с именем Григорий
SELECT id, name FROM celler WHERE name LIKE 'Григорий%';

# выбрать товар с наилучшим рейтингом по каждой цене
select id, name, price, MAX(rating) from good group by price;

# сосчитать количество производителей, имеющих позиции на сайте
select count(distinct producer) from good;

# Выбрать все точки выдачи товаров в Казани
select id, address from pick_up_point where address like '%Казань%';

# выбрать количество лайков под отзывами пользователя за заданный период
select sum(likes) from review where date between '2018-05-25' and now() and user_id = 1;

# средний рейтинг у отзывов пользователя
select avg(rating) from review where user_id = 1;

# выбрать товар с минимальным рейтингом в каждой категории
select id, name, min(rating) from good group by category;

# выбрать еще действующую акцию с самым большим "примемуществом"
select id, max(bonus) from discount where finish > now();

# количество уникальных адресов всех пользователей
select count(distinct address) from user_address;

# средний рейтинг товаров у каждого продавца
select seller, avg(rating) from good group by seller;