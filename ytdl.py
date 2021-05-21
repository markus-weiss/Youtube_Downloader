
import sys
from pytube import YouTube

url=sys.argv[1]

ytd = YouTube(url)
ytd = YouTube(url).streams.first().download()
