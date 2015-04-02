# Deprecated

**!!! This project is no longer supported and not recommended for use !!!**

Please see [code](https://golang.org/doc/code.html) for workspace for setup instructions and [Package Management Tools](https://code.google.com/p/go-wiki/wiki/PackageManagementTools) for dependency management.

# go-project

Setup Go project shell directory.

# Prerequisites

go-project assumes you have the **go** compiler and **make** in your path.

# Usage

To setup a new project, run the following:

    git clone https://github.com/brettweavnet/go-project
    bash go-project/go.sh project_name

# Example

    $ git clone https://github.com/brettweavnet/go-project
    Cloning into 'go-project'...
    remote: Counting objects: 15, done.
    remote: Compressing objects: 100% (9/9), done.
    remote: Total 15 (delta 1), reused 15 (delta 1)
    Receiving objects: 100% (15/15), done.
    Resolving deltas: 100% (1/1), done.
    Checking connectivity... done.

    $ bash go-project/go.sh boom
    Renaming to boom.
    Writing README.md
    Project boom created.

    $ cd boom/
    $ make
    ==> Cleaning up previous builds.
    ==> Formatting source code.
    ==> Downloading dependencies.
    ==> Removing SCM files from third_party.
    ==> Running tests.
    ok      _/Users/brett/tmp/2/boom/boom   0.023s
    ==> Compiling source code.
    _/Users/user/code/boom/boom

    $ ./bin/boom
    Hello World
