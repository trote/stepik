import sys
import requests

url = sys.argv[1]
content = requests.get(url)

print(len(content.text.splitlines()))
