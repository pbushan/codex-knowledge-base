#!/usr/bin/env bash
set -euo pipefail

target_dir="${1:-.}"
kb_dir="${CODEX_KNOWLEDGE_BASE:-$HOME/.codex/knowledge-base}"

mkdir -p "$target_dir/docs/ai" "$target_dir/docs/adr" "$target_dir/.github"

copy_if_missing() {
  local src="$1"
  local dest="$2"

  if [[ -e "$dest" ]]; then
    printf 'skip existing %s\n' "$dest"
    return
  fi

  cp "$src" "$dest"
  printf 'created %s\n' "$dest"
}

copy_if_missing "$kb_dir/templates/repo-AGENTS.md" "$target_dir/AGENTS.md"
copy_if_missing "$kb_dir/templates/project-memory.md" "$target_dir/docs/ai/project-memory.md"
copy_if_missing "$kb_dir/templates/CODEOWNERS" "$target_dir/.github/CODEOWNERS"
copy_if_missing "$kb_dir/templates/pull-request-template.md" "$target_dir/.github/pull_request_template.md"
copy_if_missing "$kb_dir/docs/adr/.gitkeep" "$target_dir/docs/adr/.gitkeep"

printf 'Codex repository bootstrap complete.\n'
