1. install express.js
2. install nodemon
3. index.js file edited
4. install ejs to make sql query looks good in web browser
5. views foler created for html to show sql query
6. # folder structure
   project/
   │ index.js
   │ query.sql
   │ package.json
   │ package-lock.json
   │
   └── views/
   │ cars.ejs
   └── public/
   │ style.css (optional)
7. # Updated folder 6
   your-project/
   ├── index.js
   ├── config/
   │ └── database.js
   ├── data/
   │ └── seedData.js
   ├── routes/
   │ └── cars.js
   ├── utils/
   │ └── queryLoader.js
   ├── public/
   │ └── (your static files)
   ├── views/
   │ └── cars.ejs
   └── query.sql
