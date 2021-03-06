import subprocess


def rich_init():
    from rich import pretty, traceback

    pretty.install()
    traceback.install()


if __name__ == "__main__":
    try:
        rich_init()
    except ImportError:
        print("installing rich")
        subprocess.Popen(
            ["pip", "install", "rich"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        ).wait()
        rich_init()
