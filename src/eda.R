library('ProjectTemplate')
load.project()

##### Cycle 1 ####
# Plot enrolments in each month as a bar chart
months_plot = ggplot(months, aes(x = as_date(date), y = n)) +
  geom_bar(stat = "identity") +
  scale_x_date(date_breaks = "1 month", labels = date_format("%m-%Y")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  labs(x="Month", y="Number of enrolments") +
  ggtitle("Number of enrolments in each month")

##### Cycle 2 ####
# Plot enrolments in each season as a bar chart
seasons_plot  = ggplot(data=seasons, aes(x=season, y = n)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
        plot.title = element_text(hjust = 0.5)) +
  scale_x_discrete(limits=c("Spring","Summer","Autumn","Winter")) +
  labs(x="Season", y="Number of enrolments") +
  ggtitle("Number of enrolments in each season 2016/05/01 - 2018/05/01")

#### Cycle 3 ####
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
  ggtitle("Number of enrolments in each season 2016/05/01 - 2018/05/01") +
  scale_fill_discrete(name = "Continent")

#### Cycle 4 ####
# Continental enrolment proportions in Spring
spring_pie = ggplot(spring, aes(x="", y=n, fill=continent))+
  geom_bar(width = 1, stat = "identity")+
  coord_polar("y", start=0)+
  scale_fill_discrete(name = "Continent",
                      labels = 
                        sprintf("%s (%s)", spring$continent,
                                scales::percent(round(spring$n/sum(spring$n),4),
                                                accuracy=0.01)))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        line=element_blank(),
        plot.title=element_text(hjust=0.5),
        panel.background=element_blank())+
  ggtitle("Spring")

# Continental enrolment proportions in Summer
summer_pie = ggplot(summer, aes(x="", y=n, fill=continent))+
  geom_bar(width = 1, stat = "identity")+
  coord_polar("y", start=0)+
  scale_fill_discrete(name = "Continent",
                      labels =
                        sprintf("%s (%s)", summer$continent,
                                scales::percent(round(summer$n/sum(summer$n),4),
                                                accuracy=0.01)))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        line=element_blank(),
        plot.title=element_text(hjust=0.5),
        panel.background=element_blank())+
  ggtitle("Summer")

# Continental enrolment proportions in Autumn
autumn_pie = ggplot(autumn, aes(x="", y=n, fill=continent))+
  geom_bar(width = 1, stat = "identity")+
  coord_polar("y", start=0)+
  scale_fill_discrete(name = "Continent",
                      labels = 
                        sprintf("%s (%s)", autumn$continent,
                                scales::percent(round(autumn$n/sum(autumn$n),4),
                                                accuracy=0.01)))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        line=element_blank(),
        plot.title=element_text(hjust=0.5),
        panel.background=element_blank())+
  ggtitle("Autumn")

# Continental enrolment proportions in Winter
winter_pie = ggplot(winter, aes(x="", y=n, fill=continent))+
  geom_bar(width = 1, stat = "identity")+
  coord_polar("y", start=0)+
  scale_fill_discrete(name = "Continent",
                      labels = 
                        sprintf("%s (%s)", winter$continent,
                                scales::percent(round(winter$n/sum(winter$n),4),
                                                accuracy=0.01)))+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        line=element_blank(),
        plot.title=element_text(hjust=0.5),
        panel.background=element_blank())+
  ggtitle("Winter")
