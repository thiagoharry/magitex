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
INSTALLDIR=$(dir ${TEX})

install:
	install -D -t ${DEST}/web2c/tex/ magitex.fmt
	install -D -t ${DEST}/web2c/pdftex/ magitex.fmt
ifeq ($(WHO),$(SUPERUSER))
	ln -sf ${TEX} ${INSTALLDIR}/magitex
	mktexlsr
else
	ln -sf ${TEX} magitex
	@echo
	@echo "Executável 'magitex' gerado. Coloque-o onde poderá ser executado."
endif
uninstall:
	rm ${DEST}/web2c/tex/magitex.fmt
	rm ${DEST}/web2c/pdftex/magitex.fmt
ifeq ($(WHO),$(SUPERUSER))
	rm ${INSTALLDIR}/magitex
endif
