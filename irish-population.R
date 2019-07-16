library(googleVis);
province<-c("IE-CW", "IE-CN", "IE-CE", "IE-C",
            "IE-CO", "IE-DL", "IE-D",  "IE-G",
            "IE-KY", "IE-KE", "IE-KK", "IE-LS",
            "IE-L",  "IE-LM", "IE-LK", "IE-LD",
            "IE-LH", "IE-MO", "IE-MH", "IE-MN",
            "IE-M",  "IE-OY", "IE-RN", "IE-SO",
            "IE-TA", "IE-U",  "IE-WD", "IE-WH",
            "IE-WX", "IE-WW");
Population<-c(56.9,76.1,118.8,0,
       542.8,159.1,1347.3,258.0,
       147.7,222.5,99.2,84.7,
       0,194.9,32.0,40.8,
       128.8,130.5,195.0,61.3,
       0,77.9,64.5,65.6,
       159.5,0,116.1,88.7,
       149.7,142.4);

Vis<-data.frame(province,Population)

Map<-gvisGeoChart(Vis,
                  locationvar="province",
                  colorvar="Population",
                  options=list(region="IE",
                               displayMode="regions",
                               resolution="provinces",
                               colorAxis="{colors:['lightgreen','red']}"))

plot(Map)
