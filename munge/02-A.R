# Set up placeholder vector for season column
season = rep(0, nrow(enrolments))
# Use get_season to assign each enrolment to the correct season
for (i in 1:nrow(enrolments)) {
  season[i] = get_season(enrolments$enrolled_at[i])
}
enrolments = data.frame(enrolments, season)

# Count number of enrolments in each season across a two year period
seasons <- filter(enrolments, ( as_date("2016-05-01")
                                <= enrolled_at & enrolled_at
                                < as_date("2018-05-01"))) %>%
  group_by(season) %>%
  dplyr::count()
