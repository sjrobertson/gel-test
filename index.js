
var fs = require('fs');
var async = require('async');
var Yadda = require('yadda');
var parser = new Yadda.parsers.FeatureParser();
var library = require('./steps').init();
var yadda = Yadda.createInstance(library);
Yadda.plugins.casper(yadda, casper);

new Yadda.FeatureFileSearch('features').each(function(file) {
    var featureText = fs.read(file, 'utf8');
    var feature = parser.parse(featureText);

    casper.test.begin(feature.title, function suite(test) {
        async.eachSeries(feature.scenarios, function(scenario, next) {
            casper.start();
            casper.test.info(scenario.title);
            casper.yadda(scenario.steps);
            casper.run(function() {
                next();
            });
        }, function(err) {
            casper.test.done();
        });
    });
});