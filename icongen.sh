#!/bin/sh
if (( $# == 2 ))
then
    cp $1 $2/icon.png
    # Android icons
    convert $1 -resize 36  $2/icon-36.png # ldpi
    convert $1 -resize 48  $2/icon-48.png # mdpi
    convert $1 -resize 72  $2/icon-72.png # hdpi
    convert $1 -resize 96  $2/icon-96.png # xhdpi
    convert $1 -resize 144 $2/icon-144.png # xxhdpi
    convert $1 -resize 192 $2/icon-192.png # xxxhpi
    # Windows Phone icons
    #convert $1 -resize 48 ./res/icon/windows-phone/icon-48.png
    convert $1 -resize 62 $2/icon-62.png
    convert $1 -resize 173 $2/icon-173.png
    # iOS icons
    convert $1 -resize 29 $2/icon-29.png
    convert $1 -resize 58 $2/icon-29@2x.png
    convert $1 -resize 40 $2/icon-40.png
    convert $1 -resize 80 $2/icon-40@2x.png
    convert $1 -resize 50 $2/icon-50.png
    convert $1 -resize 100 $2/icon-50@2x.png
    convert $1 -resize 57 $2/icon-57.png
    convert $1 -resize 114 $2/icon-57@2x.png
    convert $1 -resize 60 $2/icon-60.png
    convert $1 -resize 120 $2/icon-60@2x.png
    convert $1 -resize 76 $2/icon-76.png
    convert $1 -resize 152 $2/icon-76@2x.png
    #convert $1 -resize 72 ./res/icon/ios/icon-72.png
    convert $1 -resize 144 $2/icon-72@2x.png
else
    echo "Not enough parameters."
    echo "usage: icongen <icon image> <output directory>"
fi 
