from lxml import etree

# Aleterei o exercicio 5 só porque prefiro trabalhar com json. A ideia é a mesma para o exercicio 3.

def main():
    xml = etree.parse("conf.xml")
    root = xml.getroot()
    print(root.tag)
    for child in root:
        print(child.tag, child.attrib, child.text)
        for grandchild in child:
            print(grandchild.tag, grandchild.attrib, grandchild.text)

main()