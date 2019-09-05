->quarto
=== quarto ===

//luz fraca

Nossa, que sonho bizarro. Não aguento mais essa semana. 
Só me levem pra longe, por favor... 
E pior que ainda é o quê, quarta-feira? 

* Espera...

- QUARTA-FEIRA???
A prova de encantamentos! É daqui a pouco! Ai, deusa, que desgraça. 

* Tenho que me levantar[!] 

<> e me arrumar correndo! E depois ainda tem o trabalho de botânica, e aquela encomenda das essências... 
Desse jeito vou acabar reprovando. 

** [> Acender as luzes]

//luz forte, dá pra ver a segunda dimensão vazando no quarto

- O quê? Isso parece magia. 
Tem alguma coisa estranha acontecendo. Melhor ter cuidado. 

* [...] -> END

// gameplay da sala inicial. quando ela pega a roupa tem uma animação, mas nenhuma fala.


=== sala_1 ===

Esse lugar tá com cheiro de fumaça. De coisa queimando. 

// quando ela vê o primeiro sinal do vórtex

* Nada bom...

- Se for uma invocação, quer dizer que tem alguém aqui dentro. 
Mas essas cores vazando pelas paredes...  Não parece um feitiço qualquer.

* [...] -> END


=== vortex_1 ===

Eu não gosto nem um pouco disso. Quero voltar pra cama.
Que diabo de lugar é esse?

* Parece outro mundo. 
<> E faz frio...

** [...] -> END

=== banheiro_com_npc ===

AGNES: Ei! Quem é você? 

KAWAPI: Meu nome é Kawapi. E qual é o seu nome? #kawapi

- (loop_npc) 
{nome and casa: -> escuta}

AGNES: 

* (casa) <> Por que você tá no meu banheiro? 

KAWAPI: É uma boa pergunta. Na verdade, eu ainda não tenho certeza de como vim parar na sua casa. #kawapi

-> loop_npc

* (nome) <> Meu nome é Agnes[.]. Sou uma bruxa. Estudante de magia. 

KAWAPI: Agradeço por conhecê-la, Agnes. Apesar de as circunstâncias serem tão estranhas, não é mesmo? #kawapi
-> loop_npc

* (rude2) <> ISSO IMPORTA?

KAWAPI: Se não importa, por que você me perguntou meu nome? #kawapi

-> loop_npc


- (escuta) AGNES: 

* Escuta aqui[...]. <>
- Acabei de acordar e me deparei com um vórtice imenso de energia na minha casa.

- (loop_npc_2) 


{||-> loop_npc_3}
{|AGNES:| AGNES:}

* (feiticeiro) Algum feiticeiro poderoso quer alguma coisa daqui[.], é a única explicação.  
Mas não sei o que pode ser. Não tenho nada tão valioso.
** [> Continuar]
 #kawapi
KAWAPI: Tem certeza? Vi muitas coisas interessantes desde que cheguei aqui. Pode estar subestimando sua coleção. -> loop_npc_2

* (sabe) Você não sabe nada sobre isso?
 #kawapi
KAWAPI: Não sei. Mas parece que fui trazido aqui por um desses vórtices. Estava em meu vilarejo, senti cheiro de fumaça e de repente... aqui estamos nós. -> loop_npc_2 

- (loop_npc_3)
{|||-> loop_npc_4}
AGNES: <>

* Você pode me ajudar?

KAWAPI: Depende. Você pode me ajudar? Acho que podemos chegar a um acordo. #kawapi
-> loop_npc_3

* Eles querem alguma coisa com você?

KAWAPI: Não sei quem "eles" são. E não acho que nenhum feiticeiro queira nada comigo. Sou um simples monge, artesão e comerciante. Certo? Nada mais que isso. #kawapi
-> loop_npc_3

* Vilarejo?

KAWAPI: Sim, minha terra natal, na floresta. Só vi o vórtice depois de já ter sido transportado. Foi uma sensação muito estranha. #kawapi
-> loop_npc_3

- (loop_npc_4)


AGNES: 

* Vamos conversar então[.] O que posso fazer por... 
- ESPERA AÍ. ISSO É MINHA BOLSA?

KAWAPI: Talvez seja. #kawapi

AGNES: 

* Me devolve agora!

* O que você pensa que tá fazendo?

- KAWAPI: Em minha defesa, eu nem sabia onde eu estava quando peguei isso. E eu preciso de coisas interessantes no meu trabalho. #kawapi

- AGNES:

* Não importa. São minhas.

KAWAPI: Será que podemos ter certeza disso? Aposto que você nem sabe tudo que tem nessa bolsa. #kawapi

* É melhor você entregar agora.

KAWAPI: Ou o quê? Acha que consegue me pegar? #kawapi

- AGNES: 
* Tem coisas muito importantes aí. <>
- Eu vou precisar dessa bolsa, Kawapi. Minha casa tá sendo invadida.
* [> Continuar]
- KAWAPI: Vamos fazer o seguinte: se você me alcançar, eu te devolvo alguma coisa importante dessa bolsa. É o mínimo que mereço depois de um dia tão estranho. #kawapi
- Vamos? Vai ser divertido! #kawapi

* [...] -> END

// Kawapi some e Agnes precisa ir atrás dele.

=== kawapi_some ===

AGNES: Não acredito nisso...


* [...] -> END


=== porta_da_rua_1 ===

// Agnes passa pela porta de sua casa e vê o obstáculo mágico.

Acho que não consigo passar por isso ainda. Preciso de magias mais poderosas. 

* [...] -> END


=== labirinto_com_kawapi_1 ===

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Sabe, eu acho que não me apresentei direito. Se você fosse transportada para a minha casa por um feitiço estranho, de repente, acho que pelo menos ia querer saber um pouco além do seu nome. #kawapi
* [> Continuar]
- Minha terra natal se chama Auerá. É uma imensa floresta. Em Auerá, muitas comunidades convivem, integradas. Acho que você gostaria de conhecê-la. Talvez um dia? #kawapi
* [...] -> END

// quando a Agnes está perto de alcançar Kawapi, ele some e aparece em outro lugar

=== kawapi_some_2 ===

KAWAPI: Não foi dessa vez! #kawapi
AGNES: Oficialmente declaro quarta-feira o pior dia da semana.

* [...] -> END



=== biblioteca_1 ===

Ué. A biblioteca não era pra estar aqui. Os cômodos também começaram a se mexer, é isso?

* [...] -> END


=== cozinha_1 ===

Onde será que ele se meteu dessa vez? Espero que não esteja comendo minhas coisas também.

* [...] -> END


=== labirinto_com_kawapi_2 ===

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Eu preciso admitir que, pra uma feiticeira, você também é bem ágil. De onde eu venho, aqueles que mexem com a magia não costumam ter esses atributos. #kawapi 
* [> Continuar] 
- Sua ligação com o próprio corpo não é aquilo que mais valorizam, e sim a conexão com as forças espirituais, as entidades da floresta, suas plantas e animais, o sol e a lua... #kawapi
* Você não me conhece[.], Kawapi. <>
- Eu sou mais forte do que você imagina e já tive que me virar sozinha mil vezes. Eu posso ser uma bruxa jovem, mas sou uma bruxa. Esse seu pique esconde não é nada. 
* [...] -> END

// quando a Agnes está perto de alcançar Kawapi, ele some e aparece em outro lugar

=== kawapi_some_3 ===

KAWAPI: Quem sabe da próxima? #kawapi

AGNES: Grande mãe... Eu tenho certeza de que não mereço isso. Tenho certeza. 
Então por que eu? Por quê??

* [...] -> END



=== labirinto_com_kawapi_3 ===

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Aqui faz muito frio, não é? E que silêncio. Se esses vórtices se abriram na sua casa, e eu apareci nela, quer dizer que Auerá também está sendo invadida? 
* [> Continuar]
- Esse céu, essas cores. O cheiro de fumaça. Parece tão familiar... #kawapi
* [...] -> END

// quando Agnes finalmene alcança Kawapi, dessa vez, ele não some

=== pegou_kawapi ===

KAWAPI: AH! Muito bem, você me pegou. #kawapi

AGNES: 
- (loop_npc_vortex)
{|AGNES: |AGNES: ->terra_oculta}
* Agora, me devolve a minha bolsa.

KAWAPI: Como eu disse, acredito que poucas coisas aqui seriam valiosas para você. #kawapi
-Mas aqui está o seu livro de magia. Era ele que você procurava, não é? Me diga se eu estiver errado. #kawapi

AGNES: Era ele mesmo. 
-> loop_npc_vortex

* Parece que você não é tão ágil assim.

KAWAPI: Talvez. #kawapi
-> loop_npc_vortex

- (terra_oculta)

* Estamos na terra oculta, não é?

KAWAPI: Você conhece esse lugar? #kawapi

- AGNES: Não é bem conhecer. Eu li sobre um lugar assim. Ainda não tinha me tocado, mas quando você começou a falar das cores...

* [> Continuar]

KAWAPI: E o que você sabe disso? Por favor, me conte. Acho que Auerá já viveu a mesma coisa, há muito tempo. Eu devia ser muito jovem. Não tenho certeza... #kawapi

AGNES: <>
** [> Mentir]

Não precisa se preocupar. É um mundo como qualquer outro, com magia e pessoas que controlam essa magia. Às vezes portais são abertos e tudo fica confuso. 
*** [> Continuar] 
--- Mas nem sempre isso tem a ver com um ataque ou qualquer coisa assim. Podem ser apenas pontes entre dimensões. Sua terra pode ter sido visitada um dia, há muito tempo. 
*** [> Continuar]
--- KAWAPI: Ah. Fico aliviado de saber. Muito obrigado, Agnes. De qualquer forma, acho que é hora de voltar. Agradeço pelo encontro. 
*** [> Continuar]
--- Você é poderosa, mas todos nós precisamos de sorte. Então: boa sorte. E até breve, quem sabe?  #kawapi
*** [...] -> END

// Kawapi some.


** [> Falar a verdade]

-- Vi alguma coisa no livro de história da magia. A terra oculta é um mundo em que as coisas, os seres que habitam ainda não têm um corpo, uma identidade, e ficam perambulando à procura disso. Uma terra que vem antes dos nossos mundos, logo antes dessa dimensão. 
*** [> Continuar]
--- É uma invasão... Sinto muito em dizer isso, mas nós dois estamos em perigo. Alguém abriu uma passagem. Se me lembro bem dos livros, isso nunca acontece por acaso.
*** [> Continuar]
--- Tenho que descobrir quem foi e o que ele quer, ou isso vai se espalhar e vai ser impossível fechar a fenda. E você precisa voltar para sua terra.
*** [> Continuar]
--- KAWAPI: Era o que eu temia. Você tem razão. Boa sorte nessa luta, feiticeira. Talvez possamos nos ajudar ainda, se isso sair do controle. Só o tempo dirá.  #kawapi
*** [...] -> END

// Kawapi some.

=== depois_do_dialogo ===

AGNES: É... agora acho que só posso fazer mais uma coisa.

* [...] -> END


=== pegou_bolsa ===

AGNES: Graças a deusa recuperei minha bolsa! 

* [> Vasculhar bolsa]

- O que é isso !? Não creio... Achei o pergaminho da aula de encantos!!

*[> Usar pergaminho]

- Agora consigo quebrar esses troços verdes com minhas magias!

* [...] -> END


=== cozinha_2 ===

Passam uns minutos e tudo muda de lugar? Nem eu faço tanta bagunça assim. Vamos lá, fenda dimensional, me ajuda um pouco aqui... Arrumei isso tudo ontem...

* [...] -> END



=== porta_da_rua_2 ===

Ok, Agnes, chegou a hora de sair de casa. 

* Ou tudo vai estar normal[...], isso foi tudo um sonho, temos uma prova de encantamentos pra fazer.
- Ou vamos descobrir o destino. Mas com as ferramentas certas pra briga. 
Talvez.

* [...] -> END

// ela destrói o obstáculo e passa


=== sala_final ===

???: Agnes. #boss
* [O que é você?]

- AGNES: Qu. Mas! Qu......... Quê??
???: Agnes é um belo nome. Terá serventia. #boss
* [> Continuar]
Agnes, não procure lutar. Você já perdeu, mas isso não quer dizer a morte. Quer dizer apenas uma troca. #boss

* [Você não me conhece!]
- AGNES: .......
???: Eu fico com o seu mundo e você fica aqui no meu. Um dia você pode encontrar uma outra terra e tomar posse dela. É um dos muitos ciclos do cosmos.  #boss
* [> Continuar]
- Não tem como evitar. Seria como... Como a árvore que cai. E ao morrer alimenta um milhão de fungos e bactérias. #boss

* [Espera um pouco! Como assim?]

- AGNES: !!!!!!!
???: Você irá para a terra de onde venho. O tempo mudará. Tudo que já aconteceu, neste mundo, estará ainda por acontecer nessa terra. Tudo é cíclico. Todo fim leva de volta ao início. #boss
* [> Continuar]
- A pessoa que você é não importa. O que eu quero, agora, é Agnes. E um corpo, uma vida. Que vai ser a sua. #boss

* [...] -> END
/*
* [> Lutar pela sua vida] -> END
// inicia um combate 

* Espera aí[.] Eu quero saber uma coisa antes.
???: ... tenho todo o tempo. Se você acha que isso vai fazer alguma diferença. #boss
AGNES: 
** As bruxas sabem o seu nome. Você quer saber?
???: Impossível. #boss
AGNES:
*** Eu conto se você me soltar.
???: Que trapaça fraca. Achou que me enganaria assim? Você não tem noção do que pretende enfrentar. Chega dessa conversa. #boss
**** [> Lutar pela sua vida] -> END

*** "É verdade. Seu nome é Ganakai. Agora vá embora."
???: Que absurdo. Você acabou de inventar esse nome. Acha que sou um bicho estúpido? Chega dessa conversa. #boss
**** [> Lutar pela sua vida] -> END

** Não vai acontecer nada comigo.
???: Não é possível impedir. Seria tentar ir contra as próprias leis da natureza. Tudo precisa se transformar um dia. É o ciclo cósmico. Não resista. #boss
*** [> Lutar pela sua vida] -> END
//luta normal

** Podemos fazer isso de outro jeito!
???: Não existe outro jeito. Tudo precisa se transformar um dia. É o ciclo cósmico. Não resista. #boss
*** [> Lutar pela sua vida] -> END
*/

=== fim_do_jogo ===

O fim é o começo...

* [...] -> END


=== objeto_colecionavel_1===

Ahhh, não! Isso é do meu livro de história da magia. Acho que com isso tudo acontecendo algumas páginas mais frágeis devem ter caído. Talvez eu consiga colocar de volta depois.

* [Guardar página]

-> END

=== objeto_colecionavel_2 ===

Mais uma página do livro... 
Esse vórtice faz mais bagunça do que eu.

* [Guardar página] -> END

=== comentarios_esporadicos ===

{&Esse lugar me dá calafrios.|Cada vez mais estranho... Se for uma pegadinha, eu mato alguém hoje.|Eu tenho que sair logo daqui, não posso ficar parada assim.|Oficialmente declaro a quarta-feira o pior dia da semana.}

-> END


=== menu_lore_extra_1 ===

// Texto falando de Kawapi. Título "Kawapi e a terra de Auerá". Deve ser desbloqueado se o jogador fizer uma speedrun - terminar o jogo em menos de X tempo.


Kawapi e a terra de Auerá

"Sou um simples monge, artesão e comerciante. Certo? Nada mais do que isso. Um simples artesão."

Em meio à invasão da terra oculta, Agnes consegue entrar no banheiro de sua casa e lá se depara, de repente, com um ser de outro mundo. 
Kawapi é um habitante de Auerá, um mundo-floresta ainda desconhecido pelos humanos, apesar de que alguns textos pagãos falam da existência de planetas cobertos por vegetação em sistemas planetários vizinhos. 
Ele é um monge e um artesão habilidoso, que confecciona desde cestas para alimentos até amuletos de proteção mágica, a serviço sempre do bem coletivo de Auerá. 
Apesar de ser um pouco prepotente, o que parece estranho vindo de um monge, Kawapi é na verdade muito inteligente e sábio, tendo ajudado através de sua vida a resolver problemas diplomáticos em Auerá e auxiliado muitas formas de vida em sua harmonia com o mundo espiritual.
Além disso, Kawapi é muito ágil. Não apenas pela magia, através da qual consegue desaparecer e reaparecer em outro local, mas pelo seu próprio corpo veloz. Se Kawapi é parecido com uma planta, ele é certamente mais rápido do que uma.
É claro que, como todos, Kawapi não tem apenas pontos positivos. Além de seu ego um pouco inflado, o ofício de artesão criou nele um apreço tão grande por encontrar e colecionar materiais novos, exóticos, que acabou desenvolvendo um hábito bem problemático: hoje em dia ele é um conhecido ladrão de pequenas coisas. Alguns chegam a dizer que Kawapi é um cleptomaníaco sem salvação.
É o que Agnes descobre, ao perceber que Kawapi roubou sua bolsa, e não pretende devolver tudo que encontrou dentro dela. Mas Kawapi não faz por crueldade, e não costuma tomar para si objetos necessários para outras pessoas. Seu objetivo é conseguir novos materiais para seu artesanato. Quando percebe que pode ter pego algo muito importante, costuma devolver.
Mas não sem se divertir um pouco antes.

-> END


=== menu_lore_extra_2 ===


// Texto falando da segunda dimensão e de outros mundos. Título: "A terra oculta e outras terras". Deve ser desbloqueado se o jogador derrotar o boss sem morrer nenhuma vez nem no boss, nem em algum espaço de vórtex.


A terra oculta e outras terras

"Tenho uma lembrança muito vaga de um céu com essas cores. Acho que Auerá já viveu a mesma coisa, há muito tempo. Eu devia ser muito jovem. Não tenho certeza..."

Kawapi talvez já tenha visto um desses vórtices de cor roxa e ar frio. Mas não se lembra bem. Agnes acorda em uma quarta-feira normal, ansiosa por conta de uma prova de encantamentos, e percebe que sua casa está dividida entre duas dimensões. De onde vem essa magia?
A terra oculta, como costuma ser chamada, não chega a ser um mundo, como a Terra ou Auerá. É uma outra dimensão do espaço, um lugar muito pouco compreendido no tecido do cosmos. O que se sabe, pela tradição da magia, é que a terra oculta está em todos os lugares, mas como se fosse um fino tecido transparente, em cima do qual tudo existe. 
É como uma terra deslocada no tempo, um estágio anterior da existência das coisas. Tudo, um dia, foi desse jeito. Mas a terra oculta perdurou, como uma camada superposta, enquanto todo o resto se construiu aos poucos.
Por conta disso, as vidas que habitam essa terra são tão informes e indefinidas quanto ela mesma. Não têm identidades, não têm nomes, não têm corpos que possam chamar de seus, verdadeiramente seus, como os habitantes de outros mundos têm.
As vidas na terra oculta são um aglomerado de forças cósmicas, criando e se transformando. Têm uma grande consciência e são muito antigas - mas, por serem vidas, estão sujeitas às coisas da vida: morte, sentimento, desejo, inveja. Em suas formas mais primordiais.
É por isso que, apesar de muitos seres dessa terra existirem pacificamente, como parte harmônica do cosmos, alguns buscam invadir outros mundos e se apropriar dos corpos, identidades e nomes de seus habitantes. Para assim, quem sabe, sentirem-se libertos dessa condição confusa, que veem como uma maldição. E terem a experiência plena de uma vida.
Assim acontece que um deles, em um dia qualquer, consegue abrir um portal para dentro da casa de Agnes.


-> END


=== menu_lore_extra_3 ===

// Texto falando de Agnes e alguns pontos de sua história. Título: "Sobre Agnes". Deve ser desbloqueado depois que o jogador zerar o jogo pela primeira vez.

Sobre Agnes 

"QUARTA-FEIRA??? A prova de encantamentos! É daqui a pouco! Ai, deusa, que desgraça."

Agnes pode parecer, em um primeiro encontro, uma estudante de magia desleixada e bagunceira. O que é verdade.
Mas ela é também uma feiticeira forte, astuta e, principalmente, corajosa. Ao longo de sua vida, teve muitas chances de provar essa coragem. E se Agnes não é um exemplo de disciplina, sua força interior é logo admirada por quem a conhece.
Agnes nasceu com os cabelos grisalhos. Na tradição pagã à qual sua família pertencia, isso era um sinal profético. Uma marca de que, um dia, ela teria algum papel de responsabilidade e liderança. 
Por isso, desde cedo Agnes foi empurrada por seus pais a seguir o caminho da magia, como seu irmão, alguns anos mais velho do que ela, e eles mesmos. Apesar de seu interesse, e de enxergar seu irmão como uma referência, essa pressão criou dentro de Agnes uma certa rebeldia aos assuntos dos bruxos. 
Durante muitos anos evitou ao máximo se aproximar dessa área. Até que, eventualmente, seu potencial para a magia ficou óbvio até mesmo para ela, que o negava sempre. 
Os seres da floresta vinham até Agnes para pedir ajuda de todos os tipos. Ela conseguia perceber e corrigir maldições, ainda criança. E, claro, uma hora aprendeu o que seus pais mais temiam: que com bastante concentração podia transformar as coisas em legumes.
Muitas cadeiras de sua casa se tornaram batatas gigantescas.
Por essas e outras, Agnes acabou descobrindo que não apenas poderia, sim, seguir no caminho da magia, sem precisar se afastar, mas que também era possível fazer isso do seu próprio jeito. 
O que nem sempre foi uma coisa boa: caminhar sozinho é, também, ter que abrir caminhos à força. Muitas vezes, Agnes percebeu tarde demais que estava lidando com forças inimagináveis, muito maiores do que ela mesma. Nas florestas, à noite, enquanto experimentava sozinha a magia, e de repente sentia que não estava mais no controle do seu corpo. Ou quando, por exemplo, ajudava um amigo a entrar em transe mediúnico e não conseguia trazê-lo de volta. O que fazer?
Em todos esses casos, e outros, Agnes precisou de toda a sua firmeza para tomar as rédeas da situação. Aos poucos, ela segue ainda ganhando seriedade, e reconhecendo em si mesma as suas habilidades.
Por isso, talvez, não poderia ser de outra forma: nessa quarta-feira, seu grande teste não foi uma prova de encantamentos. E, sim, algo muito mais sinistro.

-> END

=== menu_lore_extra_4 ===

// Texto falando sobre a Terra, os bruxos e a magia. Título: "Magia é saber o nome das coisas". Deve ser desbloqueado depois que o jogador pegar todas as páginas do livro (itens colecionáveis).


Magia é saber o nome das coisas


"Sua ligação com o próprio corpo não é aquilo que mais valorizam, e sim a conexão com as forças espirituais, as entidades da floresta, suas plantas e animais, o sol e a lua..."

Desde sempre existiram muitas tradições de magia na Terra. Os livros de história da magia, os favoritos de Agnes, são repletos de descrições riquíssimas dessas tradições. Dos saberes ancestrais, passados ao longo do tempo.
Agnes nunca morou em outro planeta: mora em uma cidadezinha, e precisa também, como todos, se acostumar com o avanço das tecnologias, as transformações sociais e todo o resto.
A diferença dela para a maioria das pessoas é o seu comprometimento com a bruxaria e seus estudos. Nesta época, a magia já está amplamente difundida no mundo. Principalmente na região em que vive. Todos conseguem perceber que ela está aí e, a princípio, poderiam acessá-la. 
Mas isso não impede, nem nunca impediu, a violência e o obscurantismo. E por isso muitos negam a magia, perseguem bruxas como Agnes, recusam-se a ter qualquer contato com esse tipo de coisa. Agem como se não existisse, ou melhor, se não fosse possível existir nada assim.
No entanto, quando não precisam enfrentar esse tipo de coisa, bruxos e bruxas como Agnes vivem normalmente, prestando serviços de magia, curando e criando coisas, se apaixonando e buscando se melhorar, para não agir de forma a desequilibrar o mundo, e sim a restaurar sua harmonia.
Conforme a tradição seguida por Agnes, existem três passos básicos para fazer magia:

1 - Olhar atentamente para as coisas do mundo. 
2 - Respirar fundo, trazendo todas as coisas para dentro de si.
3 - Na exalação, ser todas as coisas, de forma plena e sem preconceitos.

-> END
