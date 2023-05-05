# Dev Container

This is in a container ready for development.

## Integrated tools

- gcc, clang, make
- valgrind, lldb
- cloc (count line of codes)

## Integrated aliases

- `gitclear` => Remove every local branch that no longer exists on the remote
- `indir` => Usage `indir <command>`, run the command recursively in all subdirectories
- `make` => Run make, but that way: `make --no-print-directory`

## Usage

Go to the base of your project and run the following command (or the alias you have defined). The container will start and will have access to the files in the current directory.

```bash
docker run --rm -it -v "`pwd`":/work --cap-add=SYS_PTRACE --security-opt seccomp=unconfined registry.chevro.fr/cestoliv/dev:latest
```

### SHell alias

```bash
# ZSH
alias dev="docker run --rm -it -v \"`pwd`\":/work --cap-add=SYS_PTRACE --security-opt seccomp=unconfined registry.chevro.fr/cestoliv/dev:latest"
```
