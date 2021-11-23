#compdef gh-todo

_gh-todo() {
    local line state

    _arguments -C \
        "--help[Show help for command]" \
        "--version[Show version]" \
        "1: :->cmds" \
        "*::arg:->args"

    case "$state" in
    cmds)
        _values "Actions:" \
            "init[Create \`todo\` repo]" \
            "home[Open \`issues\` in browser]" \
            "add[Add todo item]" \
            "edit[Open \`issue\` in browser]" \
            "done[Close \`issue\`]" \
            "list[Show todo list]"
        ;;
    args)
        case $line[1] in
        init)
            _arguments '(--template)--template[template repo]'
            ;;
        add | view | edit | done | list)
            _arguments '(--scope)--scope[todo scope]'
            ;;
        esac
        ;;
    esac
}
