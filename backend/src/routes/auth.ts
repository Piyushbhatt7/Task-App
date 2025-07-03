import { drizzle } from "drizzle-orm/singlestore/driver";
import { Router } from "express";

const authRouter = Router();

authRouter.post("/signup", async (req, res) => {
    try {
        
    } catch (error) {
        res.status(500).json({error: error});
    }
});

authRouter.get("/", (req, res) => {
    res.send("Hey there! from auth");
});

export default authRouter;