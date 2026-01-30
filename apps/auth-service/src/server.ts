import Fastify from 'fastify'
import authRoutes from './routes/auth.route'

const app = Fastify()

app.register(authRoutes, { prefix: '/api/auth' })

app.listen({ port: 4000, host: '0.0.0.0' })