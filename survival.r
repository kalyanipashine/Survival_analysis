library('survival')
library('survminer')
library("tidyr")
data=read.table("CGGA.mRNAseq_693_clinical.20200506.txt",header=T,sep="\t",row.names=1)
data$Gender = trimws(data$Gender,which = c("both"))
data = data %>% drop_na()
data

#Gender
pdf('Gender.pdf')
fit=survfit(Surv(OS,Censor)~Gender,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)
dev.off()

#Age
data$Age[data$Age>50] = 'Above_50'
data$Age[data$Age<=50] = 'Below_50'
pdf('Age.pdf',width = 20,height = 10)
fit=survfit(Surv(OS,Censor)~Age,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)
dev.off()

#Gender and Age
pdf('GenderAge.pdf',width = 20,height = 10)
fit=survfit(Surv(OS,Censor)~Age + Gender,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)
dev.off()

#Race
pdf('Hist.pdf',width = 20,height = 10,onefile = FALSE)
fit=survfit(Surv(OS,Censor)~Gender + Histology ,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)
dev.off()

pdf('Grade.pdf',width = 20,height = 10,onefile = FALSE)
fit=survfit(Surv(OS,Censor)~Gender + Grade ,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)
dev.off()