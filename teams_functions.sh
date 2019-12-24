text_file
text
username
icon_url

function createBody(){
  body="$(cat <<EOF {
  "@type": "MessageCard",
  "@context": "http://schema.org/extensions",
  "summary": "summary",
  "title": "${title}",
  "themeColor": "${color}",
  "sections": [
    {
      "activitySubtitle": "${activitySubtitle}"
      "activityImage": "${icon_url}"
      "facts": [
      {"name": }
      ]
    },
        {
      "text": "${text_interpolated}"
    },
  ],
  "potentialAction": [
    {
      "@context": "https://schema.org",
      "@type": "ViewAction",
      "name": "${actionName}",
      "target": [
        "${actionTarget}"
      ]
    }
  ]
}
EOF
)"
  return ${body}
}