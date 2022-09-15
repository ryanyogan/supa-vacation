
-- AlterTable
ALTER TABLE "Home" ADD COLUMN "ownerId" TEXT;

-- UpdateData
UPDATE "Home" SET "ownerId" = 'cl83lmyvi0048w90zajvjib1k' WHERE "ownerId" IS NULL;

-- AlterTable
ALTER TABLE "Home" ALTER COLUMN "ownerId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Home" ADD CONSTRAINT "Home_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
