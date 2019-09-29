# Workshop de R: Levando a Ciência de Dados para Todos

Este é o repositório para os arquivos do meu workshop de iniciação ao R. É um curso básico, no qual serão vistos apenas conceitos elementares de visualização e de processamento de dados.

> **Workshop de R: Levando a Ciência de Dados para Todos**
> 
> Assim como o inglês se tornou uma língua obrigatória para quem quer fazer ciência ou compreender melhor o mundo no qual está inserido, saber interpretar dados está se virando uma habilidade cada vez mais imprescindível nos dias atuais. Embora seja trivial utilizar uma planilha eletrônica para analisar dados simples, este tipo de ferramenta possui diversas limitações. Por exemplo, não é possível registrar todos os passos utilizados em uma análise feita utilizando o Excel, o que inviabiliza a sua reprodutibilidade. Além disso, também não é possível trabalhar com arquivos que possuam milhões de linhas de informações. Em oposição a clicar em menus, escrever comandos para o computador executar é uma forma do usuário se conectar em um nível mais profundo àquilo que está executando. Desta forma, aprender ciência de dados através de uma linguagem de programação é capaz de aumentar as habilidades dos analistas, fazendo com que eles consigam perguntar e responder perguntas mais sofisticadas. Tarefas de análise de dados são fáceis de serem realizadas com linguagens de programação como R e python. Neste curso optamos pelo R pelas suas capacidades gráficas avançadas, que permitem recompensas rápidas ao usuário. Ao ver na tela os gráficos que explicam seus dados, os usuários sentem-se realizados, ganhando incentivos que o fazem se aprofundar neste tipo de estudo.

A fim de facilitar o entendimento dos participantes do workshop, decidi criar um pacote no R com todo o material necessário para seu acompanhamento. Desta forma, para poder acompanhar o workshop ou reproduzi-lo em casa, é necessário seguir alguns passos. São eles:

- Instale o `R`: [https://cran.r-project.org/](https://cran.r-project.org/)

- Instale o RStudio: [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/)

- Se o seu computador roda Windows, também é necessário instalar o programa [Rtools](https://cran.r-project.org/bin/windows/Rtools/)

- Com o RStudio aberto, instale o material do workshop:

    ```install.packages("devtools")```
    
    ```devtools::install_github("mnunes/workshopR", build_vignettes = TRUE)```
    
Este pacote depende de diversos outros pacotes para ser instalados. Portanto, ao instalá-lo, seja paciente e espere que todas as dependências necessárias sejam instaladas. Além disso, é fundamental que seu `R` e seu RStudio estejam nas versões mais atualizadas possível.

Utilize o link [https://github.com/mnunes/workshopR/issues](https://github.com/mnunes/workshopR/issues) para reportar eventuais bugs, problemas na instalação do pacote ou erros de digitação.
 
Se tudo correr bem, os comandos
    
    library(workshopR)
    vignette("workshopR")

vão abrir o material didático utilizado durante o workshop. O material didático pode ser pré-visualizado [neste link](https://htmlpreview.github.io/?https://github.com/mnunes/workshopR/blob/master/inst/doc/workshopR.html).

Há alguns exercícios ao final deste material. As respostas dos exercícios estão [neste link](https://github.com/mnunes/workshopR/blob/master/inst/doc/exercicios.R).

## Referências

Wickham, H.	e Grolemund, G. (2017) _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_. O'Reilly Media.