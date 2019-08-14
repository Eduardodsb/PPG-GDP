-> sala_inicial
=== sala_inicial ===

Você acorda de um sono pesado. Sua cabeça dói. Depois de uns segundos você percebe que está deitado no chão frio.

* [Olhar em volta.]
    Você tenta ver que lugar é esse, mas não tem luz suficiente pra isso. Uma brisa invade a sala. <> 
* [Voltar a dormir.]
    Você pensa que pode ser um pesadelo esquisito e tenta voltar a dormir. Mas não consegue. <> 
- Um cheiro forte de metal chama a sua atenção e te desperta. O que será isso?

- (loop_1)
{|||"Não tem como ficar parado aqui pra sempre", você pensa. "Talvez tenha como acender a luz." -> levanta}
* [Ficar quieto.]
Você faz silêncio e tenta ouvir alguma coisa. Só o som da sua respiração. 
-> loop_1
* (bolsos) [Conferir os bolsos.]
Você passa a mão pelos bolsos, mas não tem nada lá. 
-> loop_1
* (grita) "Alguém aí?"[], você grita. Ninguém responde. 
-> loop_1

- (levanta) Você levanta e começa a caminhar aos poucos, tateando à frente. Mas parece que essa sala é maior do que você imaginava.

* (tropeca) [Andar mais rápido]
    Você tenta andar mais rápido, mas tropeça em alguma coisa dura e cai em cima do seu braço. Dói bastante, mas no escuro não dá pra saber o quanto você se machucou. <>
    
* (devagar) [Continuar andando]
    Você evita acelerar o passo no escuro para não se machucar, mas logo parece que passou uma eternidade e você ainda não chegou a lugar nenhum.
    ** [Andar mais rápido] -> tropeca
    ++ [Tentar mais um pouco] 
    {-> devagar | -> devagar | -> devagar |}
    Você dá mais alguns passos e bate em alguma coisa com o pé. <>
    
- (caixa) Passando a mão pelo chão você percebe uma coisa que parece uma caixa de metal, presa no lugar. 

* [Examinar] 
    A superfície da caixa é lisa e gelada. Ela parece um pouco curvada e emite um som constante, baixo demais pra ouvir.

- (interagindo_com_caixa)
* [Encostar o ouvido na caixa]
    Só um zumbido estranho. Agora um pouco mais alto. -> interagindo_com_caixa

* ["Melhor não mexer nisso"]
    "Melhor não mexer com caixas estranhas no escuro", você pensa. Você segue em frente. Felizmente não é preciso avançar muito para que suas mãos encostem em uma parede, e logo encontrem o que parece ser uma caixa de disjuntores. 
    ** "É isso mesmo. Na mosca." 
    Você puxa um a um, até que as luzes da sala se acendem.
    A sala imensa em que você acordou parece mais um ferro-velho. Há destroços por todos os lados; uma grande sensação de vazio se espalha aos poucos no seu peito. Você deveria reconhecer esse lugar?
    *** Móveis, documentos e objetos []estão jogados em alguns cantos. As paredes são cinzas, lisas, assim como o chão. Você percebe uma imensa janela horizontal, fechada por persianas, e então olha para aquela caixa estranha em que tinha tropeçado ainda há pouco. -> sala_acesa
    {tropeca: Só depois de passar o olho pela sala toda você se lembra de que tinha tropeçado na caixa. Parece que a dor ficou mais forte agora que você pode se preocupar com ela. O seu braço tem um corte aberto, ainda sangrando um pouco, mas nada tão preocupante assim - ou você sentiria. "É, eu realmente odeio sangue", você pensa.} 

// - (bandagem) 
// * {tropeca} ["Não vou virar enfermeiro agora."] Se não segui esse caminho antes, não vai ser nessas condições." Parece uma decisão sensata.
// * {tropeca} ["Mas é melhor cuidar disso logo."] Parece uma decisão sensata. 
//    ** [Fazer bandagem]
//        *** [Procurar pano]
//        *** [Rasgar uma tira da camisa]
//        *** [Tirar a camisa e enrolar em volta]
//    ** [Procurar água]
    
- (sala_acesa)
{||||->inicio_da_exploracao}
* (olhar_janela) [Abrir as persianas]
    Você decide abrir as persianas da janela. Elas são grandes e pesadas, mas tem uma alavanca montada na parede só pra isso. "Antes fosse tudo assim", você pensa. "Fácil e intuitivo."
    As persianas se abrem e através da janela, bem de longe, entre as estrelas, você vê a Terra.
    ** [Esfregar os olhos.]
    Você esfrega e pisca os olhos. "Merda." É isso mesmo: a Terra. <>
    ** ["Mas o que..."]
    "Mas o que diabos...", você começa a pensar; mas logo se convence de que deve ser só uma pegadinha esquisita. Isso que dá encher a cara e dormir bêbado. "Eu tenho que parar mesmo com isso. Já passei dos limites."
        *** "Vamos lá, pessoal["]! Isso não tem graça! Apareçam logo!"
        *** "Eu vou contar até três!["] E depois eu mato um!"
        *** "Chega disso, por favor!"
        --- Não tem resposta. <>
    ** [Se afastar da janela.]
    Você se afasta da janela rápido, cambaleando pra trás. Seu coração acelera. É impossível de acreditar nessa visão, ela não faz sentido nenhum, e no entanto aí está. <>
    -- Enquanto você tenta assimilar o que está vendo, como se viesse do nada, alguma coisa se choca com estrondo na janela! 
    É um susto enorme, mas a janela aguenta. O problema é outro. Aquilo era claramente um pedaço de alguma coisa maior. "Será que alguma coisa explodiu?" Isso explicaria a bagunça. Mas não dá pra saber ainda. 
    ** Não muito longe[], alguns pontos se destacam entre as estrelas e o pano escuro do cosmos. Mais destroços, provavelmente. Qualquer hora outro deles bate na janela. "Tomara que ela aguente." -> sala_acesa
* (olhar_caixa) [Examinar a caixa]
    Voltando à caixa, você agora percebe que ela é maior do que parecia antes. Diferente de quase tudo nessa sala, tem cores vivas: branco, laranja, azul. Você percebe um painel com botões e algumas luzes desligadas na lateral. 
    Podem mudar algo na caixa ou fora dela.
    {~{olhar_janela: De tempo em tempo você ainda olha na direção da janela. Aquela visão te perturbou muito, e agora tudo parece perigoso. "Vai que isso tem alguma surpresa desagradável também" é o que passa pela sua cabeça. Seu coração bate forte. "Não quero enlouquecer antes de entender que lugar é esse."} | {ver_documentos: "Vai ver é uma daquelas pessoas aqui."}} 
    -- (caixa_opcoes)
    ** [Apertar alguns botões]
    Algumas luzes acendem, mas parece que nada realmente acontece. -> caixa_opcoes
    ** [Bater com os dedos na caixa]
    A caixa não responde. -> caixa_opcoes
    ** [Sair de perto da caixa] 
    Você se afasta da caixa. -> sala_acesa
* (ver_documentos) [Vasculhar documentos]
    Alguns registros de identidade, projetos de máquinas e plantas-baixas. Com certeza tem alguma coisa útil no meio de tantos papéis, mas o que procurar? Algumas folhas com trechos apagados te chamam atenção. 
    {~{olhar_janela: De tempo em tempo você ainda olha na direção da janela. Aquela visão te perturbou muito, e agora tudo parece perigoso. Seu coração bate forte. E os papéis não te trazem nenhuma paz, muito pelo contrário.} | {olhar_caixa: Parecem tão fechados quanto a caixa.}} ->sala_acesa
* {olhar_janela and (olhar_caixa or ver_documentos)} // Tem que ver pelo menos 2, um sendo a janela
[Procurar em outro lugar] -> inicio_da_exploracao

- (inicio_da_exploracao)
Às vezes é melhor mudar o ambiente. "Posso encontrar alguém que me ajude" é o que te motiva a se recompor e pensar com calma. Olhando em volta, há 2 portas, em lados opostos da sala. Não tem nada escrito nas placas acima de cada porta, apenas símbolos: um papel com linhas escritas e uma cruz de medicina. "Essa deve ser a ala médica. A outra talvez uma biblioteca? Tem bibliotecas no espaço?"
* [Ir para ala médica] -> ala_medica_direto 
* [Ir para biblioteca] -> dormitorio 


=== dormitorio ===

"Talvez tenha alguma pista sobre que lugar é esse na tal biblioteca." Você segue em passos firmes e passa pela porta, entrando primeiro em um corredor estreito, que se ilumina quando você pisa
* "Parece que o problema da luz está resolvido mesmo["]. Espero que não tenha nenhuma outra coisa importante desligada e eu aqui, sem fazer ideia." 
- Você dobra duas esquinas no corredor até se deparar com o que parece ser um dormitório: existem camas embutidas em duas paredes e no meio, entre mesas, alguns objetos jogados passam uma sensação de casa. São livros, um baralho de cartas, um videogame portátil, coisas assim. Perto das camas existem armários, alguns abertos, mostrando mochilas, roupas e objetos de todos os tipos.
Mas não há ninguém à vista.

* "Talvez eu encontre alguma coisa["], mas pode ser uma má ideia mexer nas coisas dos outros assim. Alguém pode entrar e me ver aqui."
    -- (procurando_dormitorio)
    {||-> barulho_no_dormitorio}
    ** [Revistar armários]
        Não são muitos os armários interessantes. A maioria tem algumas roupas penduradas e objetos pessoais. Um deles tem alguns alimentos desidratados, como carne seca e até barras de cereais. Dois deles, na parede mais próxima de você, têm mochilas grandes. {sala_inicial.tropeca: Seu braço já parou de sangrar, mas ainda dói e deve ser uma má ideia deixar uma ferida exposta assim. Talvez tenha algo aqui que possa ajudar.}
        --- (armarios)
        {|||Não tem mais nada de interessante nos armários. -> procurando_dormitorio}
        *** [Procurar nas mochilas]
            Você encontra de tudo nas mochilas, até mesmo ferramentas. {sala_inicial.tropeca: Mas nada para cuidar do machucado. }Pode ser útil voltar aqui em algum momento. 
            -> armarios
        *** (casaco) [Pegar roupas]
            Você encontra um casaco e veste por cima da sua camisa. Está mais confortável agora. {comida: Você distribui as embalagens de comida nos bolsos do casaco.} {sala_inicial.tropeca: Mas ainda tem muitas roupas no armário.}
            **** (cuidou_da_ferida) {sala_inicial.tropeca} [Improvisar uma bandagem para a ferida] 
            As roupas parecem limpas. "Melhor do que nada." Você rasga uma tira de pano de uma camisa e enrola em volta do braço. O tecido começa a absorver o sangue. 
            **** {sala_inicial.tropeca} "É melhor limpar essa ferida antes["] antes de cobrir com um pano qualquer", você pensa. A dor incomoda e a ferida te preocupa, mas uma situação ruim sempre pode piorar. 
            ---- {sala_inicial.tropeca: -> armarios}
        *** (comida) [Pegar comida]
            É só olhar para a comida que seu estômago ronca. "Tenho que ter cuidado pra não entrar nessa loucura e esquecer de mim." Você passa a mão pelo rosto, respira fundo e tenta se concentrar no seu corpo. Parece que, fora o braço e um pouco de fome e sono, está tudo bem. "É só ter cuidado." 
            Você come uma barrinha de cereal e um pedaço de carne seca. Cai como uma luva. Você pega parte da comida do armário{casaco: e coloca nos bolsos do casaco}. 
            -> armarios
    ** [Examinar camas]
    As camas estão arrumadas. Nada demais.
    ** [Ver livros]
    Na mesa estão dois livros. "Moby Dick" em edição especial e um livro técnico sobre plantas suculentas. "Legal, mas agora não."
    ** [Seguir em frente] -> biblioteca
    
    -- (barulho_no_dormitorio)
    Um barulho alto de alguma coisa batendo vem das suas costas. Outra coisa batendo na janela? Ou alguém? 
    -- (loop_barulho_no_dormitorio)
    ** [Esperar um pouco]
        Você espera um pouco, mas ninguém aparece. -> loop_barulho_no_dormitorio
    ** [Ir para a biblioteca] -> biblioteca

* [Continuar para biblioteca] -> biblioteca

=== biblioteca ===

A porta do lado oposto do dormitório te leva direto a uma sala cheia de estantes com livros. É o primeiro cômodo sem cheiro de metal que você encontra nesse lugar. Mais ao fundo, uma série de gaveteiros de metal estão alinhados junto à parede. 
Passando os olhos pelas estantes, você percebe que os livros estão catalogados por gênero. A primeira seção diz TÉCNICA E ENGENHARIA. Você pega um para conferir: "Drácula de Bram Stoker." 
"Que descaso."
- (estantes)
* [Ler uma passagem do livro]
"17 de junho - Esta manhã, quando estava sentado na cama, pensativo, ouvi ruído de chicotadas e de cascos de cavalo no caminho que fica para além do pátio. Corri à janela e avistei dois carretões, puxados cada um por oito cavalos, havendo um eslovaco, com seu chapéu característico, junto de cada parelha. Corri para a porta, pensando em descer e tentar alcançá-los através do vestíbulo principal, que eles poderiam abrir. Nova decepção: minha porta estava fechada pelo lado de fora.
Corri à janela e gritei. Os homens olharam-me estupidamente, não atenderam ao chamado."

Você coloca o livro de volta na estante. 
"Péssima ideia ler isso agora." -> estantes
+ [Pegar outro livro ao acaso]
Você caminha um pouco ao longo da estante e pega outro livro. {Mais literatura. Seria ótimo, se você não estivesse no espaço, confuso e sozinho. | É um livro de engenharia eletrônica. Sua formação é em biologia, o que não ajuda muito na hora de entender circuitos. "Mais um caminho que não segui. Pelo menos até agora não fez falta." | Não parece muito interessante. | Não parece muito interessante. "Acho que não vou encontrar nada que me ajude aqui." -> estantes_esgotadas} -> estantes
* [Ir aos gaveteiros] -> gaveteiros

- (estantes_esgotadas)

* (gaveteiros) [Ir aos gaveteiros]
Você para de frente aos gaveteiros e percebe que existe uma pequena janela à sua direita. Olhando através dela você vê mais estrelas, mais destroços, e uma luz brilhando longe. Talvez seja algum planeta, refletindo a luz do sol. 
- É uma visão tão incrível que, durante um breve momento, todo o seu medo desaparece. Tem sido a manhã mais estranha da sua vida, se é que dá para chamar isso de manhã, e não pensar muito a respeito tem te ajudado a chegar até aqui. 
* Não é fácil acordar em uma espaçonave deserta[]. Mas durante alguns segundos você se permite pensar sobre isso. Quando você teria imaginado que iria, um dia, estar aqui? "Apesar de tudo, espero que não seja um sonho. Queria saber como vim parar aqui."
Você volta os olhos aos gaveteiros. Não há nenhum tipo de etiqueta. Ao tentar abrir as gavetas, no entanto, a maioria está trancada. Você consegue abrir duas delas.

- (gavetas)
{|| -> gavetas_esgotadas}
* [Inspecionar primeira gaveta]
    A gaveta está cheia de pastas etiquetadas. Nas etiquetas, nomes e sobrenomes. Tomado por uma ansiedade súbita, você revira as pastas até encontrar uma com o seu nome nela. Não há tempo para pensar a respeito. 
    ** (memoria) [Ler conteúdo da pasta]
        Nome, sobrenome, idade, altura, peso - tudo está ali. "OCUPAÇÃO: sistemas de biotecnologia. TEMPO DE SERVIÇO NA FORÇA: 1 ano e 6 meses. PREVISÃO PARA DESPERTAR: após 2 anos de viagem." 
        -- "Previsão para despertar?", você se pergunta. 
        No mais, outras fichas informativas e duas fotos. 
        ** Nelas, você posa junto[] a alguns homens e mulheres, todos vestidos com o mesmo uniforme branco, laranja e azul. Eles parecem familiar, como muitas coisas até aqui. Você poderia até dizer que tem certeza de que os conhece. Mas suas memórias estão embaralhadas demais para saber realmente quem são. 
        -- "Eu não sei nem que lugar é esse ainda, merda."
        ** [Guardar pasta]
        Ao fechar a pasta para colocá-la de volta na gaveta, uma terceira foto desliza até a sua mão. Você não tinha visto isso antes.
        -- Na foto estão uma mulher, um homem e você, no meio. Todos sorrindo. Você aproxima bem a foto do seu rosto.
        ** "Alice? Vicente?"
        E tudo vem num estouro: a missão. A missão de mineração em uma das regiões de Titã, a lua de Saturno, que já vinha sendo explorada por sondas há mais de 10 anos. A felicidade da força espacial pela tecnologia dos novos motores, que permitiam um tempo bem menor para a travessia. Sua própria felicidade por conseguir uma vaga, mesmo com pouco tempo no emprego. Os treinamentos, o preparo, as despedidas. 
        A entrada na nave? 
        "Não me lembro disso. Que estranho." 
        -> gavetas
* [Inspecionar segunda gaveta]
    "Perfeito."
    Esquemas, plantas-baixas e manuais de instruções. É um material muito valioso para uma pessoa perdida. 
    Você passa alguns minutos lendo tudo que consegue sobre a espaçonave. Ela possui um formato em U, com duas alas laterais unidas no centro. A sala em que você acordou mais cedo é o saguão central, uma espécie de sala de comando e navegação. "Talvez aquela caixa fosse um painel." Você procura alguma coisa a respeito nos documentos, mas não encontra nada esclarecedor.
    Entre os papéis surge um bloco de folhas encadernado: "EM CASO DE EMERGÊNCIA". 
    "Isso vai ser muito útil."
    ** (manual) [Abrir manual]
       -- É um livro de rotinas para lidar com situações diversas, desde falta de comida até problemas psicológicos que podem surgir na viagem, como depressão, ansiedade e tédio. No índice você encontra um capítulo sobre "avarias graves à estrutura da espaçonave". {not ala_medica: Apesar de não saber de onde são aqueles destroços, é possível que sejam de algum lugar da própria espaçonave. "Isso pelo menos explicaria por que eu não encontrei ninguém aqui ainda."}
        {not ala_medica: Parece que existe uma sala de máquinas do outro lado da espaçonave, onde ficam os engenheiros de plantão, junto dos equipamentos, do maquinário, dos motores... praticamente tudo que faça as coisas se mexerem.}
        ** Em último caso[], quando não for possível recuperar os danos à espaçonave e a central de comunicação da Força tenha liberado a evacuação, a sala de máquinas dá acesso a um cômodo menor, na extrema ponta da ala direita. 
        -- É de onde são disparadas as cápsulas de evacuação, feitas para salvar os tripulantes. Um sistema de navegação calcula uma rota que leve a cápsula à terra, e um sistema de molas faz o lançamento. 
        ** Se acontece alguma coisa grave[] com a sala de máquinas, no entanto, as portas trancam e os sistemas se desligam. Você precisa fazer uma espécie de ligação direta no painel de controle do saguão central para conseguir abrir de novo a porta e poder entrar em uma das cápsulas.
        Antes de fechar o manual, três palavras ressoam na sua cabeça:
        "Em último caso". 
        *** [Voltar à gaveta]
        Você coloca o manual debaixo do braço e procura um pouco mais. Um dos últimos fichários diz respeito à criogenia usada para sustentar os tripulantes nessas viagens de longa distância. {memoria: Você já sabe que fazia parte da tripulação, mas sua memória vai até uns dois dias antes da missão, no máximo. Será que tem algo a ver com isso?}
            **** [Folhear fichário]
            Logo nas primeiras páginas há um alerta. 
            "O desligamento súbito de um indivíduo em sono criogênico acarreta, em 1 a cada 50 casos, perda de memória de curto e longo prazo, por um período que pode variar de algumas horas até alguns dias. Em situações mais raras, que ocorrem em 1 a cada 200 casos, o indivíduo pode sofrer parada cardíaca, acidente vascular cerebral (AVC) ou outras sequelas neurológicas.
            Exceto em caso de extrema emergência, é mandatório seguir o procedimento de rotina para um desligamento gradativo do sono criogênico."
            {memoria: Você respira fundo. "Eu devia me lembrar disso, não devia? Parece que estamos mesmo em emergência. Pelo menos não parece ter acontecido um dos casos mais graves."}
        -> gavetas


- (gavetas_esgotadas)

Você coloca o manual debaixo do braço, fecha as gavetas e sai da biblioteca. Caminha pelo dormitório e pelos corredores, absorvido em pensamentos e nas memórias que voltaram ao seu lugar. Pelo menos em parte.

* [Voltar à sala de comando] -> sala_de_comando_alterada

=== sala_de_comando_alterada ===

Chegando à sala de comando, você vai direto ao painel de controle, aquilo com luzes e botões, em que você bateu o pé mais cedo. 
{sala_inicial.tropeca: "Acho que em um dia normal isso fica mais longe do chão. É provável", você pensa, com alguma curiosidade de procurar por isso no manual, ressentido pelo machucado. Mas é melhor não perder tempo.}
* [Ler o manual]
    As instruções são claras, mas não deixa de ser um processo complicado nas condições atuais, e com destroços ocasionalmente se chocando contra as janelas da sala. Você precisa apertar aqueles botões em uma sequência específica, para reiniciar os sistemas travados por segurança e possibilitar a abertura manual das portas. "E o que acontece se eu errar?"
    Nada sobre isso. Talvez esteja em outra seção.
    A sequência correta é: 1, 3, 3, 7, 9, 6, 0.
    ** "Ok, vamos lá."
    
- (bo) // uma rotininha anti-distração, se acertar avança. aqui tem uma gambiarra de código, te explico depois, queria saber se tem como fazer de outro jeito.

+ \ {1,|1,|1,|1,} {3,|3,|3,|3,} {3,|3,|3,|3,} {7,|7,|7,|7,} {0,|0,|9,|9,} {6,|6,|6,|6,} {9|9|0|0}
    -- {-> bo_er | -> bo_ok}
+ \ {3,|0,|3,|0,} {3,|2,|3,|2,} {1,|3,|1,|3,} {2,|7,|2,|7,} {4,|9,|4,|9,} {9,|4,|9,|4,} {6|1|6|1}
    -- {-> bo_er | -> bo_er}
+ \ {1,|2,|1,|2,} {3,|2,|3,|2,} {3,|5,|3,|5,} {7,|4,|7,|4,} {9,|3,|9,|3,} {6,|6,|6,|6,} {0|1|0|1} 
    -- {-> bo_ok | -> bo_er}


- (bo_er) // "erro", quando você aperta errado

As luzes do painel se apagam por um breve momento, e se acendem outra vez.
"Acho que errei algum número."
Você olha mais uma vez no manual:
1, 3, 3, 7, 9, 6, 0.

+ "Mais uma vez." -> bo

- (bo_ok) 

Uma luz verde se acende no painel! Você vibra com a resposta.
E agora sua única alternativa é conferir pessoalmente se isso funcionou.

* [Ir para ala médica] -> ala_medica

=== sala_de_comando_normal ===

Na sala de comando você olha pela janela mais uma vez. Agora você já sabe de onde vêm os destroços, apesar de que parte de você preferia não saber.
* [Ir para biblioteca] -> dormitorio

=== ala_medica ===

Você chega na ala médica assim que vira a primeira esquina no corredor. {ala_medica_direto and biblioteca: |O lugar está um caos.}
{ala_medica_direto and biblioteca: | Parece que você está realmente sozinho nessa espaçonave, porque tudo indica que a tripulação precisou evacuar às pressas e não conseguiu te levar junto.}
{ala_medica_direto and biblioteca: Agora você entende que aquelas cabines na parede são cabines de sono criogênico. | Existem algumas cabines de sono criogênico junto às paredes, todas abertas. Uma delas ainda está ligada, ao que parece, com algumas luzes acesas. Você se aproxima e lê seu nome ali.}
* "Eles tentaram me acordar["] de qualquer jeito. Mas não deu tempo."
Sua hipótese sobre o motivo da perda de memória acaba de ser confirmada. Felizmente, parte dela já voltou. O suficiente para você saber que, se não tiveram tempo de te levar junto, é porque a situação está realmente preocupante. Não é certo o porquê de você ainda estar vivo.
Ou essa emergência foi um exagero ou algum sistema está aguentando muito bem.

- (ala_medica_opcoes)

* {sala_inicial.tropeca} {not ala_medica_direto.cuidou_do_machucado} "Agora consigo cuidar do machucado["]. Não sei o que vou precisar enfrentar com uma ferida suja{not dormitorio.cuidou_da_ferida: e exposta}. 
    
    Existem alguns suprimentos médicos à vista, em uma pequena mesa junto a uma das paredes da sala. {dormitorio.cuidou_da_ferida: Você tira o trapo manchado de sangue que usou para cobrir, e então|Primeiro você }limpa e desinfeta a ferida. Então enrola uma bandagem de gaze em volta.
    "Bem melhor." -> ala_medica_opcoes

{sala_de_maquinas_trancada and biblioteca: O lugar está praticamente vazio, depois da sua pequena experiência com vácuo espacial. O traje que você guardou está no armário. Agora você já sabe o que fazer.}

* {sala_de_maquinas_trancada and biblioteca} ["Outro pequeno passo para o homem..."] -> sala_de_maquinas

* {not sala_de_maquinas_trancada and biblioteca} [Avançar para sala de máquinas]
    "O problema deve ter sido aí na frente. Espero só que as cápsulas estejam funcionando", você pensa.
   - A porta para a sala de máquinas está trancada, mas através de uma pequena janela você consegue espiar lá dentro. 

* (espiando) "Deus..."
   - Alguma coisa muito grande explodiu ali dentro - e levou metade da sala junto. Talvez tenha sido um dos motores, não dá pra saber com a sala nesse estado. Pedaços do casco da espaçonave e outros objetos circulam pela sala, agora sem gravidade, invadida pelo espaço. 
    * Felizmente[...] parte da estrutura aguentou e não lançou a sala de evacuação junto pelo espaço, ou todos estariam perdidos. <>
    - Principalmente você.

* "Eles pensaram que a nave ia junto["]. Por isso evacuaram. Será que tinham razão?"
Um problema na sala de máquinas pode se espalhar aos poucos pelos sistemas, e se não levar tudo pelo espaço na hora, pelo menos pode desligar coisas importantes. Como o oxigênio. Quanto tempo ainda resta?

- Para avançar com a sala desse jeito você precisa de um traje espacial. Se os sistemas estiverem funcionando, a porta não vai sequer abrir sem que você esteja vestindo um. 

* "O meu deve estar por aqui["]. Se me lembro certo, ficavam em um dos armários dessa sala. Talvez nas gavetas perto das cabines de criogenia.
Que bom que a explosão não foi aqui.

- (procurando_traje) 

* [Procurar nas gavetas]
    Aqui ficam os objetos que precisam ser retirados antes de entrar em sono criogênio. Você encontra seu relógio e outros itens pessoais. É bom vê-los de novo, mas você não precisa de nada disso agora. -> procurando_traje
* [Procurar nos armários]
    "Aha!"
    Você encontra seu traje, com capacete e tanque de oxigênio. Parece que não sofreu nenhum dano, e felizmente sua tripulação não precisou dele por nenhuma razão.
    ** [Vestir traje]
    {dormitorio.casaco: Você tira o casaco e coloca de lado para vestir o traje.} Não dá para dizer que é confortável. Ainda assim, você se sente preenchido com confiança só de fechar os lacres e pressurizar o traje. 
    
- Agora não tem mais nada a ser feito senão pisar no cosmos frio e silencioso.


* {biblioteca.manual} ["Um pequeno passo para o homem..."] -> sala_de_maquinas


=== ala_medica_direto ===

Você chega na ala médica assim que vira a primeira esquina no corredor. O lugar está um caos.
A sensação é de que você está realmente sozinho nessa espaçonave, ou seja lá o que isso for. Ninguém em sã consciência deixaria uma enfermaria nesse estado em um dia comum. <>
* Tudo indica[] que a tripulação precisou evacuar às pressas e não conseguiu te levar junto.
- Existem algumas cabines abertas junto às paredes. Uma delas tem as luzes acesas. Você se aproxima e lê seu nome ali.

* "O quê?["]" é a primeira coisa que passa pela sua cabeça. Isso está cada vez mais estranho.

- De tudo que passa pela sua cabeça, como em um furacão, o que faz mais sentido, claro, é que você era membro da tripulação. Ninguém acorda no espaço sem querer. Alguma coisa fez com que você perdesse a memória, e talvez tenha ligação com essa cabine.

* (cuidou_do_machucado) {sala_inicial.tropeca} "Pelo menos posso cuidar do machucado["] agora. Não sei o que vou precisar enfrentar com uma ferida suja e exposta. 
    
    Existem alguns suprimentos médicos à vista, em uma pequena mesa junto a uma das paredes da sala. Primeiro você limpa e desinfeta a ferida. Então enrola uma bandagem de gaze em volta.
    "Bem melhor."
    
* Não tem muito mais o que fazer[] em uma ala médica vazia. Você olha para a porta do outro lado da sala. <>

- Está fechada, diferente de todas que viu até agora. 

* [Se aproximar da porta]
    Você se aproxima da porta. Ela não abre. Existe uma pequena janela na parte superior, por onde talvez dê para espiar do outro lado.
    ** [Espiar pela janela]
    "Deus..."
    -- Alguma coisa muito grande explodiu ali dentro - e levou metade da sala junto. Talvez tenha sido um dos motores, alguma máquina grande, não dá para saber com a sala nesse estado. Pedaços do casco da espaçonave e outros objetos circulam pela sala, agora sem gravidade, invadida pelo espaço. 
    ** Felizmente[...] parte da estrutura aguentou e não lançou todo o resto da espaçonave por aí.
    Você consegue ver que existe ainda uma outra sala depois, mas para chegar lá você precisaria de algum tipo de traje espacial pressurizado. 
   
- Deve ter algum por aqui, mas talvez seja uma ideia melhor conferir a tal biblioteca antes de se aventurar pelo cosmos. Ninguém vai à guerra sem munição nenhuma.

* [Voltar] -> sala_de_comando_normal
* (procurando_traje) [Procurar traje]
   Parte de você pensa que isso é uma péssima ideia. Mas uma parte maior decide tentar chegar àquela sala, de um jeito ou de outro. Você decide procurar por algum traje espacial na sala.
    ** [Procurar nas gavetas]
    Um relógio e alguns outros objetos de uso pessoal. É bom vê-los, mas você não precisa de nada disso agora. -> procurando_traje
    ** [Procurar nos armários]
    "Aha!"
    Você encontra um traje, com capacete e tanque de oxigênio. Parece que não sofreu nenhum dano, e felizmente ninguém precisou dele por nenhuma razão.
    *** [Vestir traje]
    {dormitorio.casaco: Você tira o casaco e coloca de lado para vestir o traje.} Não dá para dizer que é confortável. Ainda assim, você se sente preenchido com confiança só de fechar os lacres e pressurizar o traje. 
    
- Agora não tem mais nada a ser feito senão pisar no cosmos frio e silencioso. A não ser que você queira voltar atrás, claro.

* "Um pequeno passo para o homem..." -> sala_de_maquinas_trancada
* [Voltar]
    "Quer saber? Isso é uma pessima ideia mesmo", você pensa. Apesar de se sentir um pouco covarde, você se sente também muito sensato. 
    Depois de tirar o traje e guardá-lo de volta no armário, você se direciona de volta à sala anterior, onde acordou mais cedo. -> sala_de_comando_normal
   


=== sala_de_maquinas_trancada ===

"... e um grande salto para o nada."

Você se aproxima da porta e pressiona sua luva em um tipo de sensor. Nada acontece. Existe uma fenda repleta de cabos metálicos próximos à porta. Provavelmente você precisa se prender a um deles antes que a porta te permita passar para uma sala naquele estado.

* [Prender cabo no traje] 

- Você prende o cabo em um lugar específico para isso, na sua cintura. Agora deve funcionar.

* [Tentar abrir a porta]

- Assim que você pressiona sua luva contra o sensor, a porta se abre rapidamente. Talvez existisse algum sistema de isolamento entre as salas antes da explosão, para evitar que tudo voasse pelos ares com a despressurização.
Com algum arrependimento, você admite que não pensou bem nisso antes.
A porta anterior da ala médica se fecha rapidamente, mas o vácuo espacial puxa você, junto de suprimentos médicos, objetos, móveis de todos os tipos. Por pouco uma mesa não bate na sua cabeça. 
* Depois de alguns segundos[] de puro medo, parece que a pressão se estabiliza.

- Você só consegue pensar que ama aquele cabo metálico, que ama esse traje... experiências de quase-morte costumam ser assim mesmo.

* "Vamos lá, aos poucos."

- Se você já fez isso antes, você definitivamente não se lembra. A sensação de estar sem chão é forte.
Você se agarra aos restos da estrutura do casco da espaçonave para ir adiante, se empurrando aos poucos.
Até que chega à porta da sala. As luzes estão acesas, mas o vidro está embaçado demais para enxergar qualquer coisa. Parece que tem uma segunda porta logo depois. 
* "Provavelmente é uma cabine de despressurização.["] Não quero nunca mais passar por aquilo."

- Ao lado da porta existe um sensor.

* [Inspecionar]

- Não é como o outro. Parece ser um sensor de leitura. Mas o que ele precisa ler?
"Seja lá o que for, minha única chance de encontrar isso é na biblioteca. É melhor ir lá antes de acabar meu oxigênio ou qualquer coisa assim."

* [Voltar] 
    Você volta do mesmo jeito, se apoiando em qualquer coisa que encontrar pelo caminho. Ao fechar a porta da sala médica, a pressão volta aos poucos. 
    Felizmente, aos poucos: bem lá no fundo, você já tinha se preparado para cair no chão feito um saco de batatas. -> sala_de_comando_normal

=== sala_de_maquinas ===
{sala_de_maquinas_trancada: "... e outro grande salto para o nada." -> abrindo_de_novo | "... e um grande salto para o nada."} 

- (abrindo_sala) Você se aproxima da porta e pressiona sua luva em um tipo de sensor. Nada acontece. Existe uma fenda repleta de cabos metálicos próximos à porta. Provavelmente você precisa se prender a um deles antes que a porta te permita passar para uma sala naquele estado.

* [Prender cabo no traje] 

- Você prende o cabo em um lugar específico para isso, na sua cintura. Agora deve funcionar.

* [Tentar abrir a porta]

- Assim que você pressiona sua luva contra o sensor, a porta se abre rapidamente. Talvez existisse algum sistema de isolamento entre as salas antes da explosão, para evitar que tudo voasse pelos ares com a despressurização.
Com algum arrependimento, você admite que não pensou bem nisso antes.
A porta anterior da ala médica se fecha rapidamente, mas o vácuo espacial puxa você, junto de suprimentos médicos, objetos, móveis de todos os tipos. Por pouco uma mesa não bate na sua cabeça. 
* Depois de alguns segundos[] de puro medo, parece que a pressão se estabiliza. 
Você só consegue pensar que ama aquele cabo metálico, que ama esse traje... experiências de quase-morte costumam ser assim mesmo.

* "Vamos lá, aos poucos."

- Se você já fez isso antes, você definitivamente não se lembra. A sensação de estar sem chão é forte.
Você se agarra aos restos da estrutura do casco da espaçonave para ir adiante, se empurrando aos poucos.
Até que chega à porta da sala. As luzes estão acesas, mas o vidro está embaçado demais para enxergar qualquer coisa. Parece que tem uma segunda porta logo depois. 
* "Provavelmente é uma cabine de despressurização.["] Não quero nunca mais passar por aquilo."

- Ao lado da porta existe um sensor.

* [Inspecionar]

- Não é como o outro. Parece ser um sensor de leitura. Mas o que ele precisa ler?

* [Ler manual]
    Você pega o manual para procurar uma instrução. Não é difícil de encontrar. Para abrir a sala de evacuação é necessário pelo menos um tripulante com o traje espacial. Existe um padrão impresso no visor do capacete. 
    Basicamente, você só precisa olhar direto para o sensor e a primeira porta vai se abrir.
    ** [Olhar no sensor]
    Você se abaixa e olha para o sensor. A porta se abre.
        *** [Entrar] -> cabine_de_evacuacao


- (abrindo_de_novo) Agora você já sabe o que fazer. E pior: o que esperar.
Assim que você pressiona sua luva contra o sensor, a porta se abre rapidamente. Dessa vez você se segura. A força do vácuo é muito forte{sala_inicial.tropeca: e parece que seu braço machucado vai explodir}, mas logo a situação se normaliza.
* [Ir para cabine de evacuação]

- Você se aproxima da porta da cabine de evacuação. Ao lado dela, o sensor. Talvez no manual exista alguma coisa a respeito.

* [Ler manual]
    Você pega o manual para procurar uma instrução. Não é difícil de encontrar. Para abrir a sala de evacuação é necessário pelo menos um tripulante com o traje espacial. Existe um padrão impresso no visor do capacete. 
    Basicamente, você só precisa olhar direto para o sensor e a primeira porta vai se abrir.
    ** [Olhar no sensor]
    Você se abaixa e olha para o sensor. A porta se abre.
        *** [Entrar] -> cabine_de_evacuacao


=== cabine_de_evacuacao ===

Você entra na cabine de evacuação. A primeira porta se fecha e o espaço é pressurizado. Após alguns segundos, a segunda porta se abre.

* [Ir em frente]

- Não há mais o que fazer. Chegou a hora de dar um fim a esse sonho estranho, de um jeito ou de outro. Você conseguiu chegar na etapa final. Na sala existem 5 grandes espaços vazios, alinhados lado a lado. 
Entre eles, uma pequena cápsula, branca, laranja e azul. 

* [Se aproximar]

- Seu nome está escrito nela. Você aproxima seu capacete de mais um sensor, dessa vez em uma pequena bancada ao lado da cápsula, e o vidro se abre. 
Os sistemas são ligados e você percebe, em uma pequena tela, alguns números passando rapidamente.
"Deve estar calculando a rota."

* [Entrar na cápsula]

- Você entra, finalmente, na cápsula de evacuação. Parece muito natural. Você já treinou muito para essa situação, e mesmo que sua memória esteja um pouco esquisita ainda essa situação não é estranha.
O procedimento de rotina está no seu sangue.

* [Firmar aparelhos de segurança]

- Você se prende bem ao assento e firma todos os outros aparelhos de segurança. Puxando uma alavanca acima da sua cabeça o vidro é fechado e a pequena cápsula prepara seu ambiente para o momento final.
Os cálculos já terminaram. Você vê, na tela, as palavras "planeta Terra".

* [Voltar para casa]

- Você respira fundo e aperta o botão. 
Nada acontece.

* "Não, não, não!"

- Você espera mais alguns segundos, e nada.

* [Apertar o botão de novo]

- Você aproxima sua mão do botão, e de repente um som de travas se soltando invade seus ouvidos. Antes que possa reagir, a cápsula é alinhada em direção à rota planejada e o sistema de molas se ativa.
Com um impulso, você é lançado no vazio.
* O caminho de volta[], infelizmente, é tão longo quanto o caminho de ida. Uns poucos anos. Assim que você lançou a cápsula, a Força foi avisada. <>
- Agora eles sabem que você está voltando para casa, junto de todos os seus companheiros; apesar de com duas ou três horas de atraso.

* [Fechar os olhos]

- Você fecha os olhos. Por essa parte já passou antes. O sistema de criogenia da cápsula entra em ação. É melhor passar esses anos dormindo. Com sorte, vai estar tudo bem com o planeta quando chegar lá e ninguém vai precisar te acordar às pressas.
Apesar de que você merece o descanso.

-> END






