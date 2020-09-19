import os

def get_size(start_path = '..\\'):
    total_size = 0
    for dirpath, dirnames, filenames in os.walk(start_path):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            # skip if it is symbolic link
            if not os.path.islink(fp):
                total_size += os.path.getsize(fp)

    return total_size

for dir in os.listdir("."):
    path = os.path.abspath(os.getcwd()) + "\\" + dir
    print(get_size(path) / 1000000, 'MB', " -> ", path)
