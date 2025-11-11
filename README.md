# 🌐 QueryScope

**QueryScope** is a beginner-friendly **SQL Query Viewer** built with **Node.js**, **EJS**, and **PGlite**.
It lets you **write, run, and visualize SQL queries** directly in your browser — perfect for learners exploring SQL and server-side JavaScript.

---

## ✨ What You Can Do

* ⚡ Run multiple SQL queries from a single `.sql` file
* 📊 Instantly view query results in a web browser
* 🧩 Learn how **Node.js** connects with a **database**
* 🎨 See clean, styled results using EJS templates
* 🔁 Edit your query file and refresh — no console work needed!

---

## 🧠 Why QueryScope?

This project was made to simplify SQL learning for beginners who prefer **visual feedback** instead of just command-line output.
It’s a minimal yet complete example of a **backend + database + view** setup.

---

## 📦 Requirements

* Node.js (v18 or higher recommended)
* Basic understanding of SQL syntax

---

## 🚀 Getting Started

### 1️⃣ Create your project folder

```bash
mkdir QueryScope
cd QueryScope
```

### 2️⃣ Initialize npm

```bash
npm init -y
```

Then open `package.json` and replace it with:

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
  },
  "devDependencies": {
    "nodemon": "^3.0.3"
  }
}
```

---

### 3️⃣ Install dependencies

```bash
npm install
```

This installs:

* **@electric-sql/pglite** → lightweight embedded SQL database
* **express** → minimal web server
* **ejs** → HTML templating engine
* **nodemon** → auto-reload on file changes

---

### 4️⃣ Project Structure

```bash
QueryScope/
│
├── index.js          # Main server and SQL runner
├── query.sql         # SQL queries go here
├── package.json
│
├── views/
│   └── cars.ejs      # HTML template for displaying query results
│
└── public/
    └── style.css     # Optional custom styling
```

---

### 5️⃣ Run the Project

```bash
npm start
```

Then visit 👉 [http://localhost:8000](http://localhost:8000)

You’ll see your SQL query results beautifully displayed in a table.

---

## 🧩 How It Works

1. **`index.js`**

   * Starts an Express server
   * Loads data into a sample `cars` table
   * Reads and executes queries from `query.sql`
   * Filters out commented queries (`/* ... */` or `-- ...`)
   * Passes valid query results to the EJS template

2. **`cars.ejs`**

   * Displays results in a dynamic HTML table
   * Automatically adapts to any query (columns, values, etc.)

3. **`style.css` (optional)**

   * Adds color, hover effects, and dark theme support for a cleaner UI

---

## 💡 Example Queries

```sql
/* Find unsold cars from the 60s (Dodge) or 70s (Ford/Triumph) */
SELECT brand, model, year, sold
FROM cars
WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
    OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979))
  AND sold IS NOT TRUE;

/* Get the total value of sold cars */
SELECT SUM(price) AS total_earnings
FROM cars
WHERE sold IS TRUE;
```

---

## 🧰 Learning Benefits

* Understand **how SQL works inside Node.js**
* See **query results instantly** in your browser
* Learn **Express + EJS basics** with practical use
* Perfect for **students, interns, and self-learners**

---

## 🌟 Future Ideas

* Add **live reload** when `query.sql` changes
* Add **theme switch (light/dark)**
* Add **filter/search bar** for results
* Add **export as CSV** button

---

## 📜 License

This project is open for **learning and experimentation**.
Feel free to modify, extend, and share!

---

Would you like me to include a **ready-to-use `cars.ejs` + style.css** that:

* auto-adjusts for any query result (different columns),
* adds light/dark mode toggle, and
* includes live search?
