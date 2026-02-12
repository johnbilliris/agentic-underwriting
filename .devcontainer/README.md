# GitHub Codespaces Configuration

This directory contains the configuration for developing the Agentic Underwriting solution in GitHub Codespaces.

## What's Included

The devcontainer is configured with:

- **Python 3.11** - For the FastAPI backend
- **Node.js 20** - For the Next.js frontend
- **Azure CLI** - For Azure deployment and management
- **GitHub CLI** - For GitHub operations

### VS Code Extensions

The following extensions are automatically installed:
- Python language support and formatting
- ESLint and Prettier for JavaScript/TypeScript
- Tailwind CSS IntelliSense
- Azure App Service extension
- GitHub Copilot

### Port Forwarding

- Port 3000: Next.js UI development server
- Port 8000: FastAPI backend server

## Getting Started

When you open this repository in a Codespace:

1. The devcontainer will automatically build and install all dependencies
2. Configure environment variables:
   - Backend: Create `agentic-underwriting-backend/.env` with required settings
   - Frontend: Create `agentic-underwriting-ui/.env.local` with `NEXT_PUBLIC_API_BASE_URL`
3. Start the backend:
   ```bash
   cd agentic-underwriting-backend
   uvicorn app.main:app --reload
   ```
4. Start the frontend (in a new terminal):
   ```bash
   cd agentic-underwriting-ui
   npm run dev
   ```

## Environment Variables

### Backend (.env)

See `agentic-underwriting-backend/example_env.txt` for a list of available environment variables.

Key variables:
- `CORS_ORIGINS` - CORS allowed origins
- `AZURE_OPENAI_ENDPOINT` - Azure OpenAI endpoint
- `AZURE_OPENAI_API_KEY` - Azure OpenAI API key
- `AZURE_OPENAI_DEPLOYMENT` - Azure OpenAI deployment name

### Frontend (.env.local)

Required variable:
- `NEXT_PUBLIC_API_BASE_URL` - Backend API URL (e.g., `http://localhost:8000`)

## Testing

- Backend: Use pytest (if tests are available)
- Frontend: Run `npm test` in the UI directory

## Deployment

The Azure CLI is pre-installed for deploying to Azure App Service. Refer to the respective README files in the backend and UI directories for deployment instructions.
