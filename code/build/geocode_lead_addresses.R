abatement_addresses <-readxl::read_excel('data/raw/LeadAbatementSummaryLewiston2002-2024.xlsx',skip=3,n_max=270) %>%
    janitor::clean_names() 

geocoding <- abatement_addresses %>%
    select(lewiston_address) %>%
    distinct() %>%
    mutate(city='Lewiston',state='ME',state='ME',postalcode='04240') %>%
    tidygeocoder::geocode(street=lewiston_address,city=city,state=state,postalcode=postalcode,
        method='census',
        api_options=list(census_return_type='geographies'),
        full_results=TRUE,flatten=TRUE) %>%
    janitor::clean_names() 

# combine
abatement_addresses_geocoded <- abatement_addresses %>%
    left_join(geocoding) 