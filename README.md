# Amazon Customer Service Chat Archive

A static, searchable chat interface for a saved Amazon customer-service conversation. It is designed to work on GitHub Pages without a build step.

## Files

- `index.html`: the interactive readable conversation page.
- `Chat with Amazon Customer Service.zip`: the original uploaded archive, copied unchanged and offered as a download from the page.
- `amazon_customer_service_transcript.txt`: plain-text transcript.
- `publish.ps1`: Windows PowerShell helper that initializes Git and pushes the complete folder, including the ZIP, to a new GitHub repository.

## Publish with GitHub Pages

1. Create a new **public** repository on GitHub, for example `amazon-delivery-chat-archive`. Do not initialize it with a README because this folder already contains one.
2. Extract this folder. On Windows, right-click `publish.ps1` and choose **Run with PowerShell**, or open PowerShell in this folder and run `Set-ExecutionPolicy -Scope Process Bypass` followed by `./publish.ps1`. Paste your new repository HTTPS URL when prompted.
3. Alternatively, open PowerShell in the extracted folder and run these commands, replacing `YOUR-USERNAME` with your GitHub username:

   ```bash
   git init
   git add .
   git commit -m "Publish readable customer-service chat archive"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/amazon-delivery-chat-archive.git
   git push -u origin main
   ```

4. On GitHub, open the repository's **Settings → Pages**.
5. Under **Build and deployment**, choose **Deploy from a branch**, select `main` and `/(root)`, then save.
6. Wait for the Pages deployment to complete. The public page URL will be:
   `https://YOUR-USERNAME.github.io/amazon-delivery-chat-archive/`
7. Open the live URL in a private/incognito browser window to verify the page and original ZIP download work.
8. Add that live URL to your X Article or post. Example wording:
   `Readable chat transcript and original export: https://YOUR-USERNAME.github.io/amazon-delivery-chat-archive/`

## Important publication note

This repository is intended for public hosting. Anyone can view or download every committed file, including the original ZIP. Before pushing, inspect the source archive for order IDs, email addresses, phone numbers, addresses, payment details, or other information you do not intend to publish. The chat also contains personal statements about health. If anything should remain private, redact it from the public copy first and keep the untouched original privately for your records.

The readable page includes a context note supplied by the uploader: the Amazon account belongs to the uploader's sister, and “Ravindra” is the uploader's father's name. The original chat export remains unchanged in the source ZIP.


## PIN-code availability evidence

- `pincode-test-dataset.tar.gz`: all files extracted from the uploaded `Kanadukathan_summary.zip`, repackaged for web distribution.
- `pincode-evidence-notes.md`: scope, counts, interpretation and limitations.

The saved run contains 103 checks, not a complete record of the broader approximately 2,000-PIN-code attempt. It reports 68 `NOT_DELIVERABLE`, 15 `CAPTCHA`, 19 `ERROR`, one `UNKNOWN`, and zero `DELIVERABLE`. CAPTCHA, errors and unknown results are inconclusive. The dataset is for ASIN `B08K4L9MHM` (LG 27UL550), not the separate ASIN `B07PGL2WVS` (LG 27UL500-W) referenced in the article draft.
