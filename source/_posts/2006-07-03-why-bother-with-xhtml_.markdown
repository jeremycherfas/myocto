---
author:
comments: true
date: 2006-07-03 15:18:50
layout: post
slug: why-bother-with-xhtml_
title: Why bother with XHTML?
wordpress_id: 521
categories:
- Geeky
---

Trying to get to the bottom of the problem with [falbum's stylesheet not showing](http://jeremycherfas.net/2006/06/18/a-problem-shared-is-a-problem-solved-almost/), I've been trying to learn more about DOCTYPES and MIME. Step one was the realization that the WordPress theme I am using likes to serve up XHTML. But lots of things I've read ([Anne van Kesteren](http://annevankesteren.nl/2004/07/mime) and [Ian Hickson](http://www.hixie.ch/advocacy/xhtml) -- both way out of my depth) say that this is not only pointless, it is actually a bad idea.

<!-- more -->

The reason I suspect the DOCTYPE is the root cause of the falbum failure is because apparently, with the wrong DOCTYPE, things like stylesheets in the body are "dropped on the floor".

So I decided to see which posts were making XHTML fail.

There were three sources of difficulty. One was the automated Technorati tags, which I suspect (and am about to test) is the fault of ecto. I think it puts in unnecessary verbiage. Of course, it may instead be the WP Technorati plug-in. We'll see.

The other was the embedded players from Google Video.

The third I solved. If there are trackbacks but no comments, WordPress inserts a list of comments that is empty, and XHTML does not like having <ol> and </ol> with nothing between them.

All of which is well geeky, and pointless to most (one reason I hid most of this post), but which may help some equally hapless soul. And which may enable me to ask some sensible questions over at WP support.

Stop press: OK, that's one more thing out of the way. It is the way ecto inserts Technorati tags.

