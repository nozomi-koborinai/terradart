# Org-scoped leftover quickstart

Coverage stack for factories that need an organization, owned
public prefixes, or a Wasm plugin artifact. Synth only; CI validates the output against the provider.

```bash
export GCP_PROJECT_ID=your-project-id
terradart synth
```

## Before you apply

Organization-level firewall policies and Cloud Armor, BYOIP prefixes (an owned public CIDR), Storage Intelligence folder / organization configs, and a Wasm plugin image cannot exist in a standalone project. **Never apply.**
