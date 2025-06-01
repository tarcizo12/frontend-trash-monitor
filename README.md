# Frontend-TrashMonitor

Tela do usuário para consultar as informações que estão sendo recebidas através do monitoramento em tempo real da lixeira.

## Como usar
docker build -t lixeira-inteligente .
docker run -d -p 1880:1880 --name mynodered lixeira-inteligente

tela: http://localhost:1880/ui