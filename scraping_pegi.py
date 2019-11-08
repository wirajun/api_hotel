from bs4 import BeautifulSoup
import requests
from selenium import webdriver

driver = webdriver.Chrome()
driver.get('https://www.pegipegi.com/hotel/pekanbaru/1.html?stayYear=2019&stayMonth=11&stayDay=13&stayCount=1&roomCrack=200000&adultNum=2&lowestPriceTemp=51733&highestPriceTemp=8264463&roomCount=1&activeSort=0')
res = driver.execute_script("return document.documentElement.outerHTML")
driver.quit()

soup = BeautifulSoup(res, 'lxml')
box = soup.find('div', {'class': 'widget listResult'})
containers = box.find_all('div', {'class': 'listContent'})

filename = "hotel.csv"
f = open(filename, "w")
headers = "nama; alamat; harga\n"

f.write(headers)

for container in containers:
    nama = container.find('div', {'class': 'title'}).text.replace('\n', '').strip()
    alamat = container.find('div', {'class': 'address'}).text.replace('\n', '').replace('Tampilkan Peta','').strip()
    harga = container.find('div', {'class': 'diskonPrice'}).text.replace('\n', '').replace('Rp','').replace('.','').strip()
    
    print(nama, alamat, harga)

    f.write(nama + ";" + alamat + ";" + harga + "\n")

f.close()