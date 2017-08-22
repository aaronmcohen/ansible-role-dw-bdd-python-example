all: setup test clean

setup:
	virtualenv -p python2 --clear venv
	( \
		source ./venv/bin/activate; \
		pip install -r ./requirements.txt; \
		deactivate; \
	)

clean:
	( \
		source ./venv/bin/activate; \
		molecule destroy; \
		deactivate; \
	)
	rm -rf venv .molecule .vagrant tests/__pycache__/ .cache

test:
	( \
		source ./venv/bin/activate; \
		molecule test; \
		junit2html junit.xml; \
		deactivate; \
	)

.PHONY: all
