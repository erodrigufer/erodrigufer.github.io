+++
title = "Dependency management fatigue, or why I forever ditched React for Go+HTMX+Templ"
date = "2024-12-03T12:00:01+02:00"
draft = false

# description = "Dependency management fatigue in React applications"

tags = ["htmx", "go", "react", "webdev"]
+++

After getting to work on some personal projects using Go+HTMX+Templ this year, I have decided to give up on using React on any personal projects.

You can actually find a lot of compelling arguments for ditching React in favor of HTMX in the essays found in the HTMX official website.
But I feel that not that many people are speaking about **dependency management fatigue**.

## What is dependency management fatigue?

After working on my last personal project that used React (an [interactive Catalan dictionary](https://github.com/erodrigufer/catDict)), I realized that I was spending too much time dealing with dependency updates of mostly React packages.
I would update my packages to their latest release, only to realize that their APIs had breaking changes that forced me to invest time refactoring my code.

I wanted to keep up with any dependency updates because my webapp was back then deployed as a publicly accessible service in an EC2 instance and I wanted to avoid any possible vulnerabilities.

## Do we really need a new major version release?

Some of the worst offenders in this respect were `wouter` (a React router package) and `TanStackQuery` (which I was using to fetch, cache and manage state from the backend).
`wouter` is, as of December 2024, at major version 3, while `TanStackQuery` is at major version 5.

I wasn't using these packages for minor, stylistic features in my webapp, they were fundamental for the proper working of my webapp.
If they broke, my webapp fatally broke as well, i.e. no more data fetching from the backend and no more correct routing.
There was nothing similar to _progressive enhancement_ in this case.

The first time that one of these React libraries broke my application with a major version bump, I refactored my code without any questioning.

But the second time that this happened, it just felt odd.
I started asking myself:

- Is my webapp getting some actual **benefits** (apart from maybe security patches) from this major version release?
- Is it necessary to literally **break** the API of a fundamental component in a React webapp **5 times** ?!?!
- How much time am I losing on this, when I could be shipping new features or other products?

The answers to these questions were:

1. No, my webapp wasn't getting any additional benefits.
   I was already happy with the functionality of these packages.
2. I am not a core maintainer of these libraries, so it is hard for me to answer the second question.
   But I would say no.
   Plan your API design wisely.
   Only ship features that you plan to maintain in the long-term.
   Do not unnecessarily rename your exported objects.

Look, I am really grateful for open source maintainers, and you can do whatever you want with your projects (I myself do the same with mine).
But if your goal is to sustain a happy userbase, I would say that appreciating the user's precious time must be a big priority.

## I just don't have the time to deal with this...

Which gets me to one of the main points of this article.
Why is this such a big issue?

Well, at least for me, it boils down to me not having that much free time left.
So, if I somehow find some free time to work on my personal coding projects, I don't want to waste it refactoring my code to work after the major version bump of a dependency.
I actually want to work on features or start new projects.

If you are building a product for a client, and you will charge for future maintenance work, then be my guest, use as many unstable dependencies as you like.
It might be in your own best financial interest to do so.
But if you are trying to build a product that requires as little upkeep as necessary after being shipped, I'll stay as far as possible from the JS ecosystem.

## Go+HTMX+Templ

That is maybe the main reason why I will solely use Go+HTMX+Templ in my personal projects from now on.
This is maybe just anecdotal evidence, but the Go projects I've worked on let me focus on shipping features, while not ignoring general dependency/security updates.
The language itself has kept a remarkably stable stdlib and language specification.

[Discuss in Lobsters](https://lobste.rs/s/xyvjbb/dependency_management_fatigue_why_i)
