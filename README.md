# 🌐 NoWebsite Lead Intelligence (NWLI)

> **Discover High-Value People & Businesses That Don't Have Their Own Website.**  
> An autonomous 16-stage OSINT research platform, website-first exclusion gate, deep internet intelligence gatherer, and multi-tab Excel generator.

[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-blue)](#)
[![Python](https://img.shields.io/badge/Python-3.11%2B-green)](#)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.115%2B-teal)](#)
[![React](https://img.shields.io/badge/React-18-blue)](#)
[![License](https://img.shields.io/badge/License-MIT-orange)](#)

---

## 📌 Executive Summary

Traditional lead scrapers waste credits collecting businesses and professionals who already have established websites.  
**NoWebsite Lead Intelligence (NWLI)** inverts the process with a **Website-First Exclusion Principle**:

1. **Stage 1–2**: Discovers candidates matching user-defined profession/industry criteria in targeted geographic locations.
2. **Stage 3 (The Exclusion Gate)**: Performs 12+ multi-stage OSINT domain searches (whois, DNS, SerpAPI, DuckDuckGo, directories). Anyone with an official website or personal domain is **instantly disqualified**.
3. **Stage 4–15 (Deep Research)**: For verified "No-Website" candidates, autonomous agents gather direct contacts (personal and office emails, personal mobile and professional phones), 5 social profiles (Facebook, Twitter/X, Instagram, Bluesky, LinkedIn), and cross-verification evidence.
4. **Stage 16 (Sales Intelligence & Master Excel)**: Calculates an algorithmic **Website Opportunity Score (0–100)**, generates outreach rationales, and exports a 9-sheet Master Excel workbook.

---

## ✨ Core Features

- **🛡️ Autonomous Website-First Exclusion Gate**: Patent-grade detection logic distinguishing between shared directory citations (Yelp, Avvo, Google Maps) vs. true proprietary domain ownership.
- **⚡ 120+ High-Yield Person Presets**: Pre-calibrated searches across 20 professional categories:
  - *Healthcare*: Orthodontists, Cosmetic Dermatologists, Dentists, Psychologists, Chiropractors, Med-Spas
  - *Legal*: Personal Injury Lawyers, Immigration Attorneys, Criminal Defense, Estate Planners, Tax Lawyers
  - *Finance*: CPAs, Fractional CFOs, Wealth Advisors, Bookkeepers, Mortgage Brokers
  - *Home Services*: Master Roofers, HVAC Contractors, Electricians, Plumbers, Remodelers
  - *Consulting, Writers, Creative, Media, Academics, Creators, Tutors, Events, and more*.
- **📞 Direct Contact Intelligence**: Collects and validates:
  - Active personal email & professional email
  - Personal mobile & office phone
  - Identity confidence and data freshness scoring
- **🌐 5 Social Footprints**: Verified profile links for Facebook, X/Twitter, Instagram, Bluesky, and LinkedIn.
- **📊 9-Sheet Master Excel Export**:
  - `Sheet 1: Qualified People` (26 data points per record)
  - `Sheet 2: Qualified Businesses`
  - `Sheet 3: Sources` (Full URL provenance)
  - `Sheet 4: Excluded Records` (Audit trail of candidates excluded for having websites)
  - `Sheet 5: Needs Review` (Borderline cases)
  - `Sheet 6: Research Summary` (KPIs, yield rates, job duration)
  - `Sheet 7: Hot Leads` (Opportunity score $\ge 90$)
  - `Sheet 8: Social Profiles` (All 5 social platforms)
  - `Sheet 9: Contact Information` (Personal & work emails/phones)
- **🖥️ Standalone Windows Executable**: Bundled with a native C# launcher (`NWLI.exe`) that starts the engine and opens the web workspace with a single click.

---

## 🏗️ Architecture

```
NWLI/
├── NWLI.exe                  # Standalone Windows native launcher (.NET C#)
├── NWLI-Launcher.bat         # Windows CMD/PowerShell fallback launcher
├── launcher/
│   └── Program.cs            # Source code for NWLI.exe
├── backend/
│   ├── app/
│   │   ├── main.py           # FastAPI server & SPA static file mounter
│   │   ├── orchestrator.py   # 16-Stage OSINT multi-agent pipeline
│   │   ├── agents/           # Discovery, WebsiteGate, Contact, Social, QC agents
│   │   ├── api/
│   │   │   ├── routes.py     # REST endpoints (People, Businesses, Jobs, Exports)
│   │   │   └── presets.py    # 120+ Curated high-yield search presets
│   │   ├── database/         # SQLAlchemy models (Candidate, Website, Contact, Source)
│   │   └── services/         # 9-Sheet Excel generator & Export service
│   ├── requirements.txt      # Python dependencies
│   └── .env.example          # API keys & database configuration
└── frontend/
    ├── src/
    │   ├── components/       # Dashboard, Preset Explorer, Lead Tables, Detail Views
    │   └── api.ts            # REST client with JWT authentication & retry logic
    └── dist/                 # Pre-built production web bundle
```

---

## 🚀 Quick Start

### Method 1: Portable Windows Launcher (Easiest)
1. Ensure Python 3.11+ is installed on your computer.
2. Double-click **`NWLI.exe`** (or run `NWLI-Launcher.bat`).
3. The launcher will automatically start the backend API and launch your browser at `http://127.0.0.1:8000`.

---

### Method 2: Running from Source

#### 1. Backend Setup
```bash
cd backend
python -m venv venv
venv\Scripts\activate        # On Windows
# source venv/bin/activate   # On Linux/macOS

pip install -r requirements.txt
cp .env.example .env

# Run FastAPI server
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000
```

#### 2. Frontend Setup (Optional for Development)
The backend already serves the pre-built frontend from `frontend/dist/`. If you want to develop or customize the React UI:
```bash
cd frontend
npm install
npm run dev
```

---

## 🧪 Testing System

Verify the complete 16-agent pipeline, website gate exclusion, and 9-sheet Excel workbook:
```bash
cd backend
python test_system.py
```

---

## 📜 Compliance & Ethics

NWLI collects only publicly available business and professional data from open web sources, search engines, and business directories. It strictly adheres to public records policies and provides transparent source provenance URLs for every data point.

---

## 📄 License

MIT License. Free for personal, commercial, and agency use.
