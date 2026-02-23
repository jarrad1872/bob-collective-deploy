#!/bin/bash
# Setup script for Bob Collective
set -e

echo "Bob Collective Setup"
mkdir -p secrets

# Generate hook tokens
KCC_HOOK_TOKEN=$(openssl rand -hex 32)
DMI_HOOK_TOKEN=$(openssl rand -hex 32)
RDT_HOOK_TOKEN=$(openssl rand -hex 32)

cat > .env << EOF
MAIN_TELEGRAM_BOT_TOKEN=your_token_here
ANTHROPIC_API_KEY=your_key_here
KCC_HOOKS_TOKEN=$KCC_HOOK_TOKEN
DMI_HOOKS_TOKEN=$DMI_HOOK_TOKEN
RDT_HOOKS_TOKEN=$RDT_HOOK_TOKEN
EOF

echo "Edit .env with your credentials, then run: docker-compose up -d"
