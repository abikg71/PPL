'''
CS 3210 - Principles of Programming Languages (Fall 2019)
Programming Assignment 01
September 29th, 2019
Team:    @Abinet Kenore
         @Rohit Shrestha
profesor @Thyago tmota
'''

TAB = "   "

class Tree:

    def __init__(self):
        self.data = None
        self.children = []

    def add(self, child):
        self.children.append(child)

    def print(self, tab = ""):
        if self.data != None:
            print(tab + self.data)
            tab += TAB
            for child in self.children:
                if isinstance(child, Tree):
                    child.print(tab)
                else:
                    print(tab + child

# main
if __name__ == "__main__":

    subtree = Tree();
    subtree.data = "E"
    subtree.add("E")
    subtree.add("+")
    subtree.add("T")

    tree = Tree();
    tree.data = "E"
    tree.add(subtree)
    tree.add("+")
    tree.add("T")

    tree.print()
