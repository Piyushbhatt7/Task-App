import { drizzle } from "drizzle-orm/singlestore/driver";
import { Router } from "express";

const authRouter = Router();

authRouter.post("/signup", async (req, res) => {
    try {
        // get req body
        // check if user already exists
        // create a new  user and store in db
    } catch (error) {
        res.status(500).json({error: error});
    }
});

authRouter.get("/", (req, res) => {
    res.send("Hey there! from auth");
});

export default authRouter;