use marketplace;

# 1. Найти email-адреса пользователей, которые сделали заказ после 1990 года
select `user`.email from user
right join user_order on `user`.id = user_order.user_id
inner join `order` on `order`.id = user_order.order_id
where `order`.order_date >= '1990-01-01';

# 2. Найти количество человек, которые добавили товар с id = 1 избранные
select count(`user`.id) from `user`
inner join elected on `user`.id = elected.user_id
where elected.good_id = 1;

# 3. Вывести список отзывов на товар с id = 1
select review.description from review
inner join good_review on review.id = good_review.review_id
inner join good on good.id = good_review.good_id
where good.id = 1;

# 4. Вывести имена пользователей, которые добавили в корзину товар с id = 1
select user.name from user
left join basket on user.id = basket.user_id
where basket.good_id = 1;

# 5. Вывести id подборок, в которых есть товар с id = 1
select compilation.id from compilation 
inner join compilation_good on compilation.id = compilation_good.compilation_id
where compilation_good.good_id = 1;