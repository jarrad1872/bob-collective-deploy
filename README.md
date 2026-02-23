# Bob Collective — Multi-Instance Deployment

Deploys 4 isolated OpenClaw instances on a single VPS.

## Quick Start

```bash
./setup.sh
docker-compose up -d
```

## Architecture

- openclaw-main:18789 — Main orchestrator
- openclaw-kcc:18790 — Kippen Concrete
- openclaw-dmi:18791 — DMI Tools
- openclaw-rdt:18792 — Roc Diamond

Each instance is completely isolated with its own workspace and memory.
