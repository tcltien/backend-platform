import { FastifyRequest, FastifyReply } from 'fastify'
import { authService } from '../services/auth.service'

export const authController = {

  async login(req: FastifyRequest, reply: FastifyReply) {
    const result = await authService.login(req.body)
    return reply.send(result)
  }

}