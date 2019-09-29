library(workshopR)

data("mpg")

str(mpg)

# 1

ggplot(mpg, aes(x = displ, y = hwy))

# 2

ggplot(mpg, aes(x = cyl, y = hwy)) +
  geom_point()

# 3

ggplot(mpg, aes(x = drv, y = class)) +
  geom_point()

# 4

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = "blue"))

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(colour = "blue")

# 5

str(mpg)

# quantitativas: displ, year, cyl, cty, hwy
# categoricas: manufacturer, model, trans, drv, fl, class

# 6

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = cty))

# 7

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ cty, ncol = 2)

# sao valores demais e o grafico acaba perdendo o sentido

# 8

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class + drv, ncol = 2)

# sao criadas facetas com as combinacoes entre class e drv

# 9

# categorica: cores, facetas
# continua: cores

# 10

# linha

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_line()

# boxplot

ggplot(mpg, aes(y = hwy)) +
  geom_boxplot()

ggplot(mpg, aes(x = drv, y = hwy)) +
  geom_boxplot()

# histograma

ggplot(mpg, aes(x = hwy)) +
  geom_histogram()

ggplot(mpg, aes(x = hwy)) +
  geom_histogram() +
  facet_wrap(~ drv)

# 11

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~ drv)


# 12

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE, colour = "black")

ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) +
  geom_point() +
  geom_smooth()

# 13

?theme_bw

# 14

?scale_colour_brewer

# 15

ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  theme_classic() +
  scale_colour_brewer(palette = "Spectral")

# extra

ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  scale_colour_viridis_d()

ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  scale_colour_viridis_d(begin = 0, end = 1)

# 16

mpg %>%
  group_by(manufacturer) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

mpg %>%
  group_by(manufacturer) %>%
  count() %>%
  arrange(desc(n))

# 17

mpg %>%
  filter(drv == "r") %>%
  select(manufacturer) %>%
  group_by(manufacturer) %>%
  count()

# 18

mpg %>%
  filter(year == 1999) %>%
  group_by(model) %>%
  summarise(media_hwy = mean(hwy)) %>%
  arrange(desc(media_hwy)) %>%
  head(5)


# aplicacao

# 1

data(gapminder)

str(gapminder)

# 2

gapminder %>%
  filter(ano == 2007) %>%
  ggplot(., aes(x = pibPerCapita, y = expVida)) +
  geom_point() +
  labs(x = "PIB per capita (US$)", y = "Expectativa de Vida ao Nascer (anos)")

# quanto maior o pib per capita, maior a expectativa de vida em anos

# 3

gapminder %>%
  filter(ano == 2007) %>%
  ggplot(., aes(x = pibPerCapita, y = expVida)) +
  geom_point(aes(colour = continente)) +
  labs(x = "PIB per capita (US$)", y = "Expectativa de Vida ao Nascer (anos)", colour = "Continente")

# paises da africa tem expectativa de vida mais baixa,
# enquanto os paises da asia sao os mais longevos

# 4

anos <- seq(from = 1952, to = 2007, by = 5)
paises <- c("Argentina", "Bolivia", "Brazil", "Chile", "Colombia", "Ecuador", "Paraguay", "Peru", "Uruguay", "Venezuela")
gapminder %>%
  filter(ano %in% anos) %>%
  filter(pais %in% paises) %>%
  ggplot(., aes(x = ano, y = expVida)) +
  geom_line(aes(colour = pais)) +
  labs(x = "Data", y = "Expectativa de Vida ao Nascer (anos)", colour = "Pa?s") +
  scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5)) #+
#scale_y_continuous(minor_breaks = seq(from = 40, to = 80, by = 1))

# a bolivia eh o pais com expectativa de vida mais baixa em todos os anos,
# enquanto o Chile foi o pais no qual a expectativa mais subiu raknkings

# 5

anos <- seq(from = 1952, to = 2007, by = 5)
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(expVidaMedia = mean(expVida)) %>%
  print(n= Inf)

# 6

anos <- seq(from = 1952, to = 2007, by = 5)
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(expVidaMedia = mean(expVida)) %>%
  ggplot(., aes(x = ano, y = expVidaMedia)) +
  geom_col(aes(fill = continente), position = "dodge") +
  scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5)) +
  labs(x = "Ano", y = "M?dia da Expectativa de Vida ao Nascer", fill = "Continente") +
  theme_grey()


# 7

anos <- seq(from = 1952, to = 2007, by = 5)
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(expVidaMedia = mean(expVida)) %>%
  ggplot(., aes(x = ano, y = expVidaMedia)) +
  geom_line(aes(colour = continente)) +
  scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5)) +
  labs(x = "Ano", y = "M?dia da Expectativa de Vida ao Nascer", colour = "Continente")

# prefiro esta visualizacao, porque ela me permite ver melhor a evolucao
# da expectativa de vida media em relacao ao tempo

# 8

# eh possivel perceber a desigualdade entre as expectativas de vida nos
# diferentes continentes. enquanto as expectativas de vida na europa
# sao altas para todos os paises, na africa existem condicoes de todo
# o tipo, desde paises em que se espera viver quase 80 anos, ateh
# locais em que nao se chega aos 40

# 9

anos <- seq(from = 1952, to = 2007, by = 5)
gapminder %>%
  filter(ano %in% anos) %>%
  ggplot(., aes(x=continente, y=expVida, fill=continente)) +
  geom_violin() +
  labs(x="Continente", y="Expectativa de Vida ao Nascer",
       fill="Continente") +
  facet_wrap(~ ano, nrow=3) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

# 10

# a) em geral, a expectativa de vida ao nascer tem crescido em
#    todos os continentes do mundo
# b) sim, parece que a africa demorou um pouco mais para chegar nos
#    niveis do que se ve em outros continentes
# c) sim, africa e asia possuem desigualdades mais acentuadas
# d) a expectativa de vida nas americas cresceu durante o periodo
#    analisado. eh interessante notar que a desigualdade nas expectativas
#    de vida do continente diminuiu com o passar do tempo
