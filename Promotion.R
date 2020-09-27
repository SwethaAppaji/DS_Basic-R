### Case study of Promoting Interest Rate Waiver(IRW) or Standard Promotion(SP)
## Business Problem: Should the Interest Rate Waiver promotion to be taken or not.
 # H0: Do not Promote Interest Rate Waiver as Average IRW is less than or equal to SP.
 # H1: Promote Interest Rate Waiver as Average IRW is greater than or equal to SP.


# Promotion <- read.csv("~/Data Science/Data Sets/Promotion.csv")
# View(Promotion)
colnames(Promotion)<-c("credit","Promotion.Type","InterestRateWaiver","StandardPromotion")
View(Promotion)
attach(Promotion)


##### Normality Test
shapiro.test(InterestRateWaiver)
# p value = 0.2246 >0.05, accept Ho i.e., There is normality in data.

shapiro.test(StandardPromotion)
# p value = 0.1916 >0.05, accept Ho i.e., There is normality in data.

## as normality of data is satisfied, test for Variance

#### Variance Test
var.test(InterestRateWaiver,StandardPromotion)
# p value = 0.653 >0.05, accept Ho i.e., Variances are equal.

## as normality of data is satisfied, go for 2 sample test

#### 2 sample t test
## t test - Method 1
t.test(InterestRateWaiver,StandardPromotion,alternative = "two.sided", conf.level = 0.95,correct= T)

# p value = 0.02423 <0.05, reject Ho and accept H1 i.e., Promote Full Waiver Interest Rate.

## t test - Method 2
?t.test
t.test(InterestRateWaiver,StandardPromotion,alternative = "greater",var.equal = T)

# p value = 0.01211 <0.05, reject Ho and accept H1 i.e., Promote Full Waiver Interest Rate.