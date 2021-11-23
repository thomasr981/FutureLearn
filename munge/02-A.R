# Count number of enrolments in each season across a two year period
seasons <- filter(enrolments, ( as_date("2016-05-01")
                                <= enrolled_at & enrolled_at
                                < as_date("2018-05-01"))) %>%
  group_by(season) %>%
  dplyr::count()
