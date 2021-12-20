<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use ApiPlatform\Core\Annotation\ApiFilter;
use Doctrine\Common\Collections\Collection;
use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation\Groups;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;

/**
 * @ORM\Entity(repositoryClass="App\Repository\TeamRepository")
 * @ApiResource(
 *      itemOperations={"get","put","patch"},
 *      collectionOperations={"get","post"}
 * )
 * @ApiFilter(SearchFilter::class, properties={"slug": "start"})
 */
class Team
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=30, unique=true)
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $slug;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\User", mappedBy="team")
     */
    private $users;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Saison", inversedBy="teams")
     */
    private $saison;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Club", inversedBy="teams")
     * @ORM\JoinColumn(nullable=false)
     */
    private $club;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\User", inversedBy="teamManaged")
     */
    private $capitaine;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $mixte;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Interclub", mappedBy="teamBACV")
     */
    private $interclubs;

    public function __construct()
    {
        $this->users = new ArrayCollection();
        $this->saison = new ArrayCollection();
        $this->interclubs = new ArrayCollection();
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

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * @return Collection|User[]
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): self
    {
        if (!$this->users->contains($user)) {
            $this->users[] = $user;
            $user->setTeam($this);
        }

        return $this;
    }

    public function removeUser(User $user): self
    {
        if ($this->users->contains($user)) {
            $this->users->removeElement($user);
            if ($user->getTeam() === $this) {
                $user->setTeam(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Saison[]
     */
    public function getSaison(): Collection
    {
        return $this->saison;
    }

    public function addSaison(Saison $saison): self
    {
        if (!$this->saison->contains($saison)) {
            $this->saison[] = $saison;
        }

        return $this;
    }

    public function removeSaison(Saison $saison): self
    {
        if ($this->saison->contains($saison)) {
            $this->saison->removeElement($saison);
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

    public function getCapitaine(): ?User
    {
        return $this->capitaine;
    }

    public function setCapitaine(?User $capitaine): self
    {
        $this->capitaine = $capitaine;

        return $this;
    }

    public function getMixte(): ?bool
    {
        return $this->mixte;
    }

    public function setMixte(?bool $mixte): self
    {
        $this->mixte = $mixte;

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
            $interclub->setTeamBACV($this);
        }

        return $this;
    }

    public function removeInterclub(Interclub $interclub): self
    {
        if ($this->interclubs->contains($interclub)) {
            $this->interclubs->removeElement($interclub);
            // set the owning side to null (unless already changed)
            if ($interclub->getTeamBACV() === $this) {
                $interclub->setTeamBACV(null);
            }
        }

        return $this;
    }

}