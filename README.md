# docker-compose-discourse

![](https://dockerbuildbadges.quelltext.eu/status.svg?organization=devescom&repository=docker-compose-discourse)

Baseado em um trabalho do @codeformuenster, esse fork tem por objetivo simplificar o processo de
envio para produção da stack do discourse, que tem complexibilidade alta nas instruções oficiais
e quebram os princípios da responsabilidade única para cada conteiner do projeto.

```bash

sudo docker-compose build

sudo docker-compose run discourse bash -c "sleep 3 && rake db:migrate assets:precompile"

```

Alimente as variáveis de ambiente via environment variables in `docker-compose.yml`:

    DISCOURSE_HOSTNAME=
    DISCOURSE_SMTP_ADDRESS=
    DISCOURSE_SMTP_PORT=587
    DISCOURSE_SMTP_USER_NAME=
    DISCOURSE_SMTP_PASSWORD=
    DISCOURSE_DEVELOPER_EMAILS=

Inicie Discourse:

```bash

sudo docker-compose up

open http://localhost:3000/

```

O projeto foi levantado para atender ao projeto do amanhã.
