# CLAUDE.md — Atlan AI Agent Guidelines

> **Applies To:** `homebrew-atlan`
> **Full security policy:** See `AGENTS.md`

---

## Security

`homebrew-atlan` is a Homebrew tap containing formulae for the Atlan CLI. All formulae download from HTTPS GitHub release URLs with SHA-256 checksums. The main finding is a `post_install` hook that executes the installed binary immediately after installation in all formula versions.

### Owners & Contact
Security questions → **Atlan Security Team** (`@security-team` on Slack).

### Post-Install Binary Execution
**[MUST]** Remove the `post_install` hook that calls `system "#{bin}/atlan"` from all formula files — automatically executing the freshly installed binary runs arbitrary code at install time without user awareness. If the GitHub release artifact is ever compromised, this executes attacker code silently.

### Formula Pinning
**[SHOULD]** Ensure GitHub Actions workflows that publish new formula versions pin to specific release SHA-256 values — formula files already include `sha256` hashes, which is correct; maintain this practice for every new release.
