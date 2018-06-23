<p align="center">
  <b>HotSALSA</b><br>
  <b>H</b>otkey, <b>S</b>ynchronized <b>ALSA</b> volume control
  <hr>
</p>

Did you recently install JACK on your Ubuntu laptop? Then you are probably ready to kill something by now. If, like me you have a hybrid pulseaudio and JACK setup, this script might come in handy. The old, nice function keys on your laptop are now useless, because they only control the volume of apps going through pulseaudio, but not any app which directly use JACK (such as Bitwig Studio). And then JACK doesn't care about device switching (i.e. headphone <-> speakers). Let's fix this.

This script interfaces directly with ALSA to set the volume of both the master and headphones mixer channel. ASLA takes care of the automuting when headphones are inserted.

So just connect this script to your disto's keyboard shortcut manager. Here's an example of my setup:

<p align="center">
  <img src="https://imgur.com/OQVPSK6.png">
</p>

This script takes either no arguments (toggle mute all) or an `amixer` stepping (like `5-` or `34%`). On change, you'll get a notification on Gnome systems:

<p align="center">
  <img src="https://imgur.com/18RfILC.png">
</p>

**Attention**: Because it's a really bad idea to mix (no pun intended) multiple volume controls, HotSALSA also pins the default pulse sink too 100%.
