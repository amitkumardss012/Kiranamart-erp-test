-- DropForeignKey
ALTER TABLE `customerpurchase` DROP FOREIGN KEY `CustomerPurchase_customerId_fkey`;

-- DropIndex
DROP INDEX `CustomerPurchase_customerId_fkey` ON `customerpurchase`;

-- AlterTable
ALTER TABLE `customerpurchase` MODIFY `customerId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `CustomerPurchase` ADD CONSTRAINT `CustomerPurchase_customerId_fkey` FOREIGN KEY (`customerId`) REFERENCES `Customer`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
