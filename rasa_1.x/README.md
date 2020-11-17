# Chatbot architecture
<img src="img_src/chatbot_archi.png" title="Chatbot architecture">

# RASA framework implementation research

### definitions
* `rasa` is the framework. It is comprised of two distinct parts:
  * `NLU` which processes natural language understanding tasks to generate a language model,
  * and `Core` which processes the expression.
  
  Both are trained separately.
* `rasa x` is the interface that helps users manage, train and deploy their rasa model.

### setup
* get last `chatbot` repo update, 
* if to be installed on vm or instance: from local `scp` repo to target (usually pointing at `/home/os/chatbot/`),
* from the target folder, install necessary requirements and deploy:
```bash
bash ./deploy.sh
```
It will download and setup a bunch of requirements and train your model which then will be saved in `.../chatbot/models/` folder.

### run
* open a first terminal and enter following commands:
```bash
cd /home/ubuntu/chatbot
screen
conda activate rasa
rasa run actions
```
* open a second terminal and enter following commands:
```bash
cd /home/ubuntu/chatbot
screen
conda activate rasa
rasa x
```
* you can close the terminals
* to reconnect to "screened" terminals open terminal and:
  * `screen -ls`: lists terminals id,
  * `screen -r { id }`: returns to the corresponding "screened" terminal

### connect to chatbot
* password embedded in url provided in second terminal `rasa x`  
* go to url: `<target/password>:port`

### useful documentations
* [installation](https://rasa.com/docs/rasa/user-guide/installation/)
* [tutorial](https://rasa.com/docs/rasa/user-guide/rasa-tutorial/)
* [commands cheatsheet](https://rasa.com/docs/rasa/user-guide/command-line-interface/)
* [actions management](https://rasa.com/docs/rasa/core/actions/)
* [community forum](https://forum.rasa.com/)  
* [about ubuntu screen](https://doc.ubuntu-fr.org/screen)