# Merge all enrolment files
enrolments = merge(cyber.security.1_enrolments,
                   merge(cyber.security.2_enrolments,
                         merge(cyber.security.3_enrolments,
                               merge(cyber.security.4_enrolments,
                                     merge(cyber.security.5_enrolments,
                                           merge(cyber.security.6_enrolments,
                                                 cyber.security.7_enrolments,
                                                 all=TRUE),
                                           all=TRUE),
                                     all=TRUE),
                               all=TRUE),
                         all=TRUE),
                   all=TRUE)
# Select only individuals with the role "learner"
enrolments = enrolments[enrolments$role == "learner", ]

# Count number of enrolments in each month and store this in a new tibble
months <- enrolments %>% mutate(enrolled_at = as_datetime(enrolled_at),
                        enrolled_month = month(enrolled_at),
                        enrolled_year = year(enrolled_at)) %>%
  group_by(enrolled_year, enrolled_month) %>%
  dplyr::count()
# Allocated start date of each month for x-axis position
months$date <- with(months, ymd(sprintf('%04d%02d%02d', enrolled_year,
                                          enrolled_month, 1)))
# Order months by date
months <- months[with(months, order(date)), ]
