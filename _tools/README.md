# Tools

## refresh_orb

Summary
----
This script will attempt to download a copy of the current BBC ORB barlesque HTML, the service responsible for rendering the pan-site navigational elements at the top and bottom of all our pages. This is cached as a static include at the time the site HTML is generated.

Usage
----

    ruby build/refresh_orb.rb

The output of this command will appear in the following the _includes/orb/ folder: bodyfirst.html, bodylast.html, head.html.

