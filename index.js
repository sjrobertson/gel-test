var fixturepage = casper.cli.options['fixturepage'];
casper.echo('Option `fixturepage` set to: ' + fixturepage);

var features = casper.cli.options['features'];
casper.echo('Option `features` set to: ' + features);

if (typeof fixturepage === 'undefined' || typeof features === 'undefined') {
    casper.echo('USAGE: casperjs test index.js --fixturepage=http://example.com --features=featurename');
    casper.exit();
}

var fs = require('fs');
var async = require('async');
var Yadda = require('yadda');
var parser = new Yadda.parsers.FeatureParser();
var library = require('./steps').init(fixturepage);
var yadda = Yadda.createInstance(library);
Yadda.plugins.casper(yadda, casper);

new Yadda.FeatureFileSearch('features/' + features).each(function(file) {
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