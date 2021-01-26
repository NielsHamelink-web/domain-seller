# Introductie
Het doel van dit project is om gemakkelijk aangeschafte domeinnamen te kunnen verkopen en beheren in 1 systeem. Dit doel wilde ik halen binnen ongeveer een week. 

# Installatie

Installeer de composer verplichtingen
Voer `composer install` uit

Configureer de .env file
```
APP_URL=http://localhost
DB_HOST=localhost
DB_DATABASE=domains
DB_USERNAME=root
DB_PASSWORD=secret
```

## Vul de database

Ik ben ervan op de hoogte dat de "normale" weg migrations/seeds zijn, voor nu heb ik een SQL export klaar gezet vanwege tijdsgebrek.

Import de `domain-seller.sql` file in jouw aangemaakte database.

## Start de web server

Voer `php artisan serve` uit

# Features

* Admin paneel gemaakt met [Voyager](https://voyager.devdojo.com/)
* Optie om de content van alle gekoppelde domeinnamen te beheren (klein CMS alsware dus)
  * Nieuwsberichten
  * Pagina's
* (Niet af) Cronjob om de toegevoegde domainnamen als domain pointer toe te voegen d.m.v. de API van DirectAdmin

# Zelf geschreven bestanden

* app/Http/Controllers/*
* app/Http/Models/*
* app/Libraries/*
* public/views/*
* etc.

# Gebruikte libraries en frameworks

* Laravel 8.*
* Bootstrap 4.*
* Voyager

# Screenshots

**Lijstweergave van de domeinnamen in het admin paneel**
![Lijstweergave van de domeinnamen in het admin paneel](https://i.ibb.co/b1qpQ0H/image.png)

**Home van het domein**
![Home van het domein](https://i.ibb.co/GnPCMbX/image.png)

**Test pagina "Hello World"**
![Test pagina "Hello World"](https://i.ibb.co/mc08g99/image.png)

**Blog post**
![Blog post](https://i.ibb.co/KXdgXN2/image.png)