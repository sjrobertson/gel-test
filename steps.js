/**
 *
 */
module.exports.init = function(fixturepage) {
    var Yadda = require('yadda');

    var web = {
        page: null // holds the currently open casper object
    };

    var dictionary = new Yadda.Dictionary()
        .define('SIZE', /(-?\d+px)/);

    var library = Yadda.localisation.English.library(dictionary)

        .when('I go to the url "$URL"', function(url) {
            web.page = casper.open(url);
        })

        .when('I go to the Fixture Page', function() {
            web.page = casper.open(fixturepage);
        })

        .then('the page has a title of "$TITLE"', function(title) {
            web.page.test.assertTitle(title, 'Page title is ' + casper.getTitle());
        })

        .then('the body element font-size should be $SIZE', function(size) {
            var v = web.page.evaluate(function () {
                return document.defaultView.getComputedStyle(document.body, null).getPropertyValue('font-size');
            });

            web.page.test.assertEquals(v, size);
        })

        .then('the source code should contain "$TERM"', function(term) {
            var d = web.page.evaluate(function () {
                return document;
            });
            var sourceCode = d.all[0].outerHTML.toString();
            web.page.test.assertTrue(sourceCode.indexOf(term) !== -1);
        })

        .then('the first heading should be H1', function() {
            var d = web.page.evaluate(function () {
                return document;
            });
            var sourceCode = d.all[0].outerHTML.toString();
            var found = sourceCode.match(/<body .+?<(h\d)/i);
            web.page.test.assertNot(found === null);
            if (found !== null) {
                web.page.test.assertEquals(found[1].toLowerCase(), 'h1', 'The first heading after the body tag isn\'t H1.');
            }
        })

        .when ('screenwidth is set to "$DIMENSION"', function(dimension) {
            web.page.viewport(+dimension, +dimension);
        })

        .then ('touch is not available', function() {
            var v = web.page.evaluate(function () {
                document.documentElement.classList.remove('touch');
                document.documentElement.classList.add('no-touch');
                return document.documentElement.className;
            });

            console.log("class is "+v);
        })

        .then ('touch is available', function() {
            web.page.evaluate(function () {
                document.documentElement.classList.add('touch');
                document.documentElement.classList.remove('no-touch');
            });
        })

        .then ('an element with selector "$SELECTOR" has a "$PROPERTY" of "$VALUE"', function(selector, property, value) {

            var v = web.page.evaluate(function (property, selector) {
                return document.defaultView.getComputedStyle(document.querySelector(selector), null).getPropertyValue(property)//document.defaultView.getComputedStyle(document.querySelector(selector), null).getPropertyValue(property);
            }, property, selector);

            web.page.test.assertEquals(v, value);
        })

        ;

    return library;
};