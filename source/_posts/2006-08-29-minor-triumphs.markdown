---
author:
comments: true
date: 2006-08-29 21:47:17
layout: post
slug: minor-triumphs
title: Minor triumphs
wordpress_id: 569
categories:
- Geeky
- Photos
---

One has to get one's job satisfaction where one can. Which tonight means here at home, slaving over the presentation of the blog. I've spent a fair while wrestling with falbum, a WordPress plug-in that displays photos from Flickr, without making too much headway. The problem isn't with the way falbum works; it is very good. The problem is with the documentation, which is somewhat sparse, and the support, ditto. Anyway, in a spirit of community, I offer a brief record of my trials.


	
  1. I downloaded the new version of falbum 0.6.7 and, credit where credit is due, it picks up its stylesheet out of the box. It never used to. Big brownie point.

	
  2. Then I had to get rid of the call to the sidebar in footer.php so as not to clutter things up.

	
  3. Odd problem: falbum tries to do something fancy with the title of the page but gets it wrong, at least on all pages except the main Photos page. It inserts the title of the most recent blog post into the page's title, thusly: Where are we on metadata?  <  Another Blasted Weblog

	
  4. Another odd problem: falbum does not handle spaces within the tags at Flickr. In other words, if a photo is tagged, for the sake of argument, Sri Lanka, falbum returns its tag as srilanka. This is annoying and simply wrong. Tags can be phrases, end of story.

	
  5. Killer difficulty: falbum makes it reasonably easy to display photos elsewhere on the blog, like at the bottom of the home page. But I've just spent the better part of an hour tearing my hair out trying to work out why that simple line of images utterly refused to obey the blandishments of my stylesheet. Finally, I figured out that the default stylesheet that ships with falbum, the one that the new version so neatly picks up, is missing a reference to the very class that it uses to display recent photos. Arrrggghh. Put that in, though, and everything is A1 tip top.

Conclusion. If you want to Flickerize your WordPress Blog, you can do a lot worse than falbum, but you will have to wrestle it to the ground. (All I need to do now is upload some new spanking images to make the whole effort worthwhile.)
