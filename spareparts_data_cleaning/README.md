# Inventory Data Cleaning & Deduplication

## Overview

A practical SQL data-cleaning project focused on identifying and controlling duplicate spare-parts inventory records.

The objective was to create a reliable clean dataset while preserving the original data and maintaining a clear audit trail of records excluded during the cleaning process.

## Business Problem

Duplicate inventory records can affect stock reporting, analysis, and data reliability.

Instead of deleting duplicates directly from the source data, this project applies a controlled approach that:

- Identifies exact duplicates
- Preserves the original dataset
- Creates a clean dataset
- Separates excess duplicate records for review
- Reconciles the results back to the original record count

## Dataset

The source table contained **1,065 inventory records** with the following fields:

| Field | Description |
|---|---|
| `partNumber` | Spare-part identification number |
| `description` | Spare-part description |
| `serialNo` | Serial number where available |
| `quantity` | Recorded quantity |
| `boxNumber` | Box/location reference |

## Duplicate Definition

A record was considered an exact duplicate only when all five fields matched:

- `partNumber`
- `description`
- `serialNo`
- `quantity`
- `boxNumber`

This ensures that records were not incorrectly classified as duplicates based on a single field.

## Data Cleaning Process

```text
Source Data
    ↓
Data Exploration
    ↓
Exact Duplicate Analysis
    ↓
Duplicate Reference Table
    ↓
Clean Dataset
    ↓
Excess Duplicate Isolation
    ↓
Validation & Reconciliation
