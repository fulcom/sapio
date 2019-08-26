# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "creating records"

# table Reviews
review_1 = Review.create!(rating: 1)
review_2 = Review.create!(rating: 2)
review_3 = Review.create!(rating: 3)
review_4 = Review.create!(rating: 4)
review_5 = Review.create!(rating: 5)

# table Subscriptions
silver = Subscription.create!(name:"silver", price:50 , description:"inclut cinémas, musées")
gold = Subscription.create!(name:"gold", price:150 , description:"inclut cinémas, musées, théâtres, concerts")
platinum = Subscription.create!(name:"platinum", price:300 , description:"tout inclus: cinéma, musée, théâtres, concerts et opéra")

# table Activities
 decouverte_beaubourg = Activity.create!(
  category:"musée",
  name:"Découverte de Beaubourg",
  description:"Le Centre Pompidou (Beaubourg) est un chef-d'oeuvre de l'architecture du XXème siècle situé dans le quartier animé et branché du Marais, à quelques minutes de la Tour Saint Jacques, de l'Hôtel de Ville et de la cathédrale Notre-Dame de Paris. Sa collection d'art moderne et contemporain est la plus grande d'Europe et attire des visiteurs du monde entier. Les expositions du Centre Pompidou se distinguent par la qualité de ses artistes et de son intelligente mise en scène.",
  photo_one:"../app/assets/images/decouverte_beaubourg1.jpg",
  photo_two:"../app/assets/images/decouverte_beaubourg2.jpg",
  photo_three:"../app/assets/images/decouverte_beaubourg3.jpg",
  start_date: 2019,8,30
  end_date: 2019,1,30
  avg_rating: 5,
  place:beaubourg,
  subscription: silver)

exposition_beaubourg = Activity.create!(
  category:"musée",
  name:"Préhistoire. Une énigme moderne",
  description:"À travers cette exposition inédite, le Centre Pompidou propose de revisiter la relation féconde qui unit la préhistoire à l’art moderne et contemporain. Dans ce grand moment de crise qu’incarne la modernité, des artistes incontournables comme Picasso, Miró mais aussi Cézanne, Klee, Giacometti, Ernst, Beuys, Klein, Dubuffet, Smithson, Penone… ont été hantés par la question de la préhistoire et ses origines fantasmées.",
  photo_one:"../app/assets/images/exposition_beaubourg1.jpg",
  photo_two:"../app/assets/images/exposition_beaubourg2.jpg",
  photo_three:"../app/assets/images/exposition_beaubourg3.jpg",
  start_date: 2019,5,8
  end_date: 2019,9,16
  avg_rating: 5,
  place: beaubourg,
  subscription: silver)

once_upon_a_time = Activity.create!(
  category:"cinema",
  name:"Once Upon A Time",
  description:"Quentin Tarantino’s Once Upon a Time... in Hollywood visits 1969 Los Angeles, where everything is changing, as TV star Rick Dalton (Leonardo DiCaprio) and his longtime stunt double Cliff Booth (Brad Pitt) make their way around an industry they hardly recognize anymore. The ninth film from the writer-director features a large ensemble cast and multiple storylines in a tribute to the final moments of Hollywood’s golden age.",
  photo_one:"../app/assets/images/cine_beaugrenelle1.jpg",
  photo_two:"",
  photo_three:"",
  start_date: 2019,8,26
  end_date: 2019,8,29
  avg_rating: 5,
  place: beaugrenelle,
  subscription: silver)

fast_and_furious = Activity.create!(
  category:"cinema",
  name:"Fast and Furious : Hobbs & Shaw",
  description:"Ever since hulking lawman Hobbs (Johnson), a loyal agent of America's Diplomatic Security Service, and lawless outcast Shaw (Statham), a former British military elite operative, first faced off in 2015’s Furious 7, the duo have swapped smack talk and body blows as they’ve tried to take each other down. But when cyber-genetically enhanced anarchist Brixton (Idris Elba) gains control of an insidious bio-threat that could alter humanity forever — and bests a brilliant and fearless rogue MI6 agent (The Crown’s Vanessa Kirby), who just happens to be Shaw’s sister — these two sworn enemies will have to partner up to bring down the only guy who might be badder than themselves.",
  photo_one:"",
  photo_two:"../app/assets/images/cine_beaugrenelle2.jpg",
  photo_three:"../app/assets/images/cine_beaugrenelle3.jpg",
  start_date: 2019,8,26
  end_date: 2019,8,27
  avg_rating: 5,
  place: beaugrenelle,
  subscription: silver)

casse_noisette = Activity.create!(
  category: "Opéra",
  name: "Casse-noisette",
  description: "Historiquement présentés en diptyque en 1892, Iolanta et Casse‑Noisette sont à nouveau réunis dans cette production de l’Opéra de Paris. Dans la mise en scène et les décors de Dmitri Tcherniakov, ils ne deviennent qu’une seule et même oeuvre : l’opéra comme prélude du ballet, le ballet comme résolution de l’opéra. La fille du roi René dont la cécité disparaît aux aurores de l’amour se retrouve dans Marie, jeune fille bien éloignée de la Clara de Marius Petipa. La chorégraphie du ballet, signée Arthur Pita, Édouard Lock et Sidi Larbi Cherkaoui, renforce les liens tissés entre les deux chefs-d’oeuvre de Tchaïkovski : de l’éveil de la sexualité découle le deuil de l’enfance.",
  photo_one: "../app/assets/images/casse_noisette_1",
  photo_two: "../app/assets/images/casse_noisette_2",
  photo_three: "../app/assets/images/casse_noisette_3",
  start_date: 2019,12,1
  end_date: 2019,12,30
  avg_rating: 5,
  place: garnier,
  subscription: platinum)

traviata = Activity.create!(
  category: "Opéra",
  name: "La Traviata",
  description: "En ouvrant son opéra par un prélude pour cordes d’une économie de moyens inédite, Verdi affirmait en 1853 sa volonté de bousculer les conventions et les normes. Là n’est pas la moindre des radicalités de son oeuvre : sa « Traviata » met implacablement à nu la violence d’une société qui prône la jouissance matérielle et finit par sacrifier une innocente victime sur l’autel de la morale bourgeoise. Simon Stone aime travailler au corps à corps les pièces du répertoire pour les entraîner vers des territoires plus intimes. Ce metteur en scène, qui compte parmi les plus remarqués au théâtre aujourd’hui, fait ses débuts très attendus à l’Opéra national de Paris.",
  photo_one: "../app/assets/images/traviata-1",
  photo_two: "../app/assets/images/traviata-2",
  photo_three: "../app/assets/images/traviata-3",
  start_date: 2019,8,1
  end_date: 2019,9,15
  avg_rating: 5,
  place: garnier,
  subscription: platinum)

jl_aubert = Activity.create!(
  category: "Concert",
  name: "Jean-Louis Aubert",
  description: "Ivre de rêve, Jean-Louis Aubert enfile les siens sur le fil de la réalité. Après la tournée phénomène des INSUS, il est revenu, sans prévenir et seul sur scène, au Théâtre de l’Œuvre à Paris « juste pour habiter ce petit joyau ». Suivant son instinct, il a enchainé tout l’automne, toujours secrètement et à guichets fermés, des théâtres, opéras, scènes nationales choisis pour leur beauté, leur son. Ce fut la tournée PRÉMICES. Ce printemps il revient avec une scénographie unique, un autre rêve qui l’habite depuis quinze ans et qui a demandé trois ans de tâtonnements et d’ajustements technologiques. Puis cet été il sera en plein air dans des théâtres antiques et lieux originaux choisis pour leur singularité. C’est la tournée PRÉMIXCES. C’est dans ce cadre qu’il annonce son désir de revenir au Bataclan pour une série de concerts exceptionnels à l’automne prochain. Il y installera sa nouvelle scénographie et revisitera ses titres incontournables, des perles plus rares ou encore de nouvelles chansons, PRÉMIXCES d’un nouvel album, lui aussi annoncé pour l’automne.",
  photo_one: "../app/assets/images/jl_aubert",
  photo_two: "../app/assets/images/bataclan",
  photo_three: "../app/assets/images/jl_aubert_1",
  start_date: 2019,8,20
  end_date: 2019,8,21
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
  start_date: 2019,9,1
  end_date: 2019,9,2
  avg_rating: 5,
  place: bataclan,
  subscription: gold)

docteur_miracle = Activity.create!(
  category: "Théâtre",
  name: "Le Docteur Miracle",
  description: "LE DOCTEUR MIRACLE
  Opéra-comique en un acte, sur un livret de Léon Battu et Ludovic Halévy et une musique de Charles Lecoca, créé aux Bouffes-Parisiens le 8 avril 1857. Quelques mois après l’ouverture des Bouffes-Parisiens, Jacques Offenbach organise en juillet 1856 un concours de composition qui fait grand bruit. Coup de publicité pour son établissement, la démarche reflète également les aspirations esthétiques du compositeur : rappeler le passé glorieux de l’opéra-comique français et permettre aux genres légers de garder une place de choix à Paris. Les finalistes sont appelés à écrire une partition sur un livret imposé : Le Docteur Miracle. L’argument s’inscrit dans la tradition des œuvres comiques du XVII siècle : un jeune militaire parvient, par le truchement d’un déguisement, à obtenir du Podestat de Padoue la main de sa fille Laurette. Rétrospectivement, le palmarès du concours prouve la clairvoyance du jury et la qualité de l’idée d’Offenbach : Georges Bizet et Charles Lecocq, deux figures appelées à régner sur l’opéra français dans la seconde partie du XIX° siècle, sortent vainqueurs ex aequo de l’épreuve. Si l’ouvrage de Bizet est aujourd’hui régulièrement joué, restait à redécouvrir celui de Lecocq, dont le jeune metteur en scène Pierre Lebon offrira une lecture particulièrement truculente. Coproduction Bru Zane France / Opéra de Tours / Opéra de Saint-Étienne Coréalisation Théâtre Marigny Décors et costumes réalisés par les ateliers de l’Opéra de Tours Sur une idée du Palazzetto Bru Zane",
  photo_one: "../app/assets/images/docteur_miracle",
  photo_two: "../app/assets/images/marigny_logo",
  photo_three: "../app/assets/images/marigny_salle",
  start_date: 2019,8,20
  end_date: 2019,8,21
  avg_rating: 5,
  place: marigny,
  subscription: gold)

funny_girl = Activity.create!(
  category: "Théâtre",
  name: "Funny Girl",
  description: "THE BROADWAY MUSICAL! Festif, fun, émouvant pour la première fois à Paris dans une nouvelle production. Le spectacle sera donné en anglais avec des surtitres en français. Tadaaaaaaa… C’est Christina Bianco qui prendra la suite de Barbra Streisand et interprétera le rôle de Fanny Brice dans la nouvelle production de Funny Girl au Théâtre Marigny. Elle en est très heureuse et nous également ! Réservez vite, il n’y aura pas de places pour tout le monde !",
  photo_one: "../app/assets/images/funny_girl",
  photo_two: "../app/assets/images/marigny_logo",
  photo_three: "../app/assets/images/marigny_salle",
  start_date: 2019,8,20
  end_date: 2019,9,30
  avg_rating: 5,
  place: marigny,
  subscription: gold)

# Users
alice = User.create!(
  first_name: "Alice",
  last_name: "Fabre",
  phone_number: "06 78 19 59 57",
  city: "Paris",
  email: "alice@gmail.com",
  password: "123456",
  photo: 'https://avatars0.githubusercontent.com/u/51875307?v=4')

charles = User.create!(
  first_name: "Charles",
  last_name: "Dieulefet",
  address: "29 rue Legendre",
  zip_code: "75017",
  city: "Paris",
  email: "charles@gmail.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/51363551?v=4")

maxime = User.create!(
  first_name: "Maxime",
  last_name: "Fulconis",
  city: "Paris",
  email: "maxime@gmail.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/49551009?v=4")

isabelle = User.create!(
  first_name: "Isabelle",
  last_name: "Leclaire",
  city: "Paris",
  email: "isabelle@gmail.com",
  password: "123456",
  photo: "https://avatars2.githubusercontent.com/u/49897862?v=4")

# Places
beaubourg = Place.create!(
  name: "Centre Pompidou",
  address: "Place Georges-Pompidou",
  city: "Paris",
  zip_code: "75004",
  access: "Métro: Rambuteau (ligne 11) Hôtel de Ville (lignes 1 et 11) Châtelet (lignes 1, 4, 7, 11 et 14) RER: Châtelet Les Halles (lignes A, B, D) Bus: 29, 38, 47, 75 Vélib: station n°4020, face 27, rue Quincampoix, station n°3014, face 34, rue Grenier Saint-Lazare, station n°3010, 46, rue Beaubourg Autolib: station 204, rue Saint-Martin, station 36, rue du Temple Parking: Centre Pompidou : accès au 31, rue Beaubourg")

marigny = Place.create!(
  name: "Théâtre Marigny",
  address: "Carré Marigny",
  city: "Paris",
  zip_code: "75008",
  access: "Métro: Ligne 1 Station Champs Elysées Clémenceau, Ligne 9 Station Franklin Roosevelt, Ligne 13 Station Champs Elysées Clémenceau Bus: Ligne 42 73 Station Champs Elysées Clémenceau, Ligne 32 80 Rond Point des Champs Elysées Vélib: Station N° 8025, 39 rue de Miromesnil, Station N° 8015, 4 rue Roquepine Station N° 8032, 27 avenue Matignon Parking: Parking INDIGO du Rond Point des Champs Elysées")

beaugrenelle = Place.create!(
  name: "Pathé Beaugrenelle",
  adress: "Centre commercial, 7 Rue Linois",
  city: "Paris",
  zip_code: "75015",
  access: "Métro: Ligne 10 - station Charles Michels, Ligne 6 - station Bir-Hakeim ou Dupleix RER: Ligne C - station Javel ou Avenue du Pdt Kennedy, Bus: Lignes 42, 70 et 88 - station Charles Michels Voiture: En bord de Seine, en face de la Maison de la Radio, à l’intersection de la rue Linois et du Quai de Grenelle. Parkings: Beaugrenelle 1  - 587 places Beaugrenelle 2  - 90 places")

bataclan = Place.create!(
  name: "Bataclan",
  address: "50 Boulevard Voltaire",
  city: "Paris",
  zip_code: "75011",
  access: "Métro: Oberkampf, lignes 5 et 9 Filles du Calvaire ligne 8 Bus: Oberkampf-Richard Lenoir, ligne 56 et 96 Vélib’: Station au 104 Boulevard Richard Lenoir Station au 1 rue du Grand Prieure Autolib’: Station au 110 Boulevard Richard Lenoir Parking: Parking Trois Bornes, 11 rue Trois Bornes Parking Alhambra, 50 rue de Malte")

garnier = Place.create!(
  name: "Palais Garnier",
  address: "Place de l’Opéra",
  city: "Paris",
  zip_code: "75009",
  access: "Métro: Opéra (lignes 3, 7 et :sunglasses: Chaussée d’Antin (lignes 7 et 9) Madeleine (lignes 8 et 14) RER: Auber (ligne A) Bus: Lignes : 20, 21, 22, 27, 29, 42, 52, 66, 68, 81, 95 Parking: Q-Park Edouard VII - Rue Bruno Coquatrix 75009 Paris (face au 23 Rue de Caumartin)")

puts "records created"
