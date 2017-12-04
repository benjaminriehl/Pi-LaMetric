bads=$1

echo $bads
QBADS=bads

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: YOUR_KEY_HERE" \
-H "Cache-Control: no-cache" \
-d '{
    "frames": [
        {
            "text": '$bads',
            "icon": "i14870",
            "index": 0
        }
    ]
}' \
https://developer.lametric.com/api/v1/dev/widget/update/com.lametric.YOUR_APP_ID_HERE/1
