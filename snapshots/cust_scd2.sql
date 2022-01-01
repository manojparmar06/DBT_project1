{% snapshot orders_snapshot %}

{{
    config(
      target_database='postgres',
      target_schema='DEV',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select 1 id,'jaipur' city,'2021-12-30'::date updated_at

{% endsnapshot %}

