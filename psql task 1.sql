1.dvdrental=# select * from actor limit 10;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
        7 | Grace      | Mostel       | 2013-05-26 14:47:57.62
        8 | Matthew    | Johansson    | 2013-05-26 14:47:57.62
        9 | Joe        | Swank        | 2013-05-26 14:47:57.62
       10 | Christian  | Gable        | 2013-05-26 14:47:57.62
(10 rows

2.dvdrental=# select * from actor offset 180;
 actor_id | first_name |  last_name  |      last_update
----------+------------+-------------+------------------------
      181 | Matthew    | Carrey      | 2013-05-26 14:47:57.62
      182 | Debbie     | Akroyd      | 2013-05-26 14:47:57.62
      183 | Russell    | Close       | 2013-05-26 14:47:57.62
      184 | Humphrey   | Garland     | 2013-05-26 14:47:57.62
      185 | Michael    | Bolger      | 2013-05-26 14:47:57.62
      186 | Julia      | Zellweger   | 2013-05-26 14:47:57.62
      187 | Renee      | Ball        | 2013-05-26 14:47:57.62
      188 | Rock       | Dukakis     | 2013-05-26 14:47:57.62
      189 | Cuba       | Birch       | 2013-05-26 14:47:57.62
      190 | Audrey     | Bailey      | 2013-05-26 14:47:57.62
      191 | Gregory    | Gooding     | 2013-05-26 14:47:57.62
      192 | John       | Suvari      | 2013-05-26 14:47:57.62
      193 | Burt       | Temple      | 2013-05-26 14:47:57.62
      194 | Meryl      | Allen       | 2013-05-26 14:47:57.62
      195 | Jayne      | Silverstone | 2013-05-26 14:47:57.62
      196 | Bela       | Walken      | 2013-05-26 14:47:57.62
      197 | Reese      | West        | 2013-05-26 14:47:57.62
      198 | Mary       | Keitel      | 2013-05-26 14:47:57.62
      199 | Julia      | Fawcett     | 2013-05-26 14:47:57.62
      200 | Thora      | Temple      | 2013-05-26 14:47:57.62
(20 rows)

--------------------------------------------Where Clause-------------------------------------------------

3.dvdrental=# select *  from actor where first_name = 'Matthew';
 actor_id | first_name | last_name |      last_update
----------+------------+-----------+------------------------
        8 | Matthew    | Johansson | 2013-05-26 14:47:57.62
      103 | Matthew    | Leigh     | 2013-05-26 14:47:57.62
      181 | Matthew    | Carrey    | 2013-05-26 14:47:57.62
(3 rows)

4.dvdrental=# select *  from actor where first_name != 'Matthew' limit 10;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
        7 | Grace      | Mostel       | 2013-05-26 14:47:57.62
        9 | Joe        | Swank        | 2013-05-26 14:47:57.62
       10 | Christian  | Gable        | 2013-05-26 14:47:57.62
       11 | Zero       | Cage         | 2013-05-26 14:47:57.62
(10 rows)

5.dvdrental=# select *  from actor where first_name <> 'Matthew' limit 10;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
        7 | Grace      | Mostel       | 2013-05-26 14:47:57.62
        9 | Joe        | Swank        | 2013-05-26 14:47:57.62
       10 | Christian  | Gable        | 2013-05-26 14:47:57.62
       11 | Zero       | Cage         | 2013-05-26 14:47:57.62
(10 rows)

6.dvdrental=# select * from payment where rental_id <= 3000 limit 10;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      17503 |         341 |        2 |      1520 |   7.99 | 2007-02-15 22:25:46.996577
      17504 |         341 |        1 |      1778 |   1.99 | 2007-02-16 17:23:14.996577
      17505 |         341 |        1 |      1849 |   7.99 | 2007-02-16 22:41:45.996577
      17506 |         341 |        2 |      2829 |   2.99 | 2007-02-19 19:39:56.996577
      17509 |         342 |        2 |      2190 |   5.99 | 2007-02-17 23:58:17.996577
      17510 |         342 |        1 |      2914 |   5.99 | 2007-02-20 02:11:44.996577
      17512 |         343 |        2 |      1547 |   4.99 | 2007-02-16 00:10:50.996577
      17513 |         343 |        1 |      1564 |   6.99 | 2007-02-16 01:15:33.996577
      17514 |         343 |        2 |      1879 |   0.99 | 2007-02-17 01:26:00.996577
      17515 |         343 |        2 |      1922 |   0.99 | 2007-02-17 04:32:51.996577
(10 rows)

7.dvdrental=# select * from payment where rental_id >= 3000 limit 10;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      17507 |         341 |        2 |      3130 |   7.99 | 2007-02-20 17:31:48.996577
      17508 |         341 |        1 |      3382 |   5.99 | 2007-02-21 12:33:49.996577
      17511 |         342 |        1 |      3081 |   2.99 | 2007-02-20 13:57:39.996577
      17518 |         343 |        1 |      3407 |   0.99 | 2007-02-21 14:42:28.996577
      17527 |         346 |        2 |      3372 |   2.99 | 2007-02-21 12:02:45.996577
      17528 |         346 |        1 |      3421 |   2.99 | 2007-02-21 15:51:24.996577
      17531 |         347 |        1 |      3026 |   4.99 | 2007-02-20 10:16:26.996577
      17532 |         347 |        1 |      3092 |   8.99 | 2007-02-20 14:33:08.996577
      17533 |         347 |        1 |      3326 |   7.99 | 2007-02-21 07:33:16.996577
      17540 |         349 |        1 |      3067 |   8.99 | 2007-02-20 12:27:47.996577
(10 rows)

8.dvdrental=# select * from payment where customer_id > 300 limit 10;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      17503 |         341 |        2 |      1520 |   7.99 | 2007-02-15 22:25:46.996577
      17504 |         341 |        1 |      1778 |   1.99 | 2007-02-16 17:23:14.996577
      17505 |         341 |        1 |      1849 |   7.99 | 2007-02-16 22:41:45.996577
      17506 |         341 |        2 |      2829 |   2.99 | 2007-02-19 19:39:56.996577
      17507 |         341 |        2 |      3130 |   7.99 | 2007-02-20 17:31:48.996577
      17508 |         341 |        1 |      3382 |   5.99 | 2007-02-21 12:33:49.996577
      17509 |         342 |        2 |      2190 |   5.99 | 2007-02-17 23:58:17.996577
      17510 |         342 |        1 |      2914 |   5.99 | 2007-02-20 02:11:44.996577
      17511 |         342 |        1 |      3081 |   2.99 | 2007-02-20 13:57:39.996577
      17512 |         343 |        2 |      1547 |   4.99 | 2007-02-16 00:10:50.996577
(10 rows)


9.dvdrental=# select * from payment where customer_id < 300 limit 10;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      18468 |         202 |        1 |      1474 |   2.99 | 2007-02-15 19:24:08.996577
      18469 |         202 |        1 |      1535 |   4.99 | 2007-02-15 23:20:30.996577
      18470 |         202 |        1 |      3008 |   0.99 | 2007-02-20 08:51:51.996577
      18471 |         202 |        2 |      3148 |   0.99 | 2007-02-20 18:55:44.996577
      18472 |         203 |        1 |      1217 |   4.99 | 2007-02-15 01:52:40.996577
      18473 |         203 |        1 |      1715 |   2.99 | 2007-02-16 13:05:38.996577
      18474 |         203 |        2 |      2939 |   7.99 | 2007-02-20 03:46:42.996577
      18475 |         203 |        2 |      3406 |   2.99 | 2007-02-21 14:28:44.996577
      18476 |         204 |        1 |      1321 |   2.99 | 2007-02-15 09:17:43.996577
      18477 |         204 |        1 |      1616 |   7.99 | 2007-02-16 05:33:18.996577
(10 rows)

---------------------------------------------------------------------------------------------------

10.dvdrental=# select * from actor where first_name ='Val' and last_name='Bolger';
 actor_id | first_name | last_name |      last_update
----------+------------+-----------+------------------------
       37 | Val        | Bolger    | 2013-05-26 14:47:57.62
(1 row)

11.dvdrental=# select * from actor where first_name ='Val' or last_name='Kilmer';
 actor_id | first_name | last_name |      last_update
----------+------------+-----------+------------------------
       23 | Sandra     | Kilmer    | 2013-05-26 14:47:57.62
       37 | Val        | Bolger    | 2013-05-26 14:47:57.62
       45 | Reese      | Kilmer    | 2013-05-26 14:47:57.62
       55 | Fay        | Kilmer    | 2013-05-26 14:47:57.62
      153 | Minnie     | Kilmer    | 2013-05-26 14:47:57.62
      162 | Oprah      | Kilmer    | 2013-05-26 14:47:57.62
(6 rows)

12.dvdrental=# select * from actor where first_name in('Val','Nick','Anne');
 actor_id | first_name | last_name |      last_update
----------+------------+-----------+------------------------
        2 | Nick       | Wahlberg  | 2013-05-26 14:47:57.62
       37 | Val        | Bolger    | 2013-05-26 14:47:57.62
       44 | Nick       | Stallone  | 2013-05-26 14:47:57.62
       49 | Anne       | Cronyn    | 2013-05-26 14:47:57.62
      166 | Nick       | Degeneres | 2013-05-26 14:47:57.62
(5 rows)


13.dvdrental=# select * from actor where first_name not in('Val','Nick','Anne') limit 5;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
(5 rows)


14.dvdrental=# select * from payment where rental_id between 2780 and 3000 limit 5;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      17506 |         341 |        2 |      2829 |   2.99 | 2007-02-19 19:39:56.996577
      17510 |         342 |        1 |      2914 |   5.99 | 2007-02-20 02:11:44.996577
      17517 |         343 |        1 |      2980 |   8.99 | 2007-02-20 07:03:29.996577
      17539 |         349 |        2 |      2987 |   6.99 | 2007-02-20 07:24:16.996577
      17582 |         360 |        2 |      2780 |   6.99 | 2007-02-19 16:47:59.996577
(5 rows)


15.dvdrental=# select * from payment where rental_id not between 2780 and 3000 limit 5;
 payment_id | customer_id | staff_id | rental_id | amount |        payment_date
------------+-------------+----------+-----------+--------+----------------------------
      17503 |         341 |        2 |      1520 |   7.99 | 2007-02-15 22:25:46.996577
      17504 |         341 |        1 |      1778 |   1.99 | 2007-02-16 17:23:14.996577
      17505 |         341 |        1 |      1849 |   7.99 | 2007-02-16 22:41:45.996577
      17507 |         341 |        2 |      3130 |   7.99 | 2007-02-20 17:31:48.996577
      17508 |         341 |        1 |      3382 |   5.99 | 2007-02-21 12:33:49.996577
(5 rows)



16.dvdrental=# select * from actor where first_name like '%a'limit 5;
 actor_id | first_name | last_name |      last_update
----------+------------+-----------+------------------------
       13 | Uma        | Wood      | 2013-05-26 14:47:57.62
       15 | Cuba       | Olivier   | 2013-05-26 14:47:57.62
       23 | Sandra     | Kilmer    | 2013-05-26 14:47:57.62
       27 | Julia      | Mcqueen   | 2013-05-26 14:47:57.62
       30 | Sandra     | Peck      | 2013-05-26 14:47:57.62
(5 rows)


17.dvdrental=# select * from actor where first_name not like '%e%' limit 5;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
       10 | Christian  | Gable        | 2013-05-26 14:47:57.62
       12 | Karl       | Berry        | 2013-05-26 14:47:57.62
(5 rows)

18.dvdrental=# select * from actor where first_name is null;
 actor_id | first_name | last_name | last_update
----------+------------+-----------+-------------
(0 rows)


19.dvdrental=# select * from actor where first_name is not null limit 6;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
(6 rows)

20.dvdrental=# select * from actor where first_name not Ilike '%a%' limit 10;
 actor_id | first_name |  last_name   |      last_update
----------+------------+--------------+------------------------
        1 | Penelope   | Guiness      | 2013-05-26 14:47:57.62
        2 | Nick       | Wahlberg     | 2013-05-26 14:47:57.62
        3 | Ed         | Chase        | 2013-05-26 14:47:57.62
        4 | Jennifer   | Davis        | 2013-05-26 14:47:57.62
        5 | Johnny     | Lollobrigida | 2013-05-26 14:47:57.62
        6 | Bette      | Nicholson    | 2013-05-26 14:47:57.62
        9 | Joe        | Swank        | 2013-05-26 14:47:57.62
       11 | Zero       | Cage         | 2013-05-26 14:47:57.62
       14 | Vivien     | Bergen       | 2013-05-26 14:47:57.62
       16 | Fred       | Costner      | 2013-05-26 14:47:57.62
(10 rows)








































