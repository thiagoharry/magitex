# magitex

A new TeX format (like LaTeX, Plain TeX, Lollipop, phyzzx and others) still under construction. It's similar to Plain TeX, but with support for UTF-8 characters and portuguese hyphenation. As portuguese is it's primary target, the following description will be in portuguese.

-----

Este é um novo formato TeX (como LaTeX, Plain TeX, Lollipop, phyzzx e outros) ainda em construção. Ele é parecido com o Plain TeX, mas com suporte nativo à caracteres UTF-8 relevantes e ao idioma português. A ideia é fornecer um sistema muito mais simples e rápido que o LaTeX e o próprio Plain TeX, o qual não precisará de preâmbulos e fornecerá comandos úteis sem precisar importar pacotes.

Para usá-lo, no momento, pode-se compilá-lo com o make e instalá-lo com o "make install" (como root de preferência). Em seguida, pode-se usar o comando "magitex" da mesma forma como usa-se "tex" ou "latex".

Ele é um formato bastante básico o qual servirá de construção para outros. O que já foi implementado:

* Suporte à UTF-8 (os principais caracteres pelo menos)
* Separação silábica em português
* Comandos de formatação \negrito{...}, \italico{...}, \inclinado{...}, \sublinhado{...} e \monoespaco{...}
* Comandos de alinhamento de texto \alinhaesquerda, \alinhadireita, \alinhacentro e \alinhanormal
* Há também um \alinhaverbatim que é parecido com o ambiente verbatim do laTeX. A diferença é que aqui você pode usar comandos dentro dele. Caso queira escrever uma contrabarra no modo verbatim, use \\.
* Para alinhar não ignorando as quebras de linha do documento, usa-se \alinhaversoesquerdo \alinhaversodireito e \alinhaversocentro
* Comandos de modo matemático idênticos aos do Plain TeX
* Comandos de conversão maiúsculas/minúsculas: \maiusculo{...} e \minusculo{...}
* Comandos de datas: \ano, \mes e \dia. Para o nome do mês use \nomemes.
* Comando \pagina para inserir o número da página atual.
* Comando \insere{ARQUIVO} para inserir o cnteúdo de arquivo.
* Comandos de espaçamento: \lacuna{3cm} deixa uma lacuna de 3cm entre palavras e entre parágrafos. \espaco{3cm} deixa um espaço da mesma forma, mas o espaço pode ser ajustado pelo TeX para ficar 33% maior ou menor. Mantidos os comandos \quad e \qquad.
* Pode-se quebrar uma linha com \quebra no parágrafo. E quebrar página com \quebra fora do parágrafo. Para impedir quebras, usa-se \naoquebra
* O cmando \rodape{...} deixa uma nota de rodapé numerada.
* Quando em caso de emergência quisermos que seja feita a separação silábica de palavras com traço ("sub-desenvolvido") podemos escrevê-la com \= ("sub\=desenvolvido")
* Pode-se escrever texto colorido como em \cor{1 0 0}{TEXTO VERMELHO} ou \cor{0.5 0.5 0.5}{TEXTO CINZA}.
* O comando \\ escreve uma contrabarra.
* O comando \fim, que é usado para finalizar o documento.

Algumas melhorias em relação ao LaTeX:

* Acentos funcionam e podem ser usados em modo matemático
* Suporta de maneira imediata alguns caracteres UTF-8 não-suportados no LaTeX
* Muito menos comandos, mais velocidade de compilação, menos verboso
* Comandos e outros estilos de formatação são suportados no modo verbatim