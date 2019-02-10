<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181222211943 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE shopcart (id INT AUTO_INCREMENT NOT NULL, userid INT DEFAULT NULL, productid INT DEFAULT NULL, quantity INT DEFAULT NULL, create_at DATETIME NOT NULL, update_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE product CHANGE title title VARCHAR(150) NOT NULL, CHANGE keywords keywords VARCHAR(255) NOT NULL, CHANGE description description VARCHAR(255) NOT NULL, CHANGE type type VARCHAR(255) NOT NULL, CHANGE publisher_id publisher_id INT NOT NULL, CHANGE year year INT NOT NULL, CHANGE amount amount INT NOT NULL, CHANGE pprice pprice DOUBLE PRECISION NOT NULL, CHANGE sprice sprice DOUBLE PRECISION NOT NULL, CHANGE minamout minamout INT NOT NULL, CHANGE detail detail LONGTEXT NOT NULL, CHANGE image image VARCHAR(255) NOT NULL, CHANGE category_id category_id INT NOT NULL, CHANGE user_id user_id INT NOT NULL, CHANGE status status VARCHAR(255) NOT NULL, CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE shopcart');
        $this->addSql('ALTER TABLE product CHANGE title title VARCHAR(150) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE keywords keywords VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE description description VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE type type VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE publisher_id publisher_id INT DEFAULT 0, CHANGE year year INT DEFAULT 0, CHANGE amount amount INT DEFAULT 0, CHANGE pprice pprice DOUBLE PRECISION DEFAULT NULL, CHANGE sprice sprice DOUBLE PRECISION DEFAULT NULL, CHANGE minamout minamout INT DEFAULT 0, CHANGE detail detail LONGTEXT DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE image image VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE category_id category_id INT DEFAULT 0, CHANGE user_id user_id INT DEFAULT 0, CHANGE status status VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci, CHANGE create_at create_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, CHANGE update_at update_at DATETIME DEFAULT \'0000-00-00 00:00:00\' NOT NULL');
    }
}
