# Youtube_Downloader
A simple python-youtube downloader, thanks to:
https://www.youtube.com/watch?v=m_7JMmBW-Zc
https://www.youtube.com/watch?v=Yqur47HdKd8&t=192s


# Fixes on install

If you got an Error like this:

```
Traceback (most recent call last):
  File "yt_downloader.py", line 9, in <module>
    ytd = YouTube(url)
  File "C:\Users\marku\anaconda3\envs\py_yt_dl\lib\site-packages\pytube\__main__.py", line 92, in __init__
    self.descramble()
  File "C:\Users\marku\anaconda3\envs\py_yt_dl\lib\site-packages\pytube\__main__.py", line 132, in descramble
    apply_descrambler(self.player_config_args, fmt)
  File "C:\Users\marku\anaconda3\envs\py_yt_dl\lib\site-packages\pytube\extract.py", line 301, in apply_descrambler
    parse_qs(formats[i]["cipher"]) for i, data in enumerate(formats)
  File "C:\Users\marku\anaconda3\envs\py_yt_dl\lib\site-packages\pytube\extract.py", line 301, in <listcomp>
    parse_qs(formats[i]["cipher"]) for i, data in enumerate(formats)
KeyError: 'cipher'
```

[Use this fix from StackOverflow  ](https://stackoverflow.com/questions/62098925/why-my-youtube-video-downloader-only-downloads-some-videos-and-for-other-videos)



