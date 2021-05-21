import os
import sys
from pytube import YouTube

#try:
url=sys.argv[1]
#except ValueError:
#    print("No Input Link")

targetFolder = './YOUTUBE_VIDEOS'


#url = 'https://www.youtube.com/watch?v=ZWIwLMpgcbI'
ytd = YouTube(url)

print(ytd.title)

ytd = YouTube(url).streams.first().download(targetFolder)


#from os import listdir
#from os.path import isfile, join

#onlyfiles = [f for f in listdir(targetFolder) if isfile(join(targetFolder, f))]
#print(*onlyfiles)

#for title in onlyfiles:
#    print(title)
