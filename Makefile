# SPDX-License-Identifier: GPL-3.0-or-later

prefix ?= build
name   ?= notes

input  := $(name).tex
alias  := $(name).pdf
output := $(prefix)/$(alias)

$(output):

$(prefix):
	mkdir -p $@

$(output): $(prefix) $(input)
	lualatex --output-directory=$(prefix) --jobname=$(name) $(input)
