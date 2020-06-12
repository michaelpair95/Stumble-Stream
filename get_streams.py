import requests
import json

headers = {
    'Client-ID': 'bmzidltfd1q4ce7b4g1sblprlj9vxl',
}

params = (
    ('game_id', '33214'),
)

# response = requests.get('https://api.twitch.tv/helix/streams', headers=headers)#, params=params)

response = requests.get('https://api.twitch.tv/helix/games?name=fortnite', headers=headers)#, params=params)

parsed = json.loads(response.text)
print (json.dumps(parsed, indent=2, sort_keys=True))