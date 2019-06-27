## ----setup, include = FALSE----------------------------------------------
library(tidyverse)
library(workshopR)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = TRUE,
  eval = TRUE, 
  message = FALSE,
  fig.width = 6,
  fig.height = 4.5,
  tidy = FALSE
)

## ----instalacao, eval = FALSE--------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("mnunes/workshopR", build_vignettes=TRUE)

## ----instalacao02, eval = FALSE------------------------------------------
#  library(workshopR)
#  vignette("workshopR")

## ----ggplot01a, echo = TRUE----------------------------------------------
# carregando o pacote do workshop

library(workshopR)

# carregando o conjunto de dados

data("mpg")

# entrando no help de mpg

?mpg

# verificando o conteudo do conjunto de dados

str(mpg)

## ----mpg_01--------------------------------------------------------------
# carregando o pacote ggplot2

library(ggplot2)

# grafico de dispersao hwy x displ

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

## ----mpg_02, eval = FALSE------------------------------------------------
#  # <preencha com um comentario apropriado>
#  
#  ggplot(mpg, aes(x = displ, y = hwy))

## ----mpg_03, eval = FALSE------------------------------------------------
#  # grafico de dispersao <???>

## ----mpg_04, eval = FALSE------------------------------------------------
#  # grafico de dispersao <???>

## ----mpg_05, echo = FALSE------------------------------------------------
# grafico de dispersao hwy x displ

mpg %>%
  mutate(ind = ifelse(class == "2seater", "2seater", "other")) %>%
  ggplot(., aes(x = displ, y = hwy, colour = ind)) +
  geom_point() +
  theme(legend.position = "none") +
  scale_colour_manual(values = c("red", "black"))

## ----mpg_06--------------------------------------------------------------
# grafico de dispersao hwy x displ com legenda

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = class))

## ----mpg_07--------------------------------------------------------------
# grafico de dispersao hwy x displ com legenda

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(size = class))

## ----mpg_08--------------------------------------------------------------
# grafico de dispersao hwy x displ com legenda

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(shape = class))

## ----mpg_09--------------------------------------------------------------
# grafico de dispersao hwy x displ com legenda

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(alpha = class))

## ----mpg_10--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = "blue"))

## ----mpg_11--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class)

## ----mpg_12--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, ncol = 2)

## ----mpg_13, eval = FALSE------------------------------------------------
#  ggplot(mpg, aes(x = displ, y = hwy)) +
#    geom_point() +
#    facet_wrap(~ class + drv, ncol = 2)

## ----mpg_14--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

## ----mpg_15--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth()

## ----mpg_16--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv))

## ----mpg_17--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(colour = drv))

## ----mpg_18--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv)) +
  geom_smooth(aes(colour = drv))

## ----mpg_19--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  geom_smooth()

## ----mpg_20--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv)) +
  geom_smooth()

## ----mpg_21--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = drv)) +
  geom_smooth(aes(colour = drv)) + 
  geom_smooth()

## ----mpg_22--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

## ----mpg_23, echo = FALSE------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE, colour = "black")

## ----mpg_24, echo = FALSE------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) +
  geom_point() +
  geom_smooth()

## ----mpg_25--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point()

## ----mpg_26--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  theme_bw()

## ----mpg_27--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  theme_minimal()

## ----mpg_28--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  theme_dark()

## ----mpg_29--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point()

## ----mpg_30--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  scale_colour_brewer(palette = "Dark2")

## ----mpg_31--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  scale_colour_brewer(palette = "Reds")

## ----mpg_32--------------------------------------------------------------
ggplot(mpg, aes(x = displ, y = hwy, colour = drv)) +
  geom_point() +
  scale_colour_brewer(palette = "Pastel1")

## ----mpg_33--------------------------------------------------------------
# carregando o pacote dplyr

library(dplyr)

# verificando o conjunto de dados mpg

head(mpg)

head(mpg, 10)

## ----mpg_34--------------------------------------------------------------
mpg %>%
  select(manufacturer, hwy, displ)

## ----mpg_35--------------------------------------------------------------
mpg %>%
  filter(manufacturer == "chevrolet")

## ----mpg_36, eval = FALSE------------------------------------------------
#  mpg %>%
#    filter(manufacturer == "chevrolet") %>%
#    select(manufacturer, hwy, displ)

## ----mpg_37--------------------------------------------------------------
mpg %>%
  summarise(media_hwy = mean(hwy), 
            media_displ = mean(displ))

## ----mpg_38--------------------------------------------------------------
mpg %>%
  group_by(manufacturer) %>%
  summarise(media_hwy = mean(hwy), 
            media_displ = mean(displ))

## ----mpg_39--------------------------------------------------------------
mpg %>%
  group_by(manufacturer) %>%
  summarise(media_hwy = mean(hwy), 
            media_displ = mean(displ)) %>%
  arrange(media_hwy)

## ----mpg_40--------------------------------------------------------------
mpg %>%
  group_by(manufacturer) %>%
  summarise(media_hwy = mean(hwy), 
            media_displ = mean(displ)) %>%
  arrange(desc(media_hwy))

## ----mpg_41--------------------------------------------------------------
mpg %>%
  group_by(drv) %>%
  summarise(qtde = n())

## ----mpg_42--------------------------------------------------------------
mpg %>%
  group_by(drv) %>%
  summarise(qtde = n()) %>%
  ggplot(., aes(x = drv, y = qtde)) +
  geom_col()

## ----mpg_43--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  ggplot(., aes(x = class, y = qtde)) +
  geom_col()

## ----mpg_44--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  ggplot(., aes(x = class, y = qtde, fill = drv)) +
  geom_col()

## ----mpg_45--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  ggplot(., aes(x = class, y = qtde, fill = drv)) +
  geom_col(position = "dodge")

## ----mpg_46--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  print(n = Inf) %>%
  ggplot(., aes(x = class, y = qtde, fill = drv)) +
  geom_col(position = "dodge")

## ----mpg_47--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  ungroup() %>%
  complete(class, drv, fill = list(qtde = 0)) %>%
  print(n = Inf) %>%
  ggplot(., aes(x = class, y = qtde, fill = drv)) +
  geom_col(position = "dodge")

## ----mpg_48--------------------------------------------------------------
mpg %>%
  group_by(class, drv) %>%
  summarise(qtde = n()) %>%
  ungroup() %>%
  complete(class, drv, fill = list(qtde = 0)) %>%
  ggplot(., aes(x = class, y = qtde, fill = drv)) +
  geom_col(position = "dodge") +
  labs(x = "Tipo de Carro", y = "Quantidade de Carros", fill = "Tração", title = "Distribuição dos Carros de Passeio de Acordo com Tipo e Tração")

## ----gapminder_01, include = FALSE---------------------------------------
data(gapminder)
str(gapminder)

## ----gapminder_02, include = FALSE---------------------------------------
gapminder %>%
  filter(ano == 2007) %>%
  ggplot(., aes(x = pibPerCapita, y = expVida)) +
  geom_point() +
  labs(x = "PIB per Capita (US$)", y = "Expectativa de Vida (Anos)", title = "Relação entre Expectativa de Vida e PIB per Capita no Mundo no ano de 2007")

## ----gapminder_03, include = FALSE---------------------------------------
gapminder %>%
  filter(ano == 2007) %>%
  ggplot(., aes(x = pibPerCapita, y = expVida)) +
  geom_point(aes(colour = continente)) +
  labs(x = "PIB per Capita (US$)", y = "Expectativa de Vida ao Nascer", title = "Relação entre Expectativa de Vida ao Nascer e PIB per Capita no Mundo no ano de 2007", colour = "Continente")

## ----gapminder_04a-------------------------------------------------------
anos   <- seq(from = 1952, to = 2007, by = 5)
paises <- c("Argentina", "Bolivia", "Brazil", "Chile", 
  "Colombia", "Equador", "Paraguay", "Peru", "Uruguay", 
  "Venezuela")

gapminder %>%
  filter(ano %in% anos) %>%
  filter(pais %in% paises)

## ----gapminder_04, include = FALSE---------------------------------------
gapminder %>%
  filter(ano %in% anos) %>%
  filter(pais %in% paises) %>%
  ggplot(., aes(x=ano, y=expVida, colour=pais)) +
  geom_line() +
  labs(x = "Ano", y = "Expectativa de Vida ao Nascer", 
    colour = "Países") +
  scale_x_continuous(breaks = anos)

## ----gapminder_05, include = FALSE---------------------------------------
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(Media = mean(expVida)) %>%
  print(n = Inf)

## ----gapminder_06a, echo = FALSE-----------------------------------------
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(Media = mean(expVida)) %>%
  ggplot(., aes(x = ano, y = Media, fill = continente)) +
  geom_col(position = "dodge") +
  labs(x = "Ano", y = "Média da Expectativa de Vida ao Nascer", fill = "Continente") +
  scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5))

## ----gapminder_06, include = FALSE, eval = FALSE-------------------------
#  gapminder %>%
#    filter(ano %in% anos) %>%
#    group_by(continente, ano) %>%
#    summarise(Media = mean(expVida)) %>%
#    ggplot(., aes(x = ano, y = Media, fill = continente)) +
#    geom_col(position = "dodge") +
#    labs(x = "Ano", y = "Média da Expectativa de Vida ao Nascer", fill = "Continente") +
#    scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5))

## ----gapminder_07, include = FALSE---------------------------------------
gapminder %>%
  filter(ano %in% anos) %>%
  group_by(continente, ano) %>%
  summarise(Media = mean(expVida)) %>%
  ggplot(., aes(x = ano, y = Media, colour = continente)) +
  geom_line() +
  labs(x = "Ano", y = "Média da Expectativa de Vida ao Nascer", colour = "Continente") +
  scale_x_continuous(breaks = seq(from = 1952, to = 2007, by = 5))

## ----gapminder_08--------------------------------------------------------
gapminder %>%
  filter(ano == 2007) %>%
  ggplot(., aes(x=continente, y=expVida, fill=continente)) +
  geom_violin() +
  labs(x = "Continente", y = "Expectativa de Vida ao Nascer",  fill = "Continente")

## ---- include = FALSE----------------------------------------------------
anos   <- seq(from = 1952, to = 2007, by = 5)

gapminder %>%
  filter(ano %in% anos) %>%
  ggplot(., aes(x=continente, y=expVida, fill=continente)) +
  geom_violin() +
  labs(x="Continente", y="Expectativa de Vida ao Nascer", 
    fill="Continente") +
  facet_wrap(~ ano, nrow=3) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

