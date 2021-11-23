library('ProjectTemplate')
load.project()

# Plot enrolments in each season as a bar chart
seasons_plot  = ggplot(data=seasons, aes(x=season, y = n)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  scale_x_discrete(limits=c("Spring","Summer","Autumn","Winter")) +
  labs(x="Season", y="Number of enrolments") +
  ggtitle("Number of enrolments in each season bewteen 2016/05/01 - 2018/05/01")
