<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\Collection;
use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\LieuRepository")
 * @ApiResource(
 *      itemOperations={"get"},
 *      collectionOperations={},
 *      normalizationContext={"groups"={"lieu:read"}}
 * )
 */
class Lieu
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Groups("lieu:read")
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=50)
     * @Groups("lieu:read")
     */
    private $rue;

    /**
     * @ORM\Column(type="string", length=5)
     * @Groups("lieu:read")
     */
    private $codePostal;

    /**
     * @ORM\Column(type="string", length=30)
     * @Groups("lieu:read")
     */
    private $ville;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Interclub", mappedBy="lieu")
     */
    private $interclubs;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\InterclubVeteran", mappedBy="lieu")
     */
    private $interclubVeterans;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Club", inversedBy="lieux")
     */
    private $club;

    public function __construct()
    {
        $this->interclubs = new ArrayCollection();
        $this->interclubVeterans = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getRue(): ?string
    {
        return $this->rue;
    }

    public function setRue(string $rue): self
    {
        $this->rue = $rue;

        return $this;
    }

    public function getCodePostal(): ?string
    {
        return $this->codePostal;
    }

    public function setCodePostal(string $codePostal): self
    {
        $this->codePostal = $codePostal;

        return $this;
    }

    public function getVille(): ?string
    {
        return $this->ville;
    }

    public function setVille(string $ville): self
    {
        $this->ville = $ville;

        return $this;
    }

    /**
     * @return Collection|Interclub[]
     */
    public function getInterclubs(): Collection
    {
        return $this->interclubs;
    }

    public function addInterclub(Interclub $interclub): self
    {
        if (!$this->interclubs->contains($interclub)) {
            $this->interclubs[] = $interclub;
            $interclub->setLieu($this);
        }

        return $this;
    }

    public function removeInterclub(Interclub $interclub): self
    {
        if ($this->interclubs->contains($interclub)) {
            $this->interclubs->removeElement($interclub);
            // set the owning side to null (unless already changed)
            if ($interclub->getLieu() === $this) {
                $interclub->setLieu(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|InterclubVeteran[]
     */
    public function getInterclubVeterans(): Collection
    {
        return $this->interclubVeterans;
    }

    public function addInterclubVeteran(InterclubVeteran $interclubVeteran): self
    {
        if (!$this->interclubVeterans->contains($interclubVeteran)) {
            $this->interclubVeterans[] = $interclubVeteran;
            $interclubVeteran->setLieu($this);
        }

        return $this;
    }

    public function removeInterclubVeteran(InterclubVeteran $interclubVeteran): self
    {
        if ($this->interclubVeterans->contains($interclubVeteran)) {
            $this->interclubVeterans->removeElement($interclubVeteran);
            // set the owning side to null (unless already changed)
            if ($interclubVeteran->getLieu() === $this) {
                $interclubVeteran->setLieu(null);
            }
        }

        return $this;
    }

    public function getClub(): ?Club
    {
        return $this->club;
    }

    public function setClub(?Club $club): self
    {
        $this->club = $club;

        return $this;
    }

    public function __toString()
    {
        if ($this->getName()) {
            return $this->getName();
        } else return '';
    }
}
