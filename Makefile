# .PHONY: encrypt
# encrypt:
# 	gpg --batch --yes --passphrase-file resumen.pass --symmetric resumen.tex
# 	gpg --batch --yes --passphrase-file resumen.pass --symmetric resumen.pdf

# .PHONY: decrypt
# decrypt:
# 	gpg --yes -o resumen.tex -d resumen.tex.gpg
# 	gpg --yes -o resumen.pdf -d resumen.pdf.gpg

.PHONY: build
build:
	pdflatex -synctex=1 fm-criptografia-resumen-fabri.tex
	bibtex fm-criptografia-resumen-fabri
	pdflatex -synctex=1 fm-criptografia-resumen-fabri.tex
	pdflatex -synctex=1 fm-criptografia-resumen-fabri.tex

.PHONY: clean
clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.synctex*
	rm -f *.toc

