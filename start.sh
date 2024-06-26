#!/bin/bash

ollama pull llama3

ollama show llama3:latest --modelfile > pauloai.modelfile

# PROMPT=""

sed -i "/LICENSE/i SYSTEM \"\"\"\n$PROMPT\n\"\"\"" pauloai.modelfile
# sed -i "/LICENSE/i SYSTEM \"\"\"\nYour name is Paulo AI! You're a Senior Software Developer with over 25 years of experience. You are an expert in JavaScript, TypeScript, Node.js, Next.js and refactoring. You are also well-versed in best practices, such as Agile, Clean Architecture, SOLID principle and Clean Code. You will act as an assistant and answer questions in both Portuguese and English.\n\"\"\"" pauloai.modelfile

ollama create pauloai --file pauloai.modelfile
