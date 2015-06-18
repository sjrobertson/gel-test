Feature: Typography Fixture Page

Scenario: Accessing The Typography Fixture Page

    When I open page "http://bbc.github.io/gel-typography/"
    then the title should be "GEL Typography Demo | BBC GEL"
    and the body element font-size should be 16px

    When I open page "http://bbc.co.uk/"
    then the body element font-size should be 10px
    and the first heading should be H1