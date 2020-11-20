# Multi-domain chatbot
The present repo regroups 
* a remote deploy backend [1.x](https://github.com/zerotropism/chatbot/tree/master/rasa_1.x)
* a local deloy backend [2.x](https://github.com/zerotropism/chatbot/tree/master/rasa_2.x)
* a frontend [interface](https://github.com/zerotropism/chatbot/tree/master/interface)

## RASA framework implementation research
The version `rasa_2.x` has still to be derived for a remote deploy.

### definitions
* `rasa` is the framework. It is comprised of two distinct parts:
  * `NLU` which processes natural language understanding tasks to generate a language model,
  * and `Core` which processes the expression.  
  which can be trained separately.
* `rasa x` is the founders' interface that helps users manage, train and deploy their rasa model.

## interface
User interface for rasa bot.

### useful links
* [rasa docs](https://rasa.com/docs/)
* [rasa forum](https://forum.rasa.com/)  
* [about ubuntu screen](https://doc.ubuntu-fr.org/screen) for remote deploy