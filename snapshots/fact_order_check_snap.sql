{% snapshot order_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='ORDER_KEY',
          check_cols=['STATUS_CODE'],
        )
    }}

    select * from  {{ref('fact_orders')}}

{% endsnapshot %} 

