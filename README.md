# 🛍️ Olist eCommerce Data Pipeline – Snowflake + dbt + Tableau

In this project, I explored how to build an end-to-end analytics pipeline using Snowflake, dbt, and Tableau, leveraging the publicly available Olist eCommerce dataset from Kaggle. The goal was to simulate a modern data stack project from raw data ingestion to business-ready insights.

### 🔧 Tools Used
- **Snowflake** – cloud data warehouse for storing and querying data
- **dbt** – for transforming and modeling raw data into business-ready insights
- **Tableau** – for data visualization and dashboarding

## 🌟 Key Features

- ✅ Loaded raw CSVs into Snowflake using Snowflake UI
- ✅ Built modular staging and mart models using dbt  
- ✅ Created reusable SQL transformations and sources  
- ✅ Connected Tableau directly to Snowflake  
- ✅ Designed dashboards showing KPIs like revenue, orders, customer trends, and review scores  
- ✅ Structured codebase for easy navigation and extension  

## 📦 Dataset

This project uses the [**Olist eCommerce dataset** from Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), which contains:
- Orders, Customers, Products
- Payments, Reviews, Sellers
- Shipping details & product categories

It’s one of the most comprehensive open datasets for simulating a real eCommerce business.

---

## 📐 Project Architecture

```bash
olist_project/
├── models/
│   ├── staging/
│   │   ├── sources.yml
│   │   ├── stg_orders.sql
│   │   ├── stg_customers.sql
│   │   └── ...
│   └── marts/
│       ├── mart_orders.sql
│       ├── mart_customers.sql
│       └── ...
├── dbt_project.yml
└── README.md
```

👀 Dashboard screenshot in `Tableau_Dashboard Screenshot.png`

## 📖 Full Walkthrough

Want to see the full step-by-step breakdown?  
👉 [Read the detailed blog post on Medium](#) *(replace with your link)*
