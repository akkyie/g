ifeq ($(PREFIX),)
PREFIX := /usr/local
endif

.PHONY: install
install: $(PREFIX)/bin/g

$(PREFIX)/bin/g: bin/g
	mkdir -p $(PREFIX)/bin
	cp bin/g $(PREFIX)/bin/g

.PHONY: test
test:
	@test/make_url
