#!/bin/bash

echo "======================================"
echo "   Splitter - Installing Dependencies"
echo "======================================"

# Core Next.js (already created via create-next-app, listed for reference)
# npx create-next-app@latest . --no-typescript --eslint --tailwind --no-src-dir --app --turbopack --no-import-alias

echo ""
echo ">>> Installing Convex..."
npm install convex --legacy-peer-deps

echo ""
echo ">>> Installing Clerk Authentication..."
npm install @clerk/nextjs --legacy-peer-deps
npm install @convex-dev/react-clerk --legacy-peer-deps

echo ""
echo ">>> Installing Shadcn UI Components..."
npx shadcn@latest init --defaults --legacy-peer-deps
npx shadcn@latest add avatar --legacy-peer-deps
npx shadcn@latest add badge --legacy-peer-deps
npx shadcn@latest add button --legacy-peer-deps
npx shadcn@latest add calendar --legacy-peer-deps
npx shadcn@latest add card --legacy-peer-deps
npx shadcn@latest add command --legacy-peer-deps
npx shadcn@latest add dialog --legacy-peer-deps
npx shadcn@latest add input --legacy-peer-deps
npx shadcn@latest add label --legacy-peer-deps
npx shadcn@latest add popover --legacy-peer-deps
npx shadcn@latest add radio-group --legacy-peer-deps
npx shadcn@latest add select --legacy-peer-deps
npx shadcn@latest add slider --legacy-peer-deps
npx shadcn@latest add sonner --legacy-peer-deps
npx shadcn@latest add tabs --legacy-peer-deps
npx shadcn@latest add textarea --legacy-peer-deps

echo ""
echo ">>> Installing Form Libraries..."
npm install react-hook-form --legacy-peer-deps
npm install zod --legacy-peer-deps
npm install @hookform/resolvers --legacy-peer-deps

echo ""
echo ">>> Installing Inngest..."
npm install inngest --legacy-peer-deps

echo ""
echo ">>> Installing Resend (Email)..."
npm install resend --legacy-peer-deps

echo ""
echo ">>> Installing Google Gemini AI..."
npm install @google/generative-ai --legacy-peer-deps

echo ""
echo ">>> Installing Recharts (Charts)..."
npm install recharts --legacy-peer-deps

echo ""
echo ">>> Installing React Spinners..."
npm install react-spinners --legacy-peer-deps

echo ""
echo ">>> Installing Date FNS..."
npm install date-fns --legacy-peer-deps

echo ""
echo ">>> Installing Next Fonts..."
npm install next/font --legacy-peer-deps

echo ""
echo "======================================"
echo "   All packages installed successfully"
echo "======================================"
echo ""
echo "Next steps:"
echo "1. Run: npx convex dev"
echo "2. Run: npx inngest-cli@latest dev"
echo "3. Run: npm run dev"
echo ""
