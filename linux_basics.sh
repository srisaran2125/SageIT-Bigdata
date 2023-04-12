mkdir /home/bigdatacloudxlab14968/ssv_20230407/ssv_code/ssv_song_lyrics/ssv_song1
touch /home/bigdatacloudxlab14968/ssv_20230407/ssv_code/ssv_song_lyrics/ssv_song1/song_lyrics.txt
cp /home/bigdatacloudxlab14968/ssv_20230407/ssv_20230407.txt /home/bigdatacloudxlab14968/ssv_20230407/ssv_code/ssv_song_lyrics/ssv_song1/song_lyrics.txt
chmod -R 750 /home/bigdatacloudxlab14968/ssv_20230407/ssv_code/ssv_song_lyrics/ssv_songs1
echo "Process completed Successfully"
echo "process has been started by `whoami` at `date "+%Y-%m-%d %T.%3N"`"
sleep 5s
time_now=`date "+%Y-%m-%d %T.%3N"`
userid=`whoami`
echo "process has been started by $userid at $time_now"
echo "File name is "$0
echo $1
echo $2
if [[ $1 == one ]]; then
echo 'It is One'
else
echo 'It is different'
fi
while [ "`date "+%Y-%m-%d %H:%M"`" == "2023-04-11 15:10" ]
do
a=10
b=15
if [ $a -lt $b ]; then
echo "a is less than b"
else
echo "a is greater than b "
fi
sleep 10s
done
COUNT=4
while [ $COUNT -gt 0 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT - 1))
done
