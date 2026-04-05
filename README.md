# Urban Gardening Full Stack

Urban Gardening is a full-stack web project that combines:

- A Node.js + Express backend
- A MySQL plant knowledge database
- EJS-rendered plant directory/detail pages
- Static frontend pages (landing, auth, contact, etc.)
- Supabase authentication on the frontend

## Features

- Browse a plant directory from the database
- Open detailed pages for each plant
- User login/register/forgot-password pages
- Static informational pages (About, Contact, New Garden)
- Express serves both API-style routes and static assets

## Project Structure

```
backend/
  db.js
  package.json
  server.js
  supabase.js
  routes/
    plants.js
  views/
    plant-details.ejs
    plants-directory.ejs
public/
  index.html
  login.html
  register.html
  forgotpassword.html
  about.html
  contactus.html
  newgar.html
  css/
  js/
sql/
  schema.sql
```

## Tech Stack

- Backend: Node.js, Express, EJS
- Database: MySQL (`mysql2`)
- Auth: Supabase JS client
- Frontend: HTML, CSS, JavaScript

## Prerequisites

Install the following before running locally:

- Node.js 18+
- npm
- MySQL 8+

## Local Setup

### 1. Install backend dependencies

```bash
cd backend
npm install
```

### 2. Configure environment variables

Create `backend/.env` with:

```env
DB_HOST=localhost
DB_USER=your_mysql_user
DB_PASSWORD=your_mysql_password
DB_NAME=urban_planting
PORT=3000
```

### 3. Create and seed the database

From the project root, import the SQL schema:

```bash
mysql -u your_mysql_user -p < sql/schema.sql
```

The script creates:

- `urban_planting` database
- `plants` table
- `plant_sections` table
- Seed data for many plants

### 4. Start the app

From `backend/`:

```bash
npm start
```

Open:

- `http://localhost:3000`

## Main Routes

- `GET /` -> serves landing page (`public/index.html`)
- `GET /plants` -> rendered plant directory
- `GET /plants/:id` -> rendered details for one plant

## Frontend Auth Notes

Frontend auth scripts use Supabase directly in browser code under `public/js/`.

- `public/js/login.js`
- `public/js/register.js`
- `public/js/forgotpassword.js`
- `public/js/auth.js`

If you migrate to your own Supabase project, update URL and keys in those files.

## Run Tips

- Start MySQL before `npm start`.
- Ensure `DB_NAME` matches the database created from `sql/schema.sql`.
- If port `3000` is in use, change `PORT` in `backend/.env`.

## Known Improvement Areas

- Move hardcoded Supabase keys to environment-based configuration where possible.
- Add backend API endpoints for auth-sensitive operations.
- Add tests for routes and database query behavior.
