with

TD_ACA_STAGING as (
    select * from {{ source('NRJBI_STG', 'TD_ACA_STAGING') }}
),

AVANT_PREMIERE_ACCOLADE as (
    select
        {{ SplitsByIndex('Ligne_Facture', sep='{', ind=1) }} as split_result
    from TD_ACA_STAGING
)

select * from AVANT_PREMIERE_ACCOLADE 

-- TD_ACA_FACTURES_PART_1 as (
--     select
--         {{ SplitsByIndex('split_result', sep=',', ind=2) }}
--     from AVANT_PREMIERE_ACCOLADE
-- )

-- select top 10 * from TD_ACA_FACTURES_PART_1 