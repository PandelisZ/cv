SHELL := /bin/zsh

MAIN := cv
TEX := $(MAIN).tex
PDF := $(MAIN).pdf
SUPPORT := $(wildcard cv/*.tex)

TECTONIC := tectonic
TECTONICFLAGS := -X compile --keep-logs --keep-intermediates -r 2

.PHONY: all build deps open clean distclean check-tools

all: $(PDF)

build: $(PDF)

deps:
	brew bundle --file=Brewfile

check-tools:
	@command -v $(TECTONIC) >/dev/null || { echo "Missing $(TECTONIC). Run 'make deps'."; exit 1; }

$(PDF): $(TEX) $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(TEX)

open: $(PDF)
	open $(PDF)

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).xdv

distclean: clean
	rm -f $(PDF)
