.PHONY: resume-pdf coverletter-pdf clean

DOCKER_RUN = docker run --rm -v $(PWD)/resume:/workspace -w /workspace texlive/texlive:latest pdflatex

resume-pdf:
	$(DOCKER_RUN) resume.tex

coverletter-pdf:
ifndef FILE
	$(error FILE is required, e.g. make coverletter-pdf FILE=coverletter_acme.tex)
endif
	$(DOCKER_RUN) $(FILE)
