#!/bin/bash

# This is a custom build script for Vercel deployment

# Build the client
cd client && npx vite build --outDir ../dist/public

# Build the server
npx esbuild server/index.ts --platform=node --packages=external --bundle --format=esm --outdir=dist