# SOLID with EE

This folder contains an effort to run an inland and coastal TSS algorithm SOLID (https://github.com/BrandonSmithJ/MDN) with Earth Engine. This is focused on using Sentinel 2 and assumes an input of atmospherially corrected, remote sensed reflectance (Rrs) images.

The project is broekn up by efforts:

1. [SOLID with EE](https://github.com/Nateme16/geo-aquawatch-water-quality/tree/main/WQ%20algorithms/SOLID/SOLID%20with%20EE%20) Using GEE as the data input and visualization tool, but running SOLID from the python libraries in the [MDN github library](https://github.com/BrandonSmithJ/MDN) 'locally', in this case in a COLAB notebook environment.

2. [SOLID in EE](https://github.com/Nateme16/geo-aquawatch-water-quality/tree/main/WQ%20algorithms/SOLID/SOLID%20in%20EE) Translating the SOLID model into EE functions to be conducted server-side. This includes work to upload the fitted custom TensorFLow MDN model to run on Google Cloud services and EEifiy it to work in GEE.
