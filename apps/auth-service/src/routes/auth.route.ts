import { FastifyInstance } from 'fastify'

export default async function authRoutes(app: FastifyInstance) {

  app.get('/health', async () => {
    return { status: 'auth-service ok' }
  })

}