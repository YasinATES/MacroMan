<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181228000529 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE orderdetail (id INT AUTO_INCREMENT NOT NULL, orderid INT DEFAULT NULL, userid INT DEFAULT NULL, productid INT DEFAULT NULL, price NUMERIC(10, 0) DEFAULT NULL, quantity INT DEFAULT NULL, amount NUMERIC(10, 0) DEFAULT NULL, name VARCHAR(255) DEFAULT NULL, status VARCHAR(255) DEFAULT NULL, create_at DATETIME DEFAULT NULL, update_at DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE orders (id INT AUTO_INCREMENT NOT NULL, userid INT DEFAULT NULL, amount NUMERIC(10, 0) DEFAULT NULL, name VARCHAR(255) DEFAULT NULL, adress VARCHAR(255) DEFAULT NULL, city VARCHAR(255) DEFAULT NULL, phone VARCHAR(255) DEFAULT NULL, shipinfo VARCHAR(255) DEFAULT NULL, status VARCHAR(255) DEFAULT NULL, note VARCHAR(255) DEFAULT NULL, create_at DATETIME DEFAULT NULL, update_at DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE users CHANGE tel tel VARCHAR(20) NOT NULL, CHANGE addres addres VARCHAR(250) NOT NULL, CHANGE type type VARCHAR(20) NOT NULL, CHANGE status status VARCHAR(20) NOT NULL, CHANGE city city VARCHAR(30) NOT NULL, CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE shopcart CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE orderdetail');
        $this->addSql('DROP TABLE orders');
        $this->addSql('ALTER TABLE shopcart CHANGE create_at create_at DATETIME DEFAULT CURRENT_TIMESTAMP, CHANGE update_at update_at DATETIME DEFAULT CURRENT_TIMESTAMP');
        $this->addSql('ALTER TABLE users CHANGE tel tel VARCHAR(20) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE addres addres VARCHAR(250) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE type type VARCHAR(20) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE status status VARCHAR(20) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE city city VARCHAR(30) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE create_at create_at DATETIME DEFAULT NULL, CHANGE update_at update_at DATETIME DEFAULT NULL');
    }
}
