#!/usr/bin/env bash
# Run this INSIDE your local clone of Bank-Loan-Performance-Analysis
# (the folder containing .git). It reorganizes the repo into a clean
# structure using `git mv` so file history is preserved.
set -e

mkdir -p data sql powerbi tableau docs assets/screenshots

git mv "financial_loan.csv" "data/financial_loan.csv"
git mv "Bank loan dashboard queries.sql" "sql/loan_analysis_queries.sql"
git mv "Bank loan report dashboard.pbix" "powerbi/bank_loan_dashboard.pbix"
git mv "Bank Loan Data Analysis.twb" "tableau/bank_loan_analysis.twb"
git mv "BANK LOAN REPORT QUERIES.docx" "docs/loan_report_queries.docx"

git mv "assets/Bank Loan Details Tableau.png" "assets/screenshots/tableau_details.png"
git mv "assets/Bank Loan Overview Tableau.png" "assets/screenshots/tableau_overview.png"
git mv "assets/Bank Loan Summary Tableau.png" "assets/screenshots/tableau_summary.png"
git mv "assets/Bank Loan Report Details.png" "assets/screenshots/powerbi_details.png"
git mv "assets/Bank Loan Report Summary.png" "assets/screenshots/powerbi_summary.png"
git mv "assets/Bank Loan Report Overview Excel.png" "assets/screenshots/excel_overview.png"
git mv "assets/Bank Loan Report Summary Excel.png" "assets/screenshots/excel_summary.png"

# Replace README, add LICENSE and .gitignore
# (download README.md, LICENSE, .gitignore from the chat and place them
#  in the repo root before running this script, or copy them in now)

echo "Done. Now review with 'git status', then:"
echo "  git add -A"
echo "  git commit -m \"Restructure repo into organized folders, rewrite README, add LICENSE and .gitignore\""
echo "  git push"
