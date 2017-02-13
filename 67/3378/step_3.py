import sys
import requests

base_url = 'https://stepic.org/media/attachments/course67/3.6.3/'
url = sys.argv[1]
content = requests.get(url)
while not content.text.startswith('We'):
    url = base_url + content.text
    content = requests.get(url)

print(content.text)
