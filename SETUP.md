# Splitter - Requirements & Setup

## Prerequisites
- Node.js v18+
- npm v9+
- Git

## Accounts Required
- [Convex](https://convex.dev) - Database
- [Clerk](https://clerk.com) - Authentication
- [Inngest](https://inngest.com) - Background Jobs
- [Resend](https://resend.com) - Email
- [Google AI Studio](https://aistudio.google.com) - Gemini API

---

## 1. Clone & Install

git clone <your-repo-url>
cd splitter
npm install --legacy-peer-deps

---

## 2. Setup Convex

npx convex dev

- Login/create account
- Create new project: "splitter"
- This auto-creates .env.local with CONVEX_DEPLOYMENT and NEXT_PUBLIC_CONVEX_URL

---

## 3. Setup Clerk

- Go to clerk.com → Create app → Name: "Splitter"
- Enable Google + Email auth
- Copy keys to .env.local:

NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_xxxx
CLERK_SECRET_KEY=sk_test_xxxx
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up

- Go to Clerk Dashboard → Configure → JWT Templates → New Template → Convex
- Name it "convex", copy the Issuer URL
- Add to .env.local:

CLERK_JWT_ISSUER_DOMAIN=https://your-issuer.clerk.accounts.dev

- In Convex Dashboard → Settings → Environment Variables → Add:

CLERK_JWT_ISSUER_DOMAIN=https://your-issuer.clerk.accounts.dev

---

## 4. Setup Resend

- Go to resend.com → API Keys → Create Key
- Add to .env.local:

RESEND_API_KEY=re_xxxx

---

## 5. Setup Gemini AI

- Go to aistudio.google.com → Get API Key
- Add to .env.local:

GEMINI_API_KEY=AIzaSyxxxx

---

## 6. Setup Inngest

npm install inngest --legacy-peer-deps
npx inngest-cli@latest dev

- Login/create account
- Keep this terminal running (separate from npm run dev)

---

## 7. Final .env.local (complete)

# Convex
CONVEX_DEPLOYMENT=dev:your-project-name
NEXT_PUBLIC_CONVEX_URL=https://your-project.convex.cloud

# Clerk
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_xxxx
CLERK_SECRET_KEY=sk_test_xxxx
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up
CLERK_JWT_ISSUER_DOMAIN=https://your-issuer.clerk.accounts.dev

# Resend
RESEND_API_KEY=re_xxxx

# Gemini
GEMINI_API_KEY=AIzaSyxxxx

---

## 8. Seed Database (Optional - Dummy Data)

- Create at least 3 user accounts first by signing in
- Then run:

npx convex run seed:seedDatabase

---

## 9. Run the App

# Terminal 1 - Next.js
npm run dev

# Terminal 2 - Convex
npx convex dev

# Terminal 3 - Inngest (for background jobs)
npx inngest-cli@latest dev

App runs at: http://localhost:3000
Inngest dashboard: http://localhost:8288

---

## Package Versions

next: 15.x
react: 19.x
convex: latest
@clerk/nextjs: latest
inngest: latest
resend: latest
@google/generative-ai: latest
react-hook-form: latest
zod: latest
@hookform/resolvers: latest
recharts: latest
react-spinners: latest
date-fns: latest
lucide-react: latest

---

## Notes

- Always use --legacy-peer-deps when installing packages (React 19 compatibility)
- Keep all 3 terminals running during development
- Convex auto-deploys function changes on save
- Inngest crons can be manually triggered from localhost:8288
