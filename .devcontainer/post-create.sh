#!/bin/bash

set -e

echo "🚀 Setting up Agentic Underwriting development environment..."

# Get the workspace root directory
WORKSPACE_ROOT="${CONTAINERWORKSPACE:-/workspaces/$(basename $(pwd))}"
if [ ! -d "$WORKSPACE_ROOT" ]; then
  WORKSPACE_ROOT=$(pwd)
fi

# Install backend dependencies
echo "📦 Installing backend dependencies..."
cd "$WORKSPACE_ROOT/agentic-underwriting-backend"
pip install -r requirements.txt

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd "$WORKSPACE_ROOT/agentic-underwriting-ui"
npm ci

echo "✅ Development environment setup complete!"
echo ""
echo "To get started:"
echo "  Backend:  cd agentic-underwriting-backend && uvicorn app.main:app --reload"
echo "  Frontend: cd agentic-underwriting-ui && npm run dev"
echo ""
echo "Remember to configure environment variables:"
echo "  Backend:  Create agentic-underwriting-backend/.env"
echo "  Frontend: Create agentic-underwriting-ui/.env.local"
