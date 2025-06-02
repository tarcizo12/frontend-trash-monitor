@echo off
echo 🚮 Parando e removendo container node-red-lixeira (se existir)...
docker stop node-red-lixeira >nul 2>&1
docker rm node-red-lixeira >nul 2>&1

echo Removendo imagem lixeira-inteligente (se existir)...
docker rmi lixeira-inteligente >nul 2>&1

echo Removendo volumes dangling...
docker volume prune -f

echo Removendo imagens dangling...
docker image prune -f

echo Limpeza concluida!
pause
