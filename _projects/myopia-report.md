---
layout: project
title: Pediatric Myopia Progression Report Generator
date: 2026-2-15
description: Clinical projection and reporting SaaS for ophthalmology clinics with compliance-aware architecture.
image: /assets/projects/myopia-report/cover.jpg
tags: ["Healthcare SaaS", "AWS Lambda", "Next.js", "PostgreSQL", "Multi-tenant", "Compliance", "Auditability", "PDF Generation"]
featured: true
visible: true
---

This project focuses on a **clinical projection and reporting SaaS** for ophthalmology clinics.  
It turns research-based myopia progression logic into a **structured, traceable, and production-ready workflow** usable in real patient consultations.


## 💡 Project Overview

Children with myopia visit clinics regularly, but many practices lack a standardized system to translate research findings into patient-specific projections.

Questions like "How severe might it become?" and "When should intervention be considered?" often rely heavily on physician experience rather than a consistent framework.

Doctors were also spending **8 to 12 minutes per patient** preparing explanations and visual summaries, without a systematic, traceable method for documenting how projections were calculated or presented.


## 🎯 Objective

Build a production-ready, medical-grade SaaS that:

- Projects future myopia progression using established research data
- Clearly visualizes current status and expected growth trajectory
- Generates comprehensive, stage-specific reports tailored to each patient
- Fits fast, intuitive clinical workflows
- Aligns with medical application standards and data privacy requirements


## ⚠️ Constraints

- Korean medical data privacy environment
- Multi-clinic tenant isolation requirements
- Infrastructure budget under `$150/month`
- Secure PDF generation
- Workflow completion under 2 minutes
- Design anticipating future regulatory scrutiny


## 🏗️ Architecture Summary

**Frontend**
- Next.js (TypeScript, Zod validation)
- Recharts percentile visualization

**Backend**
- AWS Lambda (Node.js)
- API Gateway
- PostgreSQL (RDS, private subnet)
- S3 (private report storage with signed URLs)
- CloudFront distribution
- Secrets Manager

**Infrastructure**
- Dev/Prod separation
- IAM isolation
- VPC-protected RDS
- CloudWatch + CloudTrail logging


## 🔧 Core Engineering Decisions

**1. Multi-tenant isolation**
- Clinic-scoped data separation via `clinic_id`
- Strict user-role boundaries
- No cross-clinic access paths

**2. Deterministic projection engine**
- Projection logic based on established axial-length percentile references
- Deterministic curve extension rules
- Stored input snapshot for each report

Each report records:
- Projection rule version
- Input parameters
- Timestamp

This prevents calculation ambiguity and supports reproducibility.

**3. Server-side PDF rendering**
- Implemented Lambda + Puppeteer for reliable SVG percentile rendering
- Chosen to ensure consistent clinic-grade output
- Rejected client-side rendering due to cross-browser inconsistencies

**4. Cost optimization**
- Initial infrastructure cost: about `$180/month`
- Optimized to under `$120/month` via NAT consolidation


## 🛡️ Regulatory and Audit-Defensible Design

Designed with awareness of Korean medical data privacy requirements and potential medical software audit scrutiny.

**1. Deterministic, version-controlled projection engine**
- Projection logic is explicitly versioned and immutable once deployed
- Every report stores projection rule version, reference dataset version, full input snapshot, and generation timestamp
- Historical reports are never recalculated retroactively

This prevents silent logic drift and enables exact reconstruction later.

**2. Controlled change governance**
- Projection rule updates require explicit version increments
- Documented changelog and deployment tagging (dev/prod alignment)
- Migration documentation for governed computational changes

**3. Data governance and tenant boundary enforcement**
- Clinic-scoped query enforcement at the service layer
- No cross-tenant data access paths
- Role-based access controls per clinic
- Encrypted storage and private object access policies
- Projection event logging with user ID and timestamp

**4. Liability-aware system positioning**
- Avoided diagnostic claims
- Avoided treatment recommendations
- Clearly labeled projections as research-based curve extensions

This preserves clinical utility while reducing regulatory exposure.


## 📈 Measurable Results

- Report generation time reduced from 1.5 minutes to 45 seconds
- AWS infrastructure cost reduced by about 30%
- Zero cross-tenant data exposure
- Consistent percentile visualization across providers


## 🧰 Key Skills Demonstrated

- Building regulated, compliance-aware SaaS
- Designing deterministic, version-controlled calculation engines
- Architecting multi-tenant medical data systems
- Implementing secure document generation workflows
- Operating cost-conscious AWS infrastructure


## 🎯 Takeaway

This project demonstrates the ability to ship production-grade systems in regulated environments with strong audit readiness and operational discipline.
