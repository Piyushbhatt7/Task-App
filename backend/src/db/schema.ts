import { uuid } from "drizzle-orm/gel-core";
import { pgTable } from "drizzle-orm/pg-core";

pgTable("users", {
    id: uuid("id").primaryKey()
})