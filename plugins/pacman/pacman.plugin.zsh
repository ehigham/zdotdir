# coaxed zsh into rehashing its own command cache when it goes out of date
# from https://wiki.archlinux.org/index.php/zsh#On-demand_rehash
zshcache_time="$(date +%s%N)"

_rehash_precmd() {
    if [[ -a /var/cache/zsh/pacman ]]; then
        local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
        if (( zshcache_time < paccache_time )); then
            rehash
            zshcache_time="$paccache_time"
        fi
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook -Uz precmd _rehash_precmd
