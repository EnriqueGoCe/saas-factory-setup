#!/bin/bash
# PostToolUse hook: Log all tool usage for tracking and debugging

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
input=$(cat)

if command -v jq &>/dev/null; then
  tool_name=$(echo "$input" | jq -r '.tool_name // "unknown"')
  file_path=$(echo "$input" | jq -r '.tool_input.file_path // .tool_input.command // ""')
else
  tool_name="unknown"
  file_path=""
fi

mkdir -p .claude/logs
echo "[$timestamp] $tool_name${file_path:+ → $file_path}" >> .claude/logs/tool-usage.log
echo "{}"