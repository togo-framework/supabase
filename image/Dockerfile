# togo custom Supabase Postgres image: Supabase base + analytics/search/vector
# extensions ready to use (ParadeDB pg_search, pgvector, pg_partman, pg_cron;
# DuckDB/pg_analytics when a build is available).
ARG SUPABASE_PG=15.8.1.060
FROM supabase/postgres:${SUPABASE_PG}

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
      postgresql-15-partman postgresql-15-cron curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# ParadeDB pg_search (BM25 full-text). Version pinned; build skips gracefully if
# the platform deb is unavailable so the image still builds.
ARG PARADEDB_VERSION=0.15.0
RUN set -eux; arch="$(dpkg --print-architecture)"; \
    url="https://github.com/paradedb/paradedb/releases/download/v${PARADEDB_VERSION}/postgresql-15-pg-search_${PARADEDB_VERSION}-1PARADEDB-bookworm_${arch}.deb"; \
    (curl -fsSL -o /tmp/pg_search.deb "$url" && apt-get update && apt-get install -y /tmp/pg_search.deb && rm -f /tmp/pg_search.deb) \
      || echo "pg_search deb not available for ${arch}; skipping";

# Extensions are created on first init.
COPY init/extensions.sql /docker-entrypoint-initdb.d/99-togo-extensions.sql
USER postgres
