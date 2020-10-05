# pip install pytube3

try:
    from pytube import YouTube
    from pytube import Playlist
except Exception as e:
    print("Some Modules are Missing {}".format(e))

url = "https://www.youtube.com/watch?v=X3IA6pIVank"
ytd = YouTube(url)
ytd = YouTube(url).streams.first().download()



