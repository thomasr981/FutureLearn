# Group country codes into continents
Asia <- c("AF", "AM", "AZ", "BH", "BD", "BT", "BN", "KH", "CN", "CY", "GE",
          "HK", "IN", "ID", "IR", "IQ", "IL", "JP", "JO", "KZ", "KP", "KR",
          "KW", "KG", "LA", "LB", "MO", "MY", "MV", "MN", "MM", "NP", "OM",
          "PK", "PS", "PH", "QA", "SA", "SG", "LK", "SY", "TW", "TJ", "TH",
          "TL", "TR", "TM", "AE", "UZ", "VN", "YE")
Europe <- c("AX", "AL", "AD", "AT", "BY", "BE", "BA", "BG", "HR", "CZ", "DK",
            "EE", "FO", "FI", "FR", "DE", "GI", "GR", "GG", "VA", "HU", "IS",
            "IE", "IM", "IT", "JE", "LV", "LI", "LT", "LU", "MT", "MD", "MC",
            "ME", "NL", "MK", "NO", "PL", "PT", "RO", "RU", "SM", "RS", "SK",
            "SI", "ES", "SJ", "SE", "CH", "UA", "GB")
Africa <- c("DZ", "AO", "BJ", "BW", "IO", "BF", "BI", "CV", "CM", "CF", "TD",
            "KM", "CG", "CD", "CI", "DJ", "EG", "GQ", "ER", "SZ", "ET", "TF",
            "GA", "GM", "GH", "GN", "GW", "KE", "LS", "LR", "LY", "MG", "MW",
            "ML", "MR", "MU", "YT", "MA", "MZ", "NA", "NE", "NG", "RE", "RW",
            "SH", "ST", "SN", "SC", "SL", "SO", "ZA", "SS", "SD", "TZ", "TG",
            "TN", "UG", "EH", "ZM", "ZW")
Oceania <- c("AS", "AU", "IO", "CX", "CC", "CK", "FJ", "PF", "GU", "HM", "KI",
             "MH", "FM", "NR", "NC", "NZ", "NU", "NF", "MP", "PW", "PG", "PN",
             "WS", "SB", "TK", "TO", "TV", "UM", "VU", "WF")
North_America <- c("AI", "AG", "BS", "BB", "BZ", "BM", "CA", "KY", "CR", "CU",
                   "DM", "DO", "SV", "GL", "GD", "GP", "GT", "HT", "HN", "JM",
                   "MQ", "MX", "MS", "NI", "PA", "PR", "BL", "KN", "LC", "MF",
                   "PM", "VC", "SX", "TC", "US", "VG", "VI")
South_America <- c("AR", "BO", "BR", "CL", "CO", "EC", "FK", "GF", "GY", "PY",
                   "PE", "TT", "UY", "CW", "BQ", "AW", "SR", "VE")
Antarctica <- c("AQ", "BV", "GS")

# Count number of enrolments from each continent in each month and store this
# in a new tibble
months_continents <- enrolments %>% mutate(enrolled_at
                                           = as_datetime(enrolled_at),
                                   enrolled_month = month(enrolled_at),
                                   enrolled_year = year(enrolled_at), 
                                   continent = case_when(
                                     detected_country %in% Africa ~ "Africa",
                                     detected_country %in% Antarctica 
                                     ~ "Antarctica",
                                     detected_country %in% Asia ~ "Asia",
                                     detected_country %in% Europe ~ "Europe",
                                     detected_country %in% North_America
                                     ~ "North America",
                                     detected_country %in% Oceania ~ "Oceania",
                                     detected_country %in% South_America
                                     ~ "South America",
                                     NA ~ "NA")) %>%
  group_by(enrolled_year, enrolled_month, continent) %>%
  dplyr::count()
# Allocated start date of each month for x-axis position
months_continents$date <- with(months_continents,
                                ymd(sprintf('%04d%02d%02d', enrolled_year,
                                            enrolled_month, 1)))
# Order months by date
months_continents <- months_continents[with(months_continents,
                                              order(date)), ]

# Count number of enrolments from each continent in each season across a two
# year period and store this in a new tibble
seasons_continents <- filter(enrolments, ( as_date("2016-05-01")
                                           <= enrolled_at & enrolled_at
                                           < as_date("2018-05-01"))) %>%
  mutate(continent = case_when(
  detected_country %in% Africa ~ "Africa",
  detected_country %in% Antarctica ~ "Antarctica",
  detected_country %in% Asia ~ "Asia",
  detected_country %in% Europe ~ "Europe",
  detected_country %in% North_America ~ "North America",
  detected_country %in% Oceania ~ "Oceania",
  detected_country %in% South_America ~ "South America",
  NA ~ "NA")) %>%
  group_by(season, continent) %>%
  dplyr::count()
