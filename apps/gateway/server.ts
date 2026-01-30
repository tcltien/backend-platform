import Fastify from 'fastify'
import proxy from '@fastify/http-proxy'

const app = Fastify()

app.register(proxy, {
  upstream: 'http://auth-service:4000',
  prefix: '/auth'
})

app.listen({ port: 3000, host: '0.0.0.0' })