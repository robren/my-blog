# Rob Rennison's Blog

This blog uses [hugo](https://gohugo.io) to generate a static website from
markdown files.

I previously used the [Pelican](https://blog.getpelican.com/) static site
generator, but after a hiatus and atempting to modify the blog on returning to
writing, I found  Pelican to be a little dated. I discovered a shiny new coin, **Hugo**, which has
more up to date themes.


Check the hugo website for installation details.

# Content

Add new posts to the content/posts directory as markdown files.

The blog can be previewed locally by running the command:

```
hugo server

```
# Deploying

I've created a simple Makefile in this repo which makes deploying to my host
server a simple task

```
make ssh_publish

```



