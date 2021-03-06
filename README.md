This project implements a SteamVR demo scene with a mirror and a single Adobe Fuse character named, Jesse (that's me).

It assumes you have an HTC Vive with a Vive Tracker mounted on your hip on the left side of your body.

It uses Unity's Mecanim IK to animate the arms of the fuse character as you wave your Vive controllers around. Unity's Mecanim IK isn't very good, so the elbows will be in weird places.
This is just a demo project so you can get an idea what Mecanim is capable of. Unity's Mecanim lacks a head IK handle, so this demo uses VR headset rotation only, not position.
Fuse character position is taken from the hip tracker.

Here's what it looks like:

![character waving image](http://i.imgur.com/hC33RQi.gif "Waving")

or watch the video:

[![Mecanim VR IK Youtube Video Demo](https://img.youtube.com/vi/7y9GAVpCW_c/0.jpg)](https://www.youtube.com/watch?v=7y9GAVpCW_c)


I **highly recommend** you buy and use the excellent [Final IK asset from the Unity Asset Store](https://www.assetstore.unity3d.com/#!/content/14290?aid=1100l35sb) instead. It works much better for this purpose.
I have a video showing off the Final IK version of this scene here:

[![Final IK Youtube Video Demo](https://img.youtube.com/vi/T6gIRivNgFE/0.jpg)](https://www.youtube.com/watch?v=T6gIRivNgFE)


[Assets/Scripts/IKControl.cs](https://github.com/createthis/unity_vr_ik_mecanim/blob/master/Assets/Scripts/IKControl.cs) is the heart of this demo. You'll find it on the jesse object in the scene.
It was created by following the (rather sparse) [Unity IK manual page](https://docs.unity3d.com/Manual/InverseKinematics.html).
I borrowed a t-pose from Unity's UMA asset and created a mecanim animator controller that uses the t-pose and enables IK pass through. That should be all you need to know to get started hacking.
