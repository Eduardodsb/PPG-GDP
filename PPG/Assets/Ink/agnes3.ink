-> sala_inicial
=== sala_inicial ===

Nossa... que sonho bizarro. Não aguento mais essa semana. Me levem pra longe, por favor. 
E pior que ainda é, vamos ver... quarta-feira? É, isso mesmo.

* Espera...

- QUARTA-FEIRA???
A prova de encantamentos! É daqui a pouco! Ai, deusa, que desgraça. 
E depois ainda tem o trabalho de botânica que eu nem comecei ainda, e aquela encomenda das essências... 
Tenho que levantar e me arrumar correndo. Desse jeito vou acabar reprovando. 

* [Acender as luzes]

//luz forte, dá pra ver a segunda dimensão vazando no quarto

- O quê? Isso parece magia. 
Tem alguma coisa estranha acontecendo. Melhor ter cuidado. Vou precisar me vestir.

* [...]
// gameplay da sala inicial. quando ela pega a roupa tem uma animação, mas nenhuma fala.

-> END

=== sala_central ===

Esse lugar tá com cheiro de fumaça. De coisa queimando. 

* Nada bom...

- Se for uma invocação, quer dizer que tem alguém aqui dentro. Ou é isso ou tem um portal sendo aberto. Mas pra onde?
E por quem?

// quando ela percebe que a porta da rua está bloqueada

Beleza. Seja lá quem for, você quer brigar? Vou pegar as ferramentas certas pra essa briga. Tantos anos presa estudando devem ter servido pra alguma coisa. 
Antes isso do que uma prova.

// resto do gameplay da sala, passa por outros obstáculos, etc.

-> sala_do_poder

=== sala_do_poder ===

Que coisa é essa… Isso é uma fenda? Uma fenda das dimensões? 
Grande avó... Espero que não seja o que eu acho que é. 
Força da lua, força das matas...

// passa pelo nível, pega o poder

Aha! Agora isso aqui ficou sério! 
Plena quarta-feira e você vem fazer uma bagunça na minha casa... arrumei isso aqui ontem... tenho mais coisa pra fazer... uma prova de encantamentos, dois seminários... sem tempo nenhum pra isso...

-> sala_central_tomada

=== sala_central_tomada ===

Eu conheço isso. É a terra oculta. Tem alguma coisa no livro de história da magia. 
É um mundo em que as coisas ainda não têm um corpo, uma identidade, e ficam perambulando à procura disso. Uma terra que vem antes do nosso mundo, logo antes. 
* Alguém abriu uma passagem. 

- <> Se me lembro bem dos livros, isso nunca acontece por acaso.
Tenho que descobrir quem foi e o que ele quer, ou isso vai se espalhar e vai ser impossível fechar a fenda.

-> sala_final

=== sala_final ===

HORROR: Agnes.
* ["Quem é você?"]

- <> "Qu. Mas! Qu......... Quem??"
HORROR: Agnes é um nome bonito. Gostei dele. Agnes, não procure lutar. Eu sou todas as coisas de que você tem medo em uma massa só. Tudo que você detesta, tudo que te causa nojo ou repulsa e tudo que te paralisa. 
Você já perdeu, mas isso não quer dizer a morte. Quer dizer só uma troca.

* ["Você não me conhece!"]
- <> "......."
HORROR: Eu fico com o seu mundo e você fica aqui no meu. Um dia você pode encontrar uma outra terra e tomar posse dela. É um dos muitos ciclos do cosmos. Não tem como evitar. 
Seria como... Como a árvore que cai. E ao morrer alimenta um milhão de fungos e bactérias.

* ["Espera um pouco! Como assim?"]

- <> "!!!!!"
HORROR: E você, como essa árvore, não foi sequer escolhida. Eu vim aqui como poderia ter ido a qualquer outra cidade. A pessoa que você é não importa. 
O que eu quero é Agnes. E um corpo. Que vai ser o seu.

* [Lutar pela sua vida] -> luta
// inicia um combate 

* "Espera aí.["] Você precisa me responder uma coisa antes."
HORROR: ... tenho todo o tempo. Se você acha que isso vai fazer alguma diferença...

** "Você acha que me assusta?"

HORROR: Muito bem. Esse momento pode ser tão ruim quanto você quiser. Para mim não faz diferença. Mas compreendo seu anseio por se mostrar forte.  -> luta_dificil
// boss fica mais difícil por conta da pergunta

** "As bruxas sabem o seu nome. Você quer saber?"
HORROR: Impossível. 

*** "Eu conto se você me soltar."
HORROR: Que trapaça fraca. Achou que me enganaria assim? Você não tem noção do que pretende enfrentar. Chega dessa conversa. -> luta

*** "É verdade. Seu nome é Ganakai. Agora vá embora."
HORROR: Que absurdo. Você acabou de inventar esse nome. Acha que sou um monstrengo estúpido? Chega dessa conversa. -> luta

** "O que você era antes disso?"
HORROR: Como você. E uma coisa terrível aconteceu comigo. Felizmente, nada dura para sempre. Você vai entender muito em breve. 

*** "Eu não acredito em você."
HORROR: Eu te mostro. ->luta_facil
// os "tentáculos" começam a se retrair. É o momento de atacar e dar mais dano. Boss mais fraco.

*** "Não vai acontecer nada comigo."
HORROR: Não é possível impedir. Seria tentar ir contra as próprias leis da natureza. Não resista. ->luta
//luta normal

*** "Então podemos fazer isso de outro jeito!"
HORROR: Não existe outro jeito. Tudo precisa se transformar um dia. É o ciclo cósmico. Eu sou apenas um executor. -> luta 

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

=== sala_inicial_depois ===

//tela preta

Não, sapo... Quantas vezes eu vou ter que te falar? Você não pode nadar aqui. A gente bebe dessa água. Não pode, sapo... não adianta... eu não vou repetir...
* [Afogar o sapo]
- Eu não quero te afogar, sapo. O quê? Onde é que...
Ah. Um sonho.
Droga... Hoje é a prova de encantamentos. Odeio ter que levantar cedo.
* [Acender as luzes]

// as luzes se acendem e o jogador precisa fazer o mesmo caminho de antes, mas agora sem a invasão da segunda dimensão - ela pega as roupas no quarto, se veste e sai para a sala central.

-> sala_central_depois

=== sala_central_depois ===

// Agnes anda até a porta e vê que ela está arrombada, pelo uso do seu feitiço no dia anterior, lutando contra o Horror. Existem alguns restos do corpo do Horror perto da porta. Ela para por um tempo. É aí que se percebe que não foi um sonho. Ela então usa um encantamento de proteção na casa e na porta, limpando o lugar e deixando um selo sobre o chão. E sai para a rua.

-> END
