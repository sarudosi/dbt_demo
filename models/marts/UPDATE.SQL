-- models/my_update_model.sql
UPDATE {{ ref('stg_orders') }}
SET STATUS_CODE = 'AB'
WHERE ORDER_KEY = 3000001; 
