# errormap
Visualizing estimate and confidence interval on a choropleth map using dashed boundary.

## Demo

[http://www-personal.umich.edu/~yonghah/errormap/](http://www-personal.umich.edu/~yonghah/errormap/)

Estimate is expressed with the color filled in the polygon. Upper confidence limt and lower confidence limit are expressed with alternating colors of the polygon boundary. The larger an area's uncertainty is, the more salient the area's dashed boundary becomes. 

Estimate: Mortality Rate 2014 (Self-harm and interpersonal violene, Death per 100,000) [source](http://ghdx.healthdata.org/us-data)

![image](https://user-images.githubusercontent.com/3218468/30518161-750338c8-9b43-11e7-81f1-8d2527bcbc3b.png)

## Background

Providing uncertainty information along with estimation is useful as an error bar in boxplot is. However displaying both uncertainty and estimation in a choropleth map was not so much successful so far.

#### Current approaches

- bivariate colormap 
- mapping surprise
- 3D plot
