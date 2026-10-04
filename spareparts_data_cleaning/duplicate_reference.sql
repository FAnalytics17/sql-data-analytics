-- Inventory Data Cleaning & Deduplication
-- Step 3: Preserve Duplicate Records for Reference
---------------------------------------------------

-- The original source table is not modified.
-- All records belonging to duplicate groups are copied
-- into a separate reference table.

USE rhl_spareparts;

CREATE TABLE spare_parts_duplicates AS
SELECT sp.*
FROM spare_parts AS sp
JOIN (
SELECT
partNumber,
description,
serialNo,
quantity,
boxNumber
FROM spare_parts
GROUP BY
partNumber,
description,
serialNo,
quantity,
boxNumber
HAVING COUNT(*) > 1
) AS d
ON sp.partNumber <=> d.partNumber
AND sp.description <=> d.description
AND sp.serialNo <=> d.serialNo
AND sp.quantity <=> d.quantity
AND sp.boxNumber <=> d.boxNumber;

-- Validate duplicate reference table
SELECT COUNT(*) AS duplicate_reference_records
FROM spare_parts_duplicates;
