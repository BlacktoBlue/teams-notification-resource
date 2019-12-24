function createBody(){

  body="$(cat <<EOF
{
  "text": ${text_interpolated},
  "username": ${username},
  "link_names": ${link_names},
  "icon_url": ${icon_url},
  "icon_emoji": ${icon_emoji},
  "channel": ${channel},
  "attachments": ${attachments}
}
EOF
  )"
    return ${body}
}

function createMetaData(){
metadata="$(cat <<EOF
{
  "metadata": [
    {"name": "url",               "value": ${redacted_webhook_url}},
    {"name": "channel",           "value": "${channels}"          },
    {"name": "username",          "value": ${username}            },
    {"name": "text",              "value": ${text_interpolated}   },
    {"name": "text_file",         "value": $( echo "$text_file"         | jq -R . ) },
    {"name": "text_file_exists",  "value": $( echo "$text_file_exists"  | jq -R . ) },
    {"name": "text_file_content", "value": $( echo "$TEXT_FILE_CONTENT" | jq -R -s . ) }
  ]
}
EOF
  )"
    return ${metadata}
}