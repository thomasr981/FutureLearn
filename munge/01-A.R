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
# Set up placeholder vector for season column
season = rep(0, nrow(enrolments))
# Use get_season to assign each enrolment to the correct season
for (i in 1:nrow(enrolments)) {
  season[i] = get_season(enrolments$enrolled_at[i])
}
enrolments = data.frame(enrolments, season)