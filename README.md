# An example of fuzzy logic in R

## Overview

In Boolean or two-valued logic, the truth values of a variable will always be either 0 or 1 and in traditional two-valued set theory, an element belongs to a set or not. Similar to this, in a typical classification problem, an observation is classified into one of several different classes. In all of these cases, there is a definitive true value.

Fuzzy logic presents a different approach to these problems. In fuzzy logic, the truth value of a variable or the label (in a classification problem) is a real number between 0 and 1. For example, suppose you are in a pool with a friend. For you, the water is warm and for your friend, the water is cold. After a silly discussion between both of you, you decide to use a thermometer to measure the temperature, and it is 20C. So since both of you know the freezing and boiling point of water (0C and 100C), you said the water is 0.20 hot and your friend is said, it is 0.80 cold. In other words, for you and your friend, there is not an absolute truth about the state of the water.

In this report, I will go through the process of creating a fuzzy system in R. This fuzzy system will use weather as an example and its purpose is to determine how ‘bad’, ‘ok’ or ‘perfect’ the weather is, in other words, the system will assign a score to each of these categories. Keep in mind that in this problem, I will be creating the fuzzy rules based on my opinion of what is a bad/ok/perfect weather; by no means this is something scientific or serious, it is just a guide.

In this tutorial I will use the package "sets" for creating the fuzzy system. For more information about “sets”, check out the official documentation at https://cran.r-project.org/web/packages/sets/sets.pdf

Link to the tutorial: http://juandes.github.io/FuzzyLogic-R/docs/fuzzy_tutorial

## Project

This repository contains a markdown file with the tutorial, an R script with the code used and the HTML version of the report.


