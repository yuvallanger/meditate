.PHONY : sdist pipenvupdate test

sdist : sdistclean
	pipenv run python setup.py sdist --verbose
	gpg --detach-sign -a dist/*.tar.gz

sdistclean :
	rm -v dist/* || true

pipenvupdate : setup.py meditate.py README.rst LICENSE.txt MANIFEST.in Pipfile Pipfile.lock
	pipenv update --dev --three

testpypiupload : sdistclean sdist
	gpg --detach-sign -a dist/*.tar.gz
	pipenv run twine upload --repository testpypi dist/*

pypiupload : sdist
	pipenv run twine upload --repository pypi dist/*

compilestrictreadme : README.rst
	rst2html5 --strict --verbose --link-stylesheet README.rst > README.html

test :
	pipenv run pytest test_meditate.py
verbose_test :
	HYPOTHESIS_VERBOSITY_LEVEL=verbose pipenv run pytest test_meditate.py
interactive_test :
	pipenv run python meditate.py --interval-duration=1s --session-duration=3s

run :
	pipenv run meditate
