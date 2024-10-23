# Utilise une image Node.js officielle comme image de base
FROM node:14

# Installe git
RUN apt-get update && apt-get install -y git

# Clone le dépôt GitHub
RUN git clone https://github.com/otniel-tamini/my-node.js-app-for-test.git /app

# Définir le répertoire de travail
WORKDIR /app

# Installe les dépendances
RUN npm install

# Expose le port que l'application va utiliser
EXPOSE 8000

# Commande pour lancer l'application
CMD ["npm", "start"]
