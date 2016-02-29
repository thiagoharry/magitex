# magitex

A new TeX format (like LaTeX, Plain TeX, Lollipop, phyzzx and others) still under construction. It's similar to Plain TeX, but with support for UTF-8 characters and portuguese hyphenation. As portuguese is it's primary target, the following description will be in portuguese.

-----

Este é um novo formato TeX (como LaTeX, Plain TeX, Lollipop, phyzzx e outros) ainda em construção. Ele será parecido com Plain TeX, mas com suporte nativo à caracteres UTF-8 relevantes e ao idioma português. A ideia é fornecer um sistema muito mais simples e rápido que o LaTeX, o qual não precisará de preâmbulos e fornecerá comandos úteis sem precisar importar pacotes ou encher de coisas no preâmbulo.

Para usá-lo, no momento, pode-se compilá-lo com o make e instalá-lo com o "make install" (como root de preferência). Em seguida, pode-se usar o comando "magitex" da mesma forma como usa-se "tex" ou "latex".

Ele ainda está em desenvolvimento. O que já foi implementado:

* Suporte à UTF-8
* Separação silábica em português, ainda primitiva e com poucos padrões
* Comandos de formatação \negrito{...}, \italico{...}, \inclinado{...}, \sublinhado{...} e \monoespaco{...}
* Comandos de alinhamento de texto \alinhaesquerda, \alinhadireita, \alinhacentro e \alinhanormal
* Para alinhar não ignorando as quebras de linha do documento, usa-se \alinhaversoesquerdo \alinhaversodireito e \alinhaversocentro
* Comandos de modo matemático idênticos aos do Plain TeX
* Comandos de conversão maiúsculas/minúsculas: \maiusculo{...} e \minusculo{...}
* Comandos de datas: \ano, \mes e \dia.
* Comando \pagina para inserir o número da página atual.
* Comando \insere{ARQUIVO} para inserir o cnteúdo de arquivo.
* Comandos de espaçamento: \lacuna{3cm} deixa uma lacuna de 3cm entre palavras e entre parágrafos. \espaco{3cm} deixa um espaço da mesma forma, mas o espaço pode ser ajustado pr TeX para ficar 33% maior ou menor. Mantidos os comandos \quad e \qquad.
* Pode-se quebrar uma linha com \quebra no parágrafo. E quebrar página com \quebra fora do parágrafo. Para impedir quebras, usa-se \naoquebra
* O cmando \rodape{...} deixa uma nota de rodapé numerada.
* Quando em caso de emergência quisermos que seja feita a separação silábica de palavras com traço ("sub-desenvolvido") podemos escrevê-la com \= ("sub\=desenvolvido")
* O comando \fim, que é usado para finalizar o documento.

Algumas melhorias em relação ao LaTeX:

* Acentos funcionam e podem ser usados em modo matemático