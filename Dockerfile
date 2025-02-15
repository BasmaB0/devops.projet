# Utiliser une image Node.js comme base
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet dans l'image Docker
COPY . .

# Installer les dépendances
RUN npm install

# Exposer le port 3000 pour l'application
EXPOSE 3000

# Commande de démarrage du serveur
CMD ["node", "server.js"]