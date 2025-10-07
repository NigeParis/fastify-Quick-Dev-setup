
all:
	@npm run build
	@npm run start

re: reset all

run:
	@npm run start

dev:
	@npm run dev

build:
	@npm run build
	@rm -rf dist/public
	@mkdir dist/public

setup:

	@echo "Initializing project..."
	@npm init -y
	@npm install --save-dev typescript
	@npx tsc --init
	@rm -rf src
	@mkdir src
	@cp -r SetupSrc/*.ts src
	@echo "const hello = 'Helloworld'; console.log(hello);" > src/index.ts
	@npm install fastify
	@npm install fastify @fastify/websocket
	@npm install ws
	@npm install --save-dev @types/ws
	@npm install @fastify/static
	@npm install --save-dev tsx
	@npm install --save-dev pino-pretty
	@rm -f package.json
	@rm -f tsconfig.json
	@cp SetupPackage.json package.json
	@cp SetupTsconfig.json tsconfig.json
	@echo "Setup complete!"

save:
	@cp src/*.ts SetupSrc/

load:
	@cp SetupSrc/*.ts src/


reset: empty
	@make setup

empty:

	@rm -rf src
	@rm -rf node_modules
	@rm -f tsconfig.json
	@rm -f package.json
	@rm -f package-lock.json
	@rm -rf dist
	@echo "All gone !"


.PHONY: setup load run dev build re reset empty