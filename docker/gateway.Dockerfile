FROM node:20-alpine AS builder

WORKDIR /app

COPY . .

RUN corepack enable
RUN corepack prepare pnpm@9.0.0 --activate

RUN pnpm install --frozen-lockfile

RUN pnpm --filter @apps/gateway build


FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app/apps/gateway/dist ./dist
COPY --from=builder /app/apps/gateway/package.json ./

RUN corepack enable
RUN corepack prepare pnpm@9.0.0 --activate
RUN pnpm install --prod

EXPOSE 3000

CMD ["node", "dist/server.js"]
