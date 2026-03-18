# AGENTS.md — Atlan AI Agent Guidelines

> **Applies To:** `homebrew-atlan`
> **Companion file:** See `CLAUDE.md` for the lean summary.

---

## Security

`homebrew-atlan` is a Homebrew tap providing formulae for the Atlan CLI (versions 0.1.0–0.1.9 and current). All formulae download from HTTPS GitHub release URLs and include SHA-256 checksums. The primary security concern is automatic binary execution in `post_install` hooks across all formula versions.

### Owners & Contact
Security questions → **Atlan Security Team** (`@security-team` on Slack).

---

### Automatic Binary Execution in post_install

All formula files (11 total, `atlan.rb` through `atlan@0.1.9.rb`) contain a `post_install` hook that immediately executes the installed binary:

```ruby
# ❌ Executes the binary at install time without user awareness
def post_install
  system "#{bin}/atlan"
end

# ✅ Remove the hook entirely — Homebrew does not require post_install for CLI tools
# If initialization is necessary, document it and let the user run it explicitly
```

**[MUST]** Remove the `post_install` method from all formula files. Executing an arbitrary binary silently at install time means a compromised GitHub release asset runs attacker code during `brew install`. If a startup check is genuinely needed, document it in the caveats block so users run it knowingly:

```ruby
def caveats
  "Run `atlan version` to verify the installation."
end
```

---

### General Invariants

- **[MUST]** Every formula must include a correct `sha256` checksum for each architecture binary — this is already implemented; maintain it for every new release.
- **[MUST]** All download URLs must use `https://` — currently correct; never use `http://` for binary distribution.
- **[SHOULD]** After publishing a new release, verify the SHA-256 values in the formula against the actual GitHub release artifacts before merging the PR.
