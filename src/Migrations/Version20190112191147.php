<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190112191147 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE orders (id INT AUTO_INCREMENT NOT NULL, userid INT DEFAULT NULL, amount DOUBLE PRECISION DEFAULT NULL, name VARCHAR(20) DEFAULT NULL, address VARCHAR(150) NOT NULL, city VARCHAR(15) DEFAULT NULL, phone VARCHAR(15) DEFAULT NULL, shipinfo VARCHAR(255) DEFAULT NULL, status VARCHAR(15) DEFAULT NULL, note VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE users (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(20) NOT NULL, email VARCHAR(50) NOT NULL, password VARCHAR(100) NOT NULL, type VARCHAR(10) NOT NULL, status VARCHAR(10) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE category CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE product CHANGE title title VARCHAR(150) NOT NULL, CHANGE type type VARCHAR(150) NOT NULL, CHANGE publisher_id publisher_id INT NOT NULL, CHANGE amount amount DOUBLE PRECISION NOT NULL, CHANGE pprice pprice DOUBLE PRECISION NOT NULL, CHANGE sprice sprice DOUBLE PRECISION NOT NULL, CHANGE description description VARCHAR(255) NOT NULL, CHANGE keywords keywords VARCHAR(150) NOT NULL, CHANGE detail detail VARCHAR(255) NOT NULL, CHANGE image image VARCHAR(255) NOT NULL, CHANGE status status VARCHAR(30) NOT NULL, CHANGE user_id user_id INT NOT NULL, CHANGE category_id category_id INT NOT NULL, CHANGE create_at create_at DATETIME NOT NULL, CHANGE update_at update_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE setting CHANGE smtppassw smtppassw VARCHAR(20) NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE orders');
        $this->addSql('DROP TABLE users');
        $this->addSql('ALTER TABLE category CHANGE create_at create_at DATETIME DEFAULT NULL, CHANGE update_at update_at DATETIME DEFAULT NULL');
        $this->addSql('ALTER TABLE product CHANGE title title VARCHAR(150) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE type type VARCHAR(150) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE publisher_id publisher_id INT DEFAULT NULL, CHANGE amount amount DOUBLE PRECISION DEFAULT NULL, CHANGE pprice pprice DOUBLE PRECISION DEFAULT NULL, CHANGE sprice sprice DOUBLE PRECISION DEFAULT NULL, CHANGE description description VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE keywords keywords VARCHAR(150) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE detail detail VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE image image VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE status status VARCHAR(30) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE user_id user_id INT DEFAULT NULL, CHANGE category_id category_id INT DEFAULT NULL, CHANGE create_at create_at DATETIME DEFAULT CURRENT_TIMESTAMP, CHANGE update_at update_at DATETIME DEFAULT NULL');
        $this->addSql('ALTER TABLE setting CHANGE smtppassw smtppassw VARCHAR(20) DEFAULT NULL COLLATE utf8mb4_unicode_ci');
    }
}
