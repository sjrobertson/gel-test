/**
 *
 */
module.exports.init = function() {
    var Yadda = require('yadda');

    var web = {
        page: null // holds the currently open casper object
    };

    var dictionary = new Yadda.Dictionary()
        .define('SIZE', /(\d+px)/);

    var library = Yadda.localisation.English.library(dictionary)

        .when('I open page "$URL"', function(url) {
            web.page = casper.open(url);
        })

        .then('the title should be "$TITLE"', function(title) {
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
        });

    return library;
};