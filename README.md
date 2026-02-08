# Movie Performance & Popularity Analysis

##  Project Overview
This project analyzes movie performance using ratings, vote counts, and release dates to understand what truly defines movie popularity and how audience engagement relates to ratings.


---

##  Business Problem
Key analytical questions addressed in this project:

- Is a movie’s popularity defined by its rating or by the number of votes?
- Is there a relationship between vote count and average rating?
- How has movie popularity and perceived quality changed over the years?
- Which movies are both highly rated and widely voted?

This type of analysis is relevant for media platforms, streaming services, and audience analytics.

---

##  Dataset
The dataset contains **8,560 movies** with the following columns:

- `id`
- `title`
- `overview`
- `release_date`
- `popularity`
- `vote_average`
- `vote_count`

Key metrics used:
- `vote_average` → movie rating
- `vote_count` → popularity indicator
- `release_date` → time-based analysis

---

##  Excel Stage
Initial exploration in Excel showed:

- `release_date` is in date format
- `vote_average` ranges roughly between 5 and 9
- `vote_count` varies significantly (from hundreds to tens of thousands)

This suggested that vote count must be used as a filter when evaluating ratings.

---

##  Python Analysis
Using Pandas:

- Converted release dates and extracted year
- Identified most popular movies by vote count
- Applied a filter (`vote_count > 1000`) to avoid misleading high ratings
- Calculated correlation between rating and vote count

### Key Results
- Correlation between rating and vote count: **0.27** (weak to moderate positive)
- Highest rated movie with sufficient votes: **Interstellar**
- Generated yearly statistics for further analysis

---

##  SQL Analysis
Yearly movie statistics generated in Python were exported to PostgreSQL:

- Created table `movie_yearly_stats`
- Imported CSV using `\copy`
- Queried yearly vote and rating trends


---

##  Power BI Dashboard
The dashboard includes:

- Average rating by year (line chart)
- Total vote count by year (line chart)
- Top movies table filtered by vote count
- Correlation card between rating and vote count

Main insight:
> Movies with higher vote counts tend to have slightly higher ratings, but the relationship is not strong.

---

##  Key Insights
- Vote count is a more reliable popularity indicator than rating alone
- Filtering by vote count prevents misleading conclusions
- Audience engagement with movies has increased over time
- Some movies achieve both high ratings and high popularity

---

##  Tools & Technologies
- **Excel** – Initial exploration
- **Python (Pandas)** – Data cleaning and analysis
- **PostgreSQL** – Structured data handling
- **Power BI** – Visualization and storytelling
- **GitHub** – Portfolio presentation

---
