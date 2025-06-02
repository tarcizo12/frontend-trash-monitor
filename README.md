# 🗑️ Lixeira Inteligente - Monitoramento em Tempo Real

Dashboard para monitoramento de lixeiras inteligentes com **Node-RED**.

---

## 🚀 Como Executar

### ✅ 1. Com Docker (Recomendado)

```bash
docker build -t lixeira-inteligente .
docker run -d -p 1880:1880 --name node-red-lixeira lixeira-inteligente
```

### ✅ 2. Localmente (Sem Docker)

```bash
npm install -g node-red
node-red
```

### ✅ 3. via .bat no CMD(Windows)

```bash
.\start.bat
.\stop.bat
node-red
```

---

## 🌐 Acesse a Interface

- **Editor Node-RED:** [http://localhost:1880](http://localhost:1880)
- **Dashboard:** [http://localhost:1880/ui](http://localhost:1880/ui)

---

## 📡 Testando o Sistema

### ➡️ Envie dados de teste via MQTT:

```bash
mosquitto_pub -h broker.hivemq.com -t "resposta/volume" -m "ID: lixeira_01, Distancia: 15.5 cm, Status: Lixeira vazia, Data/Hora: $(date +'%d/%m/%Y %H:%M:%S')"
```

### ➡️ Para monitorar o tópico:

```bash
mosquitto_sub -h broker.hivemq.com -t "resposta/volume"
```

---

## 🐳 Dockerfile

```dockerfile
FROM nodered/node-red:latest

RUN npm install node-red-dashboard

COPY flows.json /data/flows.json
COPY settings.js /data/settings.js

EXPOSE 1880
```

---

## 📦 Estrutura do Projeto

- `flows.json` — Fluxo principal do Node-RED
- `settings.js` — Configurações do Node-RED
- `Dockerfile` — Configuração do container Docker

---

## 🔍 Funcionalidades do Dashboard

✅ Medição em tempo real  
✅ Histórico das últimas 10 leituras  
✅ Botão para limpar o histórico  
✅ Visualização de percentual de ocupação  
✅ Status atual da lixeira  

---

💡 **Dica:**  
Após iniciar o container, acesse:  
➡️ [http://localhost:1880/ui](http://localhost:1880/ui) para visualizar o dashboard.

---

## 🛠️ Tecnologias Utilizadas

- Node-RED
- Node-RED Dashboard
- MQTT (via Mosquitto)
- Docker

