# Coffer Infrastructure

Infrastructure and deployment configuration for the Coffer platform.

## Repositories

- `cis` - Cognitive Intelligence Service
- `coffer` - Coffer application
- `coffer-infra` - Infrastructure and deployment configuration

## Local Environment

Docker Compose will be used to run:

- CIS
- Coffer backend
- Coffer frontend

## Cloud Environment

The production environment will be deployed on Google Cloud Platform using Infrastructure as Code and CI/CD.

## Architecture

```text
Coffer Frontend
       |
       v
Coffer Backend
       |
       v
      CIS
       |
       v
External Services
- MongoDB Atlas
- Gmail API
- Gemini API