# wiki

## Installation

1. Check that python / pip are installed
    ```
    python3 --version
    pip3 --version
    ```
2. _Optional:_ set up a Python virtual environment
   - `python3 -m venv .venv` - initialize the virtual environment
   - `source .venv/bin/activate` - active the virtual environment
3. Install dependencies
   - `pip3 install mkdocs`
   - `pip3 install mkdocs-material`
4. ...and you're off to the races!

## Running mkdocs

**Local server**

`mkdocs serve`

**Build static html**

`mkdocs build`

Files will be built into the `site` folder, which is not checked into Git.

## Helpful scripts

* Generate new pattern page: `./pattern.sh "Your Pattern Title"`

## Documenation

* [mkdocs](https://www.mkdocs.org/user-guide/installation/)
* [mkdocs-material theme](https://squidfunk.github.io/mkdocs-material/)