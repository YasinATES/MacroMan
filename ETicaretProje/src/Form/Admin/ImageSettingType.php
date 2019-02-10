<?php

namespace App\Form\Admin;

use App\Entity\Admin\ImageSetting;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ImageSettingType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('SliderImageOne')
            ->add('SliderImageTwo')
            ->add('AnasayfaImageOne')
            ->add('AnasayfaImageTwo')
            ->add('AnasayfaImageThree')
            ->add('AnasayfaImageFour')
            ->add('AnasayfaImageFive')
            ->add('AnasayfaImageSix')
            ->add('SliderKampanya1')
            ->add('SliderKampanyaIki')
            ->add('SliderKampanyaUc')
            ->add('SliderKampanyaDort')
            ->add('SliderKampanyaBes')
            ->add('SliderKampanyaAlti')
            ->add('UrunlerImage')
            ->add('HakkimizdaImage')
            ->add('IletisimImage')
            ->add('ReferansImage')
            ->add('KampanyaLinkOne')
            ->add('KampanyaLinkTwo')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => ImageSetting::class,
            'csrf_protection' => false,
        ]);
    }
}
