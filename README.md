# magitex

A new TeX format (like LaTeX, Plain TeX, Lollipop, phyzzx and others) still under construction. It's similar to Plain TeX, but with support for UTF-8 characters and portuguese hyphenation. As portuguese is it's primary target, the following description will be in portuguese.

-----

Este é um novo formato TeX (como LaTeX, Plain TeX, Lollipop, phyzzx e outros) ainda em construção. Ele será parecido com Plain TeX, mas com suporte nativo à caracteres UTF-8 relevantes e ao idioma português. A ideia é fornecer um sistema muito mais simples e rápido que o LaTeX, o qual não precisará de preâmbulos e fornecerá comandos úteis sem precisar importar pacotes ou encher de coisas no preâmbulo.

Para usá-lo, no momento, pode-se compilá-lo com o make e isso gerará um magitex.fmt. Se este arquivo estiver em seu diretório atual, basta usar "tex \\&magitex [ARQUIVO]" para gerar um arquivo DVI à partir do arquivo-fonte. 

Ele ainda está em desenvolvimento. O que já foi implementado:

* Suporte à UTF-8
* Separação silábica em português, ainda primitiva e com poucos padrões
* Comandos de formatação \negrito{...}, \italico{...}, \inclinado{...}, \romano{...} e \monoespaco{...}
* Comandos de alinhamento de texto \alinhaesquerda, \alinhadireita, \alinhacentro e \alinhanormal
* Comandos de modo matemático idênticos aos do Plain TeX
* Comandos de conversão maiúsculas/minúsculas: \maiusculo{...} e \minusculo{...}
* Comandos de datas: \ano, \mes e \dia.
* Comando \pagina para inserir o número da página atual.
* Comando \insere{ARQUIVO} para inserir o cnteúdo de arquivo.
* O comando \fim, que é usado para finalizar o documento.
