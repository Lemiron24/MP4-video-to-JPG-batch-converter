#!/bin/sh
######################################################################################
# A simple script to convert all mp4 videos in specified folder to jpg images with
# unique names. Note assumes max frames per video is no more than 999999.
#
# Usage Example 1: Create 5 images every second of video (ie every 200ms)
# script.sh /home/user/directoryOfVideos 5
#
# Can also optionally pass scale as 3nd parameter. For example:
# script.sh /home/user/directoryOfVideos 5 320:-1
# In this case it would resize the width to be 320px and keep aspect ratio for height.
# @author Jason Mayes
######################################################################################
DIRECTORY="$1"
FPS="$2"

SCALE=""
if [ $3 -eq 0 ]
  then
    SCALE="scale="$3","
fi

# Remove any JPGs from previous runs.
find "$DIRECTORY" -name '*.jpg' | xargs rm

# Now find any MP4s and itterate over them applying FFMPEG commands.
find "$DIRECTORY" -name '*.mp4' | while read line; do
  echo "$line"
  #Replace .mp4 with blank to remove
  FILEPREFIX=$(echo $line | sed 's/.mp4//g')
  # Generate frames every quarter of a second assuming 25fps
  ffmpeg -i "$FILEPREFIX".mp4 -y -an -q 0 -vf "$SCALE"fps="$FPS" "$FILEPREFIX"_%06d.jpg
done

# Delete original mp4s. Uncomment to enable cleanup.
# find "$DIRECTORY" -name '*.mp4' | xargs rm
