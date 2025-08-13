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
