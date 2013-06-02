---
author:
comments: true
date: 2008-05-01 12:35:18
layout: post
slug: upload-test
title: Upload test
wordpress_id: 1000
categories:
- Geeky
---

Didn't work with Camino. Or Safari. reinstalled new flash. Cleared content cache. deactivat5ed flash uploader. checked mod security.

Error now happens after crunching. Still no upload? Indeed, no upload.

Now done everything in Alex Milan's post.

Upload proceeds; error message after Crunching.

Deactivated all plugins. Makes no difference.

Have now changed organisation to year and month folders.

Same Unable to create error message after crunching.

removed initial slash from Uploads path.

[![A fountain in the Villa Sciara](/uploads/2008/05/11112007-400x300.jpg)](/uploads/2008/05/11112007.jpg)

Well, well, well. Seems like my weeping and wailing and gnashing of teeth might have had a very simple answer after all. There was an initial slash / before the path to my upload directory. With that removed, everything works well.

But I swear I didn't put that slash there myself, and everything worked fine before.

Note to self: This isn't flickr. rotate before upload.

Second note to self: check uploadability from ecto.
