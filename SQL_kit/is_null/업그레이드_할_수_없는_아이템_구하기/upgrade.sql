WITH UPGRADABLE (ITEM_ID) AS
(
    SELECT PARENT_ITEM_ID
        FROM ITEM_TREE
        WHERE PARENT_ITEM_ID IS NOT NULL
)

SELECT INFO.ITEM_ID, INFO.ITEM_NAME, INFO.RARITY
    FROM ITEM_INFO AS INFO
    WHERE INFO.ITEM_ID NOT IN (
        SELECT ITEM_ID
            FROM UPGRADABLE
    )
    ORDER BY ITEM_ID DESC;
