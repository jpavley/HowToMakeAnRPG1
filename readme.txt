This repo contains the tutorials from the book How To Make An RPG by Daniel Schuller. 
I bought the book and started working through the examples.

To get the code to run on my Mac took a bit of fooling around. So I'll explain it here.

When you puchase the book you a 3.81GB of files! Mostly artwork, a 979 page PDF, a game engine, and example code.
Right from the start I had problems witht the game engine! 
Apple protects you from running untrusted applications with Gatekeeper.
You can turn it off in the Security & Privacy settings but that's probably a very bad idea.
To run the game engine (dinodeck_mac) just "right click" open the file and click the open button.
Dinodeck ran but could not find a library, libopenal.dylib, right next to it in each folder.
A little bit of Googling gave me this tip: "Copy the dylib to /usr/local/lib/libopenal.1.dylib"
So that worked and the hello world example ran fine.
But all the other copies of Dinodeck in all the other example folders refused the run!
The Mac OS X claimed the dinodeck_mac life was damanged.
No matter, I just recreated a new folder, made a copy of the working Dinodeck and used it as my working 
directory with all the example files copied in as needed.

Have fun!
