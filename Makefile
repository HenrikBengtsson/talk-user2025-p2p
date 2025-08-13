install-extensions:
	quarto add quarto-ext/pointer
	quarto install extension shafayetShafee/bsicons

meta: heading-meta.html

heading-meta.html: heading-meta.R
	Rscript "$<" > "$@"

publish:
	quarto publish

preview:
	quarto preview

spelling:
	Rscript -e "spelling::spell_check_files('index.qmd', ignore=readLines('WORDLIST', warn=FALSE))"

pdf: preview
	@quarto preview &
	@echo "INSTRUCTIONS:"
	@echo "1. View slides in browser ('quarto preview')"
	@echo "2. Select 'Menu' -> 'Tools' -> 'PDF Export Mode' (press 'e')"
	@echo "3. Print to PDF (Ctrl-p)"

