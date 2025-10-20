#!/bin/zsh
# ─────────────────────────────────────────────────────────────
# Dual AI Environment Launcher for macOS (Apple Silicon)
# Project: ~/Projects/ai
# Author: Edwar Ricardo
# ─────────────────────────────────────────────────────────────

#!/bin/zsh
# ─────────────────────────────────────────────────────────────
# Dual AI Environment Launcher for macOS (Apple Silicon)
# Detects sourcing vs execution
# ─────────────────────────────────────────────────────────────

# --- Detect if script is sourced or executed ---
# When a script is executed, $0 == script path.
# When sourced, $0 == current shell (e.g., zsh)
if [[ "${ZSH_EVAL_CONTEXT}" != *:file* ]]; then
  echo "⚠️  This script must be *sourced* to activate environments properly."
  echo "💡 Run it like this:"
  echo "   source ~/Projects/ai/switch_ai_env.sh"
  echo "   (or use your 'ai-switch' alias)"
  exit 1
fi

# --- Define environment paths ---
PROJECT_DIR="$HOME/Projects/ai"
AGENTS_ENV="$PROJECT_DIR/.venv-agents"
ML_ENV="$PROJECT_DIR/.venv-ml"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " 🚀 AI Environment Switcher — Tech Guardian Utility"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Select environment to activate:"
echo "  [1] 🤖 LLM Agents (Autogen, CrewAI, LangChain)"
echo "  [2] 🧠 Machine Learning (TensorFlow, PyTorch, etc.)"
echo "  [q] ❌ Quit"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

read "choice?👉  Enter choice [1-2/q]: "

case "$choice" in
  1)
    if [ -f "$AGENTS_ENV/bin/activate" ]; then
      echo ""
      echo "⚙️  Activating .venv-agents..."
      source "$AGENTS_ENV/bin/activate"
      echo "✅ LLM Agent environment activated!"
      echo "Version check:"
      python -c "import autogen; print('Autogen version:', autogen.__version__)"
    else
      echo "❌ .venv-agents not found! Check path: $AGENTS_ENV"
    fi
    ;;
  2)
    if [ -f "$ML_ENV/bin/activate" ]; then
      echo ""
      echo "⚙️  Activating .venv-ml..."
      source "$ML_ENV/bin/activate"
      echo "✅ Machine Learning environment activated!"
      echo "Version check:"
      python -c "import tensorflow as tf; print('TensorFlow version:', tf.__version__)"
    else
      echo "❌ .venv-ml not found! Check path: $ML_ENV"
    fi
    ;;
  q|Q)
    echo "👋 Exiting launcher."
    ;;
  *)
    echo "⚠️  Invalid selection."
    ;;
esac