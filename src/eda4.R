library('ProjectTemplate')
load.project()

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