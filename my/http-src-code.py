import urllib2

url = raw_input("Enter a URL : ")
response = urllib2.urlopen(url)
page_source = response.read()

print page_source
