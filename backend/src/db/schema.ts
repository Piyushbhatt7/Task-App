import { timestamp, uuid } from "drizzle-orm/gel-core";
import { pgTable } from "drizzle-orm/pg-core";
import { text } from "stream/consumers";

pgTable("users", {
    id: uuid("id").primaryKey().defaultRandom(),
    name: text("name").notNull().unique(),
    email: text("email").notNull().unique(),
    password: text("password").notNull(),
    createdAt: timestamp("created_at")
})