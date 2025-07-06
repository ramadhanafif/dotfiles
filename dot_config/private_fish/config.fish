if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init --cmd cd fish | source
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/ramad/.local/share/coursier/bin"
# <<< coursier install directory <<<


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/ramad/.opam/opam-init/init.fish' && source '/home/ramad/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/ramad/.ghcup/bin $PATH # ghcup-env