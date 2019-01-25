import requests
import json
import modules.config as C
from datetime import datetime
import os

def get_weather():

    parameters = {'q': 'London, UK', 'appid':C.API_KEY}
    #api.openweathermap.org/data/2.5/weather?q=London,uk&appid=mykeygoeshere
    print(C.API_KEY)
    result = requests.get("http://api.openweathermap.org/data/2.5/weather/?",parameters)

    if result.status_code == 200:
        json_data = result.json()
        file_name = str(datetime.now().date()) + '.json'
        tot_name = os.path.join(os.path.dirname(__file__),'data',file_name)

        with open(tot_name, 'w') as outputfile:
            json.dump(json_data,outputfile)
    else:
        print("Error in API call")
    

if __name__ == '__main__':
    get_weather()










