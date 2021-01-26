<?php

namespace App\Libraries;

use App\Models\DomainModel as Domain;

class DomainPointer {

    protected $name = '';

    /**
     * @var string name
     * Build the domain pointer from the domain name
     */
    public function __construct($name) {
        $this->name = $name;
    }

    /**
     * @return DomainModel
     * Getter for the DomainModel object
     */
    public function getDomain() {
        return Domain::where('domain_name', $this->name)->first();
    }

}