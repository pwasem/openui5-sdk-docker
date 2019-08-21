const path = require('path');
const fastify = require('fastify')({
    logger: false
});
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
        //fastify.log.info(`server listening on ${fastify.server.address().port}`)
    } catch (err) {
        //fastify.log.error(err);
        process.exit(1)
    }
})();


