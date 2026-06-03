#!/bin/bash

# Update script for AI agents
# Managed by Gemini CLI

echo "Starting AI Agent updates..."

# 1. ByteRover CLI (Manager)
if command -v brv &> /dev/null; then
    echo "Updating ByteRover CLI (brv)..."
    brv update
else
    echo "brv not found, skipping."
fi

# 2. Gemini CLI
if command -v gemini &> /dev/null; then
    echo "Updating Gemini CLI..."
    # Since gemini is part of the brv-managed npm prefix, we use npm
    npm install -g @google/gemini-cli@latest
else
    echo "gemini not found, skipping."
fi

# 3. Claude Code
if command -v claude &> /dev/null; then
    echo "Updating Claude Code..."
    claude update
else
    echo "claude not found, skipping."
fi

# 4. Opencode
if command -v opencode &> /dev/null; then
    echo "Updating Opencode..."
    opencode upgrade
else
    echo "opencode not found, skipping."
fi

# 5. Kilocode
if command -v kilocode &> /dev/null; then
    echo "Updating Kilocode..."
    kilocode upgrade
else
    echo "kilocode not found, skipping."
fi

# 6. Codex
if command -v codex &> /dev/null; then
    echo "Updating Codex..."
    # Since codex is part of the brv-managed npm prefix, we use npm
    npm install -g @openai/codex@latest
else
    echo "codex not found, skipping."
fi

# 7. Grok CLI
if command -v grok &> /dev/null; then
    echo "Updating Grok CLI..."
    grok update
else
    echo "grok not found, skipping."
fi

echo "All updates completed!"
