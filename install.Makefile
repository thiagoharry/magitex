# Este shell script instala os formatos somente depois que o primeiro
# Makefile se assegura que as dependências foram encontradas. Ele só é
# executado quando quem usou o 'make install' foi um usuário
# privilegiado

WHO=$(shell whoami)
SUPERUSER=root
ifeq ($(WHO),$(SUPERUSER))
	DEST=$(shell kpsewhich -var-value TEXMFLOCAL)
else
	DEST=$(shell kpsewhich -var-value TEXMFHOME)
endif
TEX=$(shell which tex)
PDFTEX=$(shell which pdftex)
INSTALLDIR=$(dir ${TEX})

install:
	install -D -t ${DEST}/web2c/tex/ magitex.fmt
	install -D -t ${DEST}/web2c/pdftex/ magitex.fmt
	install -D -t ${DEST}/web2c/tex/ magitex-cweb.fmt
	install -D -t ${DEST}/web2c/pdftex/ magitex-cweb.fmt
ifeq ($(WHO),$(SUPERUSER))
	ln -sf ${TEX} ${INSTALLDIR}/magitex
	ln -sf ${PDFTEX} ${INSTALLDIR}/pdfmagitex
	ln -sf ${TEX} ${INSTALLDIR}/magitex-cweb
	ln -sf ${PDFTEX} ${INSTALLDIR}/pdfmagitex-cweb
	mktexlsr
else
	ln -sf ${TEX} magitex
	ln -sf ${PDFTEX} pdfmagitex
	ln -sf ${TEX} magitex-cweb
	ln -sf ${PDFTEX} pdfmagitex-cweb
	@echo
	@echo "Executável 'magitex' gerado. Coloque-o onde poderá ser executado."
endif
uninstall:
	rm ${DEST}/web2c/tex/magitex*
	rm ${DEST}/web2c/pdftex/magitex*
ifeq ($(WHO),$(SUPERUSER))
	rm ${INSTALLDIR}/magitex
endif
