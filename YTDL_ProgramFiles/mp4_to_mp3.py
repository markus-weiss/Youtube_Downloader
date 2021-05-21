# MoviePy
import os
from moviepy.editor import *
video = VideoFileClip(os.path.join("CIMG1884.MOV"))
video.audio.write_audiofile(os.path.join("CIMG1884.mp3"))
