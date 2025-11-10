# QueryScope 🚀

**QueryScope** is a simple SQL query result viewer built to help beginners in **Node.js**, **SQL**, or **data analysis** easily run and visualize SQL queries in a web browser. It provides an interactive, user-friendly way to learn SQL and see query results without working in the console.

---

## Features

- Execute multiple SQL queries from a `.sql` file.
- View results in a clean HTML table with sorting and search.
- Styled web interface using **EJS** and optional CSS.
- Beginner-friendly setup and code structure.

---

## Prerequisites

- Node.js installed on your machine.
- Basic knowledge of SQL and JavaScript.

---

## Getting Started

Follow these steps to set up the project:

### 1. Clone or create project folder

```bash
cd QueryScope
````

### 2. Initialize npm package

```bash
npm init -y
```

This creates a basic `package.json` like this:

```json
{
  "name": "QueryScope",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```

### 3. Modify `package.json` for better setup

* Add `"private": true` → prevents accidental publishing to npm.
* Add `"type": "module"` → enables ES6 modules (`import/export`).
* Remove unnecessary fields if desired (`version`, `description`, `main`, `keywords`, `author`, `license`).

Example:

```json
{
  "name": "QueryScope",
  "private": true,
  "type": "module",
  "scripts": {
    "start": "nodemon index.js"
  },
  "dependencies": {
    "@electric-sql/pglite": "^0.2.17",
    "express": "^4.18.2",
    "ejs": "^3.1.9"
  }
}
```

---

### 4. Install dependencies

```bash
npm install @electric-sql/pglite express ejs
npm install --save-dev nodemon
```

* **@electric-sql/pglite** → Lightweight SQL engine.
* **Express** → Web server framework.
* **EJS** → Templating engine for rendering HTML with dynamic data.
* **Nodemon** → Automatically restarts server on code changes.

---

### 5. Create folder structure

```text
QueryScope/
│ index.js
│ query.sql
│ package.json
│ package-lock.json
│
├── views/
│   └── cars.ejs      # HTML template for displaying query results
│
└── public/
    └── style.css     # Optional CSS for styling the web page
```

* `index.js` → Main server and SQL execution code.
* `query.sql` → SQL queries to execute.
* `views/cars.ejs` → EJS template for showing results.
* `public/style.css` → Optional CSS for styling tables, input, etc.

---

### 6. Run the project

```bash
npm start
```

Open your browser at: `http://localhost:8000`

You’ll see a table displaying the results of your SQL queries with search and sorting functionality.

---

## How It Works

1. `index.js` loads the SQL queries from `query.sql`.
2. Each query is executed using `@electric-sql/pglite`.
3. Results are stored in an array and sent to the **EJS template**.
4. `cars.ejs` dynamically renders the data as an HTML table.
5. Optional JavaScript enables live search and column sorting.

---

## Learning Benefits

* Helps **Node.js beginners** understand how to work with databases.
* Makes SQL queries visual and interactive.
* Provides a hands-on approach for **data analysts** or students learning SQL.

---

## Example Queries

```sql
-- Fetch top 5 red cars that are unsold
SELECT brand, model, color, price
FROM cars
WHERE color LIKE '%red%' AND sold IS FALSE
ORDER BY price
LIMIT 5;

-- Sum total earnings from sold cars
SELECT SUM(price) AS total_earnings
FROM cars
WHERE sold IS TRUE;
```

All results are dynamically displayed on the web page.

---

## License

This project is for **learning purposes**. Feel free to use and modify for educational projects.

```

---

If you want, I can also **write a ready-to-use `cars.ejs` template and search-sort.js** that works for **all types of queries**, including aggregated results like `SUM`, `COUNT`, etc., so beginners don’t get stuck.  

Do you want me to do that next?
```


