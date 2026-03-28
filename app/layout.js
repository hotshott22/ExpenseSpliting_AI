import { Inter } from "next/font/google";
import "./globals.css";
import Header from "@/components/header";
import { ConvexClientProvider } from "@/components/convex-client-provider";
import { ClerkProvider } from "@clerk/nextjs";

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "SplitExpense",
  description: "Split money with AI aided application",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <head>
        <link rel="icon" herf="/logos/logo3.png" sizes="any " />
      </head>
      <body className={`${inter.className}`}>
        <ClerkProvider
          publishableKey={process.env.NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY}
        >
          <ConvexClientProvider>
            <Header />

            <main className="min-h-screen">
              {children}
            </main>
          </ConvexClientProvider>
        </ClerkProvider>
      </body>
    </html >
  );
}
