
This project uses Fastify with TypeScript and WebSocket support. </br> It includes a Makefile to automate setup, development, build, and cleanup tasks.

Project Setup

To initialize the project with all dependencies and starter files:

make setup

This will:
- Create package.json and tsconfig.json
- Create a src/ folder and populate it from SetupSrc/
- Install Fastify, WebSocket, and TypeScript dependencies
- Replace config files with SetupPackage.json and SetupTsconfig.json
- Add a starter index.ts file

Makefile Targets

Here’s a summary of all available make commands:

setup   - Initializes project and installs dependencies  
dev     - Runs the dev server with tsx  
run     - Runs the compiled server  
build   - Compiles TypeScript and prepares dist/public  
save    - Saves current source files to SetupSrc/  
load    - Restores source files from SetupSrc/  
reset   - Cleans and re-runs setup  
empty   - Deletes all files and dependencies  
all     - Builds and runs the server  

Development Workflow

Run the development server with auto-reload:

make dev

Build the project and start the compiled server:

make all

Run the compiled server directly:

make run

Build

Compile TypeScript and prepare the dist/public folder:

make build

This will:
- Run the TypeScript compiler
- Clean and recreate the dist/public directory

Save & Load Source Files

Save current src/*.ts files to SetupSrc/:

make save

Restore files from SetupSrc/ to src/:

make load

Reset & Cleanup

Reset the project (clears everything and re-runs setup):

make reset

Remove all generated files and dependencies:

make empty

This will:
- Delete src/, dist/, node_modules/, and config files
- Remove package-lock.json
- Print "All gone!"

File Structure After Setup

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

Dependencies Installed

Core:
npm install fastify @fastify/websocket @fastify/static ws

Dev:
npm install --save-dev typescript tsx pino-pretty @types/ws

Summary

This project is a Fastify + TypeScript WebSocket server with a fully automated Makefile workflow. It supports:
- One-command setup
- Live development with tsx
- Structured logging via pino-pretty
- Easy file saving/loading
- Full cleanup and reset