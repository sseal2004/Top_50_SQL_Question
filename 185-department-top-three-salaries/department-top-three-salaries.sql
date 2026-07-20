with dummyTable as (
    select d.name Department,e.name Employee,e.salary Salary,dense_rank() over(partition by d.name order by e.salary desc )  ranking from employee e left join department d on e.departmentId = d.id
)
select department , employee,salary from dummyTable where ranking <=3