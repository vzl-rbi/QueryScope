import fs from "fs";

export const loadAndExecuteQueries = async (db) => {
  const queryFile = fs.readFileSync("query.sql", "utf8");
  const cleanSQL = queryFile.replace(/\/\*[\s\S]*?\*\//g, "").trim();

  const queries = cleanSQL
    .split(";")
    .map((q) => q.trim())
    .filter((q) => q.length > 0);

  const results = [];

  for (const q of queries) {
    try {
      const r = await db.query(q);
      if (r.rows.length > 0) {
        results.push({ query: q, rows: r.rows });
      }
    } catch (err) {
      console.error(`❌ Error executing query: ${q}`, err.message);
    }
  }

  return results;
};
