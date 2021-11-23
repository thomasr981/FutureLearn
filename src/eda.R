library('ProjectTemplate')
load.project()

# Plot enrolments in each month as a bar chart
months_plot = ggplot(months, aes(x = as_date(date), y = n)) +
  geom_bar(stat = "identity") +
  scale_x_date(date_breaks = "1 month", labels = date_format("%m-%Y")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  labs(x="Month", y="Number of enrolments") +
  ggtitle("Number of enrolments in each month")
