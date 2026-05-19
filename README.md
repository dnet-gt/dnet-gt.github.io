# SecureSystems Lab Website

This repository contains the website of the SecureSystems Lab.

The website is powered by Jekyll together with Bootstrap and Bootswatch themes.  
It is designed to be simple, lightweight, and easy to extend for academic research groups.

This website is adapted from the Allan Lab academic website template:
https://www.allanlab.org/

We gratefully acknowledge the Allan Lab for making their template publicly available and reusable for academic purposes.

---

# Running the Website Locally

The website can be developed and tested locally using Docker.

## Requirements

Install the following software:

- Docker
- Docker Compose

---

## Start the Development Server

Clone the repository and move into the project directory:

```bash
git clone <repository-url>
cd <repository-folder>
```

Run the website locally:

```bash
docker compose up
```

The website will be available at:

```
http://localhost:4000
```

Changes to files are automatically reloaded during development.

---

## Stop the Development Server

Press:

```
CTRL + C
```

or run: 

```bash
docker compose down
```

---

## Project Structure

```
.
├── _data/              # Structured data files
├── _includes/          # Reusable HTML components
├── _layouts/           # Website layouts
├── _posts/             # Blog and news posts
├── assets/             # CSS, JavaScript, images
├── Dockerfile
├── docker-compose.yml
├── Gemfile
└── _config.yml
```

---

## Creating Blog Posts

Blog posts can be added inside:

```
_posts/
```

using the filename format:

```
YYYY-MM-DD-title.md
```

Example:

```
2026-05-07-first-post.md
```

---

## Technologies

- Jekyll
- Liquid Templates
- Bootstrap
- Bootswatch
- Docker

---

## License and Attribution

Original template and design inspiration:
Allan Lab — https://www.allanlab.org/

Original code released under the MIT License by Allan Lab.

Additional modifications and extensions for the SecureSystems Lab website are maintained separately in this repository.
