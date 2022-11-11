#!/usr/bin/env bash
### Designed to contain a list of jobs to be executed upon each login

update_repo() {
  git pull
}

update_repos() {
  list_of_dirs=("$HOME/dev/dotfiles" "$HOME/Documents/Books" "$HOME/dev/study" "$HOME/dev/scripts")

  for dir in "${list_of_dirs[@]}"
  do
    echo Updating "$dir"
    (cd "$dir" && update_repo)
  done
}

update_repos
