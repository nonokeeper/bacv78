<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use ApiPlatform\Core\Annotation\ApiFilter;
use Doctrine\Common\Collections\Collection;
use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Security\Core\User\UserInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 * @UniqueEntity(fields={"username"}, message="Identifiant déjà utilisé !")
 * @ApiResource(
 *      itemOperations={"get","patch"},
 *      collectionOperations={"get"},
 *      normalizationContext={"groups"={"user:read"}},
 *      denormalizationContext={"groups"={"user:write"}}
 * )
 * @ApiFilter(SearchFilter::class, properties={"username": "exact", "team": "exact"})
 */
class User implements UserInterface, \Serializable
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("user:read")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=180, unique=true)
     * @Groups("user:read")
     */
    private $username;

    /**
     * @ORM\Column(type="json")
     * @Groups("user:read")
     */
    private $roles = [];

    /**
     * @var string The hashed password
     * @ORM\Column(type="string")
     */
    private $password;

    /**
     * @var string The variable to enter a password before encoding and storing
     */
    private $plainPassword;

    /**
     * @var string Variable to describe players with Interclub Team
     */
    private $nameWithTeam;

    /**
     * @var string Variable to describe players with Veteran Interclub Team
     */
    private $nameWithTeamVeteran;

    /**
     * @ORM\Column(type="string", length=80)
     * @Groups({"user:read", "user:write"})
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fullName;

    /**
     * @var string $teamBACV
     * @Groups("user:read")
     */
    private $teamBACV;

    /**
     * @var string le token qui servira lors de l'oubli de mot de passe
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $resetToken;

    /**
     * @ORM\Column(type="string", length=14, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $mobile;

    /**
     * @ORM\Column(type="date", nullable=true)
     * @Groups("user:read")
     */
    private $birthDate;

    /**
     * @ORM\Column(type="string", length=10, nullable=true)
     * @Groups("user:read")
     */
    private $license;

    /**
     * @ORM\Column(type="string", length=3, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $classementSimple;

    /**
     * @ORM\Column(type="string", length=3, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $classementDouble;

    /**
     * @ORM\Column(type="string", length=3, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $classementMixte;

    /**
     * @ORM\Column(type="string", length=5, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $codePostal;

    /**
     * @ORM\Column(type="string", length=14, nullable=true)
     */
    private $mobileParent;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Club", inversedBy="users")
     */
    private $club;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Team", inversedBy="users")
     */
    private $team;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $rue;

    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     * @Groups({"user:read", "user:write"})
     */
    private $ville;

    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    private $category;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Article", mappedBy="auteur")
     */
    private $articles;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\TeamVeteran", inversedBy="users")
     */
    private $teamVeteran;

    /**
     * @var \DateTime
     * @Gedmo\Mapping\Annotation\Timestampable(on="create")
     * @Doctrine\ORM\Mapping\Column(type="datetime")
     */
    protected $createdDate;

    /**
     * @var \DateTime
     * @Gedmo\Mapping\Annotation\Timestampable(on="update")
     * @Doctrine\ORM\Mapping\Column(type="datetime")
     */
    protected $updateDate;

    /**
     * @ORM\Column(type="string", length=1, nullable=true)
     * @Groups("user:read")
     */
    private $gender;

    /**
     * @ORM\Column(type="boolean")
     */
    private $active;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\AgeCategory", inversedBy="users")
     */
    private $ageCategory;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Team", mappedBy="capitaine")
     */
    private $teamManaged;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\TeamVeteran", mappedBy="capitaine")
     */
    private $teamVeteranManaged;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Commande", mappedBy="user")
     */
    private $commandes;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Sondage", mappedBy="user")
     */
    private $sondages;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Reponse", mappedBy="user")
     */
    private $reponses;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Status", inversedBy="users")
     */
    private $status;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Population", mappedBy="users")
     */
    private $populations;

    public function __construct()
    {
        $this->articles = new ArrayCollection();
        $this->commandes = new ArrayCollection();
        $this->sondages = new ArrayCollection();
        $this->reponses = new ArrayCollection();
        $this->populations = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUsername(): string
    {
        return (string) $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        // guarantee every user at least has ROLE_USER
        if (empty($roles)) {
            $roles[] = 'ROLE_USER';
        }

        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        if (empty($roles)) {
            $roles[] = 'ROLE_USER';
        }
        $this->roles = $roles;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getPassword(): string
    {
        return (string) $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    /**
     * @return string
     */
    public function getPlainPassword(): ?string
    {
        return $this->plainPassword;
    }

    /**
     * @param string $plainPassword
     * @return User
     */
    public function setPlainPassword(string $plainPassword): User
    {
        $this->plainPassword = $plainPassword;

        return $this;
    }

    /**
     * @return string
     */
    public function getTeamBACV(): ?string
    {
        return $this->team->getName();
    }

    /**
     * @param string $teamBACV
     */
    public function setTeamBACV(string $teamBACV)
    {
        $this->teamBACV = $teamBACV;

        return $this;
    }

    /**
     * @return string
     */
    public function getNameWithTeam(): ?string
    {
        if ($this->getTeam()) {
            $this->nameWithTeam = $this->fullName.' ('.$this->getTeam().')';
        } else {
            $this->nameWithTeam = $this->fullName;
        }
        
        return $this->nameWithTeam;
    }

    /**
     * @return string
     */
    public function getNameWithTeamVeteran(): ?string
    {
        if ($this->getTeamVeteran()) {
            $this->nameWithTeamVeteran = $this->fullName.' ('.$this->getTeamVeteran().')';
        } else {
            $this->nameWithTeamVeteran = $this->fullName;
        }
        
        return $this->nameWithTeamVeteran;
    }

    /**
     * @param string $nameWithTeam
     * @return User
     */
    public function setNameWithTeam(string $nameWithTeam): User
    {
        $this->nameWithTeam = $nameWithTeam;

        return $this;
    }

    /**
     * @param string $nameWithTeamVeteran
     * @return User
     */
    public function setNameWithTeamVeteran(string $nameWithTeamVeteran): User
    {
        $this->nameWithTeamVeteran = $nameWithTeamVeteran;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getSalt()
    {
        // not needed when using the "bcrypt" algorithm in security.yaml
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        $this->plainPassword = null;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    public function setFirstName(?string $firstName): self
    {
        $this->firstName = $firstName;
        $this->setFullName('');

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    public function setLastName(string $lastName): self
    {
        $this->lastName = $lastName;
        $this->setFullName('');

        return $this;
    }

    public function getFullName(): ?string
    {
        return $this->fullName;
    }

    public function setFullName(string $fullName): self
    {
        $this->fullName = $this->firstName.' '.$this->lastName;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getResetToken(): ?string
    {
        return $this->resetToken;
    }

    /**
     * @param string $resetToken
     */
    public function setResetToken(?string $resetToken): void
    {
        $this->resetToken = $resetToken;
    }

    public function getMobile(): ?string
    {
        return $this->mobile;
    }

    public function setMobile(?string $mobile): self
    {
        $this->mobile = $mobile;

        return $this;
    }

    public function getBirthDate(): ?\DateTimeInterface
    {
        return $this->birthDate;
    }

    public function setBirthDate(?\DateTimeInterface $birthDate): self
    {
        $this->birthDate = $birthDate;

        return $this;
    }

    public function getLicense(): ?string
    {
        return $this->license;
    }

    public function setLicense(?string $license): self
    {
        $this->license = $license;

        return $this;
    }

    public function getClassementSimple(): ?string
    {
        return $this->classementSimple;
    }

    public function setClassementSimple(?string $classementSimple): self
    {
        $this->classementSimple = $classementSimple;

        return $this;
    }

    public function getClassementDouble(): ?string
    {
        return $this->classementDouble;
    }

    public function setClassementDouble(?string $classementDouble): self
    {
        $this->classementDouble = $classementDouble;

        return $this;
    }

    public function getClassementMixte(): ?string
    {
        return $this->classementMixte;
    }

    public function setClassementMixte(?string $classementMixte): self
    {
        $this->classementMixte = $classementMixte;

        return $this;
    }

    public function getCodePostal(): ?string
    {
        return $this->codePostal;
    }

    public function setCodePostal(?string $codePostal): self
    {
        $this->codePostal = $codePostal;

        return $this;
    }

    public function getMobileParent(): ?string
    {
        return $this->mobileParent;
    }

    public function setMobileParent(?string $mobileParent): self
    {
        $this->mobileParent = $mobileParent;

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

    public function getTeam(): ?Team
    {
        return $this->team;
    }

    public function setTeam(?Team $team): self
    {
        $this->team = $team;

        return $this;
    }

    public function getRue(): ?string
    {
        return $this->rue;
    }

    public function setRue(?string $rue): self
    {
        $this->rue = $rue;

        return $this;
    }

    public function getVille(): ?string
    {
        return $this->ville;
    }

    public function setVille(?string $ville): self
    {
        $this->ville = $ville;

        return $this;
    }

    public function getCategory(): ?string
    {
        return $this->category;
    }

    public function setCategory(?string $category): self
    {
        $this->category = $category;

        return $this;
    }

    /** @see \Serializable::serialize() */
    public function serialize()
    {
        return serialize(array(
            $this->id,
            $this->username,
            $this->password,
            // see section on salt below
            // $this->salt,
        ));
    }

    /** @see \Serializable::unserialize() */
    public function unserialize($serialized)
    {
        list (
            $this->id,
            $this->username,
            $this->password,
            // see section on salt below
            // $this->salt
        ) = unserialize($serialized);
    }

    /**
     * @return Collection|Article[]
     */
    public function getArticles(): Collection
    {
        return $this->articles;
    }

    public function addArticle(Article $article): self
    {
        if (!$this->articles->contains($article)) {
            $this->articles[] = $article;
            $article->setAuteur($this);
        }

        return $this;
    }

    public function removeArticle(Article $article): self
    {
        if ($this->articles->contains($article)) {
            $this->articles->removeElement($article);
            // set the owning side to null (unless already changed)
            if ($article->getAuteur() === $this) {
                $article->setAuteur(null);
            }
        }

        return $this;
    }

    public function __toString()
    {
        if ($this->getFirstName()) {
            return $this->getFirstName().' '.$this->getLastName();
        } else return '';
    }

    public function getTeamVeteran(): ?TeamVeteran
    {
        return $this->teamVeteran;
    }

    public function setTeamVeteran(?TeamVeteran $teamVeteran): self
    {
        $this->teamVeteran = $teamVeteran;

        return $this;
    }

    public function getUpdateDate(): ?\DateTimeInterface
    {
        return $this->updateDate;
    }

    public function setUpdateDate(\DateTimeInterface $updateDate): self
    {
        $this->updateDate = $updateDate;

        return $this;
    }

    public function getCreatedDate(): ?\DateTimeInterface
    {
        return $this->CreatedDate;
    }

    public function setCreatedDate(\DateTimeInterface $createdDate): self
    {
        $this->createdDate = $createdDate;

        return $this;
    }

    public function getGender(): ?string
    {
        return $this->gender;
    }

    public function setGender(?string $gender): self
    {
        $this->gender = $gender;

        return $this;
    }

    public function getActive(): ?bool
    {
        return $this->active;
    }

    public function setActive(bool $active): self
    {
        $this->active = $active;

        return $this;
    }

    public function getAgeCategory(): ?AgeCategory
    {
        return $this->ageCategory;
    }

    public function setAgeCategory(?AgeCategory $ageCategory): self
    {
        $this->ageCategory = $ageCategory;

        return $this;
    }

    public function getTeamManaged(): ?Team
    {
        return $this->teamManaged;
    }

    public function setTeamManaged(?Team $teamManaged): self
    {
        $this->teamManaged = $teamManaged;

        // set (or unset) the owning side of the relation if necessary
        $newCapitaine = $teamManaged === null ? null : $this;
        if ($newCapitaine !== $teamManaged->getCapitaine()) {
            $teamManaged->setCapitaine($newCapitaine);
        }

        return $this;
    }

    public function getTeamVeteranManaged(): ?TeamVeteran
    {
        return $this->teamVeteranManaged;
    }

    public function setTeamVeteranManaged(?TeamVeteran $teamVeteranManaged): self
    {
        $this->teamVeteranManaged = $teamVeteranManaged;

        // set (or unset) the owning side of the relation if necessary
        $newCapitaine = $teamVeteranManaged === null ? null : $this;
        if ($newCapitaine !== $teamVeteranManaged->getCapitaine()) {
            $teamVeteranManaged->setCapitaine($newCapitaine);
        }

        return $this;
    }

    /**
     * @return Collection|Commande[]
     */
    public function getCommandes(): Collection
    {
        return $this->commandes;
    }

    public function addCommande(Commande $commande): self
    {
        if (!$this->commandes->contains($commande)) {
            $this->commandes[] = $commande;
            $commande->setUser($this);
        }

        return $this;
    }

    public function removeCommande(Commande $commande): self
    {
        if ($this->commandes->contains($commande)) {
            $this->commandes->removeElement($commande);
            // set the owning side to null (unless already changed)
            if ($commande->getUser() === $this) {
                $commande->setUser(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Sondage[]
     */
    public function getSondages(): Collection
    {
        return $this->sondages;
    }

    public function addSondage(Sondage $sondage): self
    {
        if (!$this->sondages->contains($sondage)) {
            $this->sondages[] = $sondage;
            $sondage->addUser($this);
        }

        return $this;
    }

    public function removeSondage(Sondage $sondage): self
    {
        if ($this->sondages->contains($sondage)) {
            $this->sondages->removeElement($sondage);
            $sondage->removeUser($this);
        }

        return $this;
    }

    /**
     * @return Collection|Reponse[]
     */
    public function getReponses(): Collection
    {
        return $this->reponses;
    }

    public function addReponse(Reponse $reponse): self
    {
        if (!$this->reponses->contains($reponse)) {
            $this->reponses[] = $reponse;
            $reponse->setUser($this);
        }

        return $this;
    }

    public function removeReponse(Reponse $reponse): self
    {
        if ($this->reponses->contains($reponse)) {
            $this->reponses->removeElement($reponse);
            // set the owning side to null (unless already changed)
            if ($reponse->getUser() === $this) {
                $reponse->setUser(null);
            }
        }

        return $this;
    }

    public function getStatus(): ?Status
    {
        return $this->status;
    }

    public function setStatus(?Status $status): self
    {
        $this->status = $status;

        return $this;
    }

    /**
     * @return Collection|Population[]
     */
    public function getPopulations(): Collection
    {
        return $this->populations;
    }

    public function addPopulation(Population $population): self
    {
        if (!$this->populations->contains($population)) {
            $this->populations[] = $population;
            $population->addUser($this);
        }

        return $this;
    }

    public function removePopulation(Population $population): self
    {
        if ($this->populations->contains($population)) {
            $this->populations->removeElement($population);
            $population->removeUser($this);
        }

        return $this;
    }
   
}