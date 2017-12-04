import json
import urllib2
from os import system

url = "http://127.0.0.1/admin/api.php" #The default is set to run off of localhost
data = json.load(urllib2.urlopen(url))
parsed_json = data

ads = parsed_json['ads_blocked_today']

system ('bash /home/pi/lametricupload.sh %(ads)s' % locals()) #Sends the amount of blocked ads to the bash script
