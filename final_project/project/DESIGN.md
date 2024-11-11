# Design Document

By Jhonas Leal

Video overview: https://youtu.be/LIaeVipJ9oA?si=serOIoiwGprJ3nA8

## Scope

The restaurant database has the goal of facilitating the management of the restaurant's costs. As such the database scope includes:

Employes, roles, and how much is paid.
Menu, how much we sell each dish for.
Sold, what dish was sold at a given day and time.
total_bill, how much each customer pays.
work_time, how many hours each employee has worked.

Out of scope are: reservations, client reviews, and other non-financial attributes.


## Functional Requirements

In this database, the user should be able to:

Identify what are the best and worst-selling dishes.
Who is working over and under houres.
How much was the overall gain and the labor cost.

Is beyond the scope of this database to be able to receive and respond to feedback.

## Representation

### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
* What attributes will those entities have?
* Why did you choose the types you did?

#### menu

- `id`, which specifies the unique ID for each dish as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
- `dish`, which specifies the dish name as `TEXT`, given `TEXT` is appropriate for name fields.
- `type`, which specifies the type of dish. `TEXT` is used for the same reason as `dish`.
- `price`, which specifies how much the dish cost. we uses `NUMERIC` so that we are able to both use decimal values and perform operations with them.

All columns in the `menu` table are required and hence should have the `NOT NULL` constraint applied. No other constraints are necessary. Why did you choose the constraints you did?

#### `sold`

- `bill_number` which is an `INTEGER` specifying the number of the bill to where the dish was sold.
- `dish_id` wich is the `id` of the dish. This column thus has the `FOREIGN KEY` constraint applied, referencing the `id` column in the `menu` table to ensure data integrity.
- `date` which specifies the date and time when the bill was sold.

#### employes

- `id`, which specifies the unique ID for each employee as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
- `name` which specifies the name of each employee as `TEXT`, given `TEXT` is appropriate for name fields.
- `hour_pay` which specifies how much the employee is paid by the houre as `REAL`, so that we can represent decimal number.
- `role` which specifies what is the role of the employee, `TEXT` us used for the same reason as `name`.

#### work_time

- `employe_id`, which is the ID of the employe. This column thus has the `FOREIGN KEY` constraint applied, referencing the `id` column in the `employes` table to ensure data integrity.
- `day` which specifies the day that the given employee worked, `TEXT` us used so that we can represent carractors like `/`.
- `start` which specifies the time that each employee start working, `TEXT` is used so that we can represent carractors like `:`.
- `end` which specifies the time that each employee finished working, `TEXT` is used for the same reason as `start`.

### Relationships

![[me/jhonas/Pictures/images/restaurant_relations_db.png]]

## Optimizations

- The view `total_bill` was created to facilitate the view of the total amount consumed by the client.

## Limitations

- The current schema doesn't take in consideration the cost of the ingredients for each dish.
