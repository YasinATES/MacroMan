<?php

namespace App\Entity\Admin;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\Admin\ImageSettingRepository")
 */
class ImageSetting
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderImageOne;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderImageTwo;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageOne;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageTwo;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageThree;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageFour;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageFive;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $AnasayfaImageSix;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanya1;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanyaIki;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanyaUc;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanyaDort;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanyaBes;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $SliderKampanyaAlti;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $UrunlerImage;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $HakkimizdaImage;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $IletisimImage;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $ReferansImage;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $KampanyaLinkOne;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $KampanyaLinkTwo;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $temp;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getSliderImageOne(): ?string
    {
        return $this->SliderImageOne;
    }

    public function setSliderImageOne(?string $SliderImageOne): self
    {
        $this->SliderImageOne = $SliderImageOne;

        return $this;
    }

    public function getSliderImageTwo(): ?string
    {
        return $this->SliderImageTwo;
    }

    public function setSliderImageTwo(?string $SliderImageTwo): self
    {
        $this->SliderImageTwo = $SliderImageTwo;

        return $this;
    }

    public function getAnasayfaImageOne(): ?string
    {
        return $this->AnasayfaImageOne;
    }

    public function setAnasayfaImageOne(?string $AnasayfaImageOne): self
    {
        $this->AnasayfaImageOne = $AnasayfaImageOne;

        return $this;
    }

    public function getAnasayfaImageTwo(): ?string
    {
        return $this->AnasayfaImageTwo;
    }

    public function setAnasayfaImageTwo(?string $AnasayfaImageTwo): self
    {
        $this->AnasayfaImageTwo = $AnasayfaImageTwo;

        return $this;
    }

    public function getAnasayfaImageThree(): ?string
    {
        return $this->AnasayfaImageThree;
    }

    public function setAnasayfaImageThree(?string $AnasayfaImageThree): self
    {
        $this->AnasayfaImageThree = $AnasayfaImageThree;

        return $this;
    }

    public function getAnasayfaImageFour(): ?string
    {
        return $this->AnasayfaImageFour;
    }

    public function setAnasayfaImageFour(?string $AnasayfaImageFour): self
    {
        $this->AnasayfaImageFour = $AnasayfaImageFour;

        return $this;
    }

    public function getAnasayfaImageFive(): ?string
    {
        return $this->AnasayfaImageFive;
    }

    public function setAnasayfaImageFive(?string $AnasayfaImageFive): self
    {
        $this->AnasayfaImageFive = $AnasayfaImageFive;

        return $this;
    }

    public function getAnasayfaImageSix(): ?string
    {
        return $this->AnasayfaImageSix;
    }

    public function setAnasayfaImageSix(?string $AnasayfaImageSix): self
    {
        $this->AnasayfaImageSix = $AnasayfaImageSix;

        return $this;
    }

    public function getSliderKampanya1(): ?string
    {
        return $this->SliderKampanya1;
    }

    public function setSliderKampanya1(?string $SliderKampanya1): self
    {
        $this->SliderKampanya1 = $SliderKampanya1;

        return $this;
    }

    public function getSliderKampanyaIki(): ?string
    {
        return $this->SliderKampanyaIki;
    }

    public function setSliderKampanyaIki(?string $SliderKampanyaIki): self
    {
        $this->SliderKampanyaIki = $SliderKampanyaIki;

        return $this;
    }

    public function getSliderKampanyaUc(): ?string
    {
        return $this->SliderKampanyaUc;
    }

    public function setSliderKampanyaUc(?string $SliderKampanyaUc): self
    {
        $this->SliderKampanyaUc = $SliderKampanyaUc;

        return $this;
    }

    public function getSliderKampanyaDort(): ?string
    {
        return $this->SliderKampanyaDort;
    }

    public function setSliderKampanyaDort(?string $SliderKampanyaDort): self
    {
        $this->SliderKampanyaDort = $SliderKampanyaDort;

        return $this;
    }

    public function getSliderKampanyaBes(): ?string
    {
        return $this->SliderKampanyaBes;
    }

    public function setSliderKampanyaBes(?string $SliderKampanyaBes): self
    {
        $this->SliderKampanyaBes = $SliderKampanyaBes;

        return $this;
    }

    public function getSliderKampanyaAlti(): ?string
    {
        return $this->SliderKampanyaAlti;
    }

    public function setSliderKampanyaAlti(?string $SliderKampanyaAlti): self
    {
        $this->SliderKampanyaAlti = $SliderKampanyaAlti;

        return $this;
    }

    public function getUrunlerImage(): ?string
    {
        return $this->UrunlerImage;
    }

    public function setUrunlerImage(?string $UrunlerImage): self
    {
        $this->UrunlerImage = $UrunlerImage;

        return $this;
    }

    public function getHakkimizdaImage(): ?string
    {
        return $this->HakkimizdaImage;
    }

    public function setHakkimizdaImage(?string $HakkimizdaImage): self
    {
        $this->HakkimizdaImage = $HakkimizdaImage;

        return $this;
    }

    public function getIletisimImage(): ?string
    {
        return $this->IletisimImage;
    }

    public function setIletisimImage(?string $IletisimImage): self
    {
        $this->IletisimImage = $IletisimImage;

        return $this;
    }

    public function getReferansImage(): ?string
    {
        return $this->ReferansImage;
    }

    public function setReferansImage(?string $ReferansImage): self
    {
        $this->ReferansImage = $ReferansImage;

        return $this;
    }

    public function getKampanyaLinkOne(): ?string
    {
        return $this->KampanyaLinkOne;
    }

    public function setKampanyaLinkOne(?string $KampanyaLinkOne): self
    {
        $this->KampanyaLinkOne = $KampanyaLinkOne;

        return $this;
    }

    public function getKampanyaLinkTwo(): ?string
    {
        return $this->KampanyaLinkTwo;
    }

    public function setKampanyaLinkTwo(?string $KampanyaLinkTwo): self
    {
        $this->KampanyaLinkTwo = $KampanyaLinkTwo;

        return $this;
    }

    public function getTemp(): ?string
    {
        return $this->temp;
    }

    public function setTemp(string $temp): self
    {
        $this->temp = $temp;

        return $this;
    }
}
