# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

QuestionCategory.destroy_all
Category.destroy_all
Choice.destroy_all
Question.destroy_all

cat_dix_huit = Category.new(name: '18eme')
cat_dix_neuf = Category.new(name: '19eme')
cat_napoleon = Category.new(name: 'Napoleon')

libelle = "Quelle est le système de Law, imaginé par l'Écossais John Law ?"
explication = "Le système de Law, imaginé par l'Écossais John Law en développant l'utilisation de papier-monnaie plutôt que d'espèces métalliques, et afin de faciliter le commerce et l'investissement, a été mis en place en France, sous la régence de Philippe d'Orléans, de 1716 à 1720, dans le but de liquider la dette laissée par Louis XIV."
question_law = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: 'Un système hydraulique', is_right_answer: false, question: question_law)
Choice.create!(libelle: 'Un système chimique', is_right_answer: false, question: question_law)
Choice.create!(libelle: 'Un système économique', is_right_answer: true, question: question_law)
Choice.create!(libelle: 'Un système informatique', is_right_answer: false, question: question_law)

QuestionCategory.create!(category: cat_dix_huit, question: question_law)

libelle = 'Quelles sont les dates de la Régence ?'
explication = "La Régencen, dans l’histoire du royaume de France, est la période de régence instaurée à la mort de Louis XIV (1er septembre 1715) à cause du trop jeune âge de son héritier désigné, Louis XV, qui n’a que 5 ans et 9 mois. Cette période est remarquable par son progressisme, mais la crédibilité de l’État est affaiblie. La Régence se termine officiellement à la majorité de Louis XV (13 ans et 1 jour) en février 1723, mais une « régence politique » se poursuit."
question_regence = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1705-1713', is_right_answer: false, question: question_regence)
Choice.create!(libelle: '1715-1723', is_right_answer: true, question: question_regence)
Choice.create!(libelle: '1725-1733', is_right_answer: false, question: question_regence)
Choice.create!(libelle: '1735-1743', is_right_answer: false, question: question_regence)

QuestionCategory.create!(category: cat_dix_huit, question: question_regence)

libelle = "L'Encyclopédie ou Dictionnaire raisonné des sciences, des arts et des métiers fût éditée sous la direction de"
explication = "L’Encyclopédie ou Dictionnaire raisonné des sciences, des arts et des métiers est une encyclopédie française, éditée de 1751 à 1772 sous la direction de Denis Diderot et, partiellement, de Jean Le Rond d'Alembert."
question_enyclo = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: 'Denis Diderot', is_right_answer: true, question: question_enyclo)
Choice.create!(libelle: 'Étienne de La Boétie', is_right_answer: false, question: question_enyclo)
Choice.create!(libelle: 'Jacques de Mailles', is_right_answer: false, question: question_enyclo)
Choice.create!(libelle: 'François Rabelais', is_right_answer: false, question: question_enyclo)

QuestionCategory.create!(category: cat_dix_huit, question: question_enyclo)


libelle = 'Quelle est la date de la traversée de la Manche en ballon par Jean-Pierre Blanchard?'
explication = "Jean-Pierre François Blanchard, né le 4 juillet 1753 au Petit-Andely et mort le 7 mars 1809 à Paris, est un aéronaute français qui s'illustra dans la conquête des airs en ballon, notamment la première traversée de la Manche en ballon, le 7 janvier 1785."
question_ballon = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1725', is_right_answer: false, question: question_ballon)
Choice.create!(libelle: '1745', is_right_answer: false, question: question_ballon)
Choice.create!(libelle: '1765', is_right_answer: false, question: question_ballon)
Choice.create!(libelle: '1785', is_right_answer: true, question: question_ballon)

QuestionCategory.create!(category: cat_dix_huit, question: question_ballon)

libelle = "Quelle est la date de l'affaire du collier de la reine  Marie-Antoinette,"
explication = "L’affaire du collier de la reine est une escroquerie qui a pour victime en 1785 le cardinal de Rohan, évêque de Strasbourg, éclaboussant la réputation de la reine de France Marie-Antoinette, épouse de Louis XVI."
question_collier = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1725', is_right_answer: false, question: question_collier)
Choice.create!(libelle: '1745', is_right_answer: false, question: question_collier)
Choice.create!(libelle: '1765', is_right_answer: false, question: question_collier)
Choice.create!(libelle: '1785', is_right_answer: true, question: question_collier)

QuestionCategory.create!(category: cat_dix_huit, question: question_collier)

libelle = 'Quelle est la date du Serment du Jeu de paume?'
explication = "Le serment du Jeu de Paume est l’engagement solennel d’union pris le 20 juin 1789 à la salle du Jeu de paume, à Versailles, par 300 députés du tiers état, auxquels s'associent certains députés du clergé et de la noblesse lors des États généraux de 1789."
question_paume = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1788', is_right_answer: false, question: question_paume)
Choice.create!(libelle: '1789', is_right_answer: true, question: question_paume)
Choice.create!(libelle: '1790', is_right_answer: false, question: question_paume)
Choice.create!(libelle: '1791', is_right_answer: false, question: question_paume)

QuestionCategory.create!(category: cat_dix_huit, question: question_paume)

libelle = "Quelle est la date de l'invasion de la Dominique?"
explication = "L'invasion de la Dominique en 1778 est une invasion française réussie de l'île de la Dominique dans les Antilles, pendant la Guerre d'indépendance des États-Unis. Le 6 septembre, une flotte française, sous le commandement du marquis de Bouillé, débarque des troupes dans l'île. Le détachement britannique se rend le même jour sans tirer un coup de feu. La prise de la Dominique par la marine française a incité les Anglais à renforcer leur flotte nord-américaine. Ils ont alors saisi l'île de Sainte-Lucie en novembre, Savannah et la Géorgie en décembre."
question_dominique = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1768', is_right_answer: false, question: question_dominique)
Choice.create!(libelle: '1778', is_right_answer: true, question: question_dominique)
Choice.create!(libelle: '1788', is_right_answer: false, question: question_dominique)
Choice.create!(libelle: '1798', is_right_answer: false, question: question_dominique)

QuestionCategory.create!(category: cat_dix_huit, question: question_dominique)

libelle = 'Quelle est la date de publication du Compte-rendu au Roy de Necker?' 
explication = 'Necker publia son Compte-rendu au Roy en 1781 dans lequel il fait le bilan de son administration financière. Ce petit ouvrage enthousiasme les Français mais indigne princes, ministres et parlementaires car il donnait la liste nominale des charges et pensions payées aux courtisans et à la famille royale.'
question_necker = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1761', is_right_answer: false, question: question_necker)
Choice.create!(libelle: '1771', is_right_answer: false, question: question_necker)
Choice.create!(libelle: '1781', is_right_answer: true, question: question_necker)
Choice.create!(libelle: '1791', is_right_answer: false, question: question_necker)

QuestionCategory.create!(category: cat_dix_huit, question: question_necker)

libelle = 'Quelle est la date de la mort de Louis XV?' 
explication = '10 mai 1774 : Louis XV meurt à 15:30, son petit-fils Louis-Auguste devient à cet instant Louis XVI.'
question_louis_xv = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1714', is_right_answer: false, question: question_louis_xv)
Choice.create!(libelle: '1734', is_right_answer: false, question: question_louis_xv)
Choice.create!(libelle: '1754', is_right_answer: false, question: question_louis_xv)
Choice.create!(libelle: '1774', is_right_answer: true, question: question_louis_xv)

QuestionCategory.create!(category: cat_dix_huit, question: question_louis_xv)

libelle = 'Quelle est la date de la première représentation du Mariage de Figaro?'
explication = "La Folle Journée, ou le Mariage de Figaro est une comédie en cinq actes de Pierre-Augustin Caron de Beaumarchais écrite à 46 ans en 1778, lue à la Comédie-Française en 1781, donnée en privé le 23 septembre 1783 dans la maison de campagne du comte de Vaudreil à Gennevilliers (dite château de Gennevilliers)1, mais dont la première représentation officielle publique n'eut lieu que le 27 avril 1784 au théâtre François (aujourd'hui théâtre de l'Odéon), après plusieurs années de censure : ce fut un triomphe, un événement, et l'occasion de polémiques. 68 représentations suivirent en huit mois"
question_figaro = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1724', is_right_answer: false, question: question_figaro)
Choice.create!(libelle: '1744', is_right_answer: false, question: question_figaro)
Choice.create!(libelle: '1764', is_right_answer: false, question: question_figaro)
Choice.create!(libelle: '1784', is_right_answer: true, question: question_figaro)

QuestionCategory.create!(category: cat_dix_huit, question: question_figaro)

libelle = 'Quelle est la date de la Journée des Tuiles à Grenoble?'
explication = "La journée des Tuiles est le nom donné à une émeute, survenue le 7 juin 1788 à Grenoble, au cours de laquelle les insurgés affrontent la troupe à coups de tuiles, dans le contexte de la fronde parlementaire consécutive à la tentative de réforme du garde des Sceaux Lamoignon et du contrôleur général des finances Loménie de Brienne, visant à annuler les pouvoirs rendus aux parlements au début du règne de Louis XVI (qui annule la réforme du chancelier Maupeou, entreprise à la fin du règne de Louis XV) et comprenant la mise en place de nouveaux impôts (droit de timbre et nouvel impôt foncier général) et mesures de libre-échange, impopulaires depuis la guerre des farines."
question_grenoble = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: '1758', is_right_answer: false, question: question_grenoble )
Choice.create!(libelle: '1768', is_right_answer: false, question: question_grenoble )
Choice.create!(libelle: '1778', is_right_answer: false, question: question_grenoble )
Choice.create!(libelle: '1788', is_right_answer: true, question: question_grenoble )

QuestionCategory.create!(category: cat_dix_huit, question: question_grenoble )


libelle = 'Quelle est la date du sacre de Napoléon Ier?'
explication = 'La cérémonie religieuse du sacre, officié par le pape Pie VII, suivie de celle du couronnement, se déroula, le dimanche 2 décembre 1804, à Notre-Dame de Paris.'
question_19eme = Question.create!(libelle: libelle, difficulty:1, explication:explication)
Choice.create!(libelle: '1804', is_right_answer: true, question: question_19eme)
Choice.create!(libelle: '1807', is_right_answer: false, question: question_19eme)
Choice.create!(libelle: '1809', is_right_answer: false, question: question_19eme)
Choice.create!(libelle: '1811', is_right_answer: false, question: question_19eme)

QuestionCategory.create!(category: cat_dix_neuf, question: question_19eme)
QuestionCategory.create!(category: cat_napoleon, question: question_19eme)

libelle = "Quelle est la date du Coup d'Etat de Louis-Napoléon Bonaparte?"
explication = "Le coup d'État du 2 décembre 1851 est l'acte par lequel, en"\
            'violation de la légitimité constitutionnelle, Louis-Napoléon'\
            'Bonaparte, président de la République française depuis trois ans,'\
            'conserve le pouvoir à quelques mois de la fin de son mandat alors'\
            'que la Constitution de la Deuxième République lui interdisait de se'\
            'représenter.'
question_louis_nap = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '2 décembre 1851', is_right_answer: true, question: question_louis_nap)
Choice.create!(libelle: '2 décembre 1854', is_right_answer: false, question: question_louis_nap)
Choice.create!(libelle: '2 décembre 1857', is_right_answer: false, question: question_louis_nap)
Choice.create!(libelle: '2 décembre 1860', is_right_answer: false, question: question_louis_nap)

QuestionCategory.create(category: cat_dix_neuf, question: question_louis_nap)

libelle = "Quand a été fondé l'École spéciale militaire de Saint-Cyr?"
explication = "L'École spéciale militaire de Saint-Cyr (ESM Saint-Cyr), plus souvent appelée simplement Saint-Cyr, a été fondée en 1802 par Napoléon Ier, alors premier consul."
question_saint_cyr = Question.create!(libelle: libelle, difficulty: 3, explication:explication)
Choice.create!(libelle: '1802', is_right_answer: true, question: question_saint_cyr)
Choice.create!(libelle: '1812', is_right_answer: false, question: question_saint_cyr)
Choice.create!(libelle: '1822', is_right_answer: false, question: question_saint_cyr)
Choice.create!(libelle: '1832', is_right_answer: false, question: question_saint_cyr)

libelle = "Qui a fondé l'École spéciale militaire de Saint-Cyr?"
explication = "L'École spéciale militaire de Saint-Cyr (ESM Saint-Cyr), plus souvent appelée simplement Saint-Cyr, a été fondée en 1802 par Napoléon Ier, alors premier consul."
question_fond_saint_cyr = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: 'Louis XV', is_right_answer: false, question: question_fond_saint_cyr)
Choice.create!(libelle: 'Louis XIV', is_right_answer: false, question: question_fond_saint_cyr)
Choice.create!(libelle: 'Napoléon Ier', is_right_answer: true, question: question_fond_saint_cyr)
Choice.create!(libelle: 'Louis-Philippe Ier', is_right_answer: false, question: question_fond_saint_cyr)

QuestionCategory.create(category: cat_dix_neuf, question: question_fond_saint_cyr)
QuestionCategory.create(category: cat_napoleon, question: question_fond_saint_cyr)

libelle = 'Quelle est la date de la Première exposition des peintres impressionnistes?'
explication = "On appelle « Première exposition des peintres impressionnistes », une manifestation culturelle française organisée par la Société anonyme des artistes peintres, sculpteurs et graveurs du 15 avril au 15 mai 1874 au 35 boulevard des Capucines à Paris dans les studios d'un célèbre écrivain et photographe de l'époque, Nadar. Originellement, cette exposition ne porte aucun qualifiant officiel : ce sont les critiques d'art, qui, après coup, par voie de presse, appelèrent cet événement « l'Exposition des impressionnistes »"
question_expo_imp = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1854', is_right_answer: false, question: question_expo_imp)
Choice.create!(libelle: '1864', is_right_answer: false, question: question_expo_imp)
Choice.create!(libelle: '1874', is_right_answer: true, question: question_expo_imp)
Choice.create!(libelle: '1884', is_right_answer: false, question: question_expo_imp)

QuestionCategory.create(category: cat_dix_neuf, question: question_expo_imp)

libelle = 'Quelle est la date de bataille de Waterloo?'
explication = "La bataille de Waterloo se déroule le 18 juin 1815, en Belgique, à vingt kilomètres au sud de Bruxelles, dans l'actuelle province du Brabant wallon"
question_waterloo = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1805', is_right_answer: false, question: question_waterloo)
Choice.create!(libelle: '1815', is_right_answer: true, question: question_waterloo)
Choice.create!(libelle: '1825', is_right_answer: false, question: question_waterloo)
Choice.create!(libelle: '1835', is_right_answer: false, question: question_waterloo)

QuestionCategory.create(category: cat_dix_neuf, question: question_waterloo)
QuestionCategory.create(category: cat_napoleon, question: question_waterloo)

libelle = 'Quelle est la date du décret impérial abolissant la traite des Noirs?'
explication = "Par le décret du 29 mars 1815, l'empereur Napoléon Ier, qui avait conservé l'esclavage en Guadeloupe et en Martinique à sa restitution à la France en 1802 à la paix d'Amiens, abolit la « traite des Noirs » et interdit d’introduire, pour être vendu dans les colonies françaises, « aucun Noir provenant de la traite soit française, soit étrangère »"
question_traite = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1805', is_right_answer: false, question: question_traite)
Choice.create!(libelle: '1815', is_right_answer: true, question: question_traite)
Choice.create!(libelle: '1825', is_right_answer: false, question: question_traite)
Choice.create!(libelle: '1835', is_right_answer: false, question: question_traite)

QuestionCategory.create(category: cat_dix_neuf, question: question_traite)
QuestionCategory.create(category: cat_napoleon, question: question_traite)

libelle = 'Quel est le nom de la dernière résidence de Napoléon?'
explication = "Longwood House est un bâtiment qui fut la dernière résidence de Napoléon Ier lors de son exil sur l'île de Sainte-Hélène. Napoléon Ier y séjourna du 10 décembre 1815 au 5 mai 1821, jour de sa mort."
question_dern_res = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: 'Blackwood House', is_right_answer: false, question: question_dern_res)
Choice.create!(libelle: 'Whitewood House', is_right_answer: false, question: question_dern_res)
Choice.create!(libelle: 'Longwood House', is_right_answer: true, question: question_dern_res)
Choice.create!(libelle: 'Shortwood House', is_right_answer: false, question: question_dern_res)

QuestionCategory.create(category: cat_dix_neuf, question: question_dern_res)
QuestionCategory.create(category: cat_napoleon, question: question_dern_res)

libelle = 'Quelle est la date de parution de Notre-Dame de Paris?'
explication = "Notre-Dame de Paris (titre complet : Notre-Dame de Paris. 1482) est un roman historique de l'écrivain français Victor Hugo, publié en 1831."
question_nddp = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1811', is_right_answer: false, question: question_nddp)
Choice.create!(libelle: '1821', is_right_answer: false, question: question_nddp)
Choice.create!(libelle: '1831', is_right_answer: true, question: question_nddp)
Choice.create!(libelle: '1841', is_right_answer: false, question: question_nddp)

QuestionCategory.create(category: cat_dix_neuf, question: question_nddp)


libelle = 'Quelle est la date de parution du roman Les Misérables?'
explication = "Les Misérables est un roman de Victor Hugo publié en 1862, l’un des plus vastes et des plus notables de la littérature française du xixe siècle."
question_miserables = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1832', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1842', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1852', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1862', is_right_answer: true, question: question_miserables)

QuestionCategory.create(category: cat_dix_neuf, question: question_miserables)

libelle = 'Quelle est la date des Trois Glorieuses?'
explication = "La révolution de Juillet est la deuxième révolution française après la première, celle de 1789. Elle porte sur le trône un nouveau roi, Louis-Philippe Ier, à la tête d'un nouveau régime, la monarchie de Juillet, qui succède à la Seconde Restauration. Cette révolution se déroule sur trois journées, les 27, 28 et 29 juillet 1830, dites « Trois Glorieuses »."
question_trois_glor = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1810', is_right_answer: false, question: question_trois_glor)
Choice.create!(libelle: '1820', is_right_answer: false, question: question_trois_glor)
Choice.create!(libelle: '1830', is_right_answer: true, question: question_trois_glor)
Choice.create!(libelle: '1840', is_right_answer: false, question: question_trois_glor)

QuestionCategory.create(category: cat_dix_neuf, question: question_trois_glor)

libelle = 'Quand abdique Louis-Philippe?'
explication = "La révolution française de 1848, parfois dénommée « révolution de Février », est la troisième révolution française après la Révolution française de 1789 et celle de 1830. Elle se déroule à Paris du 22 au 25 février 1848.
Sous l'impulsion des libéraux et des républicains, une partie du peuple de Paris se soulève à nouveau et parvient à prendre le contrôle de la capitale. Le roi Louis-Philippe est contraint d'abdiquer en faveur de son petit-fils, Philippe d'Orléans, le 24 février 1848."
question_abdiq_louis = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_abdiq_louis)
Choice.create!(libelle: '1838', is_right_answer: false, question: question_abdiq_louis)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_abdiq_louis)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_abdiq_louis)

QuestionCategory.create(category: cat_dix_neuf, question: question_abdiq_louis)

libelle = 'Quand Lamartine proclama la Deuxieme République?'
explication = "La révolution française de 1848, parfois dénommée « révolution de Février », est la troisième révolution française après la Révolution française de 1789 et celle de 1830. Elle se déroule à Paris du 22 au 25 février 1848.
Sous l'impulsion des libéraux et des républicains, une partie du peuple de Paris se soulève à nouveau et parvient à prendre le contrôle de la capitale. Le roi Louis-Philippe est contraint d'abdiquer en faveur de son petit-fils, Philippe d'Orléans, le 24 février 1848.
Le même jour, dès 15 heures, la Deuxième République est proclamée par Alphonse de Lamartine, entouré des révolutionnaires parisiens. Vers 20 heures, un gouvernement provisoire est mis en place, mettant ainsi fin à la monarchie de Juillet."
question_lamartine = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_lamartine)
Choice.create!(libelle: '1838', is_right_answer: false, question:question_lamartine)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_lamartine)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_lamartine)

QuestionCategory.create(category: cat_dix_neuf, question: question_lamartine)

libelle = "Quel candidat participa à l'élection présidentielle de 1848?"
explication = "Louis Eugène Cavaignac, connu sous le nom de général Cavaignac, né le 23 vendémiaire an XI (15 octobre 1802) à Paris et mort le 28 octobre 1857 dans son château d'Ourne à Flée, est un général et homme d'État français. Gouverneur d'Algérie (1848) puis président du Conseil des ministres chargé du pouvoir exécutif durant l'année 1848. Candidat à l'élection présidentielle de 1848, il est battu par Louis-Napoléon Bonaparte."
question_cavaignac = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: 'Jean-de-Dieu Soult', is_right_answer: false, question: question_cavaignac)
Choice.create!(libelle: 'François Guizot', is_right_answer: false, question:question_cavaignac)
Choice.create!(libelle: 'Victor Hugo', is_right_answer: false, question: question_cavaignac)
Choice.create!(libelle: 'Louis Eugène Cavaignac', is_right_answer: true, question: question_cavaignac)

QuestionCategory.create(category: cat_dix_neuf, question: question_cavaignac )

libelle = "Quelle est la date de bataille d'Austerlitz?"
explication = "La bataille d’Austerlitz (aujourd’hui Slavkov u Brna, en République tchèque), surnommée la « bataille des Trois Empereurs », se déroule le lundi 2 décembre 1805, dans le sud de la Moravie, entre Brünn et Austerlitz. Après neuf heures de combats, la Grande Armée de Napoléon Ier, malgré son infériorité numérique, bat les forces de la Troisième Coalition qui se dissout à la suite de la bataille, obligeant l'Autriche à signer la paix de Presbourg."
question_austerlitz = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1805', is_right_answer: true, question:question_austerlitz)
Choice.create!(libelle: '1815', is_right_answer: false, question: question_austerlitz)
Choice.create!(libelle: '1825', is_right_answer: false, question: question_austerlitz)
Choice.create!(libelle: '1835', is_right_answer: false, question: question_austerlitz)

QuestionCategory.create(category: cat_dix_neuf, question: question_austerlitz )
QuestionCategory.create(category: cat_napoleon, question: question_austerlitz )

libelle = 'Quand fut voté la loi sur la liberté de la presse?'
explication = "La loi du 29 juillet 1881 sur la liberté de la presse est une loi française, votée sous la IIIe République, qui définit les libertés et responsabilités de la presse française, imposant un cadre légal à toute publication, ainsi qu'à l'affichage public, au colportage et à la vente sur la voie publique.
Elle est souvent considérée comme le texte juridique fondateur de la liberté de la presse et de la liberté d'expression en France, inspirée par l'article 11 de la Déclaration des droits de l’homme et du citoyen du 26 août 1789. "
question_liberte = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1861', is_right_answer: false, question: question_liberte)
Choice.create!(libelle: '1871', is_right_answer: false, question: question_liberte)
Choice.create!(libelle: '1881', is_right_answer: true, question: question_liberte)
Choice.create!(libelle: '1891', is_right_answer: false, question: question_liberte)

QuestionCategory.create(category: cat_dix_neuf, question: question_liberte )

libelle = 'Quelle est la date du scandale des décorations'
explication = "Le scandale des décorations de 1887, aussi appelé l'affaire des décorations par la presse de l'époque, est un scandale politico-financier français de trafic de décorations, qui éclabousse le président de la République, Jules Grévy, et le contraint à la démission le 2 décembre 1887. Il ne faut pas confondre cette affaire avec celle du trafic des décorations de 1926 impliquant un fonctionnaire, Marcel Ruotte."
question_decorations = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: '1857', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1867', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1877', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1887', is_right_answer: true, question: question_decorations)

QuestionCategory.create(category: cat_dix_neuf, question: question_decorations)

libelle = 'L’Empire français déclare la guerre au royaume de Prusse en'
explication = "La guerre franco-allemande de 1870-1871, parfois appelée guerre franco-prussienne ou guerre de 1870, est un conflit qui oppose, du 19 juillet 1870 au 28 janvier 1871, la France à une coalition d'États allemands dirigée par la Prusse et comprenant les vingt-et-un autres États membres de la confédération de l'Allemagne du Nord, ainsi que le royaume de Bavière, celui de Wurtemberg et le grand-duché de Bade. Cette guerre fut considérée par le chancelier Otto von Bismarck comme une conséquence de la défaite prussienne lors de la bataille d'Iéna de 1806 contre l'Empire français. Il dira d'ailleurs, après la proclamation de l'Empire allemand à Versailles en 1871 : « Sans Iéna, pas de Sedan »."
question_guerre = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1870', is_right_answer: true, question: question_guerre)
Choice.create!(libelle: '1872', is_right_answer: false, question: question_guerre)
Choice.create!(libelle: '1874', is_right_answer: false, question: question_guerre)
Choice.create!(libelle: '1876', is_right_answer: false, question: question_guerre)

QuestionCategory.create(category: cat_dix_neuf, question: question_guerre)

libelle = 'Quelle est la date de la bataille de Sedan'
explication = "La bataille de Sedan a lieu le 1er septembre 1870, durant la guerre franco-allemande. S'opposent à l'issue de cette dernière l'armée française, dite l'Armée de Châlons, forte de 120 000 hommes et de 560 canons et commandée par l'empereur Napoléon III, à l'armée prussienne sous le commandement du futur Kaiser (Guillaume Ier de Prusse), forte de 200 000 hommes et de 780 canons. Il s'agit d'une victoire décisive des forces prussiennes, l'empereur ayant lui-même été fait prisonnier, mettant fin à la guerre en faveur de la Prusse et de ses alliés (la Bavière notamment), bien que le combat continuât sous la nouvelle République."
question_sedan = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1er septembre 1870', is_right_answer: true, question: question_sedan )
Choice.create!(libelle: '1er septembre 1871', is_right_answer: false, question: question_sedan )
Choice.create!(libelle: '1er septembre 1872', is_right_answer: false, question: question_sedan )
Choice.create!(libelle: '1er septembre 1873', is_right_answer: false, question: question_sedan )


QuestionCategory.create(category: cat_dix_neuf, question: question_sedan )

libelle = 'Quelle est la date de vente de la Louisiane aux Etats Unis?'
explication = "Napoléon 1er prend la décision de vendre la Louisiane aux jeunes États-Unis le 30 avril 1803 contre la somme de 80 millions de francs (ce qui représente environ un demi-milliard d'euros 2009). L'acte de vente ne précise pas la surface du territoire, inconnue à l'époque."
question_louisiane = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1803', is_right_answer: true, question: question_louisiane)
Choice.create!(libelle: '1813', is_right_answer: false, question: question_louisiane)
Choice.create!(libelle: '1823', is_right_answer: false, question: question_louisiane)
Choice.create!(libelle: '1823', is_right_answer: false, question: question_louisiane)

QuestionCategory.create(category: cat_dix_neuf, question:  question_louisiane)
QuestionCategory.create(category: cat_napoleon, question:  question_louisiane)

libelle = "Quelle est la date de l'abolition de l'esclavage dans les colonies françaises?"
explication = "Le deuxième décret de l'abolition de l'esclavage en France a été signé le 27 avril 1848 par le Gouvernement provisoire de la Deuxième République2. Il a été adopté sous l'impulsion de Victor Schœlcher. L'acte français d'abolition de l'esclavage est le résultat d'un long combat commencé avec la controverse de Valladolid en 1550, poursuivi dans les colonies et en Europe, avec les Sociétés des amis des Noirs particulièrement."
question_abolition = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_abolition)
Choice.create!(libelle: '1838', is_right_answer: false, question: question_abolition)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_abolition)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_abolition)

QuestionCategory.create(category: cat_dix_neuf, question: question_abolition)


libelle = "Quelle est la date de la prise d'Alger?"
explication = "Le 4 juillet 1830, la bataille de Staoueli suivie de la prise du fort de l'Empereur livrait à une armée française, Alger, l'antique métropole des pirates barbaresques."
question_alger = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1800', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1810', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1820', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1830', is_right_answer: true, question: question_alger)

QuestionCategory.create(category: cat_dix_neuf, question: question_alger)