<?php

declare(strict_types=1);

use Phinx\Migration\AbstractMigration;

final class CreateTableProducts extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-change-method
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change(): void
    {
        $this->execute("        CREATE TABLE Products (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            price DECIMAL(10, 2),
            tax DECIMAL(5, 2)
        );");
        $this->execute("DROP TABLE IF EXISTS Products;");
    }
}
