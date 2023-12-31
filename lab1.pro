﻿/* 
ФИО: исса гадир али
Группа: НФИбд-01-21
Студ Бил: 1032218267
Номер Варианта: 0
*/


/*Товар (id, название, категория,цена)*/
item(1,tv,electronics,40000).
item(2,microwave,electronics,15000).
item(3,refrigerator,electronics,55000).
item(4,iron,electronics,10000).
item(5,rug,furniture,19000).
item(6,couch,furniture,60000).
item(7,wardrobe,furniture,20000).
item(8,cooker,kitchen,5000).
item(9,sink,kitchen,15000).
item(10,dishes,kitchen,9000).
/*Клиент (имя, телефон)*/
client(joe,89987645223).
client(issa,89944336789).
client(sara,89997658762).
/*Покупка (телефон клиента, idтовара, количество, дата)*/
purchase(89987645223,1,9,"14.01.2023").
purchase(89987645223,2,8,"11.04.2023").
purchase(89944336789,3,10,"15.01.2023").
purchase(89944336789,2,3,"28.02.2023").
purchase(89997658762,6,7,"26.02.2023").
purchase(89997658762,9,10,"10.06.2023").
/*Rules*/

/*Постоянный (клиент)*/
constantclient(X):-
        client(X,_), X=joe.
constantclient(X):-
        client(X,_), X=issa.
constantclient(Y):-
        client(_,Y), Y=89987645223.
constantclient(Y):-
        client(_,Y), Y=89944336789.
        
/*Сумма покупок на определенный день*/
sum(X):-
        purchase(_,_,_,X), X="14.01.2023".
sum(X):-
        purchase(_,_,_,X), X="11.04.2023".
sum(X):-
        purchase(_,_,_,X), X="15.01.2023".
sum(X):-
        purchase(_,_,_,X), X="28.02.2023".
sum(X):-
        purchase(_,_,_,X), X="26.02.2023".
sum(X):-
        purchase(_,_,_,X), X="10.06.2023".

/*Статус (клиента) [в зависимости от общей потраченной суммы]*/
status(X):-
        client(X,_), X=issa.
status(X):-
        client(X,_), X=joe.

