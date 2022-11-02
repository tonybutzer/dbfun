cat:
	cat Makefile


publish:
	cat ~/token.txt
	git add .
	git commit -m "Makefile commit NOV-2022"
	git push
