## Orchestrator-Public-Use-Case
This is a showcase of using the orchestrator to execute the default cypress/integration/examples test cases in parallel without going through the cypress dashboard. 

## Execution steps:
1- Install the packages 
```bash
cd orchestrator-public-use-case
npm i
```

2- Execute the test cases with the default configuration
```bash
npx orchestrator --config orchestrator.json
```

3- Browse the HTML report `mochawesome-report/mochawesome.html`.

