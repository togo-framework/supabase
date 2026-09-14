<!-- togo-header -->
<div align="center">
  <picture><source media="(prefers-color-scheme: dark)" srcset=".github/assets/togo-mark-dark.svg" /><img src=".github/assets/togo-mark.svg" alt="ToGO" height="64" /></picture>
  <h1>togo-framework/supabase</h1>
  <p>
    <a href="https://to-go.dev/marketplace"><img src="https://img.shields.io/badge/marketplace-to--go.dev-1F8A99" alt="marketplace" /></a>
    <a href="https://pkg.go.dev/github.com/togo-framework/supabase"><img src="https://pkg.go.dev/badge/github.com/togo-framework/supabase.svg" alt="pkg.go.dev" /></a>
    <img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT" />
  </p>
  <p><strong>Part of the <a href="https://to-go.dev">togo</a> framework.</strong></p>
</div>

## Install

```bash
togo install togo-framework/supabase
```

<!-- /togo-header -->

<p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset=".github/assets/togo-mark-dark.svg" /><img src=".github/assets/togo-mark.svg" alt="ToGO" width="96" /></picture></p>

# supabase

togo's full Supabase integration: a **custom Postgres image** (Supabase base +
**ParadeDB pg_search**, **pgvector**, **pg_partman**, **pg_cron**; DuckDB/pg_analytics
when available) plus a self-hosted stack and CLI wiring.

```bash
togo install togo-framework/supabase
```

## Pieces
- `image/` — the custom Postgres Dockerfile + `init/extensions.sql` (extensions enabled on first boot).
- `supabase/config.toml` — Supabase CLI config (`supabase start`).
- `docker-compose.yml` — self-hosted stack (db + gotrue auth + postgrest + storage) on the custom image.

## CLI integration
- `togo supabase up` / `down` / `status` — manage the local stack (Supabase CLI or compose).
- `togo dev` brings the stack up automatically when `SUPABASE_LOCAL` is set.
- `togo deploy` provisions the stack (with the requested extensions) to your infra.

## Companion plugins
- [db-supabase](https://github.com/togo-framework/db-supabase) — Postgres driver (DB_DRIVER=postgres) for the ORM.
- [plugin-auth-supabase](https://github.com/togo-framework/plugin-auth-supabase) — GoTrue auth.
- storage-supabase — Supabase Storage (planned).

> The custom image requires a Docker build (CI / your machine); it is not built in this repo's Go toolchain.

---

## 💎 Premium sponsors

togo is proudly sponsored by **ID8 Media** and **One Studio**.

<p align="center">
  <a href="https://id8media.com"><img src=".github/assets/id8media.svg" height="44" alt="ID8 Media" /></a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://one-studio.co"><img src=".github/assets/one-studio.jpeg" height="44" alt="One Studio" /></a>
</p>

<!-- togo-sponsors -->
---

<div align="center">
  <h3>Premium sponsors</h3>
  <p>
    <a href="https://id8media.com"><strong>ID8 Media</strong></a> &nbsp;·&nbsp;
    <a href="https://one-studio.co"><strong>One Studio</strong></a>
  </p>
  <p><sub>Support togo — <a href="https://github.com/sponsors/fadymondy">become a sponsor</a>.</sub></p>
</div>
<!-- /togo-sponsors -->
