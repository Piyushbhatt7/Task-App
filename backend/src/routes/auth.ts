import { drizzle } from "drizzle-orm/singlestore/driver";
import { Router } from "express";

const authRouter = Router();

authRouter.post

authRouter.get("/", (req, res) => {
    res.send("Hey there! from auth");
});

export default authRouter;