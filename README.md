# MP4-video-to-JPG-batch-converter
Specify a directory, this script will search it to find all MP4 videos, convert them to JPGs at a desired FPS and resize them to a given size.

## Usage

Example 1: Create 5 images every second of video (ie every 200ms):

```script.sh /home/user/directoryOfVideos 5```

Example 2: Can also optionally pass scale as 3rd parameter

```script.sh /home/user/directoryOfVideos 5 320:-1```

In this case it would resize the width to be 320px and keep aspect ratio for height.

## Dependencies

* Requires FFMPEG to work.
