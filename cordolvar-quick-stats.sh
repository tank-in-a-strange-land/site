#!/bin/bash

[ -f ~/.auth/bnet.sh ] && {
    . ~/.auth/bnet.sh
}

REALM=${REALM:-thrall}
CHAR=${CHAR:-cordolvar}
STATS_FILENAME="$HOME/tmp/${REALM,,}-${CHAR,,}-stats.json"
MAX_LEVEL=110

function refresh-stats () {
    curl -s \
         -o "${STATS_FILENAME}.tmp" \
         "https://us.api.battle.net/wow/character/$REALM/$CHAR?fields=statistics&locale=en_US&apiKey=$BNET_API_KEY" \
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


find "$(dirname "${STATS_FILENAME}")" \
     -name "$(basename "${STATS_FILENAME}")" \
     -mmin "-60" \
    | grep -q "$(basename "${STATS_FILENAME}")" \
    || refresh-stats

printf '
|----------------------------------|-------------------|-------|
|                                  | Since Last Update | Total |
|----------------------------------|-------------------|-------|
| Deaths                           |                   | %5d |
| Dungeons Tanked                  |                   | %5d |
| Dungeons Tanked Since Last Death |                   |       |
' $(deaths) $(dungeons-run)

if [[ $(level) -lt $MAX_LEVEL ]]; then
    printf '| Levels Gained                    |                   | %5d |
' $(level)
fi

printf '|----------------------------------|-------------------|-------|
'
