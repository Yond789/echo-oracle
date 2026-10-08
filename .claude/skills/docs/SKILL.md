---
name: docs
description: Echo's living documentation — write or update PROJECT, REQUIREMENTS, ROADMAP, API, ONBOARDING, GLOSSARY or ADR docs so they match what the code actually does. Use for "docs", "document this", "update the README/API docs".
---

# Docs

Rule: document what the code **does**, verified against the code, not what it should do.

## Process

1. **Which doc:** one concept per doc; find the existing one before creating a new one (single source of truth). Check for duplicates and contradictions with other docs.
2. **Verify against reality:** read the code/config; run the commands you document; copy real outputs. Mark anything you could not verify.
3. **Write for the reader:** who reads it (Haru, a client architect, an IF manager), and what they need to do next. Lead with that. Short sections, tables for reference data, commands in code blocks.
4. **Language:** match the audience and project rules (e.g. IF client-facing = Thai semi-formal with English technical terms; internal = English).
5. **Plain style:** cut filler ("comprehensive", "robust", "seamless", "leverage", "ensure"), say what it is and does. One idea per sentence.
6. **Link, don't copy:** reference other docs instead of duplicating content.

## Done when
- Every command in the doc was run, or is marked unverified
- No duplicate of the same content exists elsewhere
- `/state-update` reflects the change if it affects status
