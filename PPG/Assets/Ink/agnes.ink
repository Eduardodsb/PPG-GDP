-> quarto
=== quarto ===

//luz fraca

Nossa... que sonho bizarro. Não aguento mais essa semana. Me levem pra longe, por favor. 
E pior que ainda é, vamos ver... quarta-feira? É, isso mesmo.

* Espera...

- QUARTA-FEIRA???
A prova de encantamentos! É daqui a pouco! Ai, deusa, que desgraça. 

* Tenho que me levantar[!] 

<> e me arrumar correndo! E depois ainda tem o trabalho de botânica, e aquela encomenda das essências... Desse jeito vou acabar reprovando. 

** [Acender as luzes]

//luz forte, dá pra ver a segunda dimensão vazando no quarto

- O quê? Isso parece magia. 
Tem alguma coisa estranha acontecendo. Melhor ter cuidado. Vou precisar me vestir.

* [...] -> END

// gameplay da sala inicial. quando ela pega a roupa tem uma animação, mas nenhuma fala.


=== sala_1 ===

Esse lugar tá com cheiro de fumaça. De coisa queimando. 

// quando ela vê o primeiro sinal do vórtex

* Nada bom...

- Se for uma invocação, quer dizer que tem alguém aqui dentro. Ou é isso ou tem um portal sendo aberto. Mas pra onde?
E por quem?

* [...] -> END


=== vortex_1 ===

Eu não gosto nem um pouco disso. Quero voltar pra cama.
Que raio de lugar é esse?

* Parece outro mundo. 
<> E faz frio...

** [...] -> END

=== banheiro_com_npc ===

AGNES: Ei! Quem é você? 

KAWAPI: Meu nome é Kawapi. E qual é o seu nome?

AGNES: <>

- (loop_npc) 
{nome and casa: -> loop_npc_2}

* (casa) Por que você tá no meu banheiro? 

KAWAPI: É uma boa pergunta. Eu também não sei. Na verdade, eu ainda não tenho certeza de como vim parar na sua casa. 
Ela é muito bonita, por sinal. {not nome: Mas ainda não sei o seu nome.}

-> loop_npc

 * (rude1) {not rude2} Sai daqui agora!

KAWAPI: Que rude. Nunca vamos nos entender assim. 

-> loop_npc

* (nome) Meu nome é Agnes. 

KAWAPI: Agradeço por conhecê-la, Agnes. Apesar de as circunstâncias serem tão estranhas, não é mesmo? -> loop_npc

* (rude2) {not rude1} ISSO IMPORTA?

KAWAPI: Se não importa, por que você me perguntou meu nome?

-> loop_npc

- (loop_npc_2) 
{|-> loop_npc_3}

AGNES: Escuta aqui. Acabei de acordar e me deparei com um vórtice imenso de energia na minha casa. 

* Algum feiticeiro poderoso quer alguma coisa daqui[.]. É a única explicação.  
<> Mas não sei o que pode ser. Não tenho nada tão valioso.

KAWAPI: Tem certeza? Vi muitas coisas interessantes desde que cheguei aqui. Pode estar subestimando sua coleção. -> loop_npc_2

* Você não sabe nada sobre isso?

KAWAPI: Saber, não sei. Mas parece que fui trazido aqui por um desses vórtices. Estava em meu vilarejo, senti cheiro de fumaça e de repente... aqui estamos nós. -> loop_npc_2

- (loop_npc_3)
{||-> loop_npc_4}
AGNES: <>

* Você pode me ajudar?

KAWAPI: Depende. Você pode me ajudar? Acho que podemos chegar a um acordo. -> loop_npc_3

* Eles querem alguma coisa com você?

KAWAPI: Não sei quem "eles" são. E não acho que nenhum feiticeiro poderoso queira nada comigo. Sou um simples artesão e comerciante. Certo? Nada mais do que isso. Um simples comerciante. -> loop_npc_3

* Vilarejo?

KAWAPI: Sim, minha terra natal, na floresta. Eu estava, digamos... resolvendo umas coisas lá quando vim parar aqui. Só vi o vórtice depois de já ter sido transportado. -> loop_npc_3

- (loop_npc_4)

AGNES: Vamos conversar então. O que posso fazer por... 
ESPERA AÍ. ISSO É MINHA BOLSA?

KAWAPI: Talvez seja.

AGNES: 

* Me devolve agora!

* O que você pensa que tá fazendo?

- KAWAPI: Em minha defesa, eu nem sabia onde eu estava quando peguei isso. E como eu disse, talvez você subestime sua coleção. Achei coisas muito interessantes aqui. Preciso de coisas interessantes no meu trabalho.

AGNES:

* Não importa. São minhas.

KAWAPI: Será que podemos ter certeza disso? Aposto que você nem sabe o que tem nessa bolsa. 

* É melhor você entregar agora.

KAWAPI: Ou o quê? Acha que consegue me pegar?

- Tem coisas muito importantes aí. Eu vou precisar dessa bolsa, Kawapi. Minha casa está sendo invadida.

KAWAPI: Vamos fazer o seguinte: se você me alcançar, eu te devolvo alguma coisa importante dessa bolsa. A maioria das coisas aqui são bugigangas sem valor, e você sabe disso. Mas são bonitas e quero usar no meu artesanato. É o mínimo que mereço depois de um dia tão estranho. 
Vamos? Vai ser divertido!

// Kawapi some e Agnes precisa ir atrás dele.

AGNES: Não acredito nisso...

* [...] -> END

=== biblioteca_1 ===

Ué. A biblioteca não era pra estar aqui. Os cômodos também começaram a se mexer, é isso?

* [...]

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Sabe, eu acho que não me apresentei direito. Comecei a imaginar agora se você aparecesse em minha casa de repente, junto de um feitiço estranho, como eu me comportaria. Acho que pelo menos ia querer saber um pouco além do seu nome.
Minha terra natal se chama Auerá. É uma imensa floresta. Acho que você gostaria de conhecê-la. Em Auerá, muitas comunidades convivem, integradas. E eu sou um dos membros mais importantes da minha.
Porque sou muito inteligente e tenho muitos artefatos, amuletos, conselhos e poderes, sim. É um dos motivos. Não sei se você percebeu, Agnes, mas desde que você falou comigo pela primeira vez temos conversado na sua língua. Coisa que nunca fiz antes. 
Mas também porque sou muito ágil. Já liderei todo tipo de caçada ou migração. O que me lembra de uma história: uma vez, um animal de carga fugiu em debandada pela floresta, furioso. Quando o susto passou, ninguém sabia sequer em que direção ele tinha ido. Eu que tive que ver os rastros. Corri tanto na direção do animal que o alcancei com folga, e só de ver minha velocidade ele parou de correr e desistiu da fuga.
Mas fique tranquila, você ainda tem chances.

// quando a Agnes está perto de alcançar Kawapi, ele some e aparece em outro lugar

KAWAPI: Não foi dessa vez!

* [...] -> END


=== porta_da_rua_1 ===

// Agnes passa pela porta de sua casa e vê o obstáculo mágico.

Acho que não consigo passar por isso ainda. Preciso pegar outro feitiço, ou vou ficar presa aqui dentro. E o que pode acontecer nesse caso?

* [...] -> END

=== cozinha_1 ===

Onde será que ele se meteu dessa vez? Espero que não esteja comendo minhas coisas também.

* [...]

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Eu preciso admitir que, pra uma feiticeira, você também é bem ágil. De onde eu venho, aqueles que mexem com a magia não costumam ter esses atributos. Sua ligação com o próprio corpo não é aquilo que mais valorizam, e sim a conexão com as forças espirituais, as entidades da floresta, suas plantas e animais, o sol e a lua...
A verdade é que eu gostaria de ter te conhecido em outra situação. Acho que teríamos muito a conversar. Não sei que situação poderia ser. Talvez você, sem querer, descobrisse meu mundo em algum encantamento?
Pelo menos do jeito que aconteceu eu consegui conhecer a sua casa. E sua preciosa coleção de coisas desse mundo... Incríveis!
E que divertido você tentando me alcançar, não é?

// quando a Agnes está perto de alcançar Kawapi, ele some e aparece em outro lugar

KAWAPI: Quem sabe da próxima?

AGNES: Grande avó... Eu tenho certeza de que não mereço isso. Tenho certeza. 
Então por que eu? Por quê??

* [...] -> END

=== vortex_2 ===

De novo esse lugar. Com que tipo de forças eu vou ter que me meter? Espero descobrir logo...
Preciso pegar esse tagarela.

* [...]

// perseguição ao npc, e ele começa a tagarelar

- KAWAPI: Aqui faz muito frio, não é? E que silêncio. Admito que estou preocupado, apesar do nosso jogo. Se esses vórtices se abriram na sua casa, e eu apareci nela, quer dizer que Auerá também está sendo invadida? Espera. Esse céu, essas cores. O cheiro de fumaça. Acho que reconheço...

// quando Agnes finalmene alcança Kawapi, dessa vez, ele não some

KAWAPI: AH! Muito bem, você me pegou.

AGNES: 
- (loop_npc_vortex)

* Agora, me devolve a minha bolsa.

KAWAPI: Como eu disse, acredito que poucas coisas aqui seriam valiosas para você. Mas aqui está o seu livro de magia. Era ele que você procurava, não é? Me diga se eu estiver errado.

AGNES: Era ele mesmo. -> loop_npc_vortex

* Parece que você não é tão ágil assim.

KAWAPI: Talvez.

- (terra_oculta)

* Estamos na terra oculta, não é?

KAWAPI: Você conhece esse lugar?

AGNES: Não. Não é bem conhecer. Eu li sobre um lugar assim. Ainda não tinha me tocado, mas quando você começou a falar das cores...

KAWAPI: E o que você sabe disso? Por favor, me conte. Tenho uma lembrança muito vaga de um céu com essas cores. Acho que Auerá já viveu a mesma coisa, há muito tempo. Eu devia ser muito jovem. Não tenho certeza...

AGNES: <>
** [Mentir]

É um mundo como qualquer outro, com magia e pessoas que controlam essa magia. Às vezes portais são abertos e tudo fica confuso. Mas nem sempre isso tem a ver com um ataque ou qualquer coisa assim. 
Podem ser apenas pontes entre dimensões. Sua terra pode ter sido visitada um dia, há muito tempo. 

KAWAPI: Ah. Fico aliviado de saber. Muito obrigado, Agnes. De qualquer forma, acho que é hora de voltar. Agradeço pelo encontro. Você é poderosa, mas todos nós precisamos de sorte. Então: boa sorte. E até breve, quem sabe?

// Kawapi some.

** [Falar a verdade]

Vi alguma coisa no livro de história da magia. A terra oculta é um mundo em que as coisas, os seres que habitam ainda não têm um corpo, uma identidade, e ficam perambulando à procura disso. Uma terra que vem antes dos nossos mundos, logo antes dessa dimensão. 
É uma invasão... Sinto muito em dizer isso, mas nós dois estamos em perigo. Alguém abriu uma passagem. Se me lembro bem dos livros, isso nunca acontece por acaso.
Tenho que descobrir quem foi e o que ele quer, ou isso vai se espalhar e vai ser impossível fechar a fenda. E você precisa voltar para sua terra.

KAWAPI: Você tem razão. Boa sorte nessa luta, feiticeira. Talvez possamos nos ajudar ainda, se isso sair do controle. Só o tempo dirá. 

// Kawapi some.

- Bem... agora acho que só resta resolver a situação.

* [...] -> END


=== cozinha_2 ===

Passam uns minutos e tudo muda de lugar? Nem eu faço tanta bagunça assim. Vamos lá, fenda dimensional, me ajuda um pouco aqui... Arrumei isso tudo ontem...

* [...] -> END


=== vortex_3 ===

Ah, não, outra vez? Esse lugar me dá calafrios.

* [...] -> END

=== biblioteca_2 === 

Ótimo. Voltei pra biblioteca. Uma pena que já tenho os livros de que preciso. Espero não estar andando em círculos, de algum jeito estranho.

* [...] -> END


=== sala_2 ===

Cada vez mais estranho...

* [...] -> END


=== porta_da_rua_2 ===

Encontrei! Bem, Agnes, chegou a hora. A porta pra rua. 

* Ou tudo vai estar normal[...], isso foi tudo um sonho, temos uma prova de encantamentos pra fazer.
- Ou vamos descobrir o destino. Mas com as ferramentas certas pra briga.

* [...] -> END

// ela destrói o obstáculo e passa


=== sala_final ===

???: Agnes.
* ["Quem é você?"]

- "Qu. Mas! Qu......... Quem??"
???: Agnes é um nome bonito. Gostei dele. Agnes, não procure lutar. Eu sou todas as coisas de que você tem medo em uma massa só. Tudo que você detesta, tudo que te causa nojo ou repulsa e tudo que te paralisa. 
Você já perdeu, mas isso não quer dizer a morte. Quer dizer só uma troca.

* ["Você não me conhece!"]
- "......."
???: Eu fico com o seu mundo e você fica aqui no meu. Um dia você pode encontrar uma outra terra e tomar posse dela. É um dos muitos ciclos do cosmos. Não tem como evitar. 
Seria como... Como a árvore que cai. E ao morrer alimenta um milhão de fungos e bactérias.

* ["Espera um pouco! Como assim?"]

- "!!!!!"
???: E você, como essa árvore, não foi sequer escolhida. Eu vim aqui como poderia ter ido a qualquer outra cidade. A pessoa que você é não importa. 
O que eu quero é Agnes. E um corpo. Que vai ser o seu.

* [Lutar pela sua vida] -> luta
// inicia um combate 

* "Espera aí.["] Você precisa me responder uma coisa antes."
???: ... tenho todo o tempo. Se você acha que isso vai fazer alguma diferença...

** "Você acha que me assusta?"

???: Muito bem. Esse momento pode ser tão ruim quanto você quiser. Para mim não faz diferença. Mas compreendo seu anseio por se mostrar forte.  -> luta_dificil
// boss fica mais difícil por conta da pergunta

** "As bruxas sabem o seu nome. Você quer saber?"
???: Impossível. 

*** "Eu conto se você me soltar."
???: Que trapaça fraca. Achou que me enganaria assim? Você não tem noção do que pretende enfrentar. Chega dessa conversa. -> luta

*** "É verdade. Seu nome é Ganakai. Agora vá embora."
???: Que absurdo. Você acabou de inventar esse nome. Acha que sou um bicho estúpido? Chega dessa conversa. -> luta

** "O que você era antes disso?"
???: Como você. E uma coisa terrível aconteceu comigo. Felizmente, nada dura para sempre. Você vai entender muito em breve. 

*** "Eu não acredito em você."
???: Eu te mostro. Não é um problema. -> luta_facil
// os "tentáculos" começam a se retrair. É o momento de atacar e dar mais dano. Boss mais fraco.

*** "Não vai acontecer nada comigo."
???: Não é possível impedir. Seria tentar ir contra as próprias leis da natureza. Não resista. ->luta
//luta normal

*** "Então podemos fazer isso de outro jeito!"
???: Não existe outro jeito. Tudo precisa se transformar um dia. É o ciclo cósmico. Eu sou apenas um executor. -> luta 

=== luta ===
// luta com a mecânica normal
-> END

=== luta_facil ===
// luta com a mecânica normal, mas o boss começa com menos vida, por ter levado um hit em uma forma mais vulnerável no começo
-> END

=== luta_dificil ===
// luta com o boss mais forte e/ou mais rápido
-> END

//com o boss derrotado, Agnes desmaia e cai em sono profundo


=== biblioteca_objeto ===
-> END
=== cozinha_objeto ===
-> END
=== sala_objeto ===
-> END
=== vortex_objeto ===
-> END


=== quarto_depois ===

//tela preta

Não, sapo... Quantas vezes eu vou ter que te falar? Você não pode nadar aqui. A gente bebe dessa água. Não pode, sapo... não adianta... eu não vou repetir...

* [Afogar o sapo]

- Eu não quero te afogar, sapo. O quê? Onde é que.
Ah. Um sonho.

* Espera aí...

- Hoje é a prova de encantamentos! Socorro! Não tenho condições pra isso. 
Por que eu, por que hoje??
Ahhhhh... Odeio ter que levantar cedo...

* [Acender as luzes] -> END

// as luzes se acendem e o jogador precisa fazer o mesmo caminho de antes, mas agora sem a invasão da segunda dimensão - ela pega as roupas no quarto, se veste e sai para a sala central.


=== sala_depois ===

// Agnes anda até a porta e vê que ela está arrombada, pelo uso do seu feitiço no dia anterior, lutando contra o Horror. Existem alguns restos do corpo do Horror perto da porta. Ela para por um tempo. É aí que se percebe que não foi um sonho. Ela então usa um encantamento de proteção na casa e na porta, limpando o lugar e deixando um selo sobre o chão. E sai para a rua.

-> END
