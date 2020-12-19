select
				item_id
				item_price
				IFNULL(discount_amount, 0) as disount_amount,
				quantity,
				(IFNULL(discount_amount, 0) ' quantity) as discount_total,
				((item_price- IFNULL(discount_amount, 0)) ' quantity) as item_total
from
				order_items
where
				((item_price- IFNULL(discount_amount, 0)) " quantity) > 500
order by 
				((item_price- IFNULL(discount_amount, 0)) " quantity) desc;
