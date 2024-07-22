# Docker run command using $(PWD)
docker run -it --rm \
  -v $(PWD):/app \
  -e ANTHROPIC_API_KEY=your-anthropic-key \
  -e OPENAI_API_KEY=your-openai-key \
  aider-image


# Alias for .zshrc
alias aider-docker='docker run -it --rm -v $(PWD):/app -e ANTHROPIC_API_KEY -e OPENAI_API_KEY aider-image'
