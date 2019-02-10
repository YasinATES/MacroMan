<?php

namespace App\Form;

use App\Entity\Orders;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OrdersType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('userid')
            ->add('amount')
            ->add('name')
            ->add('adress')
            ->add('city')
            ->add('phone')
            ->add('shipinfo')
            ->add('status')
            ->add('note')
            ->add('create_at')
            ->add('update_at')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Orders::class,
            'csrf_protection' => true,
        ]);
    }
}
