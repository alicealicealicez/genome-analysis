#excercise 1
v1 <- c(1,3,6,9,12)
v2 <- c(1,0,1,0,1)
v1 + v2
v1 - v2
v1 * v2
v1 / v2

#excercise 2
v1 <- c(0,1,2,3)
str(v1)
v2 <- c("aa","bb","cc","dd")
str(v2)
v3 <- c("aa",1,"bb",2)
str(v3)

#excercise 3
genotype1 <- c("AA","AA","AG","GG","GG")
genotype2 <- c("AA","AA","GG","GG","GG")
Genotypes <- cbind(genotype1, genotype2)
Genotypes
table(Genotypes)

#excercise 4
treatment1 <- c(0,1,2,3,4)
treatment2 <- c(0,2,4,6,8)
treatment3 <- c(0,3,6,9,12)
time <- c(0,2,4,6,8)
Treatments <- data.frame(treatment1, treatment2, treatment3, time, row.names = time)
Treatments
plot(Treatments$time, Treatments$treatment3)

#excercise 5
SNP_table <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
SNP_table
str(SNP_table)
#chromosome is a factor with 25 levels, it is different from the truncated SNP file because it does not only contain numerical values.

#excercise 6
levels(SNP_table$genotype)

#excercise 7
SNP_table_A <- subset(SNP_table, genotype == 'A')
SNP_table_A
table(SNP_table_A$chromosome)

