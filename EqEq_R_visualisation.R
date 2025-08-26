

# Equitable Equations. Data visualisation with R in 36 minutes
# https://www.youtube.com/watch?v=McL9MMwmIZY


library(tidyverse)
library(modeldata)

# the basics
ggplot(crickets, aes(x=temp, y=rate, color=species))+
  geom_point()+
  labs(x = 'Temperature',
       y = 'Chirp rate',
       color = 'Species',
       title = 'Cricket chirps',
       caption = 'source: McDonald(2009)')+
  scale_color_brewer(palette='Dark2')



# modifying basic properties
ggplot(crickets, aes(x=temp, y=rate))+
  geom_point(color='red', size=2, alpha=0.8, shape='square')+
  labs(x = 'Temperature',
       y = 'Chirp rate',
       color = 'Species',
       title = 'Cricket chirps',
       caption = 'source: McDonald(2009)')+
  scale_color_brewer(palette='Dark2')



# Adding another layer

ggplot(crickets, aes(x=temp, y=rate))+
  geom_point()+
  geom_smooth(method='lm', se=F)+
  labs(x = 'Temperature',
       y = 'Chirp rate',
       color = 'Species',
       title = 'Cricket chirps',
       caption = 'source: McDonald(2009)')+
  scale_color_brewer(palette='Dark2')

# linear regression by groups
ggplot(crickets, aes(x=temp, y=rate, color=species))+
  geom_point()+
  geom_smooth(method='lm', se=F)
  labs(x = 'Temperature',
       y = 'Chirp rate',
       color = 'Species',
       title = 'Cricket chirps',
       caption = 'source: McDonald(2009)')+
  scale_color_brewer(palette='Dark2')

  
  
# Other plots
  
  ggplot(crickets, aes(x=rate))+
    geom_histogram(bins=15)  # one quantitative variable

  ggplot(crickets, aes(x=rate))+
    geom_freqpoly(bins=15)
  
  
  
  
  ggplot(crickets, aes(x=species))+
    geom_bar(color='black', fill='lightblue')
  
  
  ggplot(crickets, aes(x=species, fill=species))+
    geom_bar(show.legend = F)+
    scale_fill_brewer(palette="Dark2")
  
  
  ggplot(crickets, aes(x=species, y=rate))+
    geom_boxplot()
  
  
  ggplot(crickets, aes(x=species, y=rate, color=species))+
    geom_boxplot(show.legend = F)+
    scale_color_brewer(palette="Dark2")+
    theme_minimal()
  
  
  #faceting
  # not great
  ggplot(crickets, aes(x=rate, fill=species))+
    geom_histogram(bins=15) +
    scale_fill_brewer(palette="Dark2")
  
  
  
  
  
  ggplot(crickets, aes(x=rate, fill=species))+
    geom_histogram(bins=15) +
    facet_wrap(~species)+
    scale_fill_brewer(palette = 'Dark2')
  
  
  
  
  ggplot(crickets, aes(x=rate, fill=species))+
    geom_histogram(bins=15) +
    facet_wrap(~species, ncol=1)+
    scale_fill_brewer(palette = 'Dark2')
  
  
  
  
  

