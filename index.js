import express from "express";
import carsRouter from "./routes/cars.js";

const app = express();
const PORT = 8000;

// Configure express
app.set("view engine", "ejs");
app.use(express.static("public"));

// Use routes
app.use("/", carsRouter);

// Start server
app.listen(PORT, () =>
  console.log(`Server is running at PORT http://localhost:${PORT}`)
);
