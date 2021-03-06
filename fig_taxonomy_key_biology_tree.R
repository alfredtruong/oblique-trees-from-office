#generate pretty tree from taxonomy key
temp <- read.csv("fig_taxonomy_key_biology_tree.csv")
temp.t <- tree(formula=Type~.,data=temp)
temp.t$frame$splits[,1] <- rep("?",times=9)
levels(temp.t$frame$var) <- c("<leaf>","Plants with Shoots","Flowering Plants","Plants with Leaves","Rubbery Leaves","Fuzzy Leaves")

postscript(file="fig_taxonomy_key_biology_tree.ps",width=6,height=6,horizontal=FALSE,paper="special")
par(mai=c(0.5,0.5,0.5,0.5))
plot(temp.t);text(temp.t)
title(main="Taxonomic Key in Tree Form")
dev.off()


