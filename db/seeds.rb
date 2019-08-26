


casse_noisette = Activity.create!(
  category: "Opéra",
  name: "Casse-noisette",
  description: "Historiquement présentés en diptyque en 1892, Iolanta et Casse‑Noisette sont à nouveau réunis dans cette production de l’Opéra de Paris. Dans la mise en scène et les décors de Dmitri Tcherniakov, ils ne deviennent qu’une seule et même oeuvre : l’opéra comme prélude du ballet, le ballet comme résolution de l’opéra. La fille du roi René dont la cécité disparaît aux aurores de l’amour se retrouve dans Marie, jeune fille bien éloignée de la Clara de Marius Petipa. La chorégraphie du ballet, signée Arthur Pita, Édouard Lock et Sidi Larbi Cherkaoui, renforce les liens tissés entre les deux chefs-d’oeuvre de Tchaïkovski : de l’éveil de la sexualité découle le deuil de l’enfance.",
  photo_one: "../app/assets/images/casse_noisette_1",
  photo_two: "../app/assets/images/casse_noisette_2",
  photo_three: "../app/assets/images/casse_noisette_3",
  start_date: 01/12/2019,
  end_date: 30/12/2019,
  avg_rating: "Calcul auto",
  place: garnier,
  subscription: platinum)

traviata = Activity.create!(
  category: "Opéra",
  name: "La Traviata",
  description: "En ouvrant son opéra par un prélude pour cordes d’une économie de moyens inédite, Verdi affirmait en 1853 sa volonté de bousculer les conventions et les normes. Là n’est pas la moindre des radicalités de son oeuvre : sa « Traviata » met implacablement à nu la violence d’une société qui prône la jouissance matérielle et finit par sacrifier une innocente victime sur l’autel de la morale bourgeoise. Simon Stone aime travailler au corps à corps les pièces du répertoire pour les entraîner vers des territoires plus intimes. Ce metteur en scène, qui compte parmi les plus remarqués au théâtre aujourd’hui, fait ses débuts très attendus à l’Opéra national de Paris.",
  photo_one: "../app/assets/images/traviata-1",
  photo_two: "../app/assets/images/traviata-2",
  photo_three: "../app/assets/images/traviata-3",
  start_date: 01/08/2019,
  end_date: 15/09/2019,
  avg_rating: 5,
  place: garnier,
  subscription: platinum)

jl_aubert = Activity.create!(
  category: "Concert",
  name: "Jean-Louis Aubert",
  description: "Ivre de rêve, Jean-Louis Aubert enfile les siens sur le fil de la réalité.
    Après la tournée phénomène des INSUS, il est revenu, sans prévenir et seul sur scène, au Théâtre de l’Œuvre à Paris « juste pour habiter ce petit joyau ».
    Suivant son instinct, il a enchainé tout l’automne, toujours secrètement et à guichets fermés, des théâtres, opéras, scènes nationales choisis pour leur beauté, leur son. Ce fut la tournée PRÉMICES.
    Ce printemps il revient avec une scénographie unique, un autre rêve qui l’habite depuis quinze ans et qui a demandé trois ans de tâtonnements et d’ajustements technologiques.
    Puis cet été il sera en plein air dans des théâtres antiques et lieux originaux choisis pour leur singularité. C’est la tournée PRÉMIXCES.
    C’est dans ce cadre qu’il annonce son désir de revenir au Bataclan pour une série de concerts exceptionnels à l’automne prochain.
    Il y installera sa nouvelle scénographie et revisitera ses titres incontournables, des perles plus rares ou encore de nouvelles chansons, PRÉMIXCES d’un nouvel album, lui aussi annoncé pour l’automne.",
  photo_one: "../app/assets/images/jl_aubert",
  photo_two: "../app/assets/images/bataclan",
  photo_three: "../app/assets/images/jl_aubert_1",
  start_date: 20/08/2019,
  end_date: 21/08/2019,
  avg_rating: 5,
  place: bataclan,
  subscription: gold)

oh_sees = Activity.create!(
  category: "Concert",
  name: "OH SEES",
  description: "L’insaisissable John DWYER et son mythique OH SEES renversent les codes du Garage Rock et du Psychédélisme depuis 20 albums déjà. Une expérience live sans comparaison possible.",
  photo_one: "../app/assets/images/oh_sees",
  photo_two: "../app/assets/images/bataclan",
  photo_three: "../app/assets/images/oh_sees_1",
  start_date: 01/09/2019,
  end_date: 02/09/2019,
  avg_rating: 5,
  place: bataclan,
  subscription: gold)

= Activity.create!(
  category: "Théâtre",
  name: "",
  description: "",
  photo_one: "../app/assets/images/",
  photo_two: "../app/assets/images/",
  photo_three: "../app/assets/images/",
  start_date: 20/08/2019,
  end_date: 21/08/2019,
  avg_rating: 5,
  place: marigny,
  subscription: gold)

= Activity.create!(
  category: "",
  name: "",
  description: "",
  photo_one: "../app/assets/images/",
  photo_two: "../app/assets/images/",
  photo_three: "../app/assets/images/",
  start_date: 20/08/2019,
  end_date: 21/08/2019,
  avg_rating: 5,
  place: ,
  subscription: )
