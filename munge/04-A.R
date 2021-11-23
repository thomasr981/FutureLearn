# Continental enrolment count per season across a two year period
spring <- filter(enrolments, ( as_date("2016-05-01")
                               <= enrolled_at & enrolled_at
                               < as_date("2018-05-01")),
                 season=="Spring") %>%
  mutate(continent = case_when(
  detected_country %in% Africa ~ "Africa",
  detected_country %in% Antarctica ~ "Antarctica",
  detected_country %in% Asia ~ "Asia",
  detected_country %in% Europe ~ "Europe",
  detected_country %in% North_America ~ "North America",
  detected_country %in% Oceania ~ "Oceania",
  detected_country %in% South_America ~ "South America",
  NA ~ "NA")) %>%
  group_by(continent) %>%
  dplyr::count()

summer <- filter(enrolments, ( as_date("2016-05-01")
                               <= enrolled_at & enrolled_at
                               < as_date("2018-05-01")),
                 season=="Summer") %>%
  mutate(continent = case_when(
    detected_country %in% Africa ~ "Africa",
    detected_country %in% Antarctica ~ "Antarctica",
    detected_country %in% Asia ~ "Asia",
    detected_country %in% Europe ~ "Europe",
    detected_country %in% North_America ~ "North America",
    detected_country %in% Oceania ~ "Oceania",
    detected_country %in% South_America ~ "South America",
    NA ~ "NA")) %>%
  group_by(continent) %>%
  dplyr::count()

autumn <- filter(enrolments, ( as_date("2016-05-01")
                               <= enrolled_at & enrolled_at
                               < as_date("2018-05-01")),
                 season=="Autumn") %>%
  mutate(continent = case_when(
    detected_country %in% Africa ~ "Africa",
    detected_country %in% Antarctica ~ "Antarctica",
    detected_country %in% Asia ~ "Asia",
    detected_country %in% Europe ~ "Europe",
    detected_country %in% North_America ~ "North America",
    detected_country %in% Oceania ~ "Oceania",
    detected_country %in% South_America ~ "South America",
    NA ~ "NA")) %>%
  group_by(continent) %>%
  dplyr::count()

winter <- filter(enrolments, ( as_date("2016-05-01")
                               <= enrolled_at & enrolled_at
                               < as_date("2018-05-01")),
                 season=="Winter") %>%
  mutate(continent = case_when(
    detected_country %in% Africa ~ "Africa",
    detected_country %in% Antarctica ~ "Antarctica",
    detected_country %in% Asia ~ "Asia",
    detected_country %in% Europe ~ "Europe",
    detected_country %in% North_America ~ "North America",
    detected_country %in% Oceania ~ "Oceania",
    detected_country %in% South_America ~ "South America",
    NA ~ "NA")) %>%
  group_by(continent) %>%
  dplyr::count()
