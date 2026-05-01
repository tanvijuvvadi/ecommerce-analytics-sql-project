# 🛒 E-Commerce Sales Insights System (SQL Project)

## 📌 Project Overview

This project focuses on designing and analyzing an E-Commerce database system to generate meaningful business insights using SQL.

The objective was to simulate a real-world analytics environment where businesses track sales performance, customer behavior, and marketing effectiveness to make data-driven decisions.

This project covers the complete workflow from database design → data insertion → analytical insights.



## 🎯 Objectives

* Design a structured and normalized database for an e-commerce system
* Store and manage transactional and customer data efficiently
* Analyze sales performance and customer behavior
* Generate insights that support business decisions
  

## 🧱 Database Design

The database is designed using normalization principles to avoid redundancy and ensure data integrity.

### Key Tables:

* **Customers** → Stores user information
* **Categories** → Groups products into segments
* **Products** → Contains product details and pricing
* **Orders** → Stores transaction-level data
* **Order_Items** → Links products with orders (core table for revenue calculation)
* **Payments** → Tracks payment details
* **Channels** → Represents marketing sources
* **Channel_Spend** → Tracks advertising spend

### Relationships:

* One customer can place multiple orders
* One order can contain multiple products
* Products belong to categories
* Orders are associated with marketing channels


## ⚙️ Tech Stack

* **Database:** MySQL
* **Language:** SQL
* **Tools:** MySQL Workbench / DBeaver


## 📊 Key Business Insights Generated

This project focuses on extracting insights that are commonly used in real-world e-commerce analytics:

* 💰 **Revenue Analysis** → Understanding total sales performance
* 📈 **Average Order Value (AOV)** → Measuring customer spending behavior
* 🛍️ **Top Products & Categories** → Identifying best-performing items
* 👥 **Customer Analysis** → Finding high-value customers
* 📢 **Marketing Performance** → Evaluating channels using ROAS
* 🔁 **Refund Impact** → Tracking revenue loss due to refunds
* 📉 **Profit Analysis** → Comparing revenue vs cost


## 🧠 Learning Outcomes

Through this project, I gained hands-on experience in:

* Database design and normalization
* Writing efficient SQL queries using joins and aggregations
* Translating raw data into business insights
* Understanding real-world e-commerce metrics
* Problem-solving using data
  

## 💼 Real-World Relevance

E-commerce companies rely heavily on data analytics to:

* Optimize pricing strategies
* Improve marketing ROI
* Manage inventory effectively
* Enhance customer experience

This project reflects similar analytical workflows used in real business environments.


## 🚀 Conclusion

This project demonstrates how structured data and SQL can be used to extract meaningful insights and support strategic decision-making in an e-commerce business.

It showcases both technical skills and business understanding, making it a strong foundation for data analytics roles.


