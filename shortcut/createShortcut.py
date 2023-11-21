import json

with open('shortcut.json') as f:
    data = json.load(f)

with open('output.ahk', 'w') as f:
    for key in data.keys():
        f.write(':*:' + str(key) + ',::\n')
        f.write('sendByClipboard(\"' + str(data[key]) + '\")\n')
        f.write('return\n')
