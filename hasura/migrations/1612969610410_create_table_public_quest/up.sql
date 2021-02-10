CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."quest"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" date NOT NULL DEFAULT now(), "guild_id" uuid NOT NULL, "created_by_player_id" uuid NOT NULL, "title" text NOT NULL, "description" text, "external_link" text, "cooldown" integer, PRIMARY KEY ("id") , FOREIGN KEY ("created_by_player_id") REFERENCES "public"."player"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("guild_id") REFERENCES "public"."guild"("id") ON UPDATE restrict ON DELETE restrict);
