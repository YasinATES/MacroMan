<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181129001333 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE product (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(150) NOT NULL, keywords VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, publisher_id INT NOT NULL, year INT NOT NULL, amount INT NOT NULL, pprice DOUBLE PRECISION NOT NULL, sprice DOUBLE PRECISION NOT NULL, minamout INT NOT NULL, detail LONGTEXT NOT NULL, image VARCHAR(255) NOT NULL, category_id INT NOT NULL, user_id INT NOT NULL, status VARCHAR(255) NOT NULL, create_at DATETIME NOT NULL, update_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE categories CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE users CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE product');
        $this->addSql('ALTER TABLE categories CHANGE create_at create_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, CHANGE update_at update_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL');
        $this->addSql('ALTER TABLE users CHANGE create_at create_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, CHANGE update_at update_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL');
    }
}
