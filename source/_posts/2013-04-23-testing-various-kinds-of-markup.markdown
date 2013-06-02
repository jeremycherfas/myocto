---
layout: post
title: "testing various kinds of markup"
date: 2013-04-23 15:42
comments: true
categories: 
---
##There are various things I want to test here.

The first thing I want to test is footnotes[^note1]

Now here is some more silly text.

And right at the end is what I want. And it looks just fine in Byword’s preview of Markdown. But alas, under the ordinary octopress set-up, it does not render.

[^note1]: This is the text of the footnote.

Never mind about that though; the crucial part is to test whether the use of s3cmd works to push only changes to Amazon.

*Later ...* It did, but I had misnamed my S3 bucket without the *www* bit. So I had to change that, and now redeploy. But I continue to live in hope. and I’m not going to have anything new to say until S3 is delivering the site at jeremycherfas.net and www.jeremycherfas.net.[^note2]

[^note2]: Which will mean further pfaffing with redirects, or something.