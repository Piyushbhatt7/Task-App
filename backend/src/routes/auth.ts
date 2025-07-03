import { drizzle } from "drizzle-orm/singlestore/driver";
import { Router } from "express";

const authRouter = Router();

interface SignUpBody {
    name: string;
    email: string
}

authRouter.post("/signup", async (req, res) => {
    try {
        // get req body
        req.body;
        // check if user already exists
        // hashed password
        // create a new  user and store in db
    } catch (error) {
        res.status(500).json({error: error});
    }
});

authRouter.get("/", (req, res) => {
    res.send("Hey there! from auth");
});

export default authRouter;