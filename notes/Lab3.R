install.packages("tidyverse")
library(ggplot2)
SNPs<- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")


p<-ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome, fill = genotype), position = "dodge")
p

p<-ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome, fill = genotype), position = "dodge") +
  facet_wrap(~genotype, ncol = 2, scales = "free")
p + ggtitle("Total SNPs for each genotype") +
  xlab("Genotype") +
  ylab("Total number of SNPs") +
  theme(axis.title.x = element_text(face="bold")) +
  theme(axis.title.y = element_text(face="bold")) 
