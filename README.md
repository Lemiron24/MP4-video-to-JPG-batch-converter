# MP4-video-to-JPG-batch-converter
Specify a directory, this script will search it to find all MP4 videos, convert them to JPGs at a desired FPS and resize them to a given size.

## Usage

Download and ```chmod +x generateFrames.sh``` to make it executable. Now use as follows:

Example 1: Create 5 images every second of video (ie every 200ms):

```./generateFrames.sh /home/user/directoryOfVideos 5```

Example 2: Can also optionally pass scale as 3rd parameter

```./generateFrames.sh /home/user/directoryOfVideos 5 320:-1```

In this case it would resize the width to be 320px and keep aspect ratio for height.

## Dependencies

* Requires FFMPEG to work.

To get FFMPEG on Ubuntu you may need to do the following depending on your release:
```
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
sudo apt-get update
sudo apt-get install ffmpeg
```
