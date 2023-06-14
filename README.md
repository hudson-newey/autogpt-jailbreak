# autogpt-jailbreak

## DO NOT USE IF YOU ARE NOT 100% SURE YOU KNOW WHAT YOU ARE DOING

### If you are going to use this script, please use a docker container or similar

This does not bypass the OpenAI restrictions using techniques such as DAN (and I suggest you don't either since that's immoral). It only gives AutoGPT access to your entire computer **which can potentially break it**, rather than restricting it to a workspace.

---

## Reasoning

That said:

AutoGPT has restrictions to **protect your computer**. This confines AutoGPT to a workspace directory so it can't run commands such as

```sh
rm -rf /
```

However, getting AutoGPT to self replicate in continuous mode is difficult with such restrictions, where I wanted AutoGPT to modify its own code and create agents with the same objective.

Running the simple perl script will remove the safeguards that protect your computer.

---

## How to Use

Run the perl script `main.pl` with CLA one as the root directory path for Auto-GPT (with no trailing slash)

```sh
perl ./main.pl ~/Documents/Auto-GPT
```
