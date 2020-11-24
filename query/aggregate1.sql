# ������� id � ������ ����� ���������� � ������ ��������
SELECT id, name FROM celler WHERE name LIKE '��������%';

# ������� ����� � ��������� ��������� �� ������ ����
select id, name, price, MAX(rating) from good group by price;

# ��������� ���������� ��������������, ������� ������� �� �����
select count(distinct producer) from good;

# ������� ��� ����� ������ ������� � ������
select id, address from pick_up_point where address like '%������%';

# ������� ���������� ������ ��� �������� ������������ �� �������� ������
select sum(likes) from review where date between '2018-05-25' and now() and user_id = 1;

# ������� ������� � ������� ������������
select avg(rating) from review where user_id = 1;

# ������� ����� � ����������� ��������� � ������ ���������
select id, name, min(rating) from good group by category;

# ������� ��� ����������� ����� � ����� ������� "��������������"
select id, max(bonus) from discount where finish > now();

# ���������� ���������� ������� ���� �������������
select count(distinct address) from user_address;

# ������� ������� ������� � ������� ��������
select seller, avg(rating) from good group by seller;