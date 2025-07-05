 ALX Airbnb Database – Advanced SQL Scripts
This module contains advanced SQL scripts designed to deepen your understanding of relational database performance, query optimization, and analytical techniques. It is part of the ALX Airbnb Database project and focuses on mastering SQL joins, subqueries, aggregations, indexing, and performance tuning.
📁 Directory: database-adv-script
Each file in this directory corresponds to a specific task aimed at simulating real-world database engineering challenges.

📌 Table of Contents
- Task Overview
- Tech Stack
- File Descriptions
- How to Run
- Performance Tips
- License

🎯 Task Overview
| Task # | Objective | Description | 
| 0 | Write Complex Queries with Joins | Practice INNER, LEFT, and FULL OUTER JOINs | 
| 1 | Practice Subqueries | Use correlated and non-correlated subqueries | 
| 2 | Apply Aggregations and Window Functions | Analyze data using COUNT, RANK, ROW_NUMBER | 
| 3 | Implement Indexes for Optimization | Create indexes and measure performance | 
| 4 | Optimize Complex Queries | Refactor queries for better execution time | 
| 5 | Partitioning Large Tables | Use table partitioning to improve query speed | 
| 6 | Monitor and Refine Performance | Use EXPLAIN/ANALYZE to monitor and improve queries | 



Tech Stack
- SQL (PostgreSQL / MySQL compatible)
- EXPLAIN / ANALYZE for performance diagnostics
- Optional: pgAdmin, DBeaver, or CLI for execution

📄 File Descriptions
| File | Description | 
| joins_queries.sql | Contains INNER JOIN, LEFT JOIN, and FULL OUTER JOIN queries | 
| subqueries.sql | Includes both correlated and non-correlated subqueries | 
| aggregations_and_window_functions.sql | Uses COUNT, GROUP BY, and window functions like RANK | 
| database_index.sql | SQL commands to create indexes on high-usage columns | 
| index_performance.md | Performance analysis before and after indexing | 
| perfomance.sql | Initial and optimized complex query for bookings | 
| optimization_report.md | Report detailing query inefficiencies and improvements | 
| partitioning.sql | SQL script to partition the Booking table by start_date | 
| partition_performance.md | Report on performance gains from partitioning | 
| performance_monitoring.md | Monitoring report using EXPLAIN/SHOW PROFILE | 






