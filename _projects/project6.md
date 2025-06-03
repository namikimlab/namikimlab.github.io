---
layout: project
title: Potting Soil Calcualtor
description: A mobile-friendly web app that calculates optimal potting soil volume and recommends purchase options based on pot shape and size.
image: /assets/projects/feey-ef8Xt_z_m1k-unsplash.jpg
tags: [React, Vite, Netlify, Web-app, Typescript, Tailwind, Jest]
featured: true
visible: true
---

👉 [**Launch App**](https://soilcalc.changbitfarm.com/) &nbsp;&nbsp; | &nbsp;&nbsp; [**Source Code (GitHub)**](https://github.com/namikimlab/potting-soil-calculator)


## 🪴 Project Motivation

When planting in pots, figuring out how much soil to buy can be surprisingly tricky. Beginners often struggle with the volume calculation depending on pot shape, size, and quantity. 

I built this tool to provide an intuitive, mobile-friendly solution that simplifies repotting for real gardening users.


## 🔧 Tech Stack

- **React + TypeScript**: Component-based architecture with type safety
- **Vite**: Lightning-fast build tool
- **Tailwind CSS**: Utility-first, responsive styling
- **Netlify**: Static deployment with auto HTTPS
- **Google Analytics (GA4)**: User behavior tracking
- **Jest + ts-jest**: 100% unit test coverage


## 📦 Key Features

- Support for 4 pot shapes: rectangle, cylinder, cone, custom surface area
- Automatic soil volume calculation (liters), assuming 80% fill rate
- Product recommendation for 20L and 8L bags
- Drainage gravel (Masato) suggestion for better potting
- Full input validation: required fields, numeric limits, edge cases
- Fully responsive mobile-first design
- SEO optimized (Open Graph tags, sitemap.xml, robots.txt, canonical URLs)


## 💡 Engineering Highlights

- Focused on **product thinking**: integrates purchase flow to encourage real transactions
- Built robust **input validation & error handling** for production-readiness
- Implemented full **unit testing** for calculation logic using Jest
- Managed full **deployment pipeline** with Netlify and custom SEO configuration


## 👀 Reflection

Although this started as a simple calculator, I intentionally treated it like a real-world product — considering UX, design, testing, deployment, SEO, and maintainability from end to end.

Through this project, I gained hands-on experience across the full lifecycle of frontend product development.
