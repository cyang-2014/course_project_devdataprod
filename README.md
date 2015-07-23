# Shiny application to predict MilesPerGallon (*MPG*) in __mtcars__ dataset
## course_project_devdataprod
For a direct access to my Shiny application, click [this link](https://cyangstat.shinyapps.io/course_project_devdataprod)

This README file is the supporting documentation accompagning this Shiny application. It includes two parts:
1. Instructions for this course project
2. Description of my Shiny application

## 1. Instructions for this course project  
1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the text box below
4. Share your server.R and ui.R code on github
The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.
The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.  

## 2. Description of my Shiny application
This prediction model is adopted from regression model course project I conducted last month,
in exploring the relationship between a set of variables and miles per gallon (MPG) (outcome), particularly in the following questions:
* “automatic vs manual transmission for MPG”
	+ From the boxplot, manual transmission is better for MPG
* "prediction model of MPG"
	+ To fit a better model using variables besides _am_, I performed a multivariate regression by adding _hp_ and _wt_ into the model.


