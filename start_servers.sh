apt update && apt install tmux -y

git clone https://github.com/myshell-ai/MeloTTS.git
cd MeloTTS
pip install -e .
python -m unidic download

cd ../

cd voice_servers 

cd models/cottontail-lg && wget https://huggingface.co/Hazzzardous/cottontail/resolve/main/expxl.pt
cd ../..

cd models/cottontail-sm && wget https://huggingface.co/Hazzzardous/cottontail/resolve/main/exp.pt
cd ../..

pip install -r ./requirements.txt && python3 ./server_hub.py