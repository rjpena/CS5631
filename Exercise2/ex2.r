str(responses)
ex2 <- mutate_if(responses, is.numeric,as.factor)
levels(ex2$Q13)<-c('1','2','3','4','5')
str(ex2)
ex2
kruskal.test(ex2)

mean((1+2+3+4+5)/5)

clust<-hclust(dist(ex2))
plot(clust,main = "Hierarchical Clustering by Student",xlab = "",ylab="",sub="")

te2<-t(ex2)
tclust<-hclust(dist(te2))
plot(tclust,main="Hierarchical Clustering by Question",xlab = "",ylab="",sub="")

dist(ex2)
