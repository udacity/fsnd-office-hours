# Office Hours Summary 3/4: Project 3 and Flask

You can watch the office hours [here](https://plus.google.com/events/cnsc0n843f1fu1bc5d6k6meg7rk).

Find it in the repo [here](https://github.com/udacity/fsnd-office-hours).

For today's office hours, our students were in for a real treat because we had the Course Developer for Full Stack Foundations, Lorenzo, join us today. Together we introduced Project 3 and Flask and answered student questions. I've transcripted today's QA below.

## A Mini Interview with Course Developer Lorenzo

**Jee**: So let's get started! I've invited the Course Developer for Full Stack Foundations in with us today to help answer questions and introduce Project 3.

**Lorenzo**: Hello!

**Jee**: Why don't you introduce yourself to our students?

**Lorenzo**: Hi everyone, my name is Lorenzo. I'm the Course Developer for Full Stack Foundations. This is my first course here at Udacity. It was a very exciting experience! For those of you who have given me feedback about some of the issues with some of the solution code and other little bugs that needed to be tweaked here and there, thank you so much! Please keep providing me as much feedback as possible, and be on the lookout for some new classes coming soon!

**Jee**: Yes, Lorenzo has been very busy with our company, and yea, we have some cool new classes coming your way! Today, we'll be going over Project 3 and Flask as well as taking any questions you may have on those two subjects.

### Full Stack Foundations the Course

**Jee**: Getting started, Lorenzo, you created Full Stack Foundations the course, and I thought it would be worth sharing with students what big picture lesson you wanted students to walk away with at the end of the course?

**Lorenzo**: Definitely, so the central idea around Full Stack Foundations is to learn how to build a data-driven web application from scratch. A lot of courses out there will try to teach you data-driven web applications starting with Ruby on Rails or Django without having a good comprehension of what's going on underneath the hood. So Full Stack Foundations, you start building with just pure Python, you build a web server, you build a web application, and then you learn to leverage frameworks as a tool and not as a crutch. By the end Full Stack Foundations, it's very easy for you to take the knowledge that you've learned and apply that to any other framework that you'd like to use for any other development project.

**Jee**: Speaking of building websites and frameworks, there were questions about why we chose Flask over Django, which is seen more in industry and different companies, so why Flask? Why did we choose this particular framework?

**Lorenzo**: Flask is a very lightweight framework, maybe not quite as popular as Django just yet although it is still a very popular framework. A lot of the similarities between Flask and some other frameworks out there are very apparent so I feel like the transition from Flask to another framework will not be too difficult. It's like a big bag of goodies, there are a lot of extensions for Flask that make this course not only easy to teach, but also very fun.

**Jee**: Alright! So for anyone who is listening tonight, if you were wondering why we chose Flask instead, Lorenzo just answered that question. It's definitely a great beginner's framework to learn because it is so easy to use and lightweight.

### Project 3: Items Catalog

**Jee**: Moving to the project now that we talked a little about the course and what the purpose of the course was. We're going to be talking about Project 3, Item Catalog, and so you had a hand in designing the project along with the course. How was this project designed to apply these big picture ideas into application? How was it designed to help students apply what they've learned in this new project?

**Lorenzo**: Ok, so Project 3 is really your first chance to showcase all the different things you've learned thus far in the Full Stack Nanodegree program. It showcases all the things you know and at the same time allows you to express a little bit of your creativity as a designer and as a developer. From designing your database to implementing your backend to the front end (your CSS and HTML), it's all up to you at the end of the day, we just ask that you cover some of the basic concepts you've learned thus far. We're giving you a chance to show who you are with this project.

**Jee**: So they really are expected to be a full stack developer for this project, front end to back end, huh?

**Lorenzo**: Yep, all the way through.

**Jee**: Seems like great practice! So we talked about how this project applies to the course, you took this course, now you have this project, and you're working on it.

#### Project Details

**Jee**: So we talked about why this project was created, but let's now talk about the project details and some of the more specifics. For Project 3, what is the end result supposed to be? What are students expected to create for Project 3?

**Lorenzo**: For Project 3, you are creating a web application that relies on a database. In that database, you have a collection of tables. You want to create this application such that users can log into your website and be presented the data in different forms that are useful information to the user. We haven't put too many rules on what kind of data or the structure that it has to be in, but we expect you to use the things that you've learned, you know, has several tables, has relationships between these tables, and retrieve information out of it using pure SQL or an ORM, such as SQLAlchemy.

**Jee**: Great! In terms of just like finished project, the website, what would it look like? We could screenshare and show the example in the portal, but if you had to describe this website to a friend, how would you describe it?

**Lorenzo**: Well, I really hope that with these submissions no two are alike, but what you want to do is create a website where the experience of the user is "Hmm.. this is fun, and I'll spend time on it" versus "I'm confused, and I don't know what's going on". A website that's very smooth and follows logic all the way through, presents information in a very clear and concise way, and encourages your users to spend hours on end on your website.

**Jee**: And we have an example of what we're looking for on the Udacity website in the portal so take a look there to get started and if you have any more questions, feel free to ask us on Discussions as well. So making this website sounds like a lot of fun, we're going from frontend to backend, everything in between, making databases. There's a lot going on. What we actually just described is the bare minimum. What are some extra functionalities or what are some things that students can do to really make this project go above and beyond?

**Lorenzo**: Since this is your first fullstack web application, to exceed expectations, we want you to exceed expectations across the stack. Starting with the frontend, use everything you know and you want to implement on design, wireframe, HTML, CSS, we didn't put too much focus on that in the classes because we want the students to use their own creativity in designing the HTML, CSS, and all the styling for their app. Using the backend, like I said, Flask is a bag of goodies. We only cover the tip of the iceburg in Full Stack Foundations, please go through the Flask documentation to see if there are any other features that will really make your website shine. Also the database, SQLAlchemy is a very popular object relational mapper. See if you can figure out some queries that will present the data in a way that will make it even more user friendly.

**Jee**: Cool, so it sounds like there are a lot of places where students can really go in and do their own thing.

**Lorenzo**: Yea, and everything is in the documentation, that's your key to going above and beyond in this project.

**Jee**: So that sounds like an extra credit project for those of you who want to do something a little more than what we asked. We say this every time for all the projects, but we're really interested in seeing what you guys come up with so if you've got something extra, if there's something that you want to try, go ahead and do it. Play around with the code, break a couple things if need be to figure out what's going on with some extra feature. For those of you who might need a little bit of extra help with HTML and CSS in getting started, we do have the course materials for HTML/CSS on Udacity online, we have a course. The course materials are online so you can go in to view them. It's a very quick course, and it will help you get started with HTML, CSS, and Bootstrap.

**NOTE**: You can find the course materials for the Intro to HTML/CSS course on Udacity [here](https://www.udacity.com/course/ud304). Click on "View Course Materials" to view the lessons.

**Jee**: Right, so Lorenzo, the course has just ended and the students are getting started with the project, they're looking at the project details. What are some of the first steps students should take to begin their Project 3? What is the first thing they should do?

**Lorenzo**: Well the first thing that I always do when I'm about to take on a large project is to sit down with pen and paper and write down all the things that I want my project to have, and then some other things that I'd like my project to have, and some other things that I definitely don't want my project to have. This way you can focus and hone in on the things that you want to do and make sure you do them well. Next I would figure out how to model things. How am I going to model my data? What is my data going to look like? How am I going to get that data in and out of my application? What else is it going to be able to do? After that, it's time to get set up, you can install your Vagrant environment. You can refer to the Vagrant documentation, but we also have a good wiki on getting set up with Vagrant in the Full Stack Foundations and in the Relational Databases courses. Once you get setup, it shouldn't be too unfamiliar the process of firing up a Python file and looking at it from your local host, and then I would say to begin the iterative development process like we did in Lesson 4 for Full Stack Foundations.

**Jee**: Yea, so hopefully by this point, if you've come to this point, you've gone through Relational Databases and already worked with Vagrant and Virtual Box and all that. One thing that I'd like to note, and I know Lorenzo and I made this edit today. The Vagrant file did not come with the catalog directory. If you download it after today, you'll have it, but if you downloaded Vagrant before today, make sure you add the catalog directory. You can do this on your computer on your Desktop. After that, everything is a blank slate. I mean like we said, we want you to start from scratch so there's no HTML, no CSS, no provided template, it's all up to you to decide what you want to do. So now let's talk about the last part, the evaluation. Students, I know, are always a little nervous about this portion. They're always like, "Ok, I have my project, what are you looking for? What do you look for when you grade, how do you grade? What do I need to keep in mind before I submit?" What are some things we look for or are hoping to see?

**Lorenzo**: We're not hiding anything from you in the rubric, that's exactly what we're looking for, making sure you're meeting expectations on all these points. Definitely when you're finished making the app, use it yourself, walk through it, have some of your friends use it and walk through it, make sure you test, make sure there are no bugs, make sure there are no pages that lead you to nowhere, 404 errors inside of your app, things of that sort. As Sebastian, the founder of our company says, fail fast and fail often. Don't be afraid to submit. We encourage you to submit when you feel that your application is ready, and if you do get feedback asking for another submission, that's perfectly fine, that means you're on the right track. Definitely don't hesitate to submit and to ask questions and iteratively get better and better.

**Jee**: Right, if you get your evaluation back and you have questions about it, you can always ask on Discussions about certain points of your evaluation. You can also always e-mail us here at Udacity and talk to us about some things that you've seen. Always, always take that feedback and resubmit. Sometimes the resubmissions are a treat to see because they're that much better, and they're that much more refined and polished. We can tell that you learned a lot more just from that resubmission by itself. Don't let it get you down, that you have to resubmit. At this point, I'd like to wrap up today's office hours. Before we go, Lorenzo, do you have any last words, encouragement, or advice to students who are now beginning Project 3?

**Lorenzo**: I would say to take a breather if you're feeling overwhelmed. When you approach your code, make sure you undertand every line that's going on. Ok, I'm calling this function or this function is setting a variable to something else, where is this coming from? Where is this referenced again? What library does this come from? Where is the documentation for this library? You should be able to trace everything back to where it came into your application and what it's doing. Once you get this understanding, it makes it a lot easier to write new code, to move around, and to debug because you know what's going on and where inside your application. There's a lot of different options for debugging out there. Even in Full Stack Foundations, I had to spend quite a lot of time debugging. It wasn't as though I just wrote it one time and it worked. There are a lot of different good tools out there. SQLAlchemy has some good tools that work hand in hand with Flask. Flask gives you the debugger inside of the browser, which is awesome so you don't have to keep restarting every time you hit an error. Using Chrome Developer Tools if it's something that's more of a frontend issue. Definitely use all of the resources that you have. Every once in a while Stack Overflow can be a good resource, but make sure the question is in line with your question, and then there's Python documentation. I would always start with the official documentation before going off and reading blogs and other resources on implementation. That should be where you start.

**Jee**: That's great advice, going to the documentation first. Alright, so this wraps up our Office Hours on Project 3 and Flask. If you have any additional questions, please post them to Discussions. A lot of thanks to Lorenzo for taking time out of his schedule to  come talk with us.

**Lorenzo**: Oh no, thank you, I'm very happy to be here. Thank you guys so much for your questions and feedback!

**Jee**: Tune in for Office Hours next Wednesday where we'll be talking about how to work with API Endpoints. Have a good night!

## Student Questions

#### Question 1:
Are there 2 sessions for this, today and Thursday? I seem to have some conflicting information.

Answer: Project 3 and Flask was scheduled for today, Wednesday March 4. This is the only session that we have for this course, but the video is available on the Google Community Events page to rewatch at your leisure.

#### Question 2:
Are there any aspects of the project you expect students to struggle most with?

Answer: That really depends on where you're coming from coming into this program. There are some students who are coming from a very strong frontend background so for them doing some of the Python coding and setting up the database might be more challenging, whereas there are some students who are coming from a stronger Python background who will have to spend more time working with the HTML and CSS. The intention of this course was to have the difficulty level be somewhat steady all the way through. Many courses will have a sudden spike in difficulty, but Full Stack Foundations was designed to be level all the way through. If at any point you hit a struggle point, please push through it, ask questions, ask for help. There are resources all around, and we're here eager and ready to answer your questions.

#### Question 3:
Is using SQLAlchemy mandatory?

Answer: No, but we strongly recommend that you use SQLAlchemy as it is a great tool for using object-relational mapping so you can treat your queries as objects instead of just strings that you pass into the database. If you want to write your entire application using SQL, that's perfectly fine as long as it is not in conflict with the rubric. If the rubric or the project description states explicitly that you must use SQLAlchemy then you should use SQLAlchemy, but otherwise it should be fine to use something else. We do again strongly recommend using SQLAlchemy as that is the tool that was covered throughout the course.

#### Question 4:
I'm working on a basecall app that relies on a 80MB freeware database. Should I just wrangle the data that I want from it or should I move it and the wrangling code/queries over to the project file?

Answer: That's awesome! Go ahead and move it over for when you submit because we would like to see your code and see it running locally especially since we run it ourselves when we evaluate the projects. For a 80MB database, it should be fine. If you want to submit the entire database with instructions on how to access it, our graders should be ok figuring out how to access it. When in doubt, include a README.md file that have instructions on how to setup your project or how to access different parts of your project.

#### Question 5:
Are we allowed to use other frameworks such as Pyramid and Django?

Answer: You are more than welcome to do so, but we strongly recommend that you use Flask because that's what is covered in the course. It would make it a little easier for the graders as they have been briefed on the Flask framework, but we also don't want to stifle your creativity. If there is some reason why you have to use Django or Pyramid because they have a feature that is not present in Flask, then we encourage you to do so, but if it's a matter of having to learn Flask, we encourage you to learn how to use Flask for your project.

#### Question 6:
I'm wondering about evaluation feedback. It seems to be more of a pass/fail situation. Is there a way, e-mail maybe, that we could get some best practice feedback, or maybe comments on the direction we took on the project from the coaches?

Answer: That's an excellent question! The way we do our grading is on a pass/fail like grading scale. Our categories are Does Not Meet Specifications, Meets Specifications, or Exceeds Specifications, and Exceeds is not always an option. On your evaluation feedback, we try to include feedback about your code, whether something isn't best practice, compliments. I've noted your feedback about receiving more feedback from the graders. Also, if you'd like more feedback, feel free to e-mail us or go to Discussions to ask about your code and best practices. We encourage you to ask for feedback if it wasn't present on the evaluation!

#### Question 7:
What's easier, starting from the database/backend or with the frontend?

Answer: It depends on the individual and the type of the programmer you are. If you're the type who needs to see things and how things are layed out before coding them up, then maybe starting on the frontend may be better for you. If you're more of a programmer and want to make sure your backend is solid before figuring out how to present that data on the frontend, then starting on the backend may be better for you.

**Lorenzo**: Personally, I usually start with the database layout so that the database is modelling the information the way I want. Then I go ahead and add the backend, the Flask code, the Python code, and then I move on to the frontend where I then receive feedback on the frontend where I use the feedback to make it more stylish and elegant and presentable with everything else already in place. This is just me though, it varies from developer to developer.