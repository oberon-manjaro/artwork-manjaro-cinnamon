#!/bin/bash

#set variable

WALL=cinnamon
ABSPATH=/usr/share/backgrounds/manjaro-$WALL/

if [ -e manjaro-$WALL.xml ]; then
    rm manjaro-$WALL.xml
fi

# creating the head of backgrounds.xml
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE wallpapers SYSTEM \"gnome-wp-list.dtd\">
<wallpapers>" > manjaro-$WALL.xml

# looking for all pictures in DIRECTORY
echo "OK. Now we are creating manjaro-$WALL.xml"

# This script is looking for .png and .jpg files only, but you can add here another file types. The "<options>stretched</options>" should work best for unknow sized files.
for i in $(ls *jpg); do #Note if we add png files simply add $(ls *png)
echo "<wallpaper>
<name>${ABSPATH}$i</name>
<filename>${ABSPATH}$i</filename>
  <options>stretched</options>
    <pcolor>#ffffff</pcolor>
    <scolor>#000000</scolor>
    <shade_type>solid</shade_type>
</wallpaper>" >> manjaro-$WALL.xml
done

# creating the bottom of backgrounds.xml
echo "</wallpapers>" >> manjaro-$WALL.xml

echo
echo "#################################"
echo "DONE xml file created"
echo "#################################"
echo
exit 0
