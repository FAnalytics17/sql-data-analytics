-- Inventory Data Cleaning & Deduplication
-- Step 4: Create and Validate Clean Dataset

USE rhl_spareparts;

-- Create clean dataset containing one instance
-- of every unique record.
CREATE TABLE spare_parts_clean AS
SELECT DISTINCT
partNumber,
description,
serialNo,
quantity,
boxNumber
FROM spare_parts;

-- Check clean record count
SELECT COUNT(*) AS clean_records
FROM spare_parts_clean;

-- Validate that no exact duplicates remain
SELECT
partNumber,
description,
serialNo,
quantity,
boxNumber,
COUNT(*) AS duplicate_count
FROM spare_parts_clean
GROUP BY
partNumber,
description,
serialNo,
quantity,
boxNumber
HAVING COUNT(*) > 1;

-- Final reconciliation
SELECT
(SELECT COUNT(*)
FROM spare_parts) AS original_records,

```
(SELECT COUNT(*)
 FROM spare_parts_clean) AS clean_records,

(SELECT COUNT(*)
 FROM spare_parts)
-
(SELECT COUNT(*)
 FROM spare_parts_clean) AS excess_duplicate_records;
```
