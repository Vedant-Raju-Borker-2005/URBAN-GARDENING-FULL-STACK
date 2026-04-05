import express from "express";
import db from "../db.js";

const router = express.Router();//for route handlers and middleware

// Plants for directory
router.get("/", async (req, res) => {
  try {
    const [plants] = await db.query("SELECT * FROM plants ORDER BY name ASC");
    res.render("plants-directory", { plants });
  } catch (err) {
    console.error(err);
    res.status(500).send("ALT F4 problem with fetching");
  }
});

// Info of specific plant
router.get("/:id", async (req, res) => {
  try {                                                       /*(parameterized querying)*/
    const [plantResult] = await db.query("SELECT * FROM plants WHERE id = ?", [req.params.id]);
    if (plantResult.length === 0) return res.status(404).send("ALT F4 Plant not found");

    const plant = plantResult[0];
    const [sections] = await db.query("SELECT * FROM plant_sections WHERE plant_id = ?", [req.params.id]);
    res.render("plant-details", { plant, sections });
  } catch (err) {
    console.error(err);
    res.status(500).send("ALT F4 Error loading plant details");
  }
});

export default router;
