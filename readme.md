## Orchestrator-Public-Use-Case
![](https://miro.medium.com/max/1120/1*Nxs_NSdR2G6Ovje_lMPdkg.png)
This is a showcase of using the orchestrator to execute the default cypress/integration/examples test cases in parallel without going through the cypress dashboard. 

Here is a full [step-by-step tutorial](https://0xislamtaha.medium.com/cypress-parallelization-with-the-orchestrator-part-2-showcase-c78202b17c7a) in Medium.

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

