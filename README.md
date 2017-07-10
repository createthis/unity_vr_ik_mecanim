This project implements a SteamVR demo scene with a mirror and a single Adobe Fuse character named, Jesse (that's me).

It assumes you have an HTC Vive with a Vive Tracker mounted on your hip on the left side of your body.

It uses Unity's Mecanim IK to animate the arms of the fuse character as you wave your Vive controllers around. Unity's Mecanim IK isn't very good, so the elbows will be in weird places.
This is just a demo project so you can get an idea what Mecanim is capable of. Unity's Mecanim lacks a head IK handle, so this demo uses VR headset rotation only, not position.
Fuse character position is taken from the hip tracker.

Here's what it looks like:

![character waving image](http://i.imgur.com/hC33RQi.gif "Waving")

I **highly recommend** you buy and use the excellent [Final IK asset from the Unity Asset Store](https://www.assetstore.unity3d.com/#!/content/14290?aid=1100l35sb) instead. It works much better for this purpose.
