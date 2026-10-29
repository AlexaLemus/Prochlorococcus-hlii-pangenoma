# Visualizaciones reproducibles a partir de los RESÚMENES reportados.
# Ejecutar desde la raíz del repositorio. No ejecuta Panaroo.
if (!requireNamespace("ggplot2", quietly=TRUE)) install.packages("ggplot2")
library(ggplot2)
dir.create("figuras",showWarnings=FALSE)
d <- read.csv("datos/resumen_pangenoma.csv")
d$categoria <- factor(d$categoria, levels=c("Core","Soft core","Shell","Cloud"))
p <- ggplot(d,aes(x=categoria,y=grupos,fill=categoria)) + geom_col(width=.7) +
  geom_text(aes(label=paste0(grupos," (",porcentaje,"%)")),vjust=-.4,size=3.4) +
  labs(title="Composición del pangenoma de Prochlorococcus HLII",x="Categoría",y="Grupos génicos") +
  theme_minimal() + theme(legend.position="none") + expand_limits(y=1800)
ggsave("figuras/categorias_pangenoma_reproducida.png",p,width=9,height=5,dpi=300)
print(p)
