pip install -r requirements.txt
pip install python-dateutil==2.8
pip install rasa-x --extra-index-url https://pypi.rasa.com/simple
python -m spacy download en
python -m spacy download fr
rasa train