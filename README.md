# Sprawozdanie_4
# 1. Tworzenie Docker file

    FROM ubuntu:latest

    RUN apt-get update && apt-get upgrade -y

    RUN apt-get install -y apache2

    COPY index.html /var/www/html/

    EXPOSE 8080

    LABEL maintainer="Rimashevsky mr.macintosh01@gmail.com"

    CMD ["apache2ctl", "-D", "FOREGROUND"]

# 2. Tworzenie HTML file

    <!DOCTYPE html>
    <html>
    <head>
        <title>Moja Strona WWW</title>
    </head>
    <body>
        <h1>Imię i nazwisko studenta: [Twoje imię i nazwisko]</h1>
        <h2>Grupa dziekańska: [Twoja grupa dziekańska]</h2>
        <p>Witaj na mojej stronie!</p>
    </body>
    </html>
    
# 3. Budowa obrazu Docker
    docker build -t web100 .
    
# 4. Uruchomienie serweru Apatche
    docker run -d -p 8080:80 web100

# 5. Sprawdzenie działania:
    curl http://localhost:8080

# 6. Teraz, aby sprawdzić ilość warstw w obrazie oraz jakie kroki doprowadziły do ich powstania:
    docker history web100

# Spostrzeżenia dotyczące warstw oraz ich powstania mogą być zależne od konkretnych działań podczas tworzenia obrazu, ale ogólnie rzecz biorąc, każde polecenie RUN,     COPY lub ADD w pliku Dockerfile tworzy nową warstwę w obrazie Dockerowym.
