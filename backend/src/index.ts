import express from "express";

const app = express();

app.get("/", (req, res) => {
    res.send("Welcome to my app");
});

app.listen(8000), () => {
    console.log("SErver started on port 8000")
}