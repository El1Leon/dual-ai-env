# 🤖 Dual AI Environment Setup — macOS (Apple Silicon)

![Python](https://img.shields.io/badge/python-3.12.12-blue?logo=python)
![Platform](https://img.shields.io/badge/platform-macOS%20ARM64-lightgrey?logo=apple)
![Manager](https://img.shields.io/badge/pyenv-active-orange?logo=github)
![License](https://img.shields.io/badge/license-Apache%202.0-blue?logo=open-source-initiative)

A **professional dual-environment setup** for Apple Silicon developers who work across both:

- 🧠 **Machine Learning / Deep Learning** (TensorFlow + PyTorch)
- 🤖 **LLM Agents & Orchestration** (Autogen + CrewAI + LangChain)

This repository automates switching between your ML and LLM stacks with a simple menu-driven script.

---

## 📂 Project Structure

> ⚠️ `.venv-ml` and `.venv-agents` folders are intentionally ignored by Git.

---

## ⚙️ Requirements

- **macOS 26+ (ARM64)** with Xcode Command-Line Tools  
- **pyenv** — Python version manager  
- **Python 3.12.12** (installed via `pyenv`)  
- **GitHub CLI** *(optional)* for one-command repo management  

---

## 🧩 Setup Instructions

### 1️⃣ Clone the repository

```bash
git clone https://github.com/el1leon/dual-ai-env.git
cd dual-ai-env

