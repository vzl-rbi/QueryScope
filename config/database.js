import { PGlite } from "@electric-sql/pglite";

export const initializeDatabase = async () => {
  const db = new PGlite();
  return db;
};
