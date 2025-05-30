---
nav: blog
categories:
- Development
- Hacks
comments: true
cover: null
date: 2013-11-13T00:00:00Z
description: A script to help make Wordpress development a little less painful.
title: Checking for deprecated Wordpress functions
url: /2013/11/13/checking-for-deprecated-wordpress-functions/
---

One of the major pains involved in Wordpress development and work (and one
of the reasons why this isn't hosted on Wordpress anymore) is that of their
quickly changing API.

I've encountered issues where plugins have suddenly (and quietly) stopped
functioning, due to a deprecated function call being removed from the
Wordpress API. I'm sharing my "solution" to this issue, which is a script
(which can be integrated into a CI system), which scans your plugin and/or
theme code and gives you a list of the deprecated functions you're using,
as well as where they exist in your code.

{{< gist jbuchbinder 7419000 >}}

