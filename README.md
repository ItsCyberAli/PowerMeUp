<h1 align="center">
  <br>
  Power Me Up
  <br>
</h1>

<h4 align="center">
This is a powershell reverse shell that executes the commands and or scripts that you add to the powerreverse.ps1 file as well as a small library of Post-Exploitation scripts. This also can be used for post exploitation and lateral movement even.
Please use at your own risk I am not and will not be responsible for your actions. Also this reverse shell currently is not detected by Windows Defender. If you want to use this make sure to detup a Digital Ocean VPS and have the script connect back there or your C2.
Happy Hacking!
</h4>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#download">Download</a> •
  <a href="#reach-me-here">Reach Me Here</a> •
  <a href="#support">Support</a>
</p>

[screen-recorder-wed-oct-19-2022-11-13-55.webm](https://user-images.githubusercontent.com/111126641/196739945-28fa69e0-c0c5-46da-954c-ce15eaf03a96.webm)


## Key Features

* Reverse Shell
  - Simply Change The IP & Port & Let It Do Its Magic
* Blue Screen Of Death (BSOD)
  - Basically will call winit.exe and give a blue screen and shutdown the computer
* Disable Windows Defender (Needs Admin Priv Of Course)
* Get Computer Information
* Disable Input (Needs Admin Priv)
* Disable Monitor
* Exclude File Extensions (Needs Admin Priv)
* Exclude Folder (Needs Admin Priv)
* Exclude Process (Needs Admin Priv)
* Get USB History
* GPS Location (Gets The Lat & Long Then Performs A Reverse GEO Lookup & Spits Out The Exact Address)
* Grab Wifi Credentials
* Ifconfig
* List Antivirus Running
* List External IP
* Logoff
* Mayham Window Popup
* Send A Message Box
* Network Scan (Internall Scan The Network For Open Ports & IPs)
* Restart
* Rickroll
* Scare Window
* Screenshot The Screen
* Syatem Time
* Webcam List

## How To Use

To run this application, you'll need the powerreverse.ps1 file executed on target pc.

```bash
# Install This Repository
$ Download The Code By Pressing Download ZIP

# Clone this repository
$ git clone https://github.com/ItsCyberAli/PowerMeUp.git

# Take One Of The Functions Like This & Copy Paste Into PowerReverse
$ You Will See The Screenshot Below Has The PowerReverse file and inside I added the BSOD.ps1 function
that I copy pasted inside of the powerreverse.ps1 so that we can call & use it when we execute on target PC.
You can mix & match what features you want in the reverse shell just make sure there is no references right above the function call 
it will say references and if it says 0 you are fine if it says 1 or more simply change the function name. When reverse shell
executes and you want to execute a specific feature simply call the function name and in our case inside the VPS simply type bsod 
and it will execute it or whateber you named the function!


# Change The LHOST & LPORT Inside Of The PowerReverse File
$LHOST = "YOUR C2 IP"
$LPORT = #Your Port Without Quotations

# Start A Netcat Listener Or Your Own Implementation Of A Listener On VPS Or C2 & Enjoy!
$ nc -l -p <port you chose> (Just A Netcat Listener In Your VPS Not Needed If You Use Another Method!)
```
![Desktop-screenshott](https://user-images.githubusercontent.com/111126641/196741881-e7f874d2-e2c6-4486-a7d5-816cab2ee66c.png)

## Download

You can download the code from the top right, it will give you all the code needed in a ZIP file.

## Reach Me Here

If you want to discuss any topics or need some help I am very active and can get back to you within 24 hours or less 
And Setup A Date & Time To Help With Whatever It Is You Need, I Am Also Open To Collab On Projects I Feel Are Worth My Time
And Of My Interest As Well!!
* Twitter [@ItsCyberAli](https://twitter.com/ItsCyberAli)
* GitHub [@ItsCyberAli](https://github.com/ItsCyberAli)

## Support

<p>To Support Me You Can Buy Me A Coffee</p> 

<a href="https://www.buymeacoffee.com/ItsCyberAli" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/purple_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

<p>Or Just Follow Me On Twitter As Well</p> 

<a href="https://twitter.com/ItsCyberAli">
	<img src="https://imgs.search.brave.com/f4D618R1h5bFKTM3AxujnMLyA5IZhP8iWVpc2VnHU68/rs:fit:1200:628:1/g:ce/aHR0cHM6Ly93d3cu/MTJjYXJhY3Rlcmlz/dGljYXMuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE3LzEy/L2NhcmFjdGVyJUMz/JUFEc3RpY2FzLWRl/LXR3aXR0ZXIuanBn" width="160">
</a>
