CREATE INDEX good_price ON good(price);
CREATE INDEX good_rating ON good(rating);
CREATE INDEX good_name_and_categ ON good(name, category_id);
CREATE INDEX good_by_discount_and_rating ON good(discount, rating);
CREATE INDEX good_by_cashback_and_rating ON good(cashback, rating);
CREATE INDEX user_order_by_user_id ON user_order(user_id);
CREATE INDEX compilation_by_name ON compilation(name);
CREATE INDEX good_stocks_by_id_and_count ON good_storage(good_id, count);
CREATE INDEX pick_up_point_by_address ON pick_up_point(address);