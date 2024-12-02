+++
title = "Dependency management fatigue, or why I forever ditched React for Go+HTMX"
date = "2024-09-08T10:47:48+02:00"
draft = true

#
# description is optional
#
# description = "An optional description for SEO. If not provided, an automatically created summary will be used."

tags = ["htmx", "go", "react", "webdev"]
+++

There are a lot of good reasons to use HTMX instead of React (or any other JS framework as a matter of fact): **unified state management**, leaner websites, not having to write any JS...
I am not going to talk about all the possible reasons why you should consider this, since the official htmx documentation already has an entire section dedicated to essays (with some great memes) that convey these arguments in a much better way that I will ever be able to do.

In this post I will talk about the single reason that convinced me of never shipping a personal project in React ever again.

## Are we getting any benefits out of these major releases?

## Main story points:

Things that destroyed my soul:

- yarn/npm setup. Yarn has breaking changes? A package manager?
- TanStackQuery and wouter also having major version releases with breaking changes
- If you are building a product for a client, and you will charge for future maintenance work, then be my guest, use as many unstable dependencies as you like. It might be in your own best financial interest to do so. But if you are trying to build a product that requires as less upkeep work as necessary after being shipped, I'll stay as far as possible from the JS ecosystem as possible.
- Are we getting any benefits out of the major releases? Any features that we actually needed? Was it worth it the pain of migrating the application?
- How much time are we losing on this, when we could be shipping new features, other products?

<!-- TODO: Add discuss on HackerNews -->
