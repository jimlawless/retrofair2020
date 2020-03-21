# RetroFair2020.bas 
## A Commodore 64 BASIC Program that Displays a Memoir

A couple of weeks ago, John Kennedy ( @JohnKennedyMSFT ) urged techies to put together a five-minute video for a virtual retrocomputing fair.  Since vintage computing fairs are being canceled because of COVID-19, the goal was to keep the spirit of the fair alive via Twitter, YouTube, and a central web site ( http://www.retrofair2020.com ).

I am really not a great video personality, so if I was going to make an entry for the fair, the computer was going to have to perform the act of being the narrator.  I chose to write a program that provides a slow-scrolling display of my text.  I chose to make it look kind of like a 300 baud terminal experience.

I wrote a BASIC engine to display text in this manner and then needed to flesh it out with the actual text.  I wrote the text freehand using a plain text editor and then used an AWK script (proc.awk) that I wrote to generate lines of sequentially-numbered BASIC DATA statements that were appended on to the end of the display engine.

I then converted the BASIC text file ( r1.txt ... not included in the repo ) to a fully tokenized Commodore 64 BASIC 2.0 program with the following commands (on MacOS):

   cat r1.txt > RetroFair2020.bas
   awk -f proc.awk retro.txt >> RetroFair2020.bas
   ../tools/petcat -w2 -o RetroFair2020 RetroFair2020.bas

The file RetroFair2020 was then loadable into the VICE C64 emulator.  If you run the tokenized form, hit ENTER to begin the display.

You can see my video here:

https://youtu.be/NvrcLUPihs4



 

