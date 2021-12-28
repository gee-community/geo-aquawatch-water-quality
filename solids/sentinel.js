var geometry = ee.Geometry.Polygon([[[-76.10, 39.38], [-76.10, 39.40],
[-76.06, 39.40], [-76.06, 39.38],
[-76.10, 39.38]]])

Map.addLayer(geometry);
Map.setCenter(-76.10, 39.38);
Map.setZoom(11)

var sentinel = ee.Image('COPERNICUS/S2_SR/20200116T155609_20200116T155605_T18SUJ');

var sentinel_b1 = sentinel.select('B1');
var proj_b1 = sentinel_b1.projection();
print(sentinel_b1);


var sentinel_b2 = sentinel.select('B2')
    // Force the next reprojection to aggregate instead of resampling.
    .reduceResolution({
        reducer: ee.Reducer.mean(),
        maxPixels: 1024
    })
    // Request the data at the scale and projection of the MODIS image.
    .reproject({
        crs: proj_b1
    });

print(sentinel_b2);

print(sentinel);
var rgbVis = {
    min: 0.0,
    max: 1000,
    bands: ['B4', 'B3', 'B2'],
};

Map.addLayer(sentinel, rgbVis, 'RGB');