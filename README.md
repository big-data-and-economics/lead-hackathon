# Lewiston Hack-a-thon

In this hack-a-thon, you will be working with a team to determine whether Lewiston has targeted its Lead Abatement appropriately. There are many academic papers for you to consider in this space. 

## Getting Started 

Each group will receive a unique copy of this repository to work on. You will need to clone this repository to your local machines and get to work. 

## Location

The hackathon will be held in Chase. You have 24-hour card access to this building.

Each group will have a private space to work on the hackathon. 

### Rooms

Group 1: Chase 217
Group 2: Chase 219
Group 3: Chase 115

## Expectations

I expect your group to work as a team to ensure that you deliver a meaningful product by the end of the hackathon. I do not expect you to work for the entire duration, but to work with your groupmates to ensure that you are making progress.

I will stop in periodically to check on your progress, answer questions, and (when possible) to eat with you all. 

### Deliverables

You will be expected to provide a report to the City of Lewiston that includes the following:

- Discussion of literature around lead poisoning abatement effects
- Mapping of where lead abatement has occurred as well as indicators of at-risk areas for lead poisoning
- Analytically assess whether voluntary participation in lead abatement is helping those who will benefit most
- Preliminary cost-benefit analysis OR a discussion of how to do future cost-benefit analysis to evaluate this program
- Any other visualizations or regression analysis you think will be valuable
- Recommendations for new locations to target in the future and ways to use data to answer questions about lead abatement

On Thursday, you will present these deliverables in slides. (You can use Rmarkdown or an alternative presentation method if you find that easier.) A week after the hackathon, you will turn in a written summary of your work and link to your repository to me and the City of Lewiston. Your repository should contain all necessary code and data to replicate your work with a README explaining how to do so.

### Grading

The hackathon is worth 30% of your final grade. The grading will be out of 100 and broken down as follows: 

| Component | Points | Description |
|-----------|--------|-------------|
| Introduction | 5 | A brief introduction to the problem at hand |
| Literature Review | 5 | A brief discussion of the relevant literature around lead poisoning and abatement |
| Visualizations | 15 | Data visualizations should be legible and intuitive |
| Analysis | 15 | Use appropriate analytical approaches to evaluate the data |
| Presentation  | 10 | Clearly express your analytical approaches and findings to be understood by an informed, lay audience |
| Paper summary | 10 | A 1-2 page summary of your findings and recommendations due a week after the hackathon |
| Replicability | 15 | All code needed to replicate your work should be in your repository with a README explaining how to replicate your work |
| Creativity | 10 | Creative solutions to the problem at hand |
| Limitations | 5 | A discussion of the limitations of your analysis |
| Recommendations | 5 | Recommendations for future research, data collection, and ways to improve lead abatement |
| Group coevaluations | 5 | Evaluation of your group members and yourself |

### Introduction

Your introduction should motivate how you are going to approach the problem in the hackathon. 

### Literature Review

It is always helpful to offer a brief overview of the literature around the problem you are trying to solve. This will ground your work in what is already known and help you to identify gaps in the literature that you can fill with your analysis. It will also help you suggest future work that could be done in this area.

The literature folder contains a number of papers (not exhaustive) that discuss the relationship between streetlights and crime. Use these to get started thinking about the problem. 

### Visualizations

You should create visualizations of the data that help you and and your audience understand the data problems that you are solving. These visualizations should be clear and intuitive. 

### Analysis

We have learned many ways to analyze data in this course. You should use appropriate analytical approaches to evaluate the data. This could include regressions, causal inference strategies, machine learning, or other methods that you have learned in this course. You should be able to explain why you chose the analytical approach you did and how it helps you to answer the questions you are asking. 

### Presentation

Your presentation should be clear and concise. You should be able to explain your analytical approach and findings to an informed, lay (non-academic) audience. 

Everyone should participate in the presentation and you should be prepared to answer questions about your work.

Critically: you should not just read off of your slides. You should use slides to provide visual aids and short key points that you can expand upon. If you are reading off of your slides throughout the presentation, you are not presenting effectively. You will likely lose your audience and your grade will reflect that.

### Paper Summary

After the hackathon, you will have a week to organize your work into a 1-2 page summary of your findings and recommendations. This should be written in a way that is accessible to a lay audience and should be free of jargon.

### Replicability

Replicability is at the heart of this course. Any code you write and work you do should be replicable by others. You should provide all code and data necessary to replicate your work in your repository. You should also provide a README that explains how to replicate your work. The README should be clear and concise and should be written as if you are explaining to someone who has never seen your work before, but knows the basics of running code in R.

### Creativity

Creativity is important to approaching data problems and finding solutions. You should be creative in your approach to the problem and in your solutions. 

### Limitations

There will be limitations to your work and you should be upfront about them. This will help you to identify areas for future work and will help your audience to understand the scope of your work. 

### Recommendations

You should give clear recommendations to the city related to your project. Give some concise explanations of the take aways from your analysis and what the city should do next. This could include recommendations for future research, data collection, and ways to improve lead abatement.

### Group co-evaluation

After you submit everything, I will ask you all to provide an evaluation of the members of your group, including yourself. This will help me to understand how you all worked together and how you all contributed to the project. You are not formally grading one another, but giving a numeric and verbal evaluation of how you all worked together on the components of the project. 

I ask that you fill the form out for each member of your group. (Sadly, Google does not have dynamic forms that allow me to do this for you, so you will need to fill it out for each member of your group.)

#### Example

For each group member do the following starting with yourself and then moving to the next group member:

1. Click on the link for the form
2. Fill out the form indicating the group member's name and contributions to the project components above
3. Click submit
4. Repeat for the next group member

## The Data

The data are taken from Central Maine Tracking and are Census Block-level data. There are also data provided by the City of Lewiston which contain the addresses of homes that have participated in lead abatement. 

### Code

To match the lead abatement addresses to the Census Block data, you will need to geocode the addresses to blocks. I have provided a script to do this in the `code` folder called `geocode_lead_addresses.R`. This script uses the `tidygeocoder` package to geocode the addresses and requires a Census API key. You can get a Census API key [here](https://api.census.gov/data/key_signup.html) if you have not already! 

_Note: Census Blocks are smaller than Census tracts._

#### Sensitive

These data are sensitive and should be used with care. They were the product of a public records request and are redacted to protect the privacy of the individuals involved. Still, I discourage you from sharing the raw data with anyone outside of the hackathon.

## Useful links

https://www.greenandhealthyhomes.org/publication/return-on-investment-calculator-for-lead-poisoning-prevention/

https://www.epa.gov/newsreleases/epa-strengthens-standards-protect-children-exposure-lead-paint-dust

https://data.mainepublichealth.gov/tracking/lead

## Teams

You can pick your own teams. You can work altogether or in separate groups. 

## Time

You have until 9:30am on Thursday to complete this project. Then you will present to representatives from the City of Lewiston.

## Recommendations

- Plan out the steps needed to do your analysis and divvy tasks accordingly
- Plan to meet regularly as a group to discuss progress
- Use the data provided, but feel free to bring in other data sources
- You will likely need to use several R packages to complete this analysis.
    - `sf` for spatial data
    - `tidycensus` for shapefiles of the area
    - `tidygeocoder` or `rgeocodio` for geocoding addresses See [LOST](https://lost-stats.github.io/Geo-Spatial/geocoding.html)
    - `dplyr`, `tidyr`, and other `tidyverse` packages for data manipulation and wrangling
    - `ggplot2` for plotting
    - `fixest` for any regressions you may want to run
    - `pdftools` for reading in the crime data
    - `stringr` for string manipulation in the crime data
