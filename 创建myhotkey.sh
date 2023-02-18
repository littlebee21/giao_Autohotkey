
rm myhotkey.ahk -f
touch myhotkey.ahk
chmod 777 myhotkey.ahk

find * | grep ahk  >>  myhotkey.ahk
sed -i 's/\//\\/g' myhotkey.ahk
sed -i 's/^/#include %A_ScriptDir%\\/' myhotkey.ahk
