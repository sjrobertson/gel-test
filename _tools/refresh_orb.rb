require "rubygems"
require "json"
require "net/http"
require "uri"
 
 # see http://www.bbc.co.uk/frameworks/orb/webservice
address = "http://www.bbc.co.uk/frameworks/barlesque/orb/webservice.json"
destination = File.dirname(__FILE__) + "/../_includes/orb/"
stamp = "<!--refresh_orb/" + Time.now.inspect + "-->"

uri = URI.parse(address)
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
 
if response.code == "200"
  result = JSON.parse(response.body)

  puts result["status"]
  File.write(destination + "head.html",  stamp + result["barlesque"]["head"])
  File.write(destination + "bodyfirst.html", result["barlesque"]["bodyfirst"]) 
  File.write(destination + "bodylast.html", result["barlesque"]["bodylast"])   
else
  puts "Unable to get or read the required JSON."
end