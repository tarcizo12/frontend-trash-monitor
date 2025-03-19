# Frontend-TrashMonitor

Tela do usuário para consultar as informações que estão sendo recebidas através do monitoramento em tempo real da lixeira.

## Requisitos

- **Node.js v20+** (Recomendado)
- **Gerenciador de pacotes**: npm, yarn, pnpm ou bun (escolha um)

Se você ainda não tem o Node.js instalado, baixe-o em: [https://nodejs.org/](https://nodejs.org/).

## Primeira Execução

Antes de rodar o projeto pela primeira vez, siga os passos abaixo:

1. **Clone o repositório** (caso ainda não tenha):
   ```bash
   git clone https://github.com/seu-usuario/frontend-trash-monitor.git
   cd frontend-trash-monitor
   ```

2. **Instale as dependências**:
   ```bash
   npm install
   # ou
   yarn install
   # ou
   pnpm install
   # ou
   bun install
   ```

3. **Execute o projeto em modo de desenvolvimento**:
   ```bash
   npm run dev
   # ou
   yarn dev
   # ou
   pnpm dev
   # ou
   bun dev
   ```

4. **Acesse no navegador**:
   - [http://localhost:3000](http://localhost:3000)

## Execuções Seguintes

Se o projeto já foi instalado anteriormente, basta rodar:
```bash
npm run dev
# ou
yarn dev
# ou
pnpm dev
# ou
bun dev
```

## Modo de Produção

Se quiser rodar o projeto em produção:

1. **Gerar o build**:
   ```bash
   npm run build
   ```
2. **Iniciar o servidor**:
   ```bash
   npm start
   ```

Agora o projeto estará rodando em produção!

## Edição

Para modificar a página principal, edite o arquivo:
```bash
app/page.tsx
```
As alterações serão aplicadas automaticamente em modo de desenvolvimento.