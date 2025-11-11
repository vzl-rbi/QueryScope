import express from "express";
import { initializeDatabase } from "../config/database.js";
import { carSeedData } from "../data/seedData.js";
import { loadAndExecuteQueries } from "../utils/queryLoader.js";

const router = express.Router();

let results = [];

// Initialize database and load queries when server starts
(async () => {
  try {
    const db = await initializeDatabase();
    await db.exec(carSeedData);
    results = await loadAndExecuteQueries(db);
    console.log("✅ Database initialized and queries loaded");
  } catch (error) {
    console.error("❌ Failed to initialize database:", error);
  }
})();

router.get("/", (req, res) => {
  if (results.length === 0) {
    return res.render("cars", {
      results: [],
      message: "No valid query results found.",
    });
  }
  res.render("cars", { results, message: null });
});

export default router;
