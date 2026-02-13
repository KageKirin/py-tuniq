## Makefile for tuniq project

.PHONY: format
f format:
	ruff format src tests


.PHONY: lint
l lint:
	ruff check src tests


.PHONY: test
t test:
	uv run --with pytest pytest tests


.PHONY: pack
p pack:
	uv build
	ls -alG dist/tuniq-*.tar.gz dist/tuniq-*.whl
	tar tvf dist/tuniq-*.tar.gz
	tar tvf dist/tuniq-*.whl

.PHONY: clean
c clean:
	uv clean
	rm -rf build dist *.egg-info __pycache__ src/**/__pycache__ tests/**/__pycache__

.PHONY: all
a all: c f l t p
