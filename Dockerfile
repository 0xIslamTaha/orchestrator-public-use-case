
FROM cypress/browsers:node14.16.0-chrome89-ff86
WORKDIR /orechestrator_usecase

COPY package.json package-lock.json cypress.json ./

RUN npm ci && npx cypress verify
