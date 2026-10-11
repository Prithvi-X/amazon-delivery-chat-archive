# PIN-code Availability Test Evidence

## Why this note exists

The public site links to a saved dataset supplied for the PIN-code availability investigation. The user reports having attempted a broader script-based check across roughly 2,000 PIN codes but did not retain a complete, auditable result set for all attempts. This archive therefore must not be described as containing 2,000 recorded PIN-code results.

## Scope of the saved run

The supplied archive's `results.json` records Amazon ASIN `B08K4L9MHM`. The recorded listing title is an LG 27-inch 4K monitor, model 27UL550 (White), offered by Clicktech Retail Private Ltd, with a captured price of ₹8,030. The recorded run date is 11 October 2026.

This is **not** the same listing as ASIN `B07PGL2WVS`, the LG 27UL500-W referenced separately in the article draft. Do not use this dataset as direct evidence about that other ASIN.

## Counts in the saved run

- Total checks: 103
- `NOT_DELIVERABLE`: 68
- `CAPTCHA`: 15
- `ERROR`: 19
- `UNKNOWN`: 1
- `DELIVERABLE`: 0
- `LOGIN_REQUIRED`: 0

The 68 `NOT_DELIVERABLE` entries are the only results that explicitly returned that classification. CAPTCHA challenges, errors, and unknown responses are inconclusive. In particular, the 19 error entries and 15 CAPTCHA entries do not prove non-deliverability. Zero `DELIVERABLE` entries in this run must not be described as proof that the product was undeliverable to every PIN code in India.

## Files included in the downloadable archive

- `results.csv`: row-level recorded results
- `results.json`: structured row-level results and product metadata
- `combined_summary.json`: aggregate counts and status lists
- `not_deliverable_pincodes.txt`: PIN codes classified as not deliverable by this run
- `deliverable_pincodes.txt`: an empty output file in the supplied dataset
- Other location-specific summary JSON files from the supplied ZIP

## Limitations

1. This is one saved run, not a nationwide inventory or serviceability audit.
2. Listing availability, seller, stock and prices can change over time.
3. CAPTCHA, site errors and unknown results limit the conclusions that can be drawn.
4. No screenshots were included in the row-level records inspected for this summary.
5. PIN-code testing results depend on the exact ASIN, variant, seller, date and method used.

The downloadable archive is repackaged as TAR.GZ for web distribution. The contents of the uploaded ZIP are preserved, but the outer archive format differs from the original.
