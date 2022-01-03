FROM 0xislamtaha/cypress-snapshot-image:chrome94-ff93-cy9.1.1

COPY cypress.json ./

RUN git config --global url."https://github.com/".insteadOf ssh://git@github.com/
RUN git config --global url."https://".insteadOf ssh://
