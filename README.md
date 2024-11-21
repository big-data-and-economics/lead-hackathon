# Lewiston Hack-a-thon

In this hack-a-thon, you will be working with a team to determine whether Lewiston has targeted its Lead Abatement appropriately. There are many academic papers for you to consider in this space. 

## Location

The hacakthon will be held Chase and Harward Halls It is reserved under ECON Hack-a-thon. It will be reserved from 8am to 11pm on Tuesday and Wednesday. You have card access into Carnegie from 7am to midnight everyday. 

## Expectations

You will have access to Chase and the Harward Center to work as a team. It will be open from Tuesday at 8am-11pm and Wednesday at 8am-11pm. I do not expect you to work for the entire duration, but the space is there for you to collaborate on the project. Food will be provided in one of these spaces for everyone to eat meals. Meal times to come. 

## Literature

The literature folder contains a number of papers (not exhaustive) that discuss the relationship between streetlights and crime. Use these to get started thinking about the problem. 

## The Data

The data are taken from Central Maine Tracking and are Census Block level data. There are also data at the 

_Note: Census Blocks are smaller than Census tracts._

#### Sensitive

These data are sensitive and should be used with care. They were the product of a public records request and are redacted to protect the privacy of the individuals involved. Still, I discourage you from sharing the raw data with anyone outside of the hackathon.

## Code

I will provide starter code in a few places.

## Deliverables

You will be expected to provide a report to the City of Lewiston that includes the following:
- Mapping of where lead abatement has occurred as well as indicators of at-risk areas for lead poisoning
- Analytically assess whether voluntary participation in lead abatement has led to lead abatement helping those who will benefit most
- Preliminary cost-benefit analysis OR a discussion of how to do future cost-benefit analysis to evaluate this program
- Any other visualizations or regression analysis you think will be valuable
- Recommendations for new locations to target in the future and ways to use data to answer questions about lead abatement

## Teams

You can pick your own teams. You can work altogether or in separate groups. 

## Time

You have until 11am on Thursday to complete this project. Then you will present to the City of Lewiston.

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
