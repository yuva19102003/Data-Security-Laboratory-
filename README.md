import requests
from bs4 import BeautifulSoup
#run - pip install bs4 (in your terminal)


profile_urls = []  # To store the Profile URLs
ctr = 0  # To traverse through Google results pages
while ctr < 15000:

    query = ('https://www.google.com/'
             'search?q=site:linkedin.com/in '
             'AND "Technical Recruiter"&sca_esv=') + str(ctr)
    
    response = requests.get(query)
    soup = BeautifulSoup(response.text, 'html.parser')
    for anchor in soup.find_all('a'):
        url = anchor["href"]
        if 'https://www.linkedin.com/' in url:
            url = url[7:url.find('&')]
            profile_urls.append([url])
            print(url)
    ctr = ctr + 10
	
https://www.linkedin.com/in/chelseachiappe
https://www.linkedin.com/in/jpatrowicz
https://www.linkedin.com/in/vamshi-thangadpalli-3a0415251

if you want more Recruiters profile link, links are in our channel please follow and check it out, because of message length,will post it there..