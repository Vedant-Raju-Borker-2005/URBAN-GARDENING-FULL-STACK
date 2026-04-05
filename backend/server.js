import express from "express";//framework to build server
import cors from "cors";//cross-origin requests
import path from "path";
import { fileURLToPath } from "url";
import plantsRouter from "./routes/plants.js";

const app = express();//application object
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Middleware
// for cross-origin calls to different localhosts
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Express serves files from the public folder
app.use(express.static(path.join(__dirname, "../public")));

// EJS
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Routes
app.use("/plants", plantsRouter);

//  request             response 
//     object--    --object
//            |    |
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "../public/index.html"));
});

// Server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`FOR WEBSITE CLICK 👉👉👉: http://localhost:${PORT}`));
