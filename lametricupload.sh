bads=$1
user=$2

echo $bads
echo $user

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: YOUR_ACCESS_TOKEN_HERE" \
-H "Cache-Control: no-cache" \
-d '{
    "frames": [
        {
            "text": "# of ads blocked: '$bads'",
            "icon": "i14870",
            "index": 0
        },
        {
            "text": "# of unique clients: '$user'",
            "icon": "i1776",
            "index": 1
        }
    ]
}' \

#Add your push url on top of this line
