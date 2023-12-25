import os

# 根据路径得到文件名
def getfilename(path):
    substring = path.split('/')[-1]
    return substring

# 获取shortcut的内容
def getShortCut(filename):
    return filename.split('-')[0]

# 遍历文件夹并且构建map类型
def get_files_and_paths(directory):
    map = {}
    for root, dirs, files in os.walk(directory):
        for file in files:
            filename = getfilename(os.path.join(root, file))
            shortCut = getShortCut(filename)
            path = os.path.join(root, file)
            # 替换成反斜杠的形式, 并且去掉第一个.
            path = path.replace('/', '\\')[1:]
            map[shortCut] = path
    return map

map = get_files_and_paths("./src")
# 创建snippet的脚本
with open('snippet.ahk', 'w') as f:
    for key in map.keys():
        f.write(':*:' + str(key) + ',::\n')
        f.write('sendFile(\"\src\snippet' + str(map[key]) + '\")\n')
        f.write('return\n')

