# Aider: AI pair programming in your terminal

## Installation

### Option 1: Pip Install

```bash
$ pip install aider-chat
```

### Option 2: Docker

#### Docker run command using $(PWD)
```bash
docker run -it --rm \
  -v $(PWD):/app \
  -e ANTHROPIC_API_KEY=your-anthropic-key \
  -e OPENAI_API_KEY=your-openai-key \
  aider-image
```

#### Alias for .zshrc
```bash
alias aider-docker='docker run -it --rm -v $(PWD):/app -e ANTHROPIC_API_KEY -e OPENAI_API_KEY aider-image'
```

## Usage

1. Change directory into a git repo:
```bash
$ cd /to/your/git/repo
```

2. Work with Claude 3.5 Sonnet on your repo:
```bash
$ export ANTHROPIC_API_KEY=your-key-goes-here
$ aider
```

3. Work with GPT-4 on your repo:
```bash
$ export OPENAI_API_KEY=your-key-goes-here
$ aider
```

See the [installation instructions and other documentation](https://aider.chat/docs/) for more details.

## Features

- Run aider with the files you want to edit: `aider <file1> <file2> ...`
- Ask for changes:
  - Add new features or test cases
  - Describe a bug
  - Paste in an error message or GitHub issue URL
  - Refactor code
  - Update docs
- Aider will edit your files to complete your request
- Aider automatically git commits changes with a sensible commit message
- Works with most popular languages: python, javascript, typescript, php, html, css, and more...
- Works best with GPT-4 & Claude 3.5 Sonnet and can connect to almost any LLM
- Can edit multiple files at once for complex requests
- Uses a map of your entire git repo, which helps it work well in larger codebases
- Edit files in your editor while chatting with aider, and it will always use the latest version. Pair program with AI
- Add images to the chat (GPT-4, Claude 3.5 Sonnet, etc)
- Add URLs to the chat and aider will read their content
- Code with your voice
