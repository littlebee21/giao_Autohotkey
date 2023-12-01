import json

with open('shortcut.json') as f:
    data = json.load(f)

with open('output.ahk', 'w') as f:
    for keyi in data.keys():
        # 判断单层json不存在某些东西
        if not hasattr(data[keyi], 'keys'):
            continue
        for keyj in data[keyi].keys():
            f.write(':*:' + str(keyj) + ',::\n')
            f.write('sendByClipboard(\"' + str(data[keyi][keyj]) + '\")\n')
            f.write('return\n')
