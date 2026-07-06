with order_rank as (
    select 
    delivery_id, 
    customer_id ,
    case 
        when order_date = customer_pref_delivery_date 
        then "immediate"
        else "scheduled"
    end as order_type,
    dense_rank() over (
        partition by customer_id order by delivery_id asc) as ranked_order
    from Delivery
)
select
    round(sum(
        case when order_type = "immediate" then 1
        else 0
        end
    ) * 100.00/count(order_type) , 2) as immdiate_percentage 
    
    from order_rank
    where ranked_order = 1
;
 
