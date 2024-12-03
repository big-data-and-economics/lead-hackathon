# Lewiston Hack-a-thon

In this hack-a-thon, you will be working with a team to determine whether Lewiston has targeted its Lead Abatement appropriately. We have worked a bit on the incidence of Lead throughout the semester. Feel free to pull from our discussions of this work throughout the semester to contribute to your work. 

Furthermore, you may seek to bring in datasets beyond what I have provided in this repository. If so, that is a great idea! Many other datasets could prove useful and your are encouraged to acquire these data. 

## Problem Statement

We have learned a great deal about the commitments Lewiston has made to abate lead in the city. We have also learned that there is a high incidence of lead poisoning within the city and that this is a problem that disproportionately affects low-income families. In this hackathon, you will: 

1. Work to evaluate what areas have received lead abatement and whether this has been targeted to the areas with the greatest need for abatement. Furthermore, 
2. Make recommendations on how to evaluate lead abatement -- and if possible do a baseline evaluation of the effectiveness of lead abatement in Lewiston. 

The first goal will require you to make some judgment calls on how you present and summarize the data you have. The second goal may not be possible to achieve with the data you have, but you can still make recommendations on how to do this in the future. If you find a way to evaluate the effectiveness of lead abatement in Lewiston analytically with the data available, please do so and intuitively explanation your work. It will be a great contribution to the city. 

## Getting Started 

Each group will receive a unique copy of this repository to work on. The repository is hosted within the course organization. You will need to clone this repository to your local machines and then push-pull as usual. 

I am hosting each group's repository in the course organization to make sure that it is available to the City of Lewiston independent of your personal account. 

_**Note:** In contrast to other course assignments, you will not be forking this repository to your own account. You will receive a version that is specific to your group that is tied to this course organization._

## Location

The hackathon will be held in Chase. You have 24-hour card access to this building.

Each group will have a private space to work on the hackathon. 

### Rooms

- Group 1: Chase 217
- Group 2: Chase 219
- Group 3: Chase 115

### Meal times

| Day | Time    | Restaurant |
|-----|---------|------------|
| Tues| 12pm    | Otto's     |
| Tues| 5:45pm  | Mother India |
| Wed | 8:45am  | Forage (coffee too!)     |
| Wed | 12pm    | Pure Thai    |
| Wed | 6pm     | Pocho's      |
| Thurs| 9:30am | Pastries in class    |

Meals will be served in Chase Hall 115. Please attend common mealtimes as these will be my best chance to answer questions and make general announcements as needed. 

Note that all dietary restrictions (lactose-free, etc.) have been accounted for in the restaurant orders.

## Provided materials

I provide a variety of materials. They are organized in the folders provided. 

First, `housekeeping.R` will load all the packages you need to get started.

- `data` contains the data you will be working with
    - `raw` contains the raw data you will be working with
    - `work` is where you put the working data
- `code` contains code that may be useful for your work
    - `build` contains code that may be useful for building the data
    - `analysis` is for code that may be useful for analyzing the data
- `documentation` is for documentation that may be useful for your work besides this README
- `literature` contains papers that may be useful for your work
- `output` is where you can put output files that you generate

Feel free to make any additional folders you need to organize your work. At the end of the project, be sure to organize the repository so that it is clear where everything is.

I further explain the materials below.

### The Data

In the folder `data/raw`, I have pushed three .xlsx files that contain data on lead abatement in Lewiston. 

1. `Auburn-Lewiston - block group Poisoning-Screening - export 10-25-2024.xlsx`

This file is downloaded from the [Maine Tracking Network](https://data.mainepublichealth.gov/tracking/lead) dashboard. It includes data on the number of children screened for lead poisoning in Lewiston and Auburn at the census block group level. Any blocks with fewer than five children that test positive for lead poisoning are represented as 1-5 children. 

The column `Lead Poisoning` is the number of children who tested positive for lead poisoning in the block. The column `Testing (Calendar Year)` is the number of children tested for lead poisoning in the block. 

Location identifies the Census Block group. Year shows the years covered in the data pulled from the 5-year American Community Surveys from 2008-2012, 2013-2017, and 2018-2022. 

2. `Auburn-Lewiston - block group Risk Factors - export 10-25-2024.xlsx`

This file is downloaded from the [Maine Tracking Network](https://data.mainepublichealth.gov/tracking/lead) dashboard. It includes data on various risk factors associated with lead poisoning aggregated to the census block group level from 2016-2020. These variables include:

- The number of families living in poverty
- The number of families with children living in poverty
- The amount of pre-1950s housing
- The amount of owner occuped pre-1950s housing
- The amount of renter occupied pre-1950s housing

For each variable the `Number` column is the number of families or housing units that meet the criteria and the `Percent` column is the percentage of families or housing units that meet the criteria within the census block group. `Total Families` or `Total Occupied Units`, respectively, is the total number of families or housing units in the block.

3. `LeadAbatementSummaryLewiston2002-2024.xlsx`

The data are taken from Central Maine Tracking and are census block group-level data. There are also data provided by the City of Lewiston which contain the addresses of homes that have participated in lead abatement. 

The data contains two sheets: `ABATEMENT SUMMARY` and `Pre-1978 Housing-Assessor Rec`. `ABATEMENT SUMMARY` is a summary of where abatement occurred. `Pre-1978 Housing-Assessor Rec` is information on the assessment of pre-1978 housing in Lewiston and other cities. 

The columns in `ABATEMENT SUMMARY` are as follows:

- `Abatement Projects`: The number of lead abatement projects at the address
- `Lewiston Address`: The address of the lead abatement project
- `Year Built`: The year the address was build
- `Housing Units`: The number of housing units at the address
- `L-A Grant`: If funded by the Lewiston Auburn Grant
- `Lead Hazards Cleared`: The year the lead hazards were cleared
- `Units Impacted 2x or more`: The units that 

The columns in `Pre-1978 Housing-Assessor Rec` are as follows:

- `Parcel ID` - The parcel ID of the address
- `#` - The house number
- `Property Location` - The street of the property
- `Year Built` - The year the property was built
- `Living Units` - The number of living units in the property
- `Land Use Code With Description` - The land use code and description of the property
- `Lot Size in Acres` - How big is the property
- `Owner 1` and `Owner 2` - The owners of the property
- `Mailing Address 1` - The mailing address of the property (often the same as the location)
- `Mailing Address 2` - Secondary information on the mailing address (i.e. an apartment number)
- `City` - The city of the property (mostly Lewiston)
- `State` - The state of the property (ME)
- `Zip Code` - The zip code of the property (mostly 04240)
- `Land` - The assessed value of the land
- `Building` - The assessed value of the building
- `Total Assessment` - The total assessed value of the property

There is other valuable information within this spreadsheet. 

### Code

To match the lead abatement addresses to the census block group data, you will need to geocode the addresses to blocks. I have provided a script to do this in the `code` folder called `geocode_lead_addresses.R`. This script uses the `tidygeocoder` package to geocode the addresses and requires a Census API key. You can get a Census API key [here](https://api.census.gov/data/key_signup.html) if you have not already! 

_Note: Census block groups are smaller than Census tracts, but larger than census blocks._

### Sensitive

These data are sensitive and should be used with care. They are the product of a public records requests. Still, I discourage you from using these data to identify individuals or to make any claims about individuals.

### Useful links

- https://www.greenandhealthyhomes.org/publication/return-on-investment-calculator-for-lead-poisoning-prevention/

- https://www.epa.gov/newsreleases/epa-strengthens-standards-protect-children-exposure-lead-paint-dust

- https://data.mainepublichealth.gov/tracking/lead

## Expectations

I expect your group to work as a team to ensure that you deliver a meaningful product by the end of the hackathon. I do not expect you to work for the entire duration, but to work with your groupmates to ensure that you are making progress.

I will stop in periodically to check on your progress, answer questions, and (when possible) to eat with you all. 

### Deliverables

You will be expected to provide a presentation, 1-2 page report, and GitHub repository to the City of Lewiston that includes the following:

- Discussion of literature around lead poisoning abatement effects
- Mapping of where lead abatement has occurred as well as indicators of at-risk areas for lead poisoning
- Analytically assess whether voluntary participation in lead abatement is helping those who will benefit most
- Preliminary cost-benefit analysis OR a discussion of how to do future cost-benefit analysis to evaluate this program
- All necessary code, data, and documentation to replicate your work (feel free to ovewrite this README)
- Any other visualizations or regression analysis you think will be valuable
- Recommendations for new locations to target in the future and ways to use data to answer questions about lead abatement

On Thursday, you will present these deliverables in slides. (You can use Rmarkdown or an alternative presentation method if you find that easier.) A week after the hackathon, you will turn in a written summary of your work and link to your repository to me and the City of Lewiston. Your repository should contain all necessary code and data to replicate your work with a README explaining how to do so.

In all of your work, your goal is to be clear, concise, and informative. Your goal is not to describe how smart you are -- that will come through your work. 

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

Please be sure a PDF of your slides and the file used to generate that PDF (an Rmarkdown script, LaTeX script, or a PowerPoint file) is in your repository.

### Paper Summary

After the hackathon, you will have a week to organize your work into a 1-2 page summary of your findings and recommendations. This should be written in a way that is accessible to a lay audience and should be free of jargon.

Please be sure that a PDF of the paper summary is in your repository. 

### Replicability

Replicability is at the heart of this course. Any code you write and work you do should be replicable by others. You should provide all code and data necessary to replicate your work in your repository. You should also edit this README so that it explains how to replicate your work. The README should be clear and concise and should be written as if you are explaining to someone who has never seen your work before, but knows the basics of running code in R.

Here is some advice on writing a README:

- [About READMEs by GitHub](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes)
- [Short Datacamp video with downloadable slides](https://campus.datacamp.com/courses/github-concepts/introduction-to-github?ex=9)

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

## Codespaces

This repository contains a Docker codespace that can be used to run R from your browser with a pre-configured environment. This is useful if you have trouble setting up your local environment or if you want to work on a Chromebook or other device that does not have R installed. See instructions [here](https://github.com/big-data-and-economics/big-data-class-materials?tab=readme-ov-file#github-codespaces).