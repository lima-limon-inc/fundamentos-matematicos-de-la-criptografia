.PHONY: encrypt
encrypt:
	gpg --batch --yes --passphrase-file resumen.pass --symmetric resumen.tex
	gpg --batch --yes --passphrase-file resumen.pass --symmetric resumen.pdf

.PHONY: decrypt
decrypt:
	gpg -o resumen.tex -d resumen.tex.gpg
	gpg -o resumen.pdf -d resumen.pdf.gpg

.PHONY: build
build:
	pdflatex resumen.tex
