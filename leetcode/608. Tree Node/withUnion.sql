WITH
RootNodes AS (
    SELECT id, "Root" AS type
    FROM Tree
    WHERE p_id IS NULL
),
LeafNodes AS (
    SELECT id, "Leaf"
    FROM Tree
    WHERE p_id IS NOT NULL
        AND id NOT IN (
            SELECT p_id
            FROM Tree
            WHERE p_id IS NOT NULL
        )
),
InnerNodes AS (
    SELECT id, "Inner"
    FROM Tree
    WHERE id NOT IN (
        SELECT id
        FROM RootNodes
    ) AND id NOT IN (
        SELECT id
        FROM LeafNodes
    )
)

SELECT *
FROM RootNodes
UNION
SELECT *
FROM LeafNodes
UNION
SELECT *
FROM InnerNodes;


