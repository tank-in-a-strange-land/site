#!/bin/bash

[ -f ~/.auth/bnet.sh ] && {
    . ~/.auth/bnet.sh
}

STATS_FILENAME="$HOME/tmp/cordolvar-stats.json"

function refresh-stats () {
    curl -s \
         -o "${STATS_FILENAME}.tmp" \
         "https://us.api.battle.net/wow/character/thrall/cordolvar?fields=statistics&locale=en_US&apiKey=$BNET_API_KEY" \
        && mv "${STATS_FILENAME}.tmp" "$STATS_FILENAME"
}

function deaths () {
    jq -r \
       '.statistics.subCategories[] | select(.name=="Deaths").statistics[0].quantity' \
       < "${STATS_FILENAME}"
}

function dungeons-run () {
    jq -r \
       '.statistics.subCategories[] | select(.name=="Dungeons & Raids").statistics[] | select(.name=="Total 5-player dungeons entered").quantity' \
       < "${STATS_FILENAME}"
}

function level () {
    jq -r  '.level'  < "${STATS_FILENAME}"
}


find "${STATS_FILENAME}" -mmin +60 &> /dev/null || refresh-stats

printf '
    |-----------------|-------------------|-------|
    |                 | Since Last Update | Total |
    |-----------------|-------------------|-------|
    | Deaths          |                   | %d    |
    | Dungeons Tanked |                   | %d    |
    | Levels Gained   |                   | %d    |
    |-----------------|-------------------|-------|
' $(deaths) $(dungeons-run) $(level)
