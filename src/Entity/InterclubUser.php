<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Annotation\ApiResource;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;

/**
 * @ORM\Entity(repositoryClass="App\Repository\InterclubUserRepository")
 * @ApiResource(
 *      itemOperations={"get","put","patch"},
 *      collectionOperations={"get","post"}
 * )
 * @ApiFilter(SearchFilter::class, properties={"interclubId": "exact", "type": "exact"})
 */
class InterclubUser
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=30)
     */
    private $type;

    /**
     * @ORM\Column(type="string", length=30, nullable=true)
     */
    private $value;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Interclub")
     * @ORM\JoinColumn(nullable=false)
     */
    private $interclub;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $interclubId;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $userId;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(string $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getValue(): ?string
    {
        return $this->value;
    }

    public function setValue(?string $value): self
    {
        $this->value = $value;

        return $this;
    }

    public function getInterclub(): ?Interclub
    {
        return $this->interclub;
    }

    public function getInterclubId(): ?int
    {
        return $this->interclub->getId();
    }

    public function setInterclub(?Interclub $interclub): self
    {
        $this->interclub = $interclub;

        return $this;
    }

    public function getUserId(): ?int
    {
        return $this->user->getId();
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }
}
