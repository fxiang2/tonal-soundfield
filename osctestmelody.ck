"localhost" => string hostname;
6449 => int port;
OscSend xmit;

xmit.setHost(hostname, port);

[0, 2, 4, 5, 7, 9, 11, 12] @=> int notes[];

while(true){
    xmit.startMsg( "/note/timbre", "i f" );
    notes[Math.random2(0, notes.cap() - 1)] + 72 => xmit.addInt;
    Math.random2(0, 4) $ float / 4 => xmit.addFloat;
    //0.2::second => now;
    Math.random2f(0.1, 0.3)::second => now;
}