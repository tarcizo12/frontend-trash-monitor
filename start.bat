@echo off
echo *** Parando e removendo container antigo (se existir) ***
docker stop node-red-lixeira >nul 2>&1
docker rm node-red-lixeira >nul 2>&1

echo *** Removendo imagem antiga (se existir) ***
docker rmi lixeira-inteligente >nul 2>&1

echo *** Construindo nova imagem ***
docker build -t lixeira-inteligente .

echo *** Iniciando container ***
docker run -d -p 1880:1880 --name node-red-lixeira lixeira-inteligente

echo *** Aguardando container iniciar... ***
timeout /t 10

echo *** Abrindo dashboard no navegador ***
start http://localhost:1880/ui

echo *** Pronto! ***
