---
nav: blog
categories:
- Development
- Hacks
- Video and Animation
date: 2007-07-22T00:00:00Z
title: Linux support for ADS DVD Xpress DX2
url: /2007/07/22/linux-support-for-ads-dvd-xpress-dx2/
---

I take no credit for this at all, but the maintainer of the go7007 linux driver recently added support for the ADS DVD Xpress DX2 (which until recently was conveniently available at Walmart and other retail stores) after I took a picture of the board and asked him \*very\* nicely. If you get any kind of mileage out of it and decide that you really \*have\* to send someone money, please send it to him. (To avoid spam, check out the name of the package maintainer.)

I’m posting a copy of this as a kind of public service, since I haven’t seen any upstream releases in a while. Disclaimer that your mileage may very. I have had great luck with this, and have used it to preserve old VHS content … I would also recommend using the [ffrecord](http://colabti.de/convertx/) tool, since it has better av sync than the included tools.

 * Original driver : [Original Driver on Sourceforge](http://sourceforge.net/projects/wis-go7007/)
 * Patch : [Patches for Wischip Go7007 Linux Driver](http://home.comcast.net/~bender647/go7007/)
 * Site for device : [www.adstech.com](http://www.adstech.com/products/USBAV-709-EF/intro/USBAV-709_intro.asp?pid=USBAV-709-EF)

**UPDATE: As of March 2010, I have posted an updated patch against a newer kernel, available [here](/2010/03/25/updated-linux-support-for-ads-dvd-xpress-dx2/).**

