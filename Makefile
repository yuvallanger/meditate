.PHONY : sdist pipenvupdate

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
