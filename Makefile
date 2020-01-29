  
PACKAGE_NAME=fonts-asana-math

.PHONY: all
.PHONY: doc

all:

doc: doc-fonts-asana-math.pdf

doc-fonts-asana-math.pdf: doc-$(PACKAGE_NAME).saty satysfi-$(PACKAGE_NAME).opam mathfonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc