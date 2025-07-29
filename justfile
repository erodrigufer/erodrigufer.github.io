default:
  @just --list

# Create a new blog post.
post BLOG_POST_NAME:
    hugo new content content/blog/{{BLOG_POST_NAME}}.md

# Serve the generated webpage locally.
dev:
  hugo server

# Deploy the generated webpage.
deploy: build
  rsync --exclude ".DS_Store" --verbose --recursive --perms --times --delete public/ restic:/usr/local/www/blog/

# Build the webpage.
build: clean
  hugo --minify

# Remove the build output.
clean:
  rm -rf ./public
