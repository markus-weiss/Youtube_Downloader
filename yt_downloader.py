# pip3 install pytube

try:
    from pytube import YouTube
    from pytube import Playlist
except Exception as e:
    print("Some Modules are Missing {}".format(e))

url = ""
ytd = YouTube(url)
ytd = YouTube(url).streams.first().download()



