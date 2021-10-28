# gh todo

[GitHub CLI] extension for todo list manager, via GitHub issues.

## Install

```bash
gh extension install yuler/gh-todo
```

## Features

-   Simple
-   Easy to use via command line
-   Integration GitHub issues

## How it works

First, you need run `gh todo init`. It will create `todo` repo in your GitHub accout.

Then you can use `gh todo add` to add new task. It will create an issue with today(YYYY-mm-dd) as the title in `todo` repo.

The `gh todo` or `gh todo list` where show todo list.

## Usage

```bash
# help
gh todo --help
# create `todo` repo
gh todo init
# show todo list
gh todo
# add todo item
gh todo add [item]
```

## Related

-   [todo.txt-cli]
-   [taskbook]

<!-- Links -->

[github cli]: https://github.com/cli/cli
[todo.txt-cli]: https://github.com/todotxt/todo.txt-cli
[taskbook]: https://github.com/klaussinani/taskbook
