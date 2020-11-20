Version 1.x of the RASA framework.

## deploy architecture
<img src="img_src/chatbot_archi.png" title="Chatbot architecture">

## local setup
* setup env
* run
```bash
bash ./local_deploy.sh
```
which will:
* setup os & conda configs
* install env requirements
* install founders' interface
* train & save your model in `./rasa_1.x/models/`

## local run
* train with `rasa train`
* run the bot with `rasa run -m models --debug`
* run the custom actions file with `rasa run actions`

## remote setup
* get last repo update, 
* from local, `scp` repo to target (usually pointing at `/home/[os]/chatbot/`),
* from the target, run:
```bash
bash ./remote_deploy.sh
```
which will:
* setup os & conda configs
* install env requirements
* install founders' interface
* train & save your model in `/home/[os]/rasa_1.x/models/`

## remote run
* run:
```bash
cd /home/ubuntu/chatbot
screen
conda activate rasa
rasa run actions
```
* then in a second terminal run:
```bash
cd /home/ubuntu/chatbot
screen
conda activate rasa
rasa x
```
* close the terminals
* later, "screened" terminals can be accessed again by running:
  * `screen -ls`: which lists terminals id,
  * `screen -r { id }`: which aaccess the corresponding "screened" terminal

## connect to chatbot founders interface
* password embedded in url provided in second terminal `rasa x`
* go to url: `<target/password>:port`

## docs
* [v1.x docs](https://legacy-docs-v1.rasa.com/)
* [about ubuntu screen](https://doc.ubuntu-fr.org/screen) for remote deploy