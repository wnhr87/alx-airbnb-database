# Normalization Steps The schema has been normalized into **Third Normal Form (3NF)** as follows:  
## 1NF: Atomicity - All attributes contain atomic, indivisible values (e.g., no arrays or multi-valued fields). 
## 2NF: Full Functional Dependency - All non-key attributes are fully functionally dependent on the entire primary key in composite tables (not needed here since we use UUIDs as single primary keys). 
## 3NF: No Transitive Dependencies - No non-key attribute is dependent on another non-key attribute. 
### Example: Review Table - `rating` and `comment` depend directly on `review_id`, not on `user_id` or `property_id`. 
The schema is already clean and modular, so no major normalization transformations were needed. 


# Normalization Steps

The schema has been normalized into **Third Normal Form (3NF)** as follows:

## 1NF: Atomicity
- All attributes contain atomic, indivisible values (e.g., no arrays or multi-valued fields).

## 2NF: Full Functional Dependency
- All non-key attributes are fully functionally dependent on the entire primary key in composite tables (not needed here since we use UUIDs as single primary keys).

## 3NF: No Transitive Dependencies
- No non-key attribute is dependent on another non-key attribute.

### Example: Review Table
- `rating` and `comment` depend directly on `review_id`, not on `user_id` or `property_id`.

The schema is already clean and modular, so no major normalization transformations were needed.
