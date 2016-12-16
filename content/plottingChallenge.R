############################################################################
# R ResPitch Script
# Read in and plot titanic dataset
#
# Created by Nikki Rubinstein
# nikkir@student.unimelb.edu.au
# 10 August 2016
############################################################################


# read in data
titanic <- read.csv("https://goo.gl/4Gqsnz")


# calculate percentage survival of each gender of passenger class
counts <- table(titanic$Sex, titanic$Pclass, titanic$Survived)
percentageSurvival <- counts[,,2] / (counts[,,1] + counts[,,2]) * 100


# plot the results as a bar plot
barplot(percentageSurvival, beside = TRUE)