.PHONY : sdist pipenvupdate

sdist :
	pipenv run python setup.py sdist --verbose

sdistclean :
	rm -v dist/* || true

pipenvupdate : setup.py meditate.py README.rst LICENSE.txt MANIFEST.in Pipfile Pipfile.lock
	pipenv update --dev --three

testpypiupload : sdistclean sdist
	gpg --detach-sign -a dist/*.tar.gz
	pipenv run twine upload --repository testpypi dist/*.tar.gz dist/*.tar.gz.asc

pypiupload : sdist
	gpg --detach-sign -a dist/*.tar.gz
	pipenv run twine upload --repository pypi dist/*.tar.gz dist/*.tar.gz.asc
