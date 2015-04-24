# Office Hours Summary 3/11: Using APIs

You can watch the office hours [here](https://plus.google.com/events/c7nv4miju86a1ediu2ohuupp62s?authkey=CIbM2tabgKLu9AE).

Find it in the repo [here](https://github.com/udacity/fsnd-office-hours).

---

**Summary:**

The motivation behind today's Office Hours came from a lot of student interest in working with APIs (IMDB, Rotten Tomatoes, etc.) for Project 1. We didn't want to show you exactly how to use those  APIs because that is such an important learning exercise for you. Instead we chose to show off Google Calendar and YouTube because a) Google's documentation and tools are amazing and b) we personally have prior experience working with these APIs. Hopefully you all found this helpful!

---

*What is an API?*

Application Programming Interface (**API**) - a tool that you can use to access information from a website (or other service) without having to actually get full access into their source code.

Here are some helpful resources:

- [List of Popular Python APIs](http://www.pythonforbeginners.com/api/list-of-python-apis)
- [List of Google APIs](https://developers.google.com/apis-explorer/#p/)

---

**Google Calendar API:**

- [16:45 into the Recording when we begin talking about the Google Calendar API](https://plus.google.com/hangouts/onair/watch?hid=hoaevent%2Fc7nv4miju86a1ediu2ohuupp62s&ytl=X7UVGg2Nm40&hl=en&t=1003.211)
- [Try Creating an Event with the Google Calendar API in your browser!](https://developers.google.com/google-apps/calendar/v3/reference/events/insert#try-it)
- [Get Started with the Google Calendar API - Tutorials, How-Tos, Reference & Documentation](https://developers.google.com/google-apps/calendar/get_started)

---

**YouTube API:**

- [28:00 into the Recording when we begin talking about the Google Calendar API](https://plus.google.com/hangouts/onair/watch?hid=hoaevent%2Fc7nv4miju86a1ediu2ohuupp62s&ytl=X7UVGg2Nm40&hl=en&t=1680.327)
- [Try Adding a Video to a Channel with the YouTube API in your browser!](https://developers.google.com/youtube/v3/docs/videos/update#try-it)
- [Get Started with the YouTube API - Tutorials, How-Tos, Reference & Documentation](https://developers.google.com/youtube/v3/getting-started)

---

**Student Questions:**
*[Question:](https://plus.google.com/hangouts/onair/watch?hid=hoaevent%2Fc7nv4miju86a1ediu2ohuupp62s&ytl=X7UVGg2Nm40&hl=en&t=1420.777)* What is best practice for crediting api use? The apis I've used have been fairly well abstracted so should they be mentioned in the UI or maybe somewhere in main? Basically what's cya protocol for api use?

*Answer:*

APIs are used primarily for grabbing and updating information. Most of that would happen on the back-end of your application. As a result, APIs usually don't have much to do with the front-end.

If you're using a service that doesn't have great documentation then it might be a bit of an issue. They might not explicitly say if they want you to cite them or not. APIs will usually have a Terms Of Use for if you're making a more professional service. To be careful it's a good idea to look at those. Here is an example of the Instagram API Terms of Use: https://instagram.com/about/legal/terms/api/

Ultimately it comes down to the number of requests you are making. Most APIs put a limit on the number of requests you can make before you are charged. As a result, if you are making a lot of requests you will most likely be notified by the company (Google for example). They will want to monetize your use somehow - you might have to enter your credit card info.

---

*[Question:](https://plus.google.com/hangouts/onair/watch?hid=hoaevent%2Fc7nv4miju86a1ediu2ohuupp62s&ytl=X7UVGg2Nm40&hl=en&t=2166.855)* How often should you plan to upgrade an API to keep it current? Is this something that you build into the product's roadmap, or would you upgrade your API as required by the API provider (ie. Google).

*Answer:*

APIs do get sometimes depracated or certain specifications are changed. If it is a good API (like Google) they will be very good about communicating to you when they will be making updates or making changes that would affect your application. With that in mind if you have an app it's always a good idea to use a credible service's API (if possible).

If you are building an API for your application that others can use it's important to stay consistent. Users will expect certain parameters and values coming back to them so changing the outputs frequently is not recommended. It is perfectly fine to update things on the back-end to improve performance, but anything that a user is expecting should stay consistent. If you will be changing anything then you will want to let your users know ahead of time - be good about communication. Don't update bits and pieces here and there (come out with full versions). If you make small updates and don't notify your users of your API they will most likely not continue using your API. Also, if you are going to update to a new version it's important to keep your older version around for users to still have access to. Overall just make it as easy as possible for your users (ex: YouTube API is version 3 now but version 2 is still available).
