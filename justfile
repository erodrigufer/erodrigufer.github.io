default:
  @just --list

# Creates a new blog post.
post BLOG_POST_NAME:
    hugo new content content/blog/{{BLOG_POST_NAME}}.md

# Serve the generated webpage.
serve:
  hugo server

deploy: build
  rsync --exclude ".DS_Store" --verbose --recursive --perms --times --delete public/ restic:/usr/local/www/blog/

build: clean
  hugo --minify

# Remove the build output.
clean:
  rm -rf ./public
