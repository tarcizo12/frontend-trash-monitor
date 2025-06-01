FROM nodered/node-red:latest

# Instala os nodes necessários
RUN npm install node-red-dashboard

# Copia os fluxos pré-configurados
COPY flows.json /data/flows.json
COPY flows_cred.json /data/flows_cred.json
COPY settings.js /data/settings.js

# Portas expostas
EXPOSE 1880
EXPOSE 1880/tcp