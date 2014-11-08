# Protos

Proto files for the TruckMuncher API

## Viewing the documentation

Step 1: Install and run [pilgrimize](https://www.npmjs.org/package/pilgrimize) from the directory where your protos.json is.

    $> npm install pilgrimize -g
    $> brew install protobuf
    $> pilgrimize

Step 2: Visit [Pilgrim](http://pilgrim.fender.io) while the process is still running in your terminal.

## Custom Generators
We have two custom generators that we use: one for generating the API code, one for the Android code.

### Android Generator
[Android Generator on Github](https://github.com/MariusVolkhart/wire-android)
This generator enables synchronous and asynchronous Retrofit code.

### API Generator
[API Generator on Github](https://github.com/TruckMuncher/wire-api)
This generator adds information to convert the protos to JSON.