install-extensions:
	quarto add quarto-ext/pointer
	quarto install extension HenrikBengtsson/bsicons

meta: heading-meta.html

heading-meta.html: heading-meta.R
	Rscript "$<" > "$@"

publish:
	quarto publish

preview:
	quarto preview
