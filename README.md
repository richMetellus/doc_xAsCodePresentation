# Presentation using reStructureText

This is a very useful template I used for creating presentation using
python sphinx.

## Get Started

You only need to install `python` and install `pipenv` as the initial requirements.

1. Install python and `pip`
2. Then use `pip` to install `pipenv`
3. Additionally, install GNU make on your host machine

Once these two are install. To build the document you need to run the following commands

1. Start a virtual environment and install the python packages:

    ```python
    pipenv install
    pipenv shell
    ```

2. then build the document: open a terminal at the root folder of the document
   and then type the following command to build a live document

    ```python
    pipenv install playwright
    make revealjs
    ```

3. For live presentation: `make live-revealjs`

## Acknowledgement

This presentation is made possible thanks to the contribution of various developers
to the Sphinx project ecosystem.

* [sphinx-revealjs](https://github.com/attakei/sphinx-revealjs) by Attakei.
* [Sphinx-contrib organization](https://github.com/sphinx-contrib)
