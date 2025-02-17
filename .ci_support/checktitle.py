import sys

if __name__ == "__main__":
    pr_title = sys.argv[1]
    with open("disableautomerge.txt", "r") as f:
        disable_lst = f.readlines()
    print(pr_title, disable_lst)
    for disable in disable_lst:
        print(disable, disable in pr_title)
        if len(disable.rstrip()) > 0 and disable in pr_title:
            sys.exit(1)
