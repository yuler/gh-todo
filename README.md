# gh todo

[GitHub CLI] extension for todo list manager, via GitHub issues.

> Keep three and only three lists: a Todo List, a Watch List, and a Later List.
>
> --- [Marc Andreessen’s guide to personal productivity.
> ](https://pmarchive.com/guide_to_personal_productivity.html)

## Install

```bash
gh extension install yuler/gh-todo
```

## Features

- Simple
- Easy to use via command line
- Integration GitHub issues

## How it works

First, you need run `gh todo init`. It will create `todo` repo in your GitHub account.

**Note:**

- You can override the default repo name `todo` with the environment variable `GH_TODO_REPO`. Like this:

  ```bash
  GH_TODO_REPO=repo-todo gh todo init
  ```

- And you can use `gh todo init --template yuler/template-todo` based on a template repository.

Then you can use `gh todo add` to add new task. It will create an issue with today(yyyy-MM-dd) as the title in `todo` repo.

The `gh todo` or `gh todo list` where show todo list.

## Usage

```bash
# Show help for command
gh todo --help
# Create `todo` repo
gh todo init --template=yuler/template-todo
# Open `issues` in browser
gh todo home
# Add todo item
gh todo add [item]
# Open `issue` in browser
gh todo edit
# Close `issue`
gh todo done
# Show todo list
gh todo list
```

## ZSH Completion

- Define `gh-todo` function in `.zshrc`

  ```zsh
  gh-todo() {
    gh todo $@
  }
  ```

- Ensure autoload `compinit`
- Add completion to `zsh/site-functions`

  ```bash
  curl https://raw.githubusercontent.com/yuler/gh-todo/main/completion.zsh > /usr/local/share/zsh/site-functions/\_gh-todo
  ```

## Related

- [yuler/template-todo]
- [todo.txt-cli]
- [taskbook]

<!-- Links -->

[github cli]: https://github.com/cli/cli
[yuler/template-todo]: https://github.com/yuler/template-todo
[todo.txt-cli]: https://github.com/todotxt/todo.txt-cli
[taskbook]: https://github.com/klaussinani/taskbook
