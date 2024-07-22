# Aider: AI pair programming in your terminal

This is a Dockerfile and an example how to alias [aider](https://github.com/paul-gauthier/aider) it, to avoid python lib conflicts.
Original @ https://github.com/paul-gauthier/aider, please check there for all usage docs.

See the [installation instructions and other documentation](https://aider.chat/docs/) for more details.

## Installation

### Option 1: Pip Install

```bash
$ pip install aider-chat
```

### Option 2: Docker

#### Build local image

First build local image

```bash
./build.sh
```

#### Docker run command

Now you can use the command to run. Please either use ANTHROPIC_API_KEY
or OPENAI_API_KEY. You need to set one of them with 'export ANTHROPIC_API_KEY=<key>' before.

```bash
docker run -it --rm \
  -v $(PWD):/app \
  -e ANTHROPIC_API_KEY \
  -e OPENAI_API_KEY \
  aider-image
```

#### Alias for .zshrc
```bash
alias aider='docker run -it --rm -v $(PWD):/app -e ANTHROPIC_API_KEY -e OPENAI_API_KEY aider-image'
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

- Add images to the chat (GPT-4, Claude 3.5 Sonnet, etc)
- Add URLs to the chat and aider will read their content
- Code with your voice
