.PHONY: encrypt
encrypt:
	gpg --batch --passphrase-file resumen.pass --symmetric resumen.tex
	gpg --batch --passphrase-file resumen.pass --symmetric resumen.pdf

.PHONY: decrypt
decrypt:
	gpg -o resumen.pdf -d resumen.pdf.gpg

.PHONY: build
build:
	pdflatex resumen.tex
