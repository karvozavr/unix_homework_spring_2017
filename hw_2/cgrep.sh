grep -oP '(^\s*(/\*.*?\*/\s*)*#\s*include\s*(/\*.*?\*/\s*)*\s*["<]([\.\w\s]*/)*\K[\w\. ]+?(?=[">])|((?=//).*\K))' main.c