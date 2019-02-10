<?php

namespace App\Repository\Admin;

use App\Entity\Admin\ImageSetting;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method ImageSetting|null find($id, $lockMode = null, $lockVersion = null)
 * @method ImageSetting|null findOneBy(array $criteria, array $orderBy = null)
 * @method ImageSetting[]    findAll()
 * @method ImageSetting[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ImageSettingRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, ImageSetting::class);
    }

    // /**
    //  * @return ImageSetting[] Returns an array of ImageSetting objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('i')
            ->andWhere('i.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('i.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ImageSetting
    {
        return $this->createQueryBuilder('i')
            ->andWhere('i.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
