---
author:
comments: true
date: 2009-04-11 22:03:04
layout: post
slug: a-problem-with-angle-brackets
title: A problem with angle brackets
wordpress_id: 1451
categories:
- Geeky
---

After migrating I had this really bizarre problem where something seemed to be stripping out the angle brackets < > around HTML. At first I thought it might be ecto. Then I looked around at my host, and it seems that there is a problem with something or other that enabled ecto to post via XML-RPC. The true solution is "to use PHP 5.2.9+ with libxml2 2.7.3+" but until that comes along, I'm going to use the [LibXml2Fix plugin](http://wordpress.org/extend/plugins/libxml2-fix/) I found there. And hope -- this being a test -- that it works.

_Later_: It does work. Thanks to all the smart people who figured this out and made it work properly.


