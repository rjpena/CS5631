str(data)
df <- mutate_if(data, is.numeric,as.factor)
str(df)
str(df$Q12)
levels(df$Q13)<-c('1','2','3','4','5')
str(df)
clust<-hclust(dist(df))
plot(clust,main = "Hierarchical Clustering by Student",xlab = "",ylab="",sub="")
t<-t(df)
tclust<-hclust(dist(t))
plot(tclust,main="Hierarchical Clustering by Question",xlab = "",ylab="",sub="")
t<-t[!2,]
colnames(t)=t[,"Column1"]
t
colnames(t) <- as.character(unlist(t[1,]))
t = t[-1, ]
t
