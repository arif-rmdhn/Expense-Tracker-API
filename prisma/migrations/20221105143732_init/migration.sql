-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `update_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Transaction` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cash_in` DOUBLE NOT NULL,
    `cash_out` DOUBLE NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `update_at` DATETIME(3) NOT NULL,
    `UserId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Transaction` ADD CONSTRAINT `Transaction_UserId_fkey` FOREIGN KEY (`UserId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
