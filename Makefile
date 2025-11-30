# SPDX-License-Identifier: GPL-3.0-or-later

prefix ?= build
name   ?= notes

input  := $(name).tex
alias  := $(name).pdf
output := $(prefix)/$(alias)

input += $(shell find chapter -name '*.tex')

$(output):

$(prefix):
	mkdir -p $@

$(output): $(input) $(prefix)
	lualatex --output-directory=$(prefix) --jobname=$(name) $<
