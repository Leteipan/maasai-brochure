// pages/_app.tsx
import '../styles/globals.css';  // ← imports Tailwind directives
import type { AppProps } from 'next/app';

export default function App({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />;
}
