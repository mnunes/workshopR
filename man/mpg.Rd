\docType{data}
\name{mpg}
\alias{mpg}
\title{Informacoes de consumo de combustivel sobre carros de passeio}
\format{Um data frame com informacoes a respeito de 234 carros com as seguintes 11 variaveis:
  \describe{
    \item{\code{manufacturer}}{fabicante do automovel}
    \item{\code{model}}{modelo do carro}
    \item{\code{displ}}{deslocamento do motor em litros}
    \item{\code{year}}{ano de fabricacao}
    \item{\code{cyl}}{numero de cilindros}
    \item{\code{trans}}{tipo de transmissao}
    \item{\code{drv}}{f = tracao dianteira, r = tracao traseira, 4 = 4x4}
    \item{\code{cty}}{consumo em milhas por galao na cidade}
    \item{\code{hwy}}{consumo em milhas por galao na estrada}
    \item{\code{fl}}{e = etanol, d = diesel, r = gasolina comum, p = gasolina premium, c = gas natural}
    \item{\code{class}}{tipo de carro}
  }}
\description{
  Este conjunto de dados foi retirado do site http://fueleconomy.gov . Originalmente faz parte do pacote ggplot2 do R.
}

\examples{
library(tidyverse)
str(mtcars)
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()
}

\keyword{datasets}

