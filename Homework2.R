#keep the scripts here, to beeter document what is changing


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

#closer, been working on it awhile, but can't get it to just one line for the whole graph.....

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) + 
  geom_point(aes(shape = continent)) +
  scale_x_log10() +
  geom_smooth(method = 'lm')

#I'm giving up on this for now, but will come back soon. OR ELSE

#ok, calling it a night. but look up density plots here http://flowingdata.com/2012/05/15/how-to-visualize-and-compare-distributions/
# GG brah

















