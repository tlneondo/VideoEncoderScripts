for file in *; do 
    if [ -f "$file" ]; then 
        echo "$file" 
    fi 
done

ffmpeg -i input -c:v libx265 -crf 28 -preset medium -c:a libvorbis output.mp4

ffmpeg -i input -c:v libx265 -crf 26 -preset fast -c:a aac -b:a 128k output.mp4
##what I want
##to take dvd copy of files dumped from DVD
##Encode audio to opus or passthrough
##encode video as exact framerate

-tune animation

current command: 

ffmpeg -i input -c:v libx265 -crf 26 -preset slow -c:a aac -b:a 128k output.mp4fast