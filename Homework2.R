#keep the scripts here, to beeter document what is changing
# load the libraries gapminder and ggplot2 and dplyr and tidyr

ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp, colour = continent)) +
  geom_point()

#this works so far
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent))
#HA I did it! This is part 1 on the HW

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10()

#^ plot 2

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10() +
  stat_smooth(method = lm)

#closer, been working on it awhile, but can't get it to just one line for the 
# whole graph.....

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10() +
  geom_smooth(aes(group = 1), size = 1, method = "lm", se = TRUE)

#^ plot 3

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent)) + 
  geom_density(aes(shape = continent)) +
  facet_grid(year~lifeExp)
#^ this one is broken
ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent, 
                             fill = continent)) + 
  geom_density(aes(shape = continent), alpha = 0.4)
#^ this one is broken

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent, 
                             fill = continent)) + 
  geom_density(color = "black",alpha = 0.4)
##^ this one worked, but not faceted

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent, 
                             fill = continent)) + 
  geom_density(color = "black",alpha = 0.4) +
  facet_wrap(~year)
#^ this gets all horizontal facets. dammit. Can I swear in the comments? 
#is that kosher? Fuck it. Sorry about your delicate sensibilities. You ass.

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent,
                             fill = continent)) + 
  geom_density(color = "black",alpha = 0.6) +
  facet_wrap(~year) 
#^ plot 4, got it! With Jillian's help. stupid facet wrap.

ggplot(data = gapminder, aes(x = continent, y = lifeExp, colour = continent)) + 
  geom_boxplot() +
  facet_grid(year~continent)
#^ this is the box plot attempt
# again, i think it's right, but wrong facet layout. the dots will squish 
# together? need to figure out how to get all the boxes on the same graph?

ggplot(data = gapminder, aes(x = continent, y = lifeExp, colour = continent)) + 
  geom_boxplot() +
  facet_wrap(~year) +
  theme(axis.text.x=element_text(angle=50, size=10, vjust=0.5))
#^ plot 5 and bonus! y axis labelling fixed.

#v starting dplyer

select(gapminder)

tbl_df(gapminder)

group_by(gapminder, continent)

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent, 
                              fill = continent)) +
  geom_density(color = "black", alpha = 0.6)
#^ plot 6

asian_data <- filter(gapminder, continent == "Asia")

ggplot(data = asian_data, aes(x = lifeExp, y = , colour = continent, 
                             fill = continent)) +
  scale_fill_manual(values = c("green")) + 
  geom_density(color = "black", alpha = 0.6) + 
  geom_vline(aes(xintercept = mean(lifeExp)))
#^ plot 7 got it!



ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent, 
                              fill = continent)) +
  facet_wrap(~continent) + 
  geom_density(color = "black", alpha = 0.6) + 
  geom_vline(aes(xintercept = mean(lifeExp)))
#^this only give the mean for the whole, not the individual countries




# is there a way to make ggplot and all the things not have to be reloaded 
# everytime? or did i screw myself by starting this thing NOT up here in the 
# script place?
















