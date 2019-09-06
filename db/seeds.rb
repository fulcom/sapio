# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ActBooking.destroy_all
puts "actbooking done"
Favorite.detroy_all
Activity.destroy_all
puts "activity done"
Place.destroy_all
puts "place done"
SubsBooking.destroy_all
puts "subsbooking done"
Subscription.destroy_all
puts "subscription done"




puts "Creating records..."

# Places : Musée, Cinéma, Théâtre, Concert, Opéra

beaubourg = Place.create!(
  name: "Centre Pompidou",
  address: "Place Georges-Pompidou",
  city: "Paris",
  country: "France",
  zip_code: "75004",
  access: "Métro: Ligne 11 - Rambuteau, Lignes 1 et 11 - Hôtel de Ville, Lignes 1, 4, 7, 11 et 14 - Châtelet RER: Châtelet Les Halles (lignes A, B, D) Bus: 29, 38, 47, 75 Vélib: station n°4020, face 27, rue Quincampoix, station n°3014, face 34, rue Grenier Saint-Lazare, station n°3010, 46, rue Beaubourg Autolib: station 204, rue Saint-Martin, station 36, rue du Temple Parking: Centre Pompidou : accès au 31, rue Beaubourg")

musee_art_moderne = Place.create!(
  name: "Musée d'Art moderne",
  address: "12-14 avenue de New York",
  city: "Paris",
  country: "France",
  zip_code: "75016",
  access: "Métro: ligne 9 - Arrêt Alma-Marceau ou Iéna, Bus : Lignes 32 (Iéna), 42 (Alma-Marceau), 72 (Musée d'Art moderne), 80 (Alma-Marceau), 82 (Iéna) et 92 (Alma-Marceau), Station Vélib': 45 avenue Marceau ou 3 avenue Bosquet")

musee_clemenceau = Place.create!(
  name: "Musée Clémenceau",
  address: "8 rue Benjamin Franklin",
  city: "Paris",
  country: "France",
  zip_code: "75016",
  access: "Métro: Ligne 6 - Passy, Trocadéro, Bus: 22, 32, 63, 72, Velib’: rue de Passy")

musee_curie = Place.create!(
  name: "Musée Curie",
  address: "1 rue Pierre et Marie Curie",
  city: "Paris",
  country: "France",
  zip_code: "75005",
  access: "Métro: Ligne 7 - Place Monge, Ligne 10 - Cardinal Lemoine RER: B, Bus : 21, 24, 27, 38, 75, 82, 84 et 89 Parking : 18/19, rue Soufflot")

musee_guimee = Place.create!(
  name: "Musée Guimée",
  address: "6 place d'Iéna",
  city: "Paris",
  country: "France",
  zip_code: "75016",
  access: "Métro: Ligne 9 - Iéna, Ligne 6 - Boissière, Bus: Iéna (63, 82, 32) ou Kléber-Boissière (30, 22) Vélib’: 4 Rue de Longchamp (n° 16007) ou 1 Rue Galilée (n° 16008).")

institut_du_monde_arabe = Place.create!(
  name: "Institut du Monde Arabe",
  address: "1 rue des Fossés-Saint-Bernard",
  city: "Paris",
  country: "France",
  zip_code: "75005",
  access: "Métro: Ligne 7 - Jussieu, Ligne 10 - Cardinal Lemoine, Bus: Lignes 24, 63, 67, 86, 87, 89 Parking: Maubert Collège des Bernardins, 39, bd Saint-Germain 75005, 01 43 26 97 01")

musee_du_fumeur = Place.create!(
  name: "Musée du Fumeur",
  address: "7 Rue Pache",
  city: "Paris",
  country: "France",
  zip_code: "75011",
  access: "Métro: Ligne 9 - Voltaire, RER Gare de Lyon, Bus: Lignes 46, 56, 61, 69")

musee_grevin = Place.create!(
  name: "Musée Grévin",
  address: "10 Boulevard Montmartre",
  city: "Paris",
  country: "France",
  zip_code: "75009",
  access: "Métro: Lignes 3, 8 et 9 - Grands Boulevards ou Bourse, Bus: Lignes 20, 39, 48, Parking: Indigo car park - 31B Rue Vivienne ou Chauchat Drouot")

musee_orsay = Place.create!(
  name: "Musée d'Orsay",
  address: "1 Rue de la Légion d'Honneur",
  city: "Paris",
  country: "France",
  zip_code: "75007",
  access: "Métro: Ligne 12, Train: L; Bus: 48, 68, 69, 72, 73; RER: C, Parking: Carrousel du Louvre, Bac Montalembert")

 musee_marmottan = Place.create!(
  name: "Musée Marmottan Monet",
  address: "2 rue Louis-Boilly ",
  city: "Paris",
  country: "France",
  zip_code: "75016",
  access: "Métro: Ligne 9 - La Muette ou Ranelagh  RER: C - Boulainvilliers  Bus: Ligne 22, 32, 52, 63  Parking: Vinci Park Passy 78, rue de Passy, 75016 Paris")

beaugrenelle = Place.create!(
  name: "Pathé Beaugrenelle",
  address: "7 Rue Linois",
  city: "Paris",
  country: "France",
  zip_code: "75015",
  access: "Métro: Ligne 10 - station Charles Michels, Ligne 6 - station Bir-Hakeim ou Dupleix RER: Ligne C - station Javel ou Avenue du Pdt Kennedy, Bus: Lignes 42, 70 et 88 - station Charles Michels Voiture: En bord de Seine, en face de la Maison de la Radio, à l’intersection de la rue Linois et du Quai de Grenelle. Parkings: Beaugrenelle 1  - 587 places Beaugrenelle 2  - 90 places")

mk2_odeon = Place.create!(
  name: "MK2 Odéon",
  address: "113 bd Saint Germain",
  city: "Paris",
  country: "France",
  zip_code: "75006",
  access: "Métro: Lignes 3, 4, 9, 10, 13, Mabillon RER: B, C, Bus: Lignes 12, 58, 171, 276, 378, ")

ugc_les_halles = Place.create!(
  name: "UGC Les Halles",
  address: "101 rue Berger",
  city: "Paris",
  country: "France",
  zip_code: "75001",
  access: "Métro: Lignes 1, 3, 4 RER: A, B, D  Train: J et L, Bus: Lignes 24, 29, 39, 58, 72")

madeleine = Place.create!(
  name: "Théâtre de la Madeleine",
  address: "19 Rue de Surène",
  city: "Paris",
  country: "France",
  zip_code: "75008",
  access: "Métro: Lignes 8, 12, 14 - Madeleine Bus: lignes 32, 42, 45, 94, 24")

marigny = Place.create!(
  name: "Théâtre Marigny",
  address: "1 avenue de Marigny",
  city: "Paris",
  country: "France",
  zip_code: "75008",
  access: "Métro: Ligne 1 - Station Champs Elysées Clémenceau, Ligne 9 - Station Franklin Roosevelt, Ligne 13 - Station Champs Elysées Clémenceau Bus: Ligne 42 73 Station Champs Elysées Clémenceau, Ligne 32 80 Rond Point des Champs Elysées Vélib: Station N° 8025, 39 rue de Miromesnil, Station N° 8015, 4 rue Roquepine Station N° 8032, 27 avenue Matignon Parking: Parking INDIGO du Rond Point des Champs Elysées")

bataclan = Place.create!(
  name: "Bataclan",
  address: "50 Boulevard Voltaire",
  city: "Paris",
  country: "France",
  zip_code: "75011",
  access: "Métro: Lignes 5 et 9 - Oberkampf, Ligne 8 - Filles du Calvaire Bus: Oberkampf-Richard Lenoir, ligne 56 et 96 Vélib’: Station au 104 Boulevard Richard Lenoir Station au 1 rue du Grand Prieure Autolib’: Station au 110 Boulevard Richard Lenoir Parking: Parking Trois Bornes, 11 rue Trois Bornes Parking Alhambra, 50 rue de Malte")

palais_congres = Place.create!(
  name: "Palais des Congrès",
  address: "2 Place de la Porte Maillot",
  city: "Paris",
  country: "France",
  zip_code: "75017",
  access: "Métro: Ligne 1, Station Porte Maillot - sortie 3, RER: Ligne C, Station Neuilly - Porte Maillot, Bus: Lignes 43 73 82 244 PC1 PC3")

zenith = Place.create!(
  name: "Le Zénith",
  address: "211 Avenue Jean Jaurès",
  city: "Paris",
  country: "France",
  zip_code: "75019",
  access: "Métro: Ligne 5, station Porte de Pantin (600 mètres du Zénith), Ligne 7, station Porte de la Villette (900 mètres du Zénith) Bus: Ligne 75, station Porte de Pantin, Ligne PC, station Porte de Pantin ou Porte de la Villette, Noctilien N45, N140, N41, N13 Porte de Pantin ou N42 Porte de la Villette Tram: Ligne 3b, station Porte de Pantin - Parc de la Villette (800 mètres du Zénith)")

alhambra = Place.create!(
  name: "Alhambra",
  address: "21 rue Yves Toudic",
  city: "Paris",
  country: "France",
  zip_code: "75010",
  access: "Métro: Lignes 3/5/8/9/11 - République, Bus: Lignes 26, 56, 65, 75")

caveau_de_la_huchette = Place.create!(
  name: "Caveau de la Huchette",
  address: "5 rue de la Huchette",
  city: "Paris",
  country: "France",
  zip_code: "75005",
  access: "Métro: Lignes 4 et 10, Saint Michel")

cigale = Place.create!(
  name: "La Cigale",
  address: "120 boulevard de Rochechouart",
  city: "Paris",
  country: "France",
  zip_code: "75018",
  access: "Métro: Lignes 2 ou 12, Pigalle ou Anvers Bus: 30, 54, 67")

olympia = Place.create!(
  name: "L'Olympia",
  address: "28 boulevard des Capucines",
  city: "Paris",
  country: "France",
  zip_code: "75009",
  access: "Métro: Lignes 7, 8 RER: A, B Bus: 43, 380")

pleyel = Place.create!(
  name: "Salle Pleyel",
  address: "252 rue du faubourg Saint-Honoré",
  city: "Paris",
  country: "France",
  zip_code: "75008",
  access: "Métro: Lignes 1, 2, 6 RER: A Bus: 30, 31, 43, 93 Autolib’: 31 Av Hoche, 69 rue de Courcelles Paris 75008")

salle_gaveau = Place.create!(
  name: "Salle Gaveau",
  address: "45 rue La Boétie ",
  city: "Paris",
  country: "France",
  zip_code: "75008",
  access: "Métro: Lignes 9 et 13 - Miromesnil Bus: 52, 83, 93 Parking: Vinci Park Haussmann Berri")

trianon = Place.create!(
  name: "Le Trianon",
  address: "80 boulevard de Rochechouart",
  city: "Paris",
  country: "France",
  zip_code: "7018",
  access: "Métro: Ligne 2 - Anvers Bus: 30, 54 Parking: Anvers, Saemes")

bastille = Place.create!(
  name: "L'Opéra Bastille",
  address: "Place de la Bastille",
  city: "Paris",
  country: "France",
  zip_code: "75012",
  access: "Métro: Lignes 1, 5, 8 - Bastille Bus: lignes 20, 29, 65, 69, 76, 86, 87, 91")

garnier = Place.create!(
  name: "Palais Garnier",
  address: "Place de l’Opéra",
  city: "Paris",
  country: "France",
  zip_code: "75009",
  access: "Métro: Lignes 3,7 et 8 - Opéra  lignes 7 et 9 - Chaussée d'Antin Lignes 8 et 14 - Madeleine RER: Auber (ligne A) Bus: Lignes : 20, 21, 22, 27, 29, 42, 52, 66, 68, 81, 95 Parking: Q-Park Edouard VII - Rue Bruno Coquatrix 75009 Paris (face au 23 Rue de Caumartin)")

opera_comique = Place.create!(
  name: "L'Opéra Comique",
  address: "Place Boieldieu",
  city: "Paris",
  country: "France",
  zip_code: "75002",
  access: "Métro: Richelieu-Drouot (lignes 8 et 9) ou Quatre-Septembre (ligne 3), RER: RER A, Bus: 20, 27, 39, 48, 67, 74, 85, 95 Parking: Chauchat Drouot et Bourse")

puts "Creating places..."

# table Subscriptions
one = Subscription.create!(name:"Basique", price:50, description:"Abonnement mensuel incluant cinémas, musées", subscription_number: 1)
two = Subscription.create!(name:"Advancé", price:70, description:"Abonnement mensuel incluant cinémas, musées, théâtres, concerts", subscription_number: 2)
three = Subscription.create!(name:"Premium", price:100, description:"Abonnement mensuel incluant: cinémas, musées, théâtres, concerts & opéras", subscription_number: 3)

puts "Creating subscriptions..."

# table Activities

hans_hartung = Activity.create!(
  category:"Musée",
  name:"Hans Hartung, la fabrique du geste",
  description:"Hans Hartung (1904-1989) a joué un rôle essentiel dans l’histoire de l’abstraction. Cet artiste majeur de l’art du XXe siècle place l’expérimentation au cœur de son travail. Le parcours d’exposition s’intéresse à la grande diversité des supports utilisés, à la variété d’exécution, à la richesse des innovations techniques développées ainsi qu’au nombre important d’outils expérimentés.",
  start_date: "2019-10-11".to_date,
  end_date: "2020-03-01".to_date,
  avg_rating: 4,
  place: musee_art_moderne,
  subscription: one,
  subscription_number: 1)

hans_hartung.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567526806/Sapio/Hans_Hartung_musee_art_moderne_1.jpg"
hans_hartung.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567526917/Sapio/Hans_Hartung_musee_art_moderne_2.jpg"
hans_hartung.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567527048/Sapio/Hans_Hartung_musee_art_moderne_3.jpg"
hans_hartung.save


gilbert_bellan = Activity.create!(
  category:"Musée",
  name:"Gilbert Bellan",
  description:"Gilbert Bellan (1868-1951) fut peintre du traité de Versailles, des ruines de la Grande Guerre, de la Victoire de 1918 et de la Libération de 1944 et, par-dessus tout, celui de Clemenceau. De Passy à Bélébat, il accompagne ainsi le Tigre tout au long de sa retraite. En 1922, il se voit confier une double mission : représenter les vieux arbres du bois du Veillon d'une part, les ciels et mers de Vendée de l'autre. Retour sur une amitié fructueuse entre un artiste de talent et un homme politique au soir de sa vie.",
  start_date: "2019-09-17".to_date,
  end_date: "2020-02-01".to_date,
  avg_rating: 4,
  place: musee_clemenceau,
  subscription: one,
  subscription_number: 1)

gilbert_bellan.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567527527/Sapio/Gilbert_Bellan_musee_clemenceau_1.jpg"
gilbert_bellan.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567527556/Sapio/Gilbert_Bellan_musee_clemenceau_2.jpg"
gilbert_bellan.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567527773/Sapio/Gilbert_Bellan_musee_clemenceau_3.jpg"
gilbert_bellan.save


marie_curie = Activity.create!(
  category:"Musée",
  name:"Marie Curie, une femme au Panthéon",
  description:"Née le 7 novembre 1867 en Pologne, depuis, l’histoire de Marie Curie est devenue légendaire. Quittant son pays natal à 24 ans pour venir étudier les sciences à la Sorbonne, c’est en 1894 que Marie Sklodowska rencontre le physicien Pierre Curie. Ensemble, ils découvrent deux nouveaux atomes, radioactifs, le polonium et le radium.",
  start_date: "2017-11-08".to_date,
  end_date: "2018-03-04".to_date,
  avg_rating: 3,
  place: musee_curie,
  subscription: one,
  subscription_number: 1)

marie_curie.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528230/Sapio/Marie_Curie_musee_curie_2.jpg"
marie_curie.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528259/Sapio/Marie_Curie_musee_curie_1.jpg"
marie_curie.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528283/Sapio/Marie_Curie_musee_curie_3.jpg"
marie_curie.save


bouddha = Activity.create!(
  category:"Musée",
  name:"Bouddha, la légende dorée",
  description:"La vie du Bouddha, et la diffusion du bouddhisme en Asie, sont au cœur de cette exposition. La richesse des traditions iconographiques et stylistiques se rapportant à la représentation de la vie exemplaire et édifiante du fondateur du bouddhisme est ainsi mise en lumière à travers ce parcours. Celui-ci s'appuie sur une sélection de chefs-d’œuvre appartenant aux collections du musée.",
  start_date: "2019-06-19".to_date,
  end_date: "2019-11-04".to_date,
  avg_rating: 5,
  place: musee_guimee,
  subscription: one,
  subscription_number: 1)

bouddha.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528559/Sapio/Bouddha_musee_guillemet_1.jpg"
bouddha.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528589/Sapio/Bouddha_musee_guillemet_2.jpg"
bouddha.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528615/Sapio/Bouddha_musee_guillemet_3.jpg"
bouddha.save


plume_pinceau_crayon = Activity.create!(
  category:"Musée",
  name:"À la plume, au pinceau, au crayon",
  description:"Le dessin dans le monde arabe, à travers une centaine d’œuvres issues de la collection de l'IMA, est au cœur de cette exposition. Celle-ci présente des dessins pour la plupart figuratifs, datant du XIe siècle à nos jours, et parfois exposés ici pour la première fois. Le parcours, qui se déploie sur trois niveaux du musée, s'intéresse aux œuvres modernes et contemporaines de trois générations d’artistes, ainsi qu'aux dessins exécutés entre le XIe et le XVIe siècle sur divers supports : papier, cuir, textile ou encore céramique.",
  start_date: "2019-03-26".to_date,
  end_date: "2019-09-15".to_date,
  avg_rating: 3,
  place: institut_du_monde_arabe,
  subscription: one,
  subscription_number: 1)

plume_pinceau_crayon.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528927/Sapio/Plume_Pinceau_Crayon_institut_monde_arabe_1.png"
plume_pinceau_crayon.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567528948/Sapio/Plume_Pinceau_Crayon_institut_monde_arabe_2.jpg"
plume_pinceau_crayon.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567529003/Sapio/Plume_Pinceau_Crayon_institut_monde_arabe_3.jpg"
plume_pinceau_crayon.save


presentation_collections_modernes = Activity.create!(
  category:"Musée",
  name:"Collections modernes 1905 - 1965",
  description:"À partir du 27 mai 2015 jusqu'au 31 décembre 2019, le Centre Pompidou dévoile une nouvelle présentation de ses collections modernes, de 1905 à 1965. Ce parcours profondément renouvelé renoue avec une progression chronologique marquée par de grands jalons historiques. Il offre au visiteur de suivre le fil des figures, des œuvres et des mouvements qui ont écrit l’art moderne, en compagnie d’autres passeurs qui ont contribué à faire l’histoire de la modernité.",
  start_date: "2015-05-27".to_date,
  end_date: "2019-12-31".to_date,
  avg_rating: 5,
  place: beaubourg,
  subscription: one,
  subscription_number: 1)

presentation_collections_modernes.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437482/Sapio/Presentation_Collections_Modernes_beaubourg_1.jpg"
presentation_collections_modernes.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566851740/Sapio/Presentation_Collections_Modernes_beaubourg_2.jpg"
presentation_collections_modernes.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567439997/Sapio/Presentation_Collections_Modernes_beaubourg_3.jpg"
presentation_collections_modernes.save

exposition_beaubourg = Activity.create!(
  category:"Musée",
  name:"Préhistoire: une énigme moderne",
  description:"À travers cette exposition inédite, le Centre Pompidou propose de revisiter la relation féconde qui unit la préhistoire à l’art moderne et contemporain. Dans ce grand moment de crise qu’incarne la modernité, des artistes incontournables comme Picasso, Miró mais aussi Cézanne, Klee, Giacometti, Ernst, Beuys, Klein, Dubuffet, Smithson, Penone… ont été hantés par la question de la préhistoire et ses origines fantasmées.",
  start_date: "2019-05-08".to_date,
  end_date: "2019-09-16".to_date,
  avg_rating: 4,
  place: beaubourg,
  subscription: one,
  subscription_number: 1)

exposition_beaubourg.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437732/Sapio/Prehistoire_Une_Enigme_Moderne_beaubourg_1.jpg"
exposition_beaubourg.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852231/Sapio/Prehistoire_Une_Enigme_Moderne_beaubourg_2.jpg"
exposition_beaubourg.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852445/Sapio/Prehistoire_Une_Enigme_Moderne_Beaubourg_3.jpg"
exposition_beaubourg.save

exposition_musee_orsay = Activity.create!(
  category:"Musée",
  name:"Exposition Berthe Morisot (1841-1895)",
  description:"Figure majeure de l'impressionnisme, Berthe Morisot, reste aujourd'hui moins connue que ses amis Monet, Degas ou Renoir. Elle avait pourtant été immédiatement reconnue comme l'une des artistes les plus novatrices du groupe. L'exposition retrace le parcours exceptionnel d'une peintre, qui, à rebours des usages de son temps et de son milieu, devient une figure essentielle des avant-gardes parisiennes de la fin des années 1860 jusqu'à sa mort prématurée en 1895.",
  start_date: "2019-09-03".to_date,
  end_date: "2019-09-22".to_date,
  avg_rating: 4,
  place: musee_orsay,
  subscription: one,
  subscription_number: 1)

exposition_musee_orsay.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567420297/Sapio/Berthe_Morisot_musee_orsay_1.jpg"
exposition_musee_orsay.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567420796/Sapio/Berthe_Morisot_musee_orsay_2.jpg"
exposition_musee_orsay.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567420903/Sapio/Berthe_Morisot_musee_orsay_3.jpg"
exposition_musee_orsay.save

exposition_musee_grevin = Activity.create!(
  category:"Musée",
  name:"Musée Grévin",
  description:"Et si vous pouviez rencontrer plus de 200 célébrités en une seule journée ? Envie d’un tête à tête avec Louis XIV, Mozart ou Ryan Gosling ? Fan de Kendji Girac ? Sous le charme de Léonardo Dicaprio ou fasciné par la pétillante Katy Perry ? Rencontrez toutes ces personnalités lors d’une visite pleine de surprises au milieu de décors thématiques extraordinaires !",
  start_date: "2019-08-01".to_date,
  end_date: "2019-12-31".to_date,
  avg_rating: 3,
  place: musee_grevin,
  subscription: one,
  subscription_number: 1)

exposition_musee_grevin.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567422631/Sapio/Expo_musee_grevin_1.jpg"
exposition_musee_grevin.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567422708/Sapio/Expo_musee_grevin_2.jpg"
exposition_musee_grevin.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567422811/Sapio/Expo_musee_grevin_3.jpg"
exposition_musee_grevin.save

exposition_musee_du_fumeur = Activity.create!(
  category:"Musée",
  name:"Musée du Fumeur",
  description:"Le musée du Fumeur a été fondé en 2001 par Michka Seeliger et Tigrane Hadengue. Il réunit plantes, œuvres d’art et objets liés à une pratique ancestrale : fumer. Témoignant de l’évolution des comportements à travers les siècles, ces collections sont propres à susciter la réflexion sur l’acte de fumer, originellement rapporté des Amériques par Christophe Colomb et, en cinq siècles, devenu planétaire.",
  start_date: "2019-09-01".to_date,
  end_date: "2019-12-31".to_date,
  avg_rating: 5,
  place: musee_du_fumeur,
  subscription: one,
  subscription_number: 1)

exposition_musee_du_fumeur.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567494322/Sapio/Expo_Musee_du_fumeur_1.jpg"
exposition_musee_du_fumeur.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567426319/Sapio/Expo_musee_du_fumeur_2.jpg"
exposition_musee_du_fumeur.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567426361/Sapio/Expo_musee_du_fumeur_3.jpg"
exposition_musee_du_fumeur.save

expo_monet_fromanger = Activity.create!(
  category:"Musée",
  name:"Monet / Fromanger: Impression, soleil levant 2019",
  description:"Au détour d’une invitation lancée par le musée Marmottan Monet à Gérard Fromanger, le peintre s’arrête devant un tableau de Gustave Caillebotte, Rue de Paris, temps de pluie. L’impressionniste représente en 1877 deux passants déambulant dans le Paris haussmannien à l’intersection des rues de Turin et de Moscou... ",
  start_date: "2019-03-28".to_date,
  end_date: "2019-09-29".to_date,
  avg_rating: 5,
  place: musee_marmottan,
  subscription: one,
  subscription_number: 1)

expo_monet_fromanger.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567586395/Sapio/Monet_Fromanger_musee_marmottan_1.jpg"
expo_monet_fromanger.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567586634/Sapio/Monet_Fromanger_musee_marmottan_2.jpg"
expo_monet_fromanger.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567586704/Sapio/Monet_Fromanger_musee_marmottan_3.jpg"
expo_monet_fromanger.save


once_upon_a_time = Activity.create!(
  category:"Cinéma",
  name:"Once Upon A Time",
  description:"Avec Once Upon a Time in Hollywood, Tarantino convertit une nouvelle fois l'essai, et montre (contre son gré?) de vrais signes de maturité. Lettre d'amour à une époque fantasmée, cette série de digressions souvent humoristiques laisse infuser une mélancolie nouvelle dans sa filmographie. Un scénario plein d'humour, de nostalgie et de suspense, une reconstitution phénoménale du Los Angeles de la fin des années 60, une manière inouïe de mélanger personnages fictifs et réels.",
  start_date: "2019-08-26".to_date,
  end_date: "2019-08-29".to_date,
  avg_rating: 5,
  place: beaugrenelle,
  subscription: one,
  subscription_number: 1)

once_upon_a_time.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437947/Sapio/Once_Upon_A_Time_Cine_1.jpg"
once_upon_a_time.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852702/Sapio/Once-upon_a_time_Cine_2.jpg"
once_upon_a_time.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852784/Sapio/Once-upon_a_time_Cine_3.jpg"
once_upon_a_time.save

fast_and_furious = Activity.create!(
  category:"Cinéma",
  name:"Fast and Furious : Hobbs & Shaw",
  description:"Depuis que Hobbs et Shaw se sont affrontés, les deux hommes font tout pour se nuire l'un à l'autre. Mais lorsque Brixton, un anarchiste génétiquement modifié, met la main sur une arme de destruction massive après avoir battu le meilleur agent du MI6 qui se trouve être la soeur de Shaw. Les deux ennemis de longue date vont devoir alors faire équipe pour faire tomber le seul adversaire capable de les anéantir.",
  start_date: "2019-08-26".to_date,
  end_date: "2019-08-27".to_date,
  avg_rating: 5,
  place: beaugrenelle,
  subscription: one,
  subscription_number: 1)

fast_and_furious.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567438247/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle_1.jpg"
fast_and_furious.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566852965/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle_2.jpg"
fast_and_furious.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853021/Sapio/Fast_and_furious_Hobbs_and_Show_Beaugrenelle_3.jpg"
fast_and_furious.save

la_vie_scolaire = Activity.create!(
  category:"Cinéma",
  name:"La Vie Scolaire",
  description:"Une année au coeur de l'école de la république, de la vie... et de la démerde ! Samia, jeune CPE novice, débarque de son Ardèche natale dans un collège réputé difficile de la ville de Saint-Denis. Elle y découvre les problèmes récurrents de discipline, la réalité sociale pesant sur le quartier, mais aussi l'incroyable vitalité et l'humour, tant des élèves que de son équipe de surveillants.",
  start_date: "2019-08-28".to_date,
  end_date: "2019-09-03".to_date,
  avg_rating: 5,
  place: ugc_les_halles,
  subscription: one,
  subscription_number: 1)

la_vie_scolaire.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567428469/Sapio/La_vie_scolaire_UGC_chatelet_les_halles_1.png"
la_vie_scolaire.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567428591/Sapio/La_vie_scolaire_UGC_chatelet_les_halles_2.jpg"
la_vie_scolaire.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567428682/Sapio/La_vie_scolaire_UGC_chatelet_les_halles_3.jpg"
la_vie_scolaire.save

une_fille_facile = Activity.create!(
  category:"Cinéma",
  name:"Une fille facile",
  description:"Difficile d’évoquer Une fille facile sans commencer par souligner, car c’est là le cœur du film, le rôle principal qu’y tient Zahia Dehar, autrefois devenue célèbre malgré elle comme la victime d’une bruyante affaire de mœurs sur laquelle le film de Rebecca Zlotowski ne nous incite pas à nous étendre plus.",
  start_date: "2019-08-28".to_date,
  end_date: "2019-09-03".to_date,
  avg_rating: 4,
  place: ugc_les_halles,
  subscription: one,
  subscription_number: 1)

une_fille_facile.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567429200/Sapio/Une_fille_facile_ugc_chatelet_les_halles_1.jpg"
une_fille_facile.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567429291/Sapio/Une_fille_facile_ugc_chatelet_les_halles_2.jpg"
une_fille_facile.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567429404/Sapio/Une_fille_facile_ugc_chatelet_les_halles_3.jpg"
une_fille_facile.save

wedding_nigthmare = Activity.create!(
  category:"Cinéma",
  name:"Wedding Nightmare",
  description:"La nuit de noces d’une jeune mariée tourne au cauchemar quand sa riche et excentrique belle-famille lui demande d’honorer une tradition qui va se révéler meurtrière et où chacun luttera pour sa survie.",
  start_date: "2019-08-28".to_date,
  end_date: "2019-09-03".to_date,
  avg_rating: 5,
  place: mk2_odeon,
  subscription: one,
  subscription_number: 1)

wedding_nigthmare.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567430554/Sapio/Wedding_nightmare_mk2_odeon_1.jpg"
wedding_nigthmare.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567430621/Sapio/Wedding_nightmare_mk2_odeon_2.jpg"
wedding_nigthmare.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567430680/Sapio/Wedding_nightmare_mk2_odeon_3.jpg"
wedding_nigthmare.save

docteur_miracle = Activity.create!(
  category: "Théâtre",
  name: "Le Docteur Miracle",
  description: "Sur un livret de Léon Battu et Ludovic Halévy et une musique de Charles Lecoca, créé aux Bouffes-Parisiens le 8 avril 1857... Quelques mois après l’ouverture des Bouffes-Parisiens, Jacques Offenbach organise en juillet 1856 un concours de composition qui fait grand bruit. Coup de publicité pour son établissement, la démarche reflète également les aspirations esthétiques du compositeur : permettre aux genres légers de garder une place de choix à Paris.",
  start_date: "2019-08-20".to_date,
  end_date: "2019-08-21".to_date,
  avg_rating: 4,
  place: marigny,
  subscription: two,
  subscription_number: 2)

docteur_miracle.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567438485/Sapio/Dr_Miracle_theatre_1.jpg"
docteur_miracle.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854329/Sapio/Dr_miracle_theatre_2.jpg"
docteur_miracle.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854410/Sapio/Dr_miracle_theatre_3.jpg"
docteur_miracle.save

funny_girl = Activity.create!(
  category: "Théâtre",
  name: "Funny Girl",
  description: "THE BROADWAY MUSICAL! Festif, fun, émouvant pour la première fois à Paris dans une nouvelle production. Le spectacle sera donné en anglais avec des surtitres en français. Tadaaaaaaa… C’est Christina Bianco qui prendra la suite de Barbra Streisand et interprétera le rôle de Fanny Brice dans la nouvelle production de Funny Girl au Théâtre Marigny. Elle en est très heureuse et nous également ! Réservez vite, il n’y aura pas de places pour tout le monde !",
  start_date: "2019-08-20".to_date,
  end_date: "2019-09-30".to_date,
  avg_rating: 2,
  place: marigny,
  subscription: two,
  subscription_number: 2)

funny_girl.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567438768/Sapio/Funny_Girl_theatre_1.jpg"
funny_girl.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854520/Sapio/Funny_Girl_theatre_2.jpg"
funny_girl.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854660/Sapio/Funny_Girl_theatre_3.jpg"
funny_girl.save

menopause = Activity.create!(
  category: "Théâtre",
  name: "Ménopause",
  description: "Quatre femmes se rencontrent dans un grand magasin et se rendent compte que malgré leurs styles de vie opposés elles ont un point commun auquel elles ne peuvent échapper... Une actrice en mal de rôles, une mère de famille nombreuse, une chef d’entreprise glaçante et une baba un peu trop cool chantent, dansent et racontent « leurs effets secondaires » avec humour.",
  start_date: "2019-09-04".to_date,
  end_date: "2019-09-22".to_date,
  avg_rating: 5,
  place: madeleine,
  subscription: two,
  subscription_number: 2)

menopause.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434064/Sapio/Menopause_theatre_madeleine_1.jpg"
menopause.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434139/Sapio/Menopause_theatre_madeleine_2.jpg"
menopause.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434201/Sapio/Menopause_theatre_madeleine_3.jpg"
menopause.save


invitation = Activity.create!(
  category: "Théâtre",
  name: "L'invitation",
  description: "Charlie c'est l’ami imaginaire que Daniel a créé pour tromper son épouse sans éveiller les soupçons. Charlie c’était l’idée parfaite jusqu’au jour où Catherine, sa femme, demanda à le rencontrer. Pour sauver son mariage Daniel va donc devoir inviter à dîner un inconnu qui l’espace d’une soirée jouera le rôle de son meilleur ami. La nouvelle comédie événement avec Gad Elmaleh et Philippe Lellouche.",
  start_date: "2019-10-02".to_date,
  end_date: "2020-01-02".to_date,
  avg_rating: 4,
  place: madeleine,
  subscription: two,
  subscription_number: 2)

invitation.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434542/Sapio/Invitation_theatre_madeleine_1.jpg"
invitation.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434611/Sapio/Invitation_theatre_madeleine_2.jpg"
invitation.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567434696/Sapio/Invitation_theatre_madeleine_3.jpg"
invitation.save


a_love_supreme = Activity.create!(
  category: "Théâtre",
  name: "A Love Supreme",
  description: "Les dernières heures d’une ancienne strip-teaseuse au peep show A Love Suprême. Bianca n’a plus vingt ans, son corps commence à trahir son âge. Elle ne fait plus recette. Toute une carrière d’effeuillage défile derrière la vitre sans tain. L’industrie du porno renvoie au néant les déesses de l’éros vieillissantes. Les ombres tristes ont besoin de chair fraîche.",
  start_date: "2019-03-11".to_date,
  end_date: "2019-03-27".to_date,
  avg_rating: 4,
  place: marigny,
  subscription: two,
  subscription_number: 2)

a_love_supreme.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567435086/Sapio/A_Love_Supreme_theatre_marigny_1.jpg"
a_love_supreme.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567435160/Sapio/A_Love_Supreme_theatre_marigny_2.jpg"
a_love_supreme.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567435245/Sapio/A_Love_Supreme_theatre_marigny_3.jpg"
a_love_supreme.save


jl_aubert = Activity.create!(
  category: "Concert",
  name: "Jean-Louis Aubert",
  description: "Ivre de rêve, Jean-Louis Aubert enfile les siens sur le fil de la réalité. Après la tournée phénomène des INSUS, il est revenu, sans prévenir et seul sur scène « juste pour habiter ce petit joyau ». Ce printemps il revient avec une scénographie unique, un autre rêve qui l’habite depuis quinze ans. Cet été il sera en plein air dans des théâtres antiques. C’est la tournée PRÉMIXCES. C’est dans ce cadre qu’il annonce son désir de revenir au Bataclan pour une série de concerts exceptionnels à l’automne prochain.",
  start_date: "2019-08-20".to_date,
  end_date: "2019-08-21".to_date,
  avg_rating: 3,
  place: bataclan,
  subscription: two,
  subscription_number: 2)

jl_aubert.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567439076/Sapio/Jean_Louis_Aubert_bataclan_1.jpg"
jl_aubert.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853696/Sapio/Jean_Louis_Aubert_bataclan_2.jpg"
jl_aubert.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853782/Sapio/Jean_Louis_Aubert_bataclan_3.jpg"
jl_aubert.save

oh_sees = Activity.create!(
  category: "Concert",
  name: "OH SEES",
  description: "Quand John Dwyer et sa clique déboule dans la Creuse, c’est pas vraiment pour acheter du terrain. Vingt ans que ces furieux partent et reviennent à San Francisco pour enregistrer album sur album, entre deux tournées. Deux batteries sur scène et une énergie à faire pâlir les apprentis rockeurs qui craignent trop la sueur. Oh Sees est finalement l’incarnation idéale de cette première programmation Check-in : rock jusqu’à la moelle, sans concession et généreuse.",
  start_date: "2019-09-01".to_date,
  end_date: "2019-09-02".to_date,
  avg_rating: 5,
  place: bataclan,
  subscription: two,
  subscription_number: 2)

oh_sees.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853913/Sapio/Oh_Sees_concert_1.jpg"
oh_sees.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567599699/Sapio/Oh_Sees_concert_2.png"
oh_sees.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566854154/Sapio/Oh_Sees_concert_3.jpg"
oh_sees.save

kingdom_of_hearts_orchestra = Activity.create!(
  category: "Concert",
  name: "Kingdom of Hearts Orchestra",
  description: "Pour fêter le lancement de KINGDOM HEARTS III fin janvier 2019, la série de concerts KINGDOM HEARTS Orchestra repart en tournée avec un tout nouveau programme à partir du 27 avril 2019, KINGDOM HEARTS -World of Tres-, pour 22 représentations dans 17 villes à travers le monde. Acclamé par plus de 80 000 spectateurs ces deux dernières années, ce concert enchantera encore davantage de personnes grâce à son nouveau programme musical et des vidéos palpitantes, pour une expérience inédite à ne surtout pas manquer ! Avec sa projection vidéo sur écran géant en parfaite synchronisation avec la musique jouée par des orchestres de plus de 100 musiciens et choristes, le concert continuera de ravir les millions de fans de la longue série de jeux vidéo à travers le monde.",
  start_date: "2019-09-28".to_date,
  end_date: "2019-09-28".to_date,
  avg_rating: 5,
  place: palais_congres,
  subscription: two,
  subscription_number: 2)

kingdom_of_hearts_orchestra.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567435887/Sapio/Kingdom_Of_Hearts_palais_congres_1.jpg"
kingdom_of_hearts_orchestra.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567435978/Sapio/Kingdom_Of_Hearts_palais_congres_2.jpg"
kingdom_of_hearts_orchestra.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567436088/Sapio/Kingdom_Of_Hearts_palais_congres_3.jpg"
kingdom_of_hearts_orchestra.save

bolero = Activity.create!(
  category: "Concert",
  name: "Boléro - Hommage à Maurice Ravel",
  description: "Boléro est l’un des projets artistiques de Franceconcert. Chorégraphie, mise en scène, libretto, costumes et décors ont été imaginés par notre équipe artistique et a rencontré un grand succès pour sa première tournée en 2016. Franceconcert est donc propriétaire et détient les droits de représentation de ce ballet qui rend hommage à Maurice Ravel.",
  start_date: "2019-11-09".to_date,
  end_date: "2019-11-16".to_date,
  avg_rating: 5,
  place: palais_congres,
  subscription: two,
  subscription_number: 2)

bolero.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567436455/Sapio/Bolero_palais_congres_1.jpg"
bolero.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567436543/Sapio/Bolero_palais_congres_2.jpg"
bolero.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567436615/Sapio/Bolero_palais_congres_3.jpg"
bolero.save

obispo = Activity.create!(
  category: "Concert",
  name: "Pascal Obispo",
  description: "",
  start_date: "2019-11-22".to_date,
  end_date: "2019-11-23".to_date,
  avg_rating: 4,
  place: zenith,
  subscription: two,
  subscription_number: 2)

obispo.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437092/Sapio/Obispo_zenith_1.jpg"
obispo.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437210/Sapio/Obispo_zenith_2.jpg"
obispo.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567437286/Sapio/Obispo_zenith_3.jpg"
obispo.save


brittany_howard = Activity.create!(
  category: "Concert",
  name: "Brittany Howard",
  description: "Brittany Howard, comme toutes les chanteuses américaines talentueuses des cinquante dernières années, est régulièrement comparée aux deux figures féminines tutélaires de la musique US d’après-guerre : Aretha Franklin, la reine de la soul, et Janis Joplin, la song-writeuse par excellence. Des comparaisons qui, pour une fois, ne s’avèrent pas totalement infondées. Avec sa voix d’or et son talent de compositrice, Brittany Howard parvient à imposer son identité et, loin de se contenter des chansons à l’ancienne, chercher sans cesse à faire évoluer son style. ",
  start_date: "2019-09-04".to_date,
  end_date: "2019-09-04".to_date,
  avg_rating: 3,
  place: alhambra,
  subscription: two,
  subscription_number: 2)

brittany_howard.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567582737/Sapio/Brittany_Howard_concert_1.jpg"
brittany_howard.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567582776/Sapio/Brittany_Howard_concert_2.jpg"
brittany_howard.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567582807/Sapio/Brittany_Howard_concert_3.jpg"
brittany_howard.save


pablo_campos = Activity.create!(
  category: "Concert",
  name: "Pablo Campos",
  description: "Les deux amis de longue date invitent alors Pablo à les rejoindre pour une série de concerts durant l'été : l'accueil chaleureux du public est immédiat, et le swing que dégage la petite formation convainc les trois musiciens de former un véritable trio. ",
  start_date: "2019-09-20".to_date,
  end_date: "2019-09-21".to_date,
  avg_rating: 5,
  place: caveau_de_la_huchette,
  subscription: two,
  subscription_number: 2)

pablo_campos.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583174/Sapio/Pablo_Campos_concert_1.jpg"
pablo_campos.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583217/Sapio/Pablo_Campos_concert_2.jpg"
pablo_campos.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583259/Sapio/Pablo_Campos_concert_3.jpg"
pablo_campos.save


maneskin = Activity.create!(
  category: "Concert",
  name: "Maneskin",
  description: "Après avoir conquis l’Italie avec une tournée à guichets fermés et Paris avec un Café de la Danse plein à craquer en février dernier, le phénomène pop-rock italien Måneskin est de retour en France à La Cigale le 11 septembre 2019 !",
  start_date: "2019-09-11".to_date,
  end_date: "2019-09-11".to_date,
  avg_rating: 5,
  place: cigale,
  subscription: two,
  subscription_number: 2)

maneskin.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583530/Sapio/Maneskin_concert_1.jpg"
maneskin.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583570/Sapio/Maneskin_concert_2.jpg"
maneskin.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583608/Sapio/Maneskin_concert_3.jpg"
maneskin.save

zazie = Activity.create!(
  category: "Concert",
  name: "Zaziessenciel Tour",
  description: "",
  start_date: "2019-11-13".to_date,
  end_date: "2019-11-16".to_date,
  avg_rating: 5,
  place: olympia,
  subscription: two,
  subscription_number: 2)

zazie.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583797/Sapio/Zazie_concert_1.jpg"
zazie.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583843/Sapio/Zazie_concert_2.jpg"
zazie.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567583889/Sapio/Zazie_concert_3.jpg"
zazie.save

david_hallyday= Activity.create!(
  category: "Concert",
  name: "David Hallyday - Éternel Tour",
  description: "Son treizième album, J'ai quelque chose à vous dire, est sorti le 7 décembre 2018. Les 11 titres de cet album bouleversant, véritable cri d’amour, racontent ce qu'il n'a jamais dit. Le succès a été immédiat auprès du public français (certifié platine) notamment avec le single Ma Dernière Lettre dont sa demi-sœur Laura a réalisé le clip. Dans cette chanson David se livre en toute intimité, avec force mais aussi pudeur, et offre l'un de ses plus beaux titres. Ne manquez pas David Hallyday en concert près de chez vous!",
  start_date: "2019-10-04".to_date,
  end_date: "2019-10-04".to_date,
  avg_rating: 5,
  place: pleyel,
  subscription: two,
  subscription_number: 2)

david_hallyday.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584119/Sapio/David_Hallyday_concert_1.jpg"
david_hallyday.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584506/Sapio/David_Hallyday_concert_2.jpg"
david_hallyday.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584552/Sapio/David_Hallyday_concert_3.jpg"
david_hallyday.save

giovanna_marini = Activity.create!(
  category: "Concert",
  name: "Giovanna Marini",
  description: "Après plusieurs décennies d'une carrière incomparable, Giovanna Marini n'est plus une artiste mais une légende. Chanteuse, compositrice, conteuse, femme engagée, elle aura marqué notre temps par un engagement aussi bien musical que social, replaçant la musique au cœur de la cité, pointant ses travers parfois avec une ironie caustique, toujours avec une sincérité et une émotion admirables. Cette soirée se veut un hommage vibrant rendu à une femme d'exception entrée dans l'histoire, en compagnie bien sûr de ses complices du mythique Quatuor vocal Giovanna Marini, mais aussi beaucoup d’ invités qui ont à un moment de leur vie croisé sa route.",
  start_date: "2019-10-11".to_date,
  end_date: "2019-10-11".to_date,
  avg_rating: 5,
  place: salle_gaveau,
  subscription: two,
  subscription_number: 2)

giovanna_marini.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584822/Sapio/Giovanna_Marini_concert_1.jpg"
giovanna_marini.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584893/Sapio/Giovanna_Marini_concert_2.jpg"
giovanna_marini.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567584949/Sapio/Giovanna_Marini_concert_3.jpg"
giovanna_marini.save

tairo = Activity.create!(
  category: "Concert",
  name: "Taïro & The Family Band",
  description: "Après une année d’absence, Taïro est de retour en Europe accompagné de ses musiciens du Family Band ! Il sera sur la scène du Trianon le 15 Novembre 2019, pour une unique date parisienne. Plusieurs morceaux inédits seront dévoilés d’ici là sur un album Best-Of (sortie Février 2019) qui retracera les dix dernières années de carrière de ce fer-de-lance du reggae français.",
  start_date: "2019-11-15".to_date,
  end_date: "2019-11-15".to_date,
  avg_rating: 5,
  place: trianon,
  subscription: two,
  subscription_number: 2)

tairo.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567585264/Sapio/Tairo_concert_1.jpg"
tairo.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567585317/Sapio/Tairo_concert_2.jpg"
tairo.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567585381/Sapio/Tairo_concert_3.jpg"
tairo.save


casse_noisette = Activity.create!(
  category: "Opéra",
  name: "Casse-noisette",
  description: "Historiquement présentés en diptyque en 1892, Iolanta et Casse‑Noisette sont à nouveau réunis dans cette production de l’Opéra de Paris. Dans la mise en scène et les décors de Dmitri Tcherniakov, ils ne deviennent qu’une seule et même oeuvre : l’opéra comme prélude du ballet, le ballet comme résolution de l’opéra. La fille du roi René dont la cécité disparaît aux aurores de l’amour se retrouve dans Marie, jeune fille bien éloignée de la Clara de Marius Petipa.",
  start_date: "2019-12-01".to_date,
  end_date: "2019-12-30".to_date,
  avg_rating: 2,
  place: garnier,
  subscription: three,
  subscription_number: 3)

casse_noisette.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567439446/Sapio/Casse_Noisette_opera_1.jpg"
casse_noisette.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853198/Sapio/Casse_Noisette_opera_2.jpg"
casse_noisette.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853304/Sapio/Casse_Noisette_opera_3.jpg"
casse_noisette.save

traviata = Activity.create!(
  category: "Opéra",
  name: "La Traviata",
  description: "En ouvrant son opéra par un prélude pour cordes d’une économie de moyens inédite, Verdi affirmait en 1853 sa volonté de bousculer les conventions et les normes. Là n’est pas la moindre des radicalités de son oeuvre : sa « Traviata » met implacablement à nu la violence d’une société qui prône la jouissance matérielle et finit par sacrifier une innocente victime sur l’autel de la morale bourgeoise. Simon Stone aime travailler au corps à corps les pièces du répertoire pour les entraîner vers des territoires plus intimes.",
  start_date: "2019-08-01".to_date,
  end_date: "2019-09-15".to_date,
  avg_rating: 5,
  place: garnier,
  subscription: three,
  subscription_number: 3)

traviata.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567439732/Traviata_opera_1.jpg"
traviata.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853486/Sapio/Traviata_opera_2.jpg"
traviata.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1566853546/Sapio/Traviata_opera_3.jpg"
traviata.save

madame_butterfly = Activity.create!(
  category: "Opéra",
  name: "Madame Butterfly",
  description: "Pour écrire Madame Chrysanthème, Pierre Loti a puisé dans les souvenirs de son propre voyage au Japon entrepris en 1885. Pour composer Madama Butterfly, Giacomo Puccini s’est inspiré, quant à lui, des mélodies populaires et des sonorités des voix nippones. Mais dans la littérature comme dans la musique, l’héroïne reste la même : Kiku‑san ou Cio-Cio‑san, une jeune geisha trahie par son mari occidental, symbole de la rencontre entre deux mondes étrangers. La mise en scène épurée de Robert Wilson épouse à merveille l’intensité dramatique et la violence sous-jacente de cette tragédie imprégnée de japonisme.",
  start_date: "2019-09-14".to_date,
  end_date: "2019-11-13".to_date,
  avg_rating: 3,
  place: bastille,
  subscription: three,
  subscription_number: 3)

madame_butterfly.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567431616/Sapio/Madame_Butterfly_opera_bastille_1.jpg"
madame_butterfly.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567431687/Sapio/Madame_Butterfly_opera_bastille_2.jpg"
madame_butterfly.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567431755/Sapio/Madame_Butterfly_opera_bastille_3.jpg"
madame_butterfly.save

les_indes_galantes = Activity.create!(
  category: "Opéra",
  name: "Les Indes Galantes",
  description: "Oeuvre-phare dont la redécouverte au XXe siècle a marqué l’histoire de l’Opéra, Les Indes galantes s’apparente à un éblouissant divertissement. Mais le premier opéra‑ballet de Rameau témoigne également d’un humanisme ambigu : le regard que l’Européen pose sur l’Autre est constamment partagé entre le fantasme et une forme de fascination pour l’exotisme. Clément Cogitore réinscrit l’ouvrage dans un espace urbain et politique dont il interroge les frontières.",
  start_date: "2019-09-27".to_date,
  end_date: "2019-10-15".to_date,
  avg_rating: 5,
  place: bastille,
  subscription: three,
  subscription_number: 3)

les_indes_galantes.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432205/Sapio/Les_indes_galantes_opera_bastille_1.jpg"
les_indes_galantes.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432295/Sapio/Les_indes_galantes_opera_bastille_2.jpg"
les_indes_galantes.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432366/Sapio/Les_indes_galantes_opera_bastille_3.jpg"
les_indes_galantes.save

inondation = Activity.create!(
  category: "Opéra",
  name: "Inondation",
  description: "Parce qu’ils ne peuvent pas avoir d’enfant, deux époux finissent par adopter une orpheline. L’adolescente se fait une place imprévue dans leur foyer et dans leurs coeurs. Dans ce faubourg de Saint-Pétersbourg, la parole entre les époux s'est raréfiée et les silences deviennent pesants. Le monde que la femme s’est construit pour surmonter la tristesse de sa vie affective va se dérégler tandis qu’en cette fin d’hiver montent les eaux du fleuve.",
  start_date: "2019-09-27".to_date,
  end_date: "2019-10-03".to_date,
  avg_rating: 4,
  place: opera_comique,
  subscription: three,
  subscription_number: 3)

inondation.remote_photo_one_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432847/Sapio/Inondation_opera_comique_1.png"
inondation.remote_photo_two_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432917/Sapio/Inondation_opera_comique_2.jpg"
inondation.remote_photo_three_url = "https://res.cloudinary.com/spark-and-rise-ltd/image/upload/v1567432983/Sapio/Inondation_opera_comique_3.png"
inondation.save


puts "Creating activities..."

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

puts "Creating users..."

# Subs_bookings

abonnement_maxime = SubsBooking.create!(
  start_date: "2019-08-20".to_date,
  end_date: "2019-09-20".to_date,
  subscription: two,
  user: maxime,
  subscription_number: 2)

abonnement_charles = SubsBooking.create!(
  start_date: "2019-09-02".to_date,
  end_date: "2019-10-02".to_date,
  subscription: one,
  user: charles,
  subscription_number: 1)

abonnement_isabelle = SubsBooking.create!(
  start_date: "2019-09-03".to_date,
  end_date: "2019-10-03".to_date,
  subscription: three,
  user: isabelle,
  subscription_number: 3)
#Act_bookings


puts "Creating subsbookings..."

# Alice: 6 bookings

act_booking1 = ActBooking.create!(
  date: "2019-8-27".to_date,
  user: alice,
  activity: presentation_collections_modernes)

act_booking2 = ActBooking.create!(
  date: "2019-09-15".to_date,
  user: alice,
  activity: menopause)

act_booking3 = ActBooking.create!(
  date: "2019-08-26".to_date,
  user: alice,
  activity: once_upon_a_time)

act_booking4 = ActBooking.create!(
  date: "2019-08-20".to_date,
  user: alice,
  activity: jl_aubert)

act_booking5 = ActBooking.create!(
  date: "2019-09-10".to_date,
  user: alice,
  activity: traviata)

act_booking6 = ActBooking.create!(
  date: "2019-09-15".to_date,
  user: alice,
  activity: menopause)

# Charles: 6 bookings

act_booking7 = ActBooking.create!(
  date: "2019-08-30".to_date,
  user: charles,
  activity: exposition_beaubourg)

act_booking8 = ActBooking.create!(
  date: "2019-09-10".to_date,
  user: charles,
  activity: exposition_musee_orsay)

act_booking9 = ActBooking.create!(
  date: "2019-10-02".to_date,
  user: charles,
  activity: les_indes_galantes)

act_booking10 = ActBooking.create!(
  date: "2019-09-27".to_date,
  user: charles,
  activity: inondation)

act_booking11 = ActBooking.create!(
  date: "2019-09-01".to_date,
  user: charles,
  activity: oh_sees)

act_booking12 = ActBooking.create!(
  date: "2019-11-02".to_date,
  user: charles,
  activity: madame_butterfly)

# Maxime: 6 bookings

act_booking13 = ActBooking.create!(
  date: "2019-12-01".to_date,
  user: maxime,
  activity: presentation_collections_modernes)

act_booking14 = ActBooking.create!(
  date: "2019-12-15".to_date,
  user: maxime,
  activity: casse_noisette)

act_booking15 = ActBooking.create!(
  date: "2019-03-11".to_date,
  user: maxime,
  activity: a_love_supreme)

act_booking16 = ActBooking.create!(
  date: "2019-09-03".to_date,
  user: maxime,
  activity: une_fille_facile)

act_booking17 = ActBooking.create!(
  date: "2019-11-09".to_date,
  user: maxime,
  activity: bolero)

act_booking18 = ActBooking.create!(
  date: "2019-09-20".to_date,
  user: maxime,
  activity: exposition_musee_orsay)


# Isabelle: 6 bookings

act_booking19 = ActBooking.create!(
  date: "2019-09-03".to_date,
  user: isabelle,
  activity: fast_and_furious)

act_booking20 = ActBooking.create!(
  date: "2019-10-15".to_date,
  user: isabelle,
  activity: exposition_musee_grevin)

act_booking21 = ActBooking.create!(
  date: "2019-09-01".to_date,
  user: isabelle,
  activity: la_vie_scolaire)

act_booking22 = ActBooking.create!(
  date: "2019-10-10".to_date,
  user: isabelle,
  activity: exposition_musee_du_fumeur)

act_booking23 = ActBooking.create!(
  date: "2019-08-28".to_date,
  user: isabelle,
  activity: wedding_nigthmare)

act_booking24 = ActBooking.create!(
  date: "2019-08-21".to_date,
  user: isabelle,
  activity: docteur_miracle)

puts "Created actbookings..."




# Prends tout tes ActBooking et tu itères dessus
# Pour chaque actbooking, tu créées un nombre aléatoire de reviews qui une note aléatoire
# end and enjoy
# table Reviews
review_1 = Review.create!(rating: 1, act_booking: act_booking1)
review_2 = Review.create!(rating: 2, act_booking: act_booking2)
review_3 = Review.create!(rating: 3, act_booking: act_booking3)
review_4 = Review.create!(rating: 4, act_booking: act_booking4)
review_5 = Review.create!(rating: 5, act_booking: act_booking5)
review_6 = Review.create!(rating: 5, act_booking: act_booking6)
review_7 = Review.create!(rating: 4, act_booking: act_booking7)
review_8 = Review.create!(rating: 3, act_booking: act_booking8)
review_9 = Review.create!(rating: 2, act_booking: act_booking9)
review_10 = Review.create!(rating: 1, act_booking: act_booking10)
review_11 = Review.create!(rating: 2, act_booking: act_booking11)
review_12 = Review.create!(rating: 3, act_booking: act_booking12)
review_13 = Review.create!(rating: 5, act_booking: act_booking13)
review_14 = Review.create!(rating: 4, act_booking: act_booking14)
review_15 = Review.create!(rating: 1, act_booking: act_booking15)
review_16 = Review.create!(rating: 1, act_booking: act_booking16)
review_17 = Review.create!(rating: 2, act_booking: act_booking17)
review_18 = Review.create!(rating: 3, act_booking: act_booking18)
review_19 = Review.create!(rating: 4, act_booking: act_booking19)
review_20 = Review.create!(rating: 5, act_booking: act_booking20)
review_21 = Review.create!(rating: 2, act_booking: act_booking21)
review_22 = Review.create!(rating: 3, act_booking: act_booking22)
review_23 = Review.create!(rating: 4, act_booking: act_booking23)
review_24 = Review.create!(rating: 5, act_booking: act_booking24)

@act_bookings = [act_booking1, act_booking2, act_booking3, act_booking4, act_booking5, act_booking5, act_booking6, act_booking7,
                act_booking8, act_booking9, act_booking10, act_booking11, act_booking12, act_booking13, act_booking14, act_booking15,
                act_booking16, act_booking17, act_booking18, act_booking19, act_booking20, act_booking21, act_booking22,act_booking23,
                act_booking24]
@act_bookings.each do |act_booking|
  20.times do
    Review.create!(rating: rand(1..5), act_booking: act_booking)
  end
end

puts "created reviews!"


puts "...records created!"

