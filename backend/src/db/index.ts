import { drizzle } from "drizzle-orm/singlestore/driver";
import { Pool } from "pg";

const pool = new Pool({
    connectionString: "postgresql://postgres:piyush@123@mydb:5434/mydb",
});

export const db = drizzle()