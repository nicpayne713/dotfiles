from IPython.terminal.prompts import Prompts, Token
from pathlib import Path
from platform import python_version
import subprocess


def get_branch():
    try:
        return (
            subprocess.check_output(
                "git rev-parse --abbrev-ref HEAD",
                shell=True,
                stderr=subprocess.DEVNULL
                # "git branch --show-current", shell=True, stderr=subprocess.DEVNULL
            )
            .decode("utf-8")
            .replace("\n", "")
        )
    except BaseException:
        return ""


class MyPrompt(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [
            (Token, ""),
            (Token.OutPrompt, Path().absolute().stem),
            (Token, " "),
            (Token.Generic.Subheading, "↪"),
            (Token, " "),
            (Token.Generic.Subheading, get_branch()),
            (Token, " "),
            (Token.Name.Class, "v" + python_version()),
            (Token, " "),
            (Token.Name.Entity, "ipython"),
            (Token, "\n"),
            (
                Token.Prompt
                if self.shell.last_execution_succeeded
                else Token.Generic.Error,
                "❯ ",
            ),
        ]

    def out_prompt_tokens(self, cli=None):
        return []


ip = get_ipython()
ip.prompts = MyPrompt(ip)
