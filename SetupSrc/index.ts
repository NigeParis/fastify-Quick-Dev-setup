import Fastify from 'fastify';
const port = 3000;
const fastify = Fastify({
    logger: {
        transport: {
            target: 'pino-pretty',
            options: {
                colorize: true,
                translateTime: 'HH:MM:ss Z',
                ignore: 'pid,hostname'
            }
        }
    }
});
await fastify.register(import('@fastify/static'), {
    root: new URL('public', import.meta.url).pathname
});
fastify.get('/', async (request, reply) => {
    return reply.send('index.html');
});
const start = async () => {
    try {
        await fastify.listen({ port }).then((address) => {
            console.log(`Server listening at ${address}`);
        });
    }
    catch (err) {
        fastify.log.error(err);
        process.exit(1);
    }
};
start();
