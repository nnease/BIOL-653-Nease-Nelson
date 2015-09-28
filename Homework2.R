#keep the scripts here, to beeter document what is changing
# load the libraries gapminder and ggplot2

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

#easy peasy, took like 5 minutes! ::cackles:: jillian, you were right, I like R

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10() +
  stat_smooth(method = lm)

#closer, been working on it awhile, but can't get it to just one line for the 
# whole graph.....

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10() +
  geom_smooth(aes(group = 1), size = 2, method = "lm", se = FALSE)

#this is close? i think?

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
  facet_grid(year~.)
#^ this gets all horizontal facets. dammit. Can I swear in the comments? 
#is that kosher? Fuck it. Sorry about your delicate sensibilities. You ass.

ggplot(data = gapminder, aes(x = lifeExp, y = , colour = continent,
                             fill = continent)) + 
  geom_density(color = "black",alpha = 0.4) +
  facet_grid(year~)
#^ it's this, but something goes after the ~...... that is not "continent" so 
# they're grouped.

ggplot(data = gapminder, aes(x = continent, y = lifeExp, colour = continent)) + 
  geom_boxplot() +
  facet_grid(year~continent)
# again, i think it's right, but wrong facet layout. the dots will squish 
# together?






# is there a way to make ggplot and all the things not have to be reloaded 
# everytime? or did i screw myself by starting this thing NOT up here in the 
# script place?
















