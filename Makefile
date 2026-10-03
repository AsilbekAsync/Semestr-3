SHELL := /bin/bash
MD := $(wildcard subjects/*/mavzular/*.md)
OUT := dist
PANDOC := pandoc
LATEX_ENGINE := xelatex

PANDOC_FLAGS := \
	--pdf-engine=$(LATEX_ENGINE) \
	--from=markdown+tex_math_dollars \
	--standalone \
	--toc=false \
	--variable geometry:margin=1.2cm \
	--variable fontsize=9pt \
	--variable mainfont="Liberation Serif" \
	--variable sansfont="Liberation Sans" \
	--variable monofont="Source Code Pro" \
	--variable linkcolor=black \
	--variable urlcolor=black

SUBJECTS := $(notdir $(wildcard subjects/[0-9][0-9]-*))

.PHONY: pdf clean $(SUBJECTS)

pdf: $(patsubst subjects/%.md,$(OUT)/%.pdf,$(MD))

$(OUT)/%.pdf: subjects/%.md
	@mkdir -p $(OUT)/$(*D)
	$(PANDOC) $< -o $@ $(PANDOC_FLAGS) --metadata title="$(notdir $*)"
	@echo "OK  $@"

# make 01-matematik-analiz — bitta fan, barcha mavzular bitta PDF
$(SUBJECTS): %:
	@mkdir -p $(OUT)
	$(PANDOC) $(wildcard subjects/$*/mavzular/*.md) -o $(OUT)/$*.pdf \
		$(PANDOC_FLAGS) --metadata title="$*" --toc
	@echo "OK  $(OUT)/$*.pdf"

clean:
	rm -rf $(OUT)
