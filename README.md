[![Imagem](.github/assets/asterismo_logo.jpg)](https://api.asterismo.gerardo-junior.com/)


> The github project manager

```
    [+] AUTOR:        Gerardo Junior
    [+] SITE:         https://gerardo-junior.com
    [+] EMAIL:        me@gerardo-junior.com
    [+] GITHUB:       https://github.com/gerardo-junior/asterismo.api
    [+] TELEGRAM:     @MrGerardoJunior
    [+] URL:          https://api.asterismo.gerardo-junior.com/
```

| [master](https://api.asterismo.gerardo-junior.com/)  | [develop](https://develop--asterismo.herokuapp.com/)  |
| :------------: | :------------: |
| [![Build Status](https://travis-ci.org/gerardo-junior/asterismo.api.svg?branch=master)](https://travis-ci.org/gerardo-junior/asterismo.api)  | [![Build Status](https://travis-ci.org/gerardo-junior/asterismo.api.svg?branch=develop)](https://travis-ci.org/gerardo-junior/asterismo.api)  |

## Come on, do your tests

#### But what will you need?

- [docker](https://docs.docker.com/install/) ~ 18.04.0-ce
- [docker-compose](https://docs.docker.com/compose/) ~ 1.21.1

#### Okay, how to put it to up?

First clone of the project
```bash
git clone https://github.com/gerardo-junior/asterismo.api.git
cd asterismo.api
```


Copy the configuration file, and edit
```bash
cp .env.example .env # and configure!
```


ready, now you can use ;)

```bash
docker-compose up # the first time, it will download the images
```

*~ Tip: using the docker-compose you can add `-d` and you can keep with your terminal ~*

To access the api:

Wait for message and open [localhost:1234](http://localhost:1234) in your browser

To use a cli:
```bash
docker-compose exec api [sh or symfony-cmd]
```

#### How to delete used images

```bash
docker-compose down --rmi all
```

#### To delete the database:

```bash
docker volume rm asterismo-dbdata
```


## Run without docker:

you will need to install:

- [php](https://php.net): 7.2.5 
- [apache](https://www.apache.org/): 2.4.33
- [symfony](https://symfony.com/): 4.2.1
- [composer](https://getcomposer.org/): 1.6.5
- [mariadb](https://mariadb.org/) 10.3.11

and configure apache for [/public](/public) folder

## Troubleshooting

#### Is the port already used by other services?

edit the file [docker-compose.yml](docker-compose.yml)
```yml
# (...)

api: 
  image: gerardojunior/symfony.environment:stable
  volumes:
    - type: bind
      source: ./
      target: /usr/share/src
  ports:
    - [any door]:80
    - [any door]:3000
  links:
    - mariadb
  depends_on:
    - mariadb

# (...)
```

### License  
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
