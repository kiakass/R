#1.ISLR library, Boston data 를 로딩하고, 데이터를 간단히 살펴 봅니다.
library(MASS)
library(ISLR)

attach(Boston)
names(Boston)
?Boston
fix(Boston)
cor(Boston)

#2. linear model(lm) 을 수행하고, 내용을 확인합니다.
lm.fit =lm(medv ~ lstat, data=Boston)
summary(lm.fit)
plot(Boston$lstat, Boston$medv)


#3. 값을 predict(예측) 해봅니다.
predict(lm.fit, data.frame(lstat=c(5 ,10 ,15)) , interval="confidence")
predict(lm.fit, data.frame(lstat=c(5 ,10 ,15)) )


#4. 산포도 및 회귀선을 그려봅니다.
plot(lstat,medv)
abline(coef=coef(lm.fit), col="red")


#5. 다중 선형 회귀 : lstat, tax, lstat*tax
lm.fit =lm(medv ~ lstat+tax+lstat*tax, data=Boston)
summary(lm.fit)


#6. 기타, 회귀 계수(coefficients)들의 95% 신뢰구간
confint(lm.fit, level=0.95)


