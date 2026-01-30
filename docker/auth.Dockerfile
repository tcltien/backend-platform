# ================= BUILD STAGE =================
FROM node:20-alpine AS builder

WORKDIR /app

COPY . .

RUN corepack enable
RUN corepack prepare pnpm@9.0.0 --activate

RUN pnpm install --frozen-lockfile

RUN pnpm --filter @apps/auth-service build


# ================= RUNTIME STAGE =================
FROM node:20-alpine

WORKDIR /app

# Copy only built output + prod deps
COPY --from=builder /app/apps/auth-service/dist ./dist
COPY --from=builder /app/apps/auth-service/package.json ./

RUN corepack enable
RUN corepack prepare pnpm@9.0.0 --activate
RUN pnpm install --prod

EXPOSE 4000

CMD ["node", "dist/server.js"]
