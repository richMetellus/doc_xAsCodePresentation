# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = _build
BUILDDIRBOOK  = _build/booktheme

SLIDE_DIR	  = $(BUILDDIR)/slides
# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

livehtml:
	sphinx-autobuild --port 8002 "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

live-revealjs:
	sphinx-autobuild -M revealjs --port 8004 "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

livehtml-booktheme:
	sphinx-autobuild --port 8001 -D html_theme='sphinx_book_theme' "$(SOURCEDIR)" "$(BUILDDIRBOOK)" $(SPHINXOPTS) $(O)

livehtml-personal:
	sphinx-autobuild --port 8003 -t personal -D exclude_patterns='_build,build' "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
