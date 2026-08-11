#!/bin/sh
# Pre-commit hook for .NET C# and TypeScript code formatting

echo "Running Pre-commit Code Formatter..."

# Format C# files using CSharpier
dotnet csharpier .

# Format TypeScript/Next.js files using Prettier
npx prettier --write "src/**/*.{js,jsx,ts,tsx,json,css}"

git add .
echo "Pre-commit formatting completed successfully!"
