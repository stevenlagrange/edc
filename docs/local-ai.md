# Local AI

- opencode
- ollama

Models:
- gemma4:12b
- gemma4:26b

## Setup

This setup installs ollama directly onto your system. 

Install [opencode](https://opencode.ai/) and [ollama](https://docs.ollama.com/linux#install).

Pull a local model such as gemma4

```bash
ollama pull gemma4:12b
```
And run

```bash
ollama run gemma4:12b
```

This will open a conversation prompt.

To exit

```bash
/bye
```

To start your opencode session, you can use `ollama` which will allow you to directly launch opencode using the desired model **or** run `opencode` after starting your model with ollama.

