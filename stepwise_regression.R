library(tidyverse)
library(caret)
library(leaps)
library(MASS)

# Fit the full linear model for a pancreatitis phenotype to age, age^2, sex, bmi
# smoking, drinking, and principle components of ancestry 1-10
full.model<-lm(pancreatitis ~., data = naps2)
# Stepwise regression on the full model using stepAIC
step.model <-stepAIC(full.model, direction = "both", trace = F)
summary(step.model)