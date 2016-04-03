DEST=$(shell kpsewhich -var-value TEXMFSYSVAR)
BIN=$(shell kpsewhich --var-value=TEXMFROOT)/bin
CORES=$(shell grep -c ^processor /proc/cpuinfo)
SUPERUSER=root # Usuário com permissão de instalar o pacote

all: test_tex
	@if [ -e .error ]; then	rm .error; \
	else initex "\\input magitex \\dump";\
	initex \&magitex "\\input magitex-relatoria \\dump";\
	initex \&magitex "\\input magitex-cweb \\dump"; fi
clean:
	rm -rf *~ *.log *.pdf *.dvi *.fmt
test:
	tex \&magitex-cweb teste.tex
	dvipdf teste.dvi
	xpdf teste.pdf
install: test_kpsewhich test_mktexlsr
	make --no-print-directory -j ${CORES} -f install.Makefile
uninstall:
	make --no-print-directory -j ${CORES} -f install.Makefile uninstall
test_tex: .build/have_tex
.build/have_tex:
	@echo -n "Testing TeX..............."
	@(which initex &> /dev/null && touch .build/have_tex) || true
	@if [ -e .build/have_tex ]; then \
	echo "OK";  \
	else /bin/echo -e "\033[31mFAILED\033[m";\
	touch .error;\
	echo "ERROR: initex not found. Install TeX first and check if you can run initex.";\
	fi
test_kpsewhich: .build/have_kpsewhich
.build/have_kpsewhich:
	@echo -n "Testing kpsewhich..............."
	@(which kpsewhich &> /dev/null && touch .build/have_kpsewhich) || true
	@if [ -e .build/have_kpsewhich ]; then \
	echo "OK";  \
	else /bin/echo -e "\033[31mFAILED\033[m";\
	touch .error;\
	echo "ERROR: kpsewhich not found. Install it first from kpathsea or TeX packages.";\
	fi
test_mktexlsr: .build/have_mktexlsr
.build/have_mktexlsr:
	@echo -n "Testing mktexlsr................"
	@(which mktexlsr &> /dev/null && touch .build/have_mktexlsr) || true
	@if [ -e .build/have_mktexlsr ]; then \
	echo "OK";  \
	else /bin/echo -e "\033[31mFAILED\033[m";\
	touch .error;\
	echo "ERROR: mktexlsr not found. Install it first from kpathsea or TeX packages.";\
	fi


# kpsewhich -var-value TEXMFLOCAL
