import Fastify from 'fastify'
import dotenv from 'dotenv'
import routes from './routes'


dotenv.config()


const app = Fastify({ logger: true })


app.register(routes)


const PORT = Number(process.env.PORT) || 3000


app.listen({ port: PORT, host: '0.0.0.0' })