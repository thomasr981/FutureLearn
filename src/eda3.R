library('ProjectTemplate')
load.project()

# Plot enrolments in each month as a bar chart
months_continents_plot = ggplot(months_continents, aes(x = as_date(date),
                                                       y = n,
                                                       fill=continent)) +
  geom_bar(position= "stack", stat = "identity") +
  scale_x_date(date_breaks = "1 month", labels = date_format("%m-%Y")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  labs(x="Month", y="Number of enrolments") +
  ggtitle("Number of enrolments in each month") +
  scale_fill_discrete(name = "Continent")

seasons_continents_plot = ggplot(data=seasons_continents,
                                 aes(x=season, y = n, fill=continent)) +
  geom_bar(stat = "identity", position="stack") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  scale_x_discrete(limits=c("Spring","Summer","Autumn","Winter")) +
  labs(x="Season", y="Number of enrolments") +
  ggtitle("Number of enrolments in each season bewteen 2016/05/01 - 2018/05/01")
  + scale_fill_discrete(name = "Continent")

