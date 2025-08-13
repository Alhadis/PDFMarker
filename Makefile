all: test.pdf

test.pdf: test.ps
	gs -q -dBATCH -dNOPAUSE -dNOSAFER -sDEVICE=pdfwrite -sOutputFile=$@ $^

# Nuke all generated files
clean:
	rm -v test.pdf

.PHONY: clean
