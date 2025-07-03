import { drizzle } from "drizzle-orm/singlestore/driver";
import { Router, Request, Response } from "express";
import { db, users } from "../db/schema";
import { eq } from "drizzle-orm";

const authRouter = Router();

interface SignUpBody {
    name: string;
    email: string;
    password: string;
}

authRouter.post("/signup", async (req: Request<{}, {}, SignUpBody>, res: Response) => {
    try {
        // get req body
        const {name, email, password} = req.body;
        // check if user already exists
        const existingUser = await db.select().from(users).where(eq(users.email, email));

        if(existingUser.length)
        {
            res.status(400)
            .json({
                msg: "User with the same email already exists!"
            });      
            return;
        }
        // hashed password  
        // create a new  user and store in db
    } catch (error) {
        res.status(500).json({ error: error });
    }
});

authRouter.get("/", (req, res) => {
    res.send("Hey there! from auth"); // 1:36 
});

export default authRouter;