\docType{data}
\name{gapminder}
\alias{gapminder}
\title{Dados socio-economicos de 142 paises entre 1950 e 2007}
\format{Um tibble com 3313 observacoes nas seguintes 6 variaveis:
  \describe{
    \item{\code{pais}}{Fator com o nome de 142 paises}
    \item{\code{continente}}{Continente dos paises}
    \item{\code{ano}}{Ano de coleta dos dados, entre 1950 e 2007}
    \item{\code{expVida}}{Expectativa de vida ao nascer, em anos}
    \item{\code{pop}}{Populacao}
    \item{\code{pibPerCapita}}{PIB per capita, em US\$, ajustado pela inflacao}
  }}
\description{
  Conjunto de dados da Gapminder Foundation, com observacoes de diversas variaveis de 142 paises
}

\examples{
library(tidyverse)
str(gapminder)

anos <- seq(from=1952, to=2007, by=5)

gapminder \%>\%
  filter(ano \%in\% anos) \%>\%
  ggplot(., aes(x=log(pibPerCapita), y=expVida)) +
  geom_point(aes(colour=continente)) +
  labs(x="log do PIB per capita (US$)", y="Expectativa de Vida (anos)", colour="Continente") +
  facet_wrap(~ ano, nrow=3)
}

\references{
\url{http://www.gapminder.org/data/}
}
\keyword{datasets}

