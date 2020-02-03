.PHONY: cs

cs:
	@docker run --rm -v $(CURDIR):/app/code odannyc/eclint check