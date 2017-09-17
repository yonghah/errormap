# errormap
Visualizing estimate and confidence interval on a choropleth map using dashed boundary.

## Demo

[http://www-personal.umich.edu/~yonghah/errormap/](http://www-personal.umich.edu/~yonghah/errormap/)

Estimate is expressed with the color filled in the polygon. Upper confidence limt and lower confidence limit are expressed with alternating colors of the polygon boundary. The larger an area's uncertainty is, the more salient the area's dashed boundary becomes. 

Estimate: Mortality Rate 2014 (Self-harm and interpersonal violene, Death per 100,000) [source](http://ghdx.healthdata.org/us-data)

![image](https://user-images.githubusercontent.com/3218468/30518161-750338c8-9b43-11e7-81f1-8d2527bcbc3b.png)

## Background

Providing uncertainty information along with estimate is useful as an error bar in boxplot is. However displaying both uncertainty and estimation in a choropleth map was not so much successful so far.

#### Current approaches

- Bivariate colormap. Hue denotes color and alpha (or saturation) denotes uncertainty such as [value-by-alpha map](http://andywoodruff.com/blog/value-by-alpha-maps/). This gives a nice overall picture. However, it doesn't provide the information on confidential limits.

- Mapping surprise. Instead of mapping rates, this approach maps baysiean surprise to prevent creating biases from low population area. See [this](https://medium.com/@uwdata/surprise-maps-showing-the-unexpected-e92b67398865). This is really good to visualize real outliers. But sometimes we just want to see estimates as well. 

- 3D barplot. This is a translation of 2d barplot into 3d map. This gives the same information as barplot but hardly legible.
