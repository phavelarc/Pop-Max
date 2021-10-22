
class Movie {
  final String title;
  final String? genre;
  final String? age;
  final String imgPoster;
  final String overview;
  final double rating;
  final String? year;
  final int? minute;
  final List<Cast> casts;

  Movie({
    required this.title,
    this.genre,
    this.age,
    required this.imgPoster,
    required this.overview,
    required this.rating,
    this.year,
    this.minute,
    required this.casts,
  });

}


class Cast {
  final String name;
  final String image;

  Cast({required this.name, required this.image});
}

class TrendingCast{
  final String actorName;
  final String actorImage;

  TrendingCast({required this.actorName, required this.actorImage});
}

class TrendingDirector{
  final String directorName;
  final String directorImage;

  TrendingDirector({required this.directorName, required this.directorImage});
}

class Post{
  final String postName;
  final String postImage;
  final String postNews;
  bool? isLiked;
  bool? isSaved;

  Post({required this.postName, required this.postImage, required this.postNews, this.isLiked, this.isSaved});
}

var post =[
  Post(
    postName: "Round 6", 
    postImage: "assets/images/post/squid_game.jpg", 
    postNews: "   Round 6 quebrou todos os recordes e se tornou a maior série da história da Netflix. “Não vou dizer quem ganhou o jogo, mas posso dizer oficialmente que a Coreia ganhou a Netflix. Assistida por 111 milhões de lares, Round 6 é a minha maior série de todos os tempos”, publicou o perfil da Netflix Brasil no Twitter.",
  ),
  Post(
    postName: "Gavião Arqueiro", 
    postImage: "assets/images/post/hawkeye.jpg", 
    postNews: "   Hawkeye, série no Disney+, estreia em 24 de novembro e a série irá mostrar Cliff Barton (Jeremy Renner) atuando com Kate Bishop (Hailee Steinfeld), sua aprendiz nas HQs da Marvel.",
  ),
  Post(
    postName: "Batman", 
    postImage: "assets/images/post/batman.jpg", 
    postNews: "   The Batman: Trailer dá mais detalhes da motivação de Charada contra Batman de Robert Pattinson. O ator Paul Dano vai aparecer como Charada em The Batman, que está configurado para ser o principal vilão do filme da DC.",
  ),
  Post(
    postName: "Matrix Resurrections", 
    postImage: "assets/images/post/matrix.jpg", 
    postNews: '   Matrix 4: Após 18 anos desde Matrix: Revolutions, Neo e Trinity estão de volta no quarto capítulo da saga. Com grande expectativa desde o anúncio de seu nome na CinemaCon deste ano, enfim, foi divulgado oficialmente o trailer de Matrix Resurrections (ou "Matrix 4"), filme de uma franquia que marcou a história do gênero ficção científica.',
  ),
  Post(
    postName: "Viúva Negra", 
    postImage: "assets/images/post/black_widow.jpg", 
    postNews: "   Viúva Negra: Scarlett Johansson processa Disney por lançamento do filme no streaming. De acordo com equipe jurídica da atriz da Marvel, o combinado no contrato era que o filme fosse lançado apenas nos cinemas.",
  ),
  Post(
    postName: "Eternos", 
    postImage: "assets/images/post/eternals.jpg", 
    postNews: '   Eternos: Primeiras reações descrevem o filme da Marvel como "épico" e "o mais diferente" da franquia. Eternos é um dos filmes mais esperados do Universo Cinematográfico Marvel e, finalmente, estamos perto de seu lançamento – em 4 de novembro. A produção teve sua premiere na noite de segunda-feira (18) em em Los Angeles (Estados Unidos) e, com isso, sairam as primeiras reações (sem spoilers) ao filme da Marvel dirigido pela Chloé Zhao.',
  ),
  Post(
    postName: "Um Lugar Silencioso - Parte 2", 
    postImage: "assets/images/post/quiet_place2.jpg", 
    postNews: '  Um Lugar Silencioso - Parte II chega aos cinemas como uma experiência única de terror psicológico. Um Lugar Silencioso surpreendeu o público positivamente em 2018 e foi aclamado pela crítica por causa de sua atmosfera enervante, o que o tornou um dos filmes marcantes de terror psicológico da década.',
  ),
  Post(
    postName: "A Mulher na Janela", 
    postImage: "assets/images/post/woman_window.jpg", 
    postNews: '  A Mulher na Janela — nova produção de suspense no catálogo da Netflix — já está sendo considerada como uma das piores deste ano. Estrelado por Amy Adams, o filme fala sobre uma psicóloga que passa os dias confinada em casa por sofrer de agorafobia. Por isso, acaba desenvolvendo uma obsessão por seus vizinhos. Contudo, não demora para que ela presencie um crime brutal enquanto espia os outros apartamentos.',
  ),
  Post(
    postName: "Os Pequenos Vestígios", 
    postImage: "assets/images/post/little_things.jpg", 
    postNews: '   Três ganhadores do Oscar. Um crime a ser solucionado. Um suspeito à solta. Assim pode ser resumido Os Pequenos Vestígios, novo filme de drama criminal estrelado por Jared Leto, Denzel Washington e Rami Malek. A produção está fazendo sucesso nos Estados Unidos, tendo batido recordes de audiência.',
  ),
  Post(
    postName: "Duna", 
    postImage: "assets/images/post/duna.jpg", 
    postNews: '  Duna é um dos filmes mais aguardados pelo público em 2021 e recebeu uma ovação de 8 minutos de aplausos durante sua estreia mundial nesta sexta-feira (03) na 78ª edição do Festival Internacional de Cinema de Veneza – onde o filme é um dos grandes destaques da seleção de 2021.',
  ),
  Post(
    postName: "Cruella", 
    postImage: "assets/images/post/cruella.jpg", 
    postNews: '  Estrelado por Emma Stone e Emma Thompson, o longa-metragem tem referências ao movimento punk rock na Inglaterra em 1970. Cruella chegou aos cinemas e ao catálogo da Disney+ com Premier Access no dia 28 de maio. Repleto de easter-eggs de 101 Dálmatas e conexões com o universo da Disney.',
  ),
  Post(
    postName: "Godzilla VS Kong", 
    postImage: "assets/images/post/godzilla_kong.jpg", 
    postNews: '   Godzilla vs Kong mostra o embate clássico na história do cinema entre Godzilla e King Kong pela primeira vez no MonsterVerse – franquia de monstros da Warner e Legendary. O filme quebrou recordes em seu lançamento internacional, onde se tornou a maior estreia durante a pandemia, e ganhou sessões antecipadas nos cinemas do Brasil.',
  ),

];


var castmonth = [
  //CAST VENOM
  TrendingCast(actorName: "Tom Hardy", actorImage: "assets/images/venom/tom-hardy.jpg"),
  TrendingCast(actorName: "Naomie Harris", actorImage: "assets/images/venom/naomie-harris.jpg"),
  TrendingCast(actorName: "Woody Harrelson", actorImage: "assets/images/venom/woody-harrelson.jpg"),
  //CAST LAST DUEL
  TrendingCast(actorName: "Ben Affleck", actorImage: "assets/images/last_duel/ben-affleck.jpg"),
  TrendingCast(actorName: "Matt Damon", actorImage: "assets/images/last_duel/matt-damon.jpg"),
  TrendingCast(actorName: "Harriet Walter", actorImage: "assets/images/last_duel/harriet-walter.jpg"),
  //CAST 007
  TrendingCast(actorName: "Daniel Craig", actorImage: "assets/images/no_time_007/daniel-craig.jpg"),
  TrendingCast(actorName: "Christoph Waltz", actorImage: "assets/images/no_time_007/christoph-waltz.jpg"),
  TrendingCast(actorName: "Rami Malek", actorImage: "assets/images/no_time_007/rami-malek.jpg"),
  TrendingCast(actorName: "Lashana Lynch", actorImage: "assets/images/no_time_007/lashana-lynch.jpg"),
  //CAST HALLOWEEN KILLS
  TrendingCast(actorName: "Jamie Lee Curtis", actorImage: "assets/images/halloween_kills/jamie-lee-curtis.jpg"),
  TrendingCast(actorName: "Andi Matichak", actorImage: "assets/images/halloween_kills/andi-matichak.jpg"),
  TrendingCast(actorName: "Thomas Mann", actorImage: "assets/images/halloween_kills/thomas-mann.jpg"),
  //CAST CHERNOBYL
  TrendingCast(actorName: "Danila Kozlovskiy", actorImage: "assets/images/chernobyl/danila-kozlovsky.jpg"),
  TrendingCast(actorName: "Oksana Akinshina", actorImage: "assets/images/chernobyl/oksana-akinshina.jpg"),
  TrendingCast(actorName: "Ravshana Kurkova", actorImage: "assets/images/chernobyl/ravshana-kurkova.jpg"),
  //CAST SHANG CHI
  TrendingCast(actorName: "Simu Liu", actorImage: "assets/images/shang_chi/simu-liu.jpg"),
  TrendingCast(actorName: "Awkwafina", actorImage: "assets/images/shang_chi/awkwafina.jpg"),
  TrendingCast(actorName: "Meng'er Zhang", actorImage: "assets/images/shang_chi/menger-zhang.jpg"),
  TrendingCast(actorName: "Benedict Wong", actorImage: "assets/images/shang_chi/wong.jpg"),
  //CAST DUNA
  TrendingCast(actorName: "Timothée Chalamet", actorImage: "assets/images/duna/timothee-chalamet.jpg"),
  TrendingCast(actorName: "Oscar Isaac", actorImage: "assets/images/duna/oscar-isaac.jpg"),
  TrendingCast(actorName: "Josh Brolin", actorImage: "assets/images/duna/josh-brolin.jpg"),
  TrendingCast(actorName: "Jason Momoa", actorImage: "assets/images/duna/jason-momoa.jpg"),
  //CAST ESPIRITOS OBSCUROS
  TrendingCast(actorName: "Keri Russell", actorImage: "assets/images/antlers/keri-russell.jpg"),
  TrendingCast(actorName: "Jesse Plemons", actorImage: "assets/images/antlers/jesse-plemons.jpg"),
  TrendingCast(actorName: "Jeremy T. Thomas", actorImage: "assets/images/antlers/jeremy-t-thomas.jpg"),
  //CAST ETERNOS
  TrendingCast(actorName: "Angelina Jolie", actorImage: "assets/images/eternals/angelina-jolie.jpg"),
  TrendingCast(actorName: "Salma Hayek", actorImage: "assets/images/eternals/salma-hayek.jpg"),
  TrendingCast(actorName: "Kit Harington", actorImage: "assets/images/eternals/kit-harington.jpg"),
  TrendingCast(actorName: "Richard Madden", actorImage: "assets/images/eternals/richard-madden.jpg"),
  //CAST CASA GUCCI
  TrendingCast(actorName: "Adam Driver", actorImage: "assets/images/last_duel/adam-driver.jpg"),
  TrendingCast(actorName: "Lady Gaga", actorImage: "assets/images/house_of_gucci/lady-gaga.jpg"),
  TrendingCast(actorName: "Jared Leto", actorImage: "assets/images/house_of_gucci/jared-leto.jpg"),
  TrendingCast(actorName: "Al Pacino", actorImage: "assets/images/house_of_gucci/al-pacino.jpg"),
  //CAST HOMEM ARANHA
  TrendingCast(actorName: "Tom Holland", actorImage: "assets/images/spider_man/tom-holland.jpg"),
  TrendingCast(actorName: "Zendaya", actorImage: "assets/images/spider_man/zendaya.jpg"),
  TrendingCast(actorName: "Benedict Cumberbatch", actorImage: "assets/images/spider_man/benedict-cumberbatch.jpg"),
  TrendingCast(actorName: "Jacob Batalon", actorImage: "assets/images/spider_man/jacob-batalon.jpg"),
  TrendingCast(actorName: "Jon Favreau", actorImage: "assets/images/spider_man/jon-favreau.jpg"),
  TrendingCast(actorName: "Marisa Tomei", actorImage: "assets/images/spider_man/marisa-tomei.jpg"),
  //CAST MATRIX
  TrendingCast(actorName: "Keanu Reeves", actorImage: "assets/images/matrix/keanu-reeves.jpg"),
  TrendingCast(actorName: "Carrie-Anne Moss", actorImage: "assets/images/matrix/carrie-anne-moss.jpg"),
  TrendingCast(actorName: "Neil Patrick Harris", actorImage: "assets/images/matrix/neil-patrick-harris.jpg"),
  //CAST KINGSMAN
  TrendingCast(actorName: "Gemma Arterton", actorImage: "assets/images/kingsman/gemma-arterton.jpg"),
  TrendingCast(actorName: "Matthew Goode", actorImage: "assets/images/kingsman/matthew-goode.jpg"),
  TrendingCast(actorName: "Tom Hollander", actorImage: "assets/images/kingsman/tom-hollander.jpg"),
];

var directorsmonth =[
  TrendingDirector(directorName: "Scott Cooper", directorImage: "assets/images/directors/scott-cooper.jpg"),
  TrendingDirector(directorName: "Chloé Zhao", directorImage: "assets/images/directors/chloe-zhao.jpg"),
  TrendingDirector(directorName: "Denis Villeneuve", directorImage: "assets/images/directors/denis-villeneuve.jpg"),
  TrendingDirector(directorName: "Andy Serkis", directorImage: "assets/images/directors/andy-serkis.jpg"),
  TrendingDirector(directorName: "Jon Watts", directorImage: "assets/images/directors/jon-watts.jpg"),
  TrendingDirector(directorName: "Destin Daniel Cretton", directorImage: "assets/images/directors/destin-daniel-cretton.jpg"),
  TrendingDirector(directorName: "Ridley Scott", directorImage: "assets/images/directors/ridley-scott.jpg"),
  TrendingDirector(directorName: "Matthew Vaughn", directorImage: "assets/images/directors/matthew-vaughn.jpg"),
  TrendingDirector(directorName: "Lana Wachowski", directorImage: "assets/images/directors/lana-wachowski.jpg"),
];

var intheater = [
  Movie(
    title: "Venom: Tempo de Carnificina",
    genre: "Ação",
    age: "14",
    imgPoster: "assets/images/venom/venom.jpg",
    minute: 85,
    rating: 6.4,
    year: "01/10/2021",
    overview:
      "Em Venom - Tempo de Carnificina, o relacionamento entre Eddie e Venom está evoluindo. Buscando a melhor forma de lidar com a inevitável simbiose, esse dois lados descobrem como viver juntos e, de alguma forma, se tornarem melhores juntos do que separados.",
    casts: [
      Cast(name: "Tom Hardy", image: "assets/images/venom/tom-hardy.jpg"),
      Cast(name: "Woody Harrelson", image: "assets/images/venom/woody-harrelson.jpg"),
      Cast(name: "Michelle Williams", image: "assets/images/venom/michelle-williams.jpg"),
      Cast(name: "Naomie Harris", image: "assets/images/venom/naomie-harris.jpg"),
      Cast(name: "Reid Scott ", image: "assets/images/venom/reid-scott.jpg"),
      Cast(name: "Stephen Graham ", image: "assets/images/venom/stephen-graham.jpg"),
    ],
  ),
  Movie(
    title: "O Último Duelo",
    genre: "Drama",
    age: "16",
    imgPoster: "assets/images/last_duel/last_duel.jpg",
    minute: 162,
    rating: 7.7,
    year: "15/10/2021",
    overview:
      "O filme conta a história sobre o duelo entre o cavaleiro Jean de Carrouges e o escudeiro Jaques Le Gris, acusado de ter violado a esposa do cavaleiro. A luta, estabelecida pelo próprio rei da França, Carlos VI, marca o grande drama de vingança e crime do século XIV, que tem a esperança de ser resolvido somente após o combate. Baseado no romance homônimo de Eric Jager.",
    casts: [
      Cast(name: "Matt Damon", image: "assets/images/last_duel/matt-damon.jpg"),
      Cast(name: "Adam Driver", image: "assets/images/last_duel/adam-driver.jpg"),
      Cast(name: "Jodie Comer", image: "assets/images/last_duel/jodie-comer.jpg"),
      Cast(name: "Ben Affleck", image: "assets/images/last_duel/ben-affleck.jpg"),
      Cast(name: "Marton Csokas", image: "assets/images/last_duel/marton-csokas.jpg"),
      Cast(name: "Harriet Walter", image: "assets/images/last_duel/harriet-walter.jpg"),
    ],
  ),
  Movie(
    title: "007 - Sem Tempo Para Morrer",
    genre: "Ação",
    age: "14",
    imgPoster: "assets/images/no_time_007/no_time_007.jpg",
    minute: 163,
    rating: 7.7,
    year: "08/10/2021",
    overview:
      "O famoso espião James Bond deixou o serviço e está vivendo de forma calma e pacífica na Jamaica. Como tudo que é bom dura pouco, quando o enigmático Safin aparece com uma tecnologia perigosa, seu amigo da CIA, Felix Leiter, pede ajuda. Então, o antigo 007 precisa abandonar seu novo modo de vida para ingressar na missão.",
    casts: [
      Cast(name: "Daniel Craig", image: "assets/images/no_time_007/daniel-craig.jpg"),
      Cast(name: "Rami Malek", image: "assets/images/no_time_007/rami-malek.jpg"),
      Cast(name: "Léa Seydoux", image: "assets/images/no_time_007/lea-seydoux.jpg"),
      Cast(name: "Lashana Lynch", image: "assets/images/no_time_007/lashana-lynch.jpg"),
      Cast(name: "Ben Whishaw", image: "assets/images/no_time_007/ben-whishaw.jpg"),
      Cast(name: "Naomie Harris", image: "assets/images/venom/naomie-harris.jpg"),
    ],
  ),
  Movie(
    title: "Halloween Kills  –      O Terror Continua",
    genre: "Terror",
    age: "16",
    imgPoster: "assets/images/halloween_kills/halloween_kills.jpg",
    minute: 106,
    rating: 6.1,
    year: "15/10/2021",
    overview:
      "Depois de quatro décadas se preparando para enfrentar Michael Myers, Laurie Strode acredita que enfim venceu, porém, ela é surpreendida pelo retorno de seu grande inimigo.",
    casts: [
      Cast(name: "Jamie Lee Curtis", image: "assets/images/halloween_kills/jamie-lee-curtis.jpg"),
      Cast(name: "Judy Greer", image: "assets/images/halloween_kills/judy-greer.jpg"),
      Cast(name: "Jim Cummings", image: "assets/images/halloween_kills/jim-cummings.jpg"),
      Cast(name: "Andi Matichak", image: "assets/images/halloween_kills/andi-matichak.jpg"),
      Cast(name: "Will Patton", image: "assets/images/halloween_kills/will-patton.jpg"),
      Cast(name: "Thomas Mann", image: "assets/images/halloween_kills/thomas-mann.jpg"),
    ],
  ),
  Movie(
    title: "Chernobyl: O Filme",
    genre: "Drama",
    age: " ",
    imgPoster: "assets/images/chernobyl/chernobyl.jpg",
    minute: 136,
    rating: 5.0,
    year: "21/10/2021",
    overview:
      "O filme conta sobre a história de três profissionais que lutaram para evitar um problema ainda maior do que o causado na explosão da usina nuclear de Chernobyl, na Ucrânia Soviética em 1986.",
    casts: [
      Cast(name: "Danila Kozlovskiy", image: "assets/images/chernobyl/danila-kozlovsky.jpg"),
      Cast(name: "Oksana Akinshina", image: "assets/images/chernobyl/oksana-akinshina.jpg"),
      Cast(name: "Filipp Avdeev", image: "assets/images/chernobyl/filipp-avdeev.jpg"),
      Cast(name: "Ravshana Kurkova", image: "assets/images/chernobyl/ravshana-kurkova.jpg"),
      Cast(name: "Nikolay Kozak", image: "assets/images/chernobyl/nikolay-kozak.jpg"),
      Cast(name: "Igor Chernevich", image: "assets/images/chernobyl/igor-chernevich.jpg"),
    ],
  ),
  Movie(
    title: "Shang-Chi e a Lenda dos Dez Anéis",
    genre: "Ação",
    age: "12",
    imgPoster: "assets/images/shang_chi/shang_chi.jpg",
    minute: 132,
    rating: 7.9,
    year: "22/09/2021",
    overview:
      "Shang-Chi é um jovem chinês criado por seu pai em reclusão, sendo treinado em artes marciais. Quando ele tem a chance de entrar em contato com o resto do mundo, ele logo percebe que seu pai não é o humanitário que dizia ser e se vê obrigado a se rebelar.",
    casts: [
      Cast(name: "Simu Liu", image: "assets/images/shang_chi/simu-liu.jpg"),
      Cast(name: "Awkwafina", image: "assets/images/shang_chi/awkwafina.jpg"),
      Cast(name: "Meng'er Zhang", image: "assets/images/shang_chi/menger-zhang.jpg"),
      Cast(name: "Fala Chen", image: "assets/images/shang_chi/fala-chen.jpg"),
      Cast(name: "Florian Munteanu", image: "assets/images/shang_chi/florian-munteanu.jpg"),
      Cast(name: "Benedict Wong", image: "assets/images/shang_chi/wong.jpg"),
    ],
  ),
];

var soon = [
  Movie(
    title: "Duna",
    genre: "Aventura, Ficção",
    age: "14",
    imgPoster: "assets/images/duna/duna.jpg",
    minute: 155,
    rating: 8.3,
    year: "22/10/2021",
    overview:
      "Em um futuro distante, planetas são comandados por casas nobres que fazem parte de um império feudal intergalático. Paul Atreides é um jovem homem cuja família toma controle do planeta deserto Arrakis, também conhecido como Duna. Sendo a única fonte da especiaria melange, a substância mais importante do cosmos, Arrakis se prova ser um planeta nem um pouco fácil de governar.",
    casts: [
      Cast(name: "Timothée Chalamet", image: "assets/images/duna/timothee-chalamet.jpg"),
      Cast(name: "Rebecca Ferguson", image: "assets/images/duna/rebecca-ferguson.jpg"),
      Cast(name: "Oscar Isaac", image: "assets/images/duna/oscar-isaac.jpg"),
      Cast(name: "Josh Brolin", image: "assets/images/duna/josh-brolin.jpg"),
      Cast(name: "Stellan Skarsgård", image: "assets/images/duna/stellan-skarsgard.jpg"),
      Cast(name: "Jason Momoa", image: "assets/images/duna/jason-momoa.jpg"),
    ],
  ),
  Movie(
    title: "Espíritos Obscuros",
    genre: "Terror, Mistério",
    age: "16",
    imgPoster: "assets/images/antlers/antlers.jpg",
    minute: 99,
    rating: 0,
    year: "29/10/2021",
    overview:
      "Uma jovem professora descobre que o pai e irmão mais novo do seu aluno problemático escondem um segredo sobre-humano mortal. Tendo decidido tomar conta do menino, ela deve lutar pela sobrevivência dos dois contra horrores além da imaginação.",
    casts: [
      Cast(name: "Keri Russell", image: "assets/images/antlers/keri-russell.jpg"),
      Cast(name: "Jesse Plemons", image: "assets/images/antlers/jesse-plemons.jpg"),
      Cast(name: "Jeremy T. Thomas", image: "assets/images/antlers/jeremy-t-thomas.jpg"),
      Cast(name: "Graham Greene", image: "assets/images/antlers/graham-greene.jpg"),
      Cast(name: "Scott Haze", image: "assets/images/antlers/scott-haze.jpg"),
      Cast(name: "Rory Cochrane", image: "assets/images/antlers/rory-cochrane.jpg"),
    ],
  ),
  Movie(
    title: "Eternos",
    genre: "Ação, Ficção",
    age: "14",
    imgPoster: "assets/images/eternals/eternals.jpg",
    minute: 157,
    rating: 0,
    year: "05/11/2021",
    overview:
      "Abrangendo milhares de anos, 'Eternos' da Marvel Studios é uma história épica com um grupo de heróis imortais forçados a sair das sombras para se reunir contra os inimigos mais antigos da humanidade, os Deviantes.",
    casts: [
      Cast(name: "Angelina Jolie", image: "assets/images/eternals/angelina-jolie.jpg"),
      Cast(name: "Salma Hayek", image: "assets/images/eternals/salma-hayek.jpg"),
      Cast(name: "Kit Harington", image: "assets/images/eternals/kit-harington.jpg"),
      Cast(name: "Gemma Chan", image: "assets/images/eternals/gemma-chan.jpg"),
      Cast(name: "Richard Madden", image: "assets/images/eternals/richard-madden.jpg"),
      Cast(name: "Kumail Nanjiani", image: "assets/images/eternals/kumail-nanjiani.jpg"),
    ],
  ),
  Movie(
    title: "Casa Gucci",
    genre: "Ação, Ficção",
    age: "16",
    imgPoster: "assets/images/house_of_gucci/house-of-gucci.jpg",
    minute: 0,
    rating: 0,
    year: "25/11/2021",
    overview:
      "Casa Gucci é baseado na história de Patrizia Reggiani, ex-mulher de Maurizio Gucci, membro da família fundadora da marca italiana Gucci. Patrizia conspirou para matar o marido em 1995, contratando um matador de aluguel e outras três pessoas, incluindo o terapeuta. Ela foi considerada culpada e condenada a 29 anos de prisão.",
    casts: [
      Cast(name: "Adam Driver", image: "assets/images/last_duel/adam-driver.jpg"),
      Cast(name: "Lady Gaga", image: "assets/images/house_of_gucci/lady-gaga.jpg"),
      Cast(name: "Jared Leto", image: "assets/images/house_of_gucci/jared-leto.jpg"),
      Cast(name: "Al Pacino", image: "assets/images/house_of_gucci/al-pacino.jpg"),
      Cast(name: "Jeremy Irons", image: "assets/images/house_of_gucci/jeremy-irons.jpg"),
      Cast(name: "Jack Huston", image: "assets/images/house_of_gucci/jack-huston.jpg"),
      Cast(name: "Salma Hayek", image: "assets/images/eternals/salma-hayek.jpg"),
    ],
  ),
  Movie(
    title: "Homem-Aranha: Sem Volta para Casa",
    genre: "Ação, Fantasia",
    age: " ",
    imgPoster: "assets/images/spider_man/spider-man.jpg",
    minute: 0,
    rating: 0,
    year: "17/12/2021",
    overview:
      "Peter Parker precisará lidar com as consequências da sua identidade como aracnídeo ter sido revelada pela reportagem do Clarim Diário. Para isso, ele contará com a ajuda de MJ e Ned.",
    casts: [
      Cast(name: "Tom Holland", image: "assets/images/spider_man/tom-holland.jpg"),
      Cast(name: "Zendaya", image: "assets/images/spider_man/zendaya.jpg"),
      Cast(name: "Benedict Cumberbatch", image: "assets/images/spider_man/benedict-cumberbatch.jpg"),
      Cast(name: "Jacob Batalon", image: "assets/images/spider_man/jacob-batalon.jpg"),
      Cast(name: "Jon Favreau", image: "assets/images/spider_man/jon-favreau.jpg"),
      Cast(name: "Marisa Tomei", image: "assets/images/spider_man/marisa-tomei.jpg"),
    ],
  ),
  Movie(
    title: "Matrix Resurrections",
    genre: "Ação, Ficção",
    age: " ",
    imgPoster: "assets/images/matrix/matrix.jpg",
    minute: 140,
    rating: 0,
    year: "22/12/2021",
    overview:
      "Matrix 4 é o novo filme da franquia Matrix, continuando a saga de Neo em sua busca pela libertação das pessoas aprisionadas mentalmente pelas máquinas.",
    casts: [
      Cast(name: "Keanu Reeves", image: "assets/images/matrix/keanu-reeves.jpg"),
      Cast(name: "Carrie-Anne Moss", image: "assets/images/matrix/carrie-anne-moss.jpg"),
      Cast(name: "Jada Pinkett Smith", image: "assets/images/matrix/jada-pinkett-smith.jpg"),
      Cast(name: "Neil Patrick Harris", image: "assets/images/matrix/neil-patrick-harris.jpg"),
      Cast(name: "Christina Ricci", image: "assets/images/matrix/christina-ricci.jpg"),
      Cast(name: "Priyanka Chopra Jonas", image: "assets/images/matrix/priyanka-chopra-jonas.jpg"),
    ],
  ),
  Movie(
    title: "King’s Man: A Origem",
    genre: "Ação, Comédia",
    age: "16",
    imgPoster: "assets/images/kingsman/kingsman.jpg",
    minute: 0,
    rating: 0,
    year: "22/12/2021",
    overview:
      "Quando um grupo formado pelos piores tiranos e criminosos mais cruéis de todos os tempos planeja uma ameaça capaz de matar milhões de inocentes, um homem precisa se juntar ao recém-formado grupo King’s Man correr contra o tempo para tentar salvar a humanidade.",
    casts: [
      Cast(name: "Ralph Fiennes", image: "assets/images/kingsman/ralph-fiennes.jpg"),
      Cast(name: "Gemma Arterton", image: "assets/images/kingsman/gemma-arterton.jpg"),
      Cast(name: "Rhys Ifans", image: "assets/images/kingsman/rhys-ifans.jpg"),
      Cast(name: "Matthew Goode", image: "assets/images/kingsman/matthew-goode.jpg"),
      Cast(name: "Tom Hollander", image: "assets/images/kingsman/tom-hollander.jpg"),
      Cast(name: "Harris Dickinson", image: "assets/images/kingsman/harris-dickinson.jpg"),
    ],
  ),
];