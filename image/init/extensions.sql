-- togo: enable analytics/search/vector extensions on first boot.
CREATE EXTENSION IF NOT EXISTS vector;       -- pgvector (embeddings)
CREATE EXTENSION IF NOT EXISTS pg_partman;   -- partition management
CREATE EXTENSION IF NOT EXISTS pg_cron;      -- scheduled jobs
CREATE EXTENSION IF NOT EXISTS pg_search;    -- ParadeDB BM25 full-text
-- DuckDB-backed analytics (enable once pg_duckdb/pg_analytics is in the image):
-- CREATE EXTENSION IF NOT EXISTS pg_analytics;
