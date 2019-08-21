const path = require('path');
const fastify = require('fastify')();
const fastifyCors = require('fastify-cors');
const fastifyStatic = require('fastify-static');

(async () => {
    try {
        // cors
        fastify.register(fastifyCors);
        // static
        fastify.register(fastifyStatic, {
            root: path.join(__dirname, 'sdk')
        });
        // listen
        await fastify.listen(3000, '0.0.0.0');
    } catch (err) {
        process.exit(1)
    }
})();


