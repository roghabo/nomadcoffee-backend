/*
  Warnings:

  - A unique constraint covering the columns `[username]` on the table `Coffee` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `Coffee` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `avatarURL` to the `Coffee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Coffee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `githubUsername` to the `Coffee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location` to the `Coffee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `Coffee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `Coffee` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Coffee" ADD COLUMN     "avatarURL" TEXT NOT NULL,
ADD COLUMN     "email" TEXT NOT NULL,
ADD COLUMN     "githubUsername" TEXT NOT NULL,
ADD COLUMN     "location" TEXT NOT NULL,
ADD COLUMN     "password" TEXT NOT NULL,
ADD COLUMN     "username" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Coffee.username_unique" ON "Coffee"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Coffee.email_unique" ON "Coffee"("email");
