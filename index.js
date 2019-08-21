const path = require('path');
const fastify = require('fastify')();
const fastifyCors = require('fastify-cors');
const fastifyStatic = require('fastify-static');

const port = 3000;
const address = '0.0.0.0';
const root = 'sdk';

(async () => {
    try {
        // cors
        fastify.register(fastifyCors);
        // static
        fastify.register(fastifyStatic, {
            root: path.join(__dirname, root)
        });
        // listen
        await fastify.listen(port, address);
    } catch (err) {
        process.exit(1)
    }
})();


