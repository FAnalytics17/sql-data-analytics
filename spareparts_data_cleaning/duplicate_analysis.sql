SELECT
    partNo,
    partDescription,
    serialNo,
    quantity,
    boxNo,
    COUNT(*) AS duplicate_count
FROM rhl_spareparts.spare_parts
GROUP BY
    partNo,
    partDescription,
    serialNo,
    quantity,
    boxNo
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;
