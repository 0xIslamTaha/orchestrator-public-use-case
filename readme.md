## Orchestrator-Public-Use-Case
![](https://miro.medium.com/max/1120/1*Nxs_NSdR2G6Ovje_lMPdkg.png)
This is a showcase of using the orchestrator to execute the default cypress/integration/examples test cases in parallel without going through the cypress dashboard. 

Here is a full [step-by-step tutorial](https://0xislamtaha.medium.com/cypress-parallelization-with-the-orchestrator-part-2-showcase-c78202b17c7a) in Medium.

## Operating Systems:
- Linux: working out of the box.
- MacOS: please exeucte `brew install coreutils` command.
- We are not supporting Windows yet.

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

## Sample of the outputs:
```bash
╭─islamtaha@RLYLTPZ175 /opt/code/github/orchestrator-public-use-case  ‹2.1.0› 
╰─➤  npx orchestrator --config orchestrator.json                                                                            

   ██████      ██████       ██████     ██   ██     ███████     ███████     ████████     ██████       █████      ████████      ██████      ██████  
  ██    ██     ██   ██     ██          ██   ██     ██          ██             ██        ██   ██     ██   ██        ██        ██    ██     ██   ██ 
  ██    ██     ██████      ██          ███████     █████       ███████        ██        ██████      ███████        ██        ██    ██     ██████  
  ██    ██     ██   ██     ██          ██   ██     ██               ██        ██        ██   ██     ██   ██        ██        ██    ██     ██   ██ 
   ██████      ██   ██      ██████     ██   ██     ███████     ███████        ██        ██   ██     ██   ██        ██         ██████      ██   ██ 
                                                                                                                             v 2.1.0 @0xIslamTaha                                                                                                                                                                                                                                                                                

[*] Checking the requirements
[-] docker is installed ✔️
[-] docker-compose is installed ✔️
[-] timeout is installed ✔️

[*] Overwrite the config file with the arguments if there is any
[*] Export the environment variables

[*] Execute the pre commands
[-] ~$ rm -rf cypress/report/* #Remove the old reports
[-] ~$ mkdir -p mochawesome-report

[*] Start the cypress containers
report does not exist, are you sure there is a json report in /opt/code/github/orchestrator-public-use-case/executionTimeReport/specsExecutionTime.json path?
[-] ~$ timeout --preserve-status 30m docker-compose  -p orchestator_project -f docker-compose.yml run --name container_14538__0 cypress-container bash -c 'exit_code=0; npx cypress run -b chrome --headless --spec cypress/integration/examples/actions.spec.js,cypress/integration/examples/window.spec.js,cypress/integration/examples/assertions.spec.js,cypress/integration/examples/viewport.spec.js,cypress/integration/examples/cookies.spec.js,cypress/integration/examples/traversal.spec.js,cypress/integration/examples/files.spec.js,cypress/integration/examples/querying.spec.js,cypress/integration/examples/location.spec.js,cypress/integration/examples/navigation.spec.js || exit_code=$? ; pkill -9 cypress ; exit $exit_code'
[-] ~$ timeout --preserve-status 30m docker-compose  -p orchestator_project -f docker-compose.yml run --name container_79305__1 cypress-container bash -c 'exit_code=0; npx cypress run -b chrome --headless --spec cypress/integration/examples/aliasing.spec.js,cypress/integration/examples/waiting.spec.js,cypress/integration/examples/connectors.spec.js,cypress/integration/examples/utilities.spec.js,cypress/integration/examples/cypress_api.spec.js,cypress/integration/examples/spies_stubs_clocks.spec.js,cypress/integration/examples/local_storage.spec.js,cypress/integration/examples/network_requests.spec.js,cypress/integration/examples/misc.spec.js || exit_code=$? ; pkill -9 cypress ; exit $exit_code'
Building cypress-container
Building cypress-container
Step 1/4 : FROM 0xislamtaha/cypress-snapshot-image:chrome94-ff93-cy9.1.1
 ---> 500565a52271
Step 2/4 : COPY cypress.json ./
 ---> Using cache
 ---> 6d2acdeb3888
Step 3/4 : RUN git config --global url."https://github.com/".insteadOf ssh://git@github.com/
 ---> Using cache
 ---> 13245c63f66b
Step 4/4 : RUN git config --global url."https://".insteadOf ssh://
 ---> Using cache
 ---> c53abc0fe0d2

Step 1/4 : FROM 0xislamtaha/cypress-snapshot-image:chrome94-ff93-cy9.1.1
 ---> 500565a52271
Step 2/4 : COPY cypress.json ./
 ---> Using cache
 ---> 6d2acdeb3888
Step 3/4 : RUN git config --global url."https://github.com/".insteadOf ssh://git@github.com/
 ---> Using cache
 ---> 13245c63f66b
Step 4/4 : RUN git config --global url."https://".insteadOf ssh://
 ---> Using cache
 ---> c53abc0fe0d2

Successfully built c53abc0fe0d2
Successfully tagged orchestator_project_cypress-container:latest
Image for service cypress-container was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Successfully built c53abc0fe0d2
Successfully tagged orchestator_project_cypress-container:latest
Image for service cypress-container was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating orchestator_project_cypress-container_run ... 
Creating orchestator_project_cypress-container_run ... done
  (Run Finished)


       Spec                                              Tests  Passing  Failing  Pending  Skipped  
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔  examples/actions.spec.js                 00:17       14       14        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/assertions.spec.js              00:04        9        9        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/cookies.spec.js                 00:02        5        5        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/files.spec.js                   00:03        4        4        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/location.spec.js                00:01        3        3        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/navigation.spec.js              00:04        3        3        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/querying.spec.js                00:03        5        5        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/traversal.spec.js               00:05       18       18        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/viewport.spec.js                00:04        1        1        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  examples/window.spec.js                  00:02        3        3        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    ✔  All specs passed!                        00:49       65       65        -        -        -  


[*] Stop the cypress containers
Removing container_14538__0 ... done
Removing container_79305__1 ... done

[*] Generate the reports
[-] HTML report: mochawesome-report/mochawesome.html
[-] Execution time report: executionTimeReport/specsExecutionTime.json
[-] chrome
┌─────────┬──────────────────────────────┬──────────┐
│ (index) │           specName           │ duration │
├─────────┼──────────────────────────────┼──────────┤
│    0    │      'location.spec.js'      │  '0:01'  │
│    1    │       'window.spec.js'       │  '0:01'  │
│    2    │   'local_storage.spec.js'    │  '0:01'  │
│    3    │       'files.spec.js'        │  '0:02'  │
│    4    │      'cookies.spec.js'       │  '0:02'  │
│    5    │      'querying.spec.js'      │  '0:02'  │
│    6    │     'connectors.spec.js'     │  '0:02'  │
│    7    │     'navigation.spec.js'     │  '0:03'  │
│    8    │     'utilities.spec.js'      │  '0:03'  │
│    9    │    'cypress_api.spec.js'     │  '0:03'  │
│   10    │        'misc.spec.js'        │  '0:04'  │
│   11    │      'viewport.spec.js'      │  '0:04'  │
│   12    │ 'spies_stubs_clocks.spec.js' │  '0:04'  │
│   13    │     'traversal.spec.js'      │  '0:05'  │
│   14    │     'assertions.spec.js'     │  '0:05'  │
│   15    │  'network_requests.spec.js'  │  '0:06'  │
│   16    │      'waiting.spec.js'       │  '0:06'  │
│   17    │      'aliasing.spec.js'      │  '0:08'  │
│   18    │      'actions.spec.js'       │  '0:18'  │
└─────────┴──────────────────────────────┴──────────┘
[-] firefox
┌─────────┬──────────────────────────────┬──────────┐
│ (index) │           specName           │ duration │
├─────────┼──────────────────────────────┼──────────┤
│    0    │      'location.spec.js'      │  '0:00'  │
│    1    │       'window.spec.js'       │  '0:00'  │
│    2    │   'local_storage.spec.js'    │  '0:00'  │
│    3    │       'files.spec.js'        │  '0:00'  │
│    4    │      'cookies.spec.js'       │  '0:00'  │
│    5    │      'querying.spec.js'      │  '0:00'  │
│    6    │     'connectors.spec.js'     │  '0:00'  │
│    7    │     'navigation.spec.js'     │  '0:00'  │
│    8    │     'utilities.spec.js'      │  '0:00'  │
│    9    │    'cypress_api.spec.js'     │  '0:00'  │
│   10    │        'misc.spec.js'        │  '0:00'  │
│   11    │      'viewport.spec.js'      │  '0:00'  │
│   12    │ 'spies_stubs_clocks.spec.js' │  '0:00'  │
│   13    │     'traversal.spec.js'      │  '0:00'  │
│   14    │     'assertions.spec.js'     │  '0:00'  │
│   15    │  'network_requests.spec.js'  │  '0:00'  │
│   16    │      'waiting.spec.js'       │  '0:00'  │
│   17    │      'aliasing.spec.js'      │  '0:00'  │
│   18    │      'actions.spec.js'       │  '0:00'  │
└─────────┴──────────────────────────────┴──────────┘

[*] Total execution time: 1:10.681 (m:ss.mmm)
```