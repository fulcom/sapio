# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Creating records..."

# table Reviews
review_1 = Review.create!(rating: 1)
review_2 = Review.create!(rating: 2)
review_3 = Review.create!(rating: 3)
review_4 = Review.create!(rating: 4)
review_5 = Review.create!(rating: 5)

# table Subscriptions
silver = Subscription.create!(name:"silver", price:50, description:"abonnement mensuel incluant cinémas, musées")
gold = Subscription.create!(name:"gold", price:150, description:"abonnement mensuel incluant cinémas, musées, théâtres, concerts")
platinum = Subscription.create!(name:"platinum", price:300, description:"abonnement mensuel incluant: cinémas, musées, théâtres, concerts et opéras")

# table Activities
 presentation_collections_modernes = Activity.create!(
  category:"Musée",
  name:"Présentation des collections modernes 1905 - 1965",
  description:"À partir du 27 mai 2015 jusqu'au 31 décembre 2019, le Centre Pompidou dévoile une nouvelle présentation de ses collections modernes, de 1905 à 1965. Ce parcours profondément renouvelé renoue avec une progression chronologique marquée par de grands jalons historiques. Il offre au visiteur de suivre le fil des figures, des œuvres et des mouvements qui ont écrit l’art moderne, en compagnie d’autres passeurs qui ont contribué à faire l’histoire de la modernité.",
  start_date: 2015,5,27,
  end_date: 2019,12,31,
  avg_rating: 5,
  place:beaubourg,
  subscription: silver)
decouverte_beaubourg.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566850910/Sapio/Presentation-collections-modernes-1905-1965_Beaubourg1.jpg"
decouverte_beaubourg.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566851740/Sapio/Presentation-collections-modernes-1905-1965_Beaubourg2.jpg"
decouverte_beaubourg.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566851905/Sapio/Presentation-collections-modernes-1905-1965_Beaubourg3.jpg"
decouverte_beaubourg.save

exposition_beaubourg = Activity.create!(
  category:"Musée",
  name:"Préhistoire. Une énigme moderne",
  description:"À travers cette exposition inédite, le Centre Pompidou propose de revisiter la relation féconde qui unit la préhistoire à l’art moderne et contemporain. Dans ce grand moment de crise qu’incarne la modernité, des artistes incontournables comme Picasso, Miró mais aussi Cézanne, Klee, Giacometti, Ernst, Beuys, Klein, Dubuffet, Smithson, Penone… ont été hantés par la question de la préhistoire et ses origines fantasmées.",
  start_date: 2019,5,8,
  end_date: 2019,9,16,
  avg_rating: 5,
  place: beaubourg,
  subscription: silver)

exposition_beaubourg.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852329/Sapio/Prehistoire.-Une-enigme-moderne_Beaubourg1.jpg"
exposition_beaubourg.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852445/Sapio/Prehistoire.-Une-enigme-moderne_Beaubourg2.jpg"
exposition_beaubourg.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852231/Sapio/Prehistoire.-Une-enigme-moderne_Beaubourg3.jpg"
exposition_beaubourg.save

once_upon_a_time_in_Hollywood = Activity.create!(
  category:"Cinema",
  name:"Once Upon A Time",
  description:"Avec Once Upon a Time in Hollywood, Tarantino convertit une nouvelle fois l'essai, et montre (contre son gré?) de vrais signes de maturité. Lettre d'amour à une époque fantasmée, cette série de digressions souvent humoristiques laisse infuser une mélancolie nouvelle dans sa filmographie. Un scénario plein d'humour, de nostalgie et de suspense, une reconstitution phénoménale du Los Angeles de la fin des années 60, une manière inouïe de mélanger personnages fictifs et réels.",
  start_date: 2019,8,26,
  end_date: 2019,8,29,
  avg_rating: 5,
  place: beaugrenelle,
  subscription: silver)

once_upon_a_time.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852608/Sapio/Once-upon_a_time_in_hollywood_Cine1.jpg"
once_upon_a_time.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852702/Sapio/Once-upon_a_time_in_hollywood_Beaugrenelle2.jpg"
once_upon_a_time.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852784/Sapio/Once-upon_a_time_in_hollywood_Beaugrenelle3.jpg"
once_upon_a_time.save

fast_and_furious = Activity.create!(
  category:"Cinema",
  name:"Fast and Furious : Hobbs & Shaw",
  description:"Depuis que Hobbs et Shaw se sont affrontés, les deux hommes font tout pour se nuire l'un à l'autre. Mais lorsque Brixton, un anarchiste génétiquement modifié, met la main sur une arme de destruction massive après avoir battu le meilleur agent du MI6 qui se trouve être la soeur de Shaw. Les deux ennemis de longue date vont devoir alors faire équipe pour faire tomber le seul adversaire capable de les anéantir.",
  start_date: 2019,8,26,
  end_date: 2019,8,27,
  avg_rating: 5,
  place: beaugrenelle,
  subscription: silver)

fast_and_furious.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852867/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle1.jpg"
fast_and_furious.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852965/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle2.jpg"
fast_and_furious.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853021/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle3.jpg"
fast_and_furious.save


casse_noisette = Activity.create!(
  category: "Opéra",
  name: "Casse-noisette",
  description: "Historiquement présentés en diptyque en 1892, Iolanta et Casse‑Noisette sont à nouveau réunis dans cette production de l’Opéra de Paris. Dans la mise en scène et les décors de Dmitri Tcherniakov, ils ne deviennent qu’une seule et même oeuvre : l’opéra comme prélude du ballet, le ballet comme résolution de l’opéra. La fille du roi René dont la cécité disparaît aux aurores de l’amour se retrouve dans Marie, jeune fille bien éloignée de la Clara de Marius Petipa.",
  start_date: 2019,12,1,
  end_date: 2019,12,30,
  avg_rating: 5,
  place: garnier,
  subscription: platinum)

casse_noisette.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853102/Sapio/Casse_noisette_opera1.jpg"
casse_noisette.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853198/Sapio/Casse_noisette_opera2.jpg"
casse_noisette.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853304/Sapio/Casse_noisette_opera3.jpg"
casse_noisette.save

traviata = Activity.create!(
  category: "Opéra",
  name: "La Traviata",
  description: "En ouvrant son opéra par un prélude pour cordes d’une économie de moyens inédite, Verdi affirmait en 1853 sa volonté de bousculer les conventions et les normes. Là n’est pas la moindre des radicalités de son oeuvre : sa « Traviata » met implacablement à nu la violence d’une société qui prône la jouissance matérielle et finit par sacrifier une innocente victime sur l’autel de la morale bourgeoise. Simon Stone aime travailler au corps à corps les pièces du répertoire pour les entraîner vers des territoires plus intimes.",
  start_date: 2019,8,1,
  end_date: 2019,9,15,
  avg_rating: 5,
  place: garnier,
  subscription: platinum)

traviata.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853407/Sapio/La_traviata_opera1.jpg"
traviata.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853486/Sapio/La_traviata_opera2.jpg"
traviata.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853546/Sapio/La_traviata_opera3.jpg"
traviata.save


jl_aubert = Activity.create!(
  category: "Concert",
  name: "Jean-Louis Aubert",
  description: "Ivre de rêve, Jean-Louis Aubert enfile les siens sur le fil de la réalité. Après la tournée phénomène des INSUS, il est revenu, sans prévenir et seul sur scène, au Théâtre de l’Œuvre à Paris « juste pour habiter ce petit joyau ». Ce printemps il revient avec une scénographie unique, un autre rêve qui l’habite depuis quinze ans. Cet été il sera en plein air dans des théâtres antiques. C’est la tournée PRÉMIXCES. C’est dans ce cadre qu’il annonce son désir de revenir au Bataclan pour une série de concerts exceptionnels à l’automne prochain.",
  start_date: 2019,8,20,
  end_date: 2019,8,21,
  avg_rating: 5,
  place: bataclan,
  subscription: gold)

jl_aubert.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853635/Sapio/Jean-louis-aubert-en-concert-au-bataclan-de-paris_concert1.jpg"
jl_aubert.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853696/Sapio/Jean-louis-aubert-en-concert-au-bataclan-de-paris_concert2.jpg"
jl_aubert.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853782/Sapio/Jean-louis-aubert-en-concert-au-bataclan-de-paris_concert3.jpg"
jl_aubert.save

oh_sees = Activity.create!(
  category: "Concert",
  name: "OH SEES",
  description: "Quand John Dwyer et sa clique déboule dans la Creuse, c’est pas vraiment pour acheter du terrain. Vingt ans que ces furieux partent et reviennent à San Francisco pour enregistrer album sur album, entre deux tournées. Deux batteries sur scène et une énergie à faire pâlir les apprentis rockeurs qui craignent trop la sueur. Oh Sees est finalement l’incarnation idéale de cette première programmation Check-in : rock jusqu’à la moelle, sans concession et généreuse.",
  start_date: 2019,9,1,
  end_date: 2019,9,2,
  avg_rating: 5,
  place: bataclan,
  subscription: gold)

oh_sees.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853913/Sapio/Oh_sees_concert1.jpg"
oh_sees.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854062/Sapio/Oh_sees_concert2.jpg"
oh_sees.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854154/Sapio/Oh_sees_concert3.jpg"
oh_sees.save

docteur_miracle = Activity.create!(
  category: "Théâtre",
  name: "Le Docteur Miracle",
  description: "Opéra-comique en un acte, sur un livret de Léon Battu et Ludovic Halévy et une musique de Charles Lecoca, créé aux Bouffes-Parisiens le 8 avril 1857. Quelques mois après l’ouverture des Bouffes-Parisiens, Jacques Offenbach organise en juillet 1856 un concours de composition qui fait grand bruit. Coup de publicité pour son établissement, la démarche reflète également les aspirations esthétiques du compositeur : rappeler le passé glorieux de l’opéra-comique français et permettre aux genres légers de garder une place de choix à Paris.",
  start_date: 2019,8,20,
  end_date: 2019,8,21,
  avg_rating: 5,
  place: marigny,
  subscription: gold)

docteur_miracle.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854245/Sapio/Dr_Miracle_theatre1.jpg"
docteur_miracle.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854329/Sapio/Dr_miracle_theatre2.jpg"
docteur_miracle.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854410/Sapio/Dr_miracle_theatre3.jpg"
docteur_miracle.save

funny_girl = Activity.create!(
  category: "Théâtre",
  name: "Funny Girl",
  description: "THE BROADWAY MUSICAL! Festif, fun, émouvant pour la première fois à Paris dans une nouvelle production. Le spectacle sera donné en anglais avec des surtitres en français. Tadaaaaaaa… C’est Christina Bianco qui prendra la suite de Barbra Streisand et interprétera le rôle de Fanny Brice dans la nouvelle production de Funny Girl au Théâtre Marigny. Elle en est très heureuse et nous également ! Réservez vite, il n’y aura pas de places pour tout le monde !",
  start_date: 2019,8,20,
  end_date: 2019,9,30,
  avg_rating: 5,
  place: marigny,
  subscription: gold)

funny_girl.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854520/Sapio/Funny_girl_theatre1.jpg"
funny_girl.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854660/Sapio/Funny_girl_theatre2.jpg"
funny_girl.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854782/Sapio/Funny_girl_marigny_theatre3.jpg"
funny_girl.save

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
  access: "Métro: Ligne 11 - Rambuteau, Lignes 1 et 11 - Hôtel de Ville, Lignes 1, 4, 7, 11 et 14 - Châtelet RER: Châtelet Les Halles (lignes A, B, D) Bus: 29, 38, 47, 75 Vélib: station n°4020, face 27, rue Quincampoix, station n°3014, face 34, rue Grenier Saint-Lazare, station n°3010, 46, rue Beaubourg Autolib: station 204, rue Saint-Martin, station 36, rue du Temple Parking: Centre Pompidou : accès au 31, rue Beaubourg")

marigny = Place.create!(
  name: "Théâtre Marigny",
  address: "Carré Marigny",
  city: "Paris",
  zip_code: "75008",
  access: "Métro: Ligne 1 - Station Champs Elysées Clémenceau, Ligne 9 - Station Franklin Roosevelt, Ligne 13 - Station Champs Elysées Clémenceau Bus: Ligne 42 73 Station Champs Elysées Clémenceau, Ligne 32 80 Rond Point des Champs Elysées Vélib: Station N° 8025, 39 rue de Miromesnil, Station N° 8015, 4 rue Roquepine Station N° 8032, 27 avenue Matignon Parking: Parking INDIGO du Rond Point des Champs Elysées")

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
  access: "Métro: Lignes 5 et 9 - Oberkampf, Ligne 8 - Filles du Calvaire Bus: Oberkampf-Richard Lenoir, ligne 56 et 96 Vélib’: Station au 104 Boulevard Richard Lenoir Station au 1 rue du Grand Prieure Autolib’: Station au 110 Boulevard Richard Lenoir Parking: Parking Trois Bornes, 11 rue Trois Bornes Parking Alhambra, 50 rue de Malte")

garnier = Place.create!(
  name: "Palais Garnier",
  address: "Place de l’Opéra",
  city: "Paris",
  zip_code: "75009",
  access: "Métro: Lignes 3,7 et 8 - Opéra  lignes 7 et 9 - Chaussée d'Antin Lignes 8 et 14 - Madeleine RER: Auber (ligne A) Bus: Lignes : 20, 21, 22, 27, 29, 42, 52, 66, 68, 81, 95 Parking: Q-Park Edouard VII - Rue Bruno Coquatrix 75009 Paris (face au 23 Rue de Caumartin)")

puts "...records created!"
