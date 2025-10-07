##This project uses Fastify with TypeScript and WebSocket support. 
It includes a Makefile to automate setup, 
development, build, and cleanup tasks.

Makefile Targets
```makefile
Here’s a summary of all available make commands:

setup   - Initializes project and installs dependencies 
        - and installs simple helloworld ts file in src Folder 
dev     - Runs the dev project with tsx  
run     - Runs the compiled project  
build   - Compiles TypeScript and prepares dist/public  
save    - Saves current source files to SetupSrc/ NB delete old Setup src fies  
load    - Restores source files from SetupSrc/  
reset   - Cleans and re-runs setup  
empty   - Deletes all files and dependencies leaving only setup files 
all     - Builds and runs the project  
```


File Structure After Setup

```bash
test_websocket/
├── src/
│   └── index.ts
├── dist/
│   └── public/
├── SetupSrc/
│   └── *.ts
├── SetupPackage.json
├── SetupTsconfig.json
├── package.json
├── tsconfig.json
├── Makefile
└── test.txt
```

Note: This setup is intended purely for experimentation with Fastify and TypeScript. 
It's a lightweight scaffold to explore features, 
test ideas, and get familiar with the development workflow.