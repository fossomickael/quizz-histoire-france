# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

QuestionCategory.destroy_all
Choice.destroy_all
Question.destroy_all


cat_dix_neuf = Category.new(name: '19eme')
cat_napoleon = Category.new(name: 'Napoleon')

libelle = 'Quelle est la date du sacre de Napoléon Ier?'
explication = 'La cérémonie religieuse du sacre, officié par le pape Pie VII, suivie de celle du couronnement, se déroula, le dimanche 2 décembre 1804, à Notre-Dame de Paris.'
question_19eme = Question.create!(libelle: libelle, difficulty:1, explication:explication)
Choice.create!(libelle: '1804', is_right_answer: true, question: question_19eme)
Choice.create!(libelle: '1807', is_right_answer: false, question: question_19eme)
Choice.create!(libelle: '1809', is_right_answer: false, question: question_19eme)
Choice.create!(libelle: '1811', is_right_answer: false, question: question_19eme)

QuestionCategory.create(category: cat_dix_neuf, question: question_19eme)
QuestionCategory.create(category: cat_napoleon, question: question_19eme)

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

libelle = 'Quelle est la date de parution du roman Les Misérables?'
explication = "Les Misérables est un roman de Victor Hugo publié en 1862, l’un des plus vastes et des plus notables de la littérature française du xixe siècle."
question_miserables = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1832', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1842', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1852', is_right_answer: false, question: question_miserables)
Choice.create!(libelle: '1862', is_right_answer: true, question: question_miserables)

libelle = 'Quelle est la date des Trois Glorieuses?'
explication = "La révolution de Juillet est la deuxième révolution française après la première, celle de 1789. Elle porte sur le trône un nouveau roi, Louis-Philippe Ier, à la tête d'un nouveau régime, la monarchie de Juillet, qui succède à la Seconde Restauration. Cette révolution se déroule sur trois journées, les 27, 28 et 29 juillet 1830, dites « Trois Glorieuses »."
question_trois_glor = Question.create!(libelle: libelle, difficulty: 2, explication: explication)
Choice.create!(libelle: '1810', is_right_answer: false, question: question_trois_glor)
Choice.create!(libelle: '1820', is_right_answer: false, question: question_trois_glor)
Choice.create!(libelle: '1830', is_right_answer: true, question: question_trois_glor)
Choice.create!(libelle: '1840', is_right_answer: false, question: question_trois_glor)

libelle = 'Quand abdique Louis-Philippe?'
explication = "La révolution française de 1848, parfois dénommée « révolution de Février », est la troisième révolution française après la Révolution française de 1789 et celle de 1830. Elle se déroule à Paris du 22 au 25 février 1848.
Sous l'impulsion des libéraux et des républicains, une partie du peuple de Paris se soulève à nouveau et parvient à prendre le contrôle de la capitale. Le roi Louis-Philippe est contraint d'abdiquer en faveur de son petit-fils, Philippe d'Orléans, le 24 février 1848."
question_abdiq_louis = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_abdiq_louis)
Choice.create!(libelle: '1838', is_right_answer: false, question: question_abdiq_louis)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_abdiq_louis)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_abdiq_louis)

libelle = 'Quand Lamartine proclama la Deuxieme République?'
explication = "La révolution française de 1848, parfois dénommée « révolution de Février », est la troisième révolution française après la Révolution française de 1789 et celle de 1830. Elle se déroule à Paris du 22 au 25 février 1848.
Sous l'impulsion des libéraux et des républicains, une partie du peuple de Paris se soulève à nouveau et parvient à prendre le contrôle de la capitale. Le roi Louis-Philippe est contraint d'abdiquer en faveur de son petit-fils, Philippe d'Orléans, le 24 février 1848.
Le même jour, dès 15 heures, la Deuxième République est proclamée par Alphonse de Lamartine, entouré des révolutionnaires parisiens. Vers 20 heures, un gouvernement provisoire est mis en place, mettant ainsi fin à la monarchie de Juillet."
question_lamartine = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_lamartine)
Choice.create!(libelle: '1838', is_right_answer: false, question:question_lamartine)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_lamartine)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_lamartine)

libelle = "Quel candidat participa à l'élection présidentielle de 1848?"
explication = "Louis Eugène Cavaignac, connu sous le nom de général Cavaignac, né le 23 vendémiaire an XI (15 octobre 1802) à Paris et mort le 28 octobre 1857 dans son château d'Ourne à Flée, est un général et homme d'État français. Gouverneur d'Algérie (1848) puis président du Conseil des ministres chargé du pouvoir exécutif durant l'année 1848. Candidat à l'élection présidentielle de 1848, il est battu par Louis-Napoléon Bonaparte."
question_cavaignac = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: 'Jean-de-Dieu Soult', is_right_answer: false, question: question_cavaignac)
Choice.create!(libelle: 'François Guizot', is_right_answer: false, question:question_cavaignac)
Choice.create!(libelle: 'Victor Hugo', is_right_answer: false, question: question_cavaignac)
Choice.create!(libelle: 'Louis Eugène Cavaignac', is_right_answer: true, question: question_cavaignac)

libelle = "Quelle est la date de bataille d'Austerlitz?"
explication = "La bataille d’Austerlitz (aujourd’hui Slavkov u Brna, en République tchèque), surnommée la « bataille des Trois Empereurs », se déroule le lundi 2 décembre 1805, dans le sud de la Moravie, entre Brünn et Austerlitz. Après neuf heures de combats, la Grande Armée de Napoléon Ier, malgré son infériorité numérique, bat les forces de la Troisième Coalition qui se dissout à la suite de la bataille, obligeant l'Autriche à signer la paix de Presbourg."
question_austerlitz = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1805', is_right_answer: true, question:question_austerlitz)
Choice.create!(libelle: '1815', is_right_answer: false, question: question_austerlitz)
Choice.create!(libelle: '1825', is_right_answer: false, question: question_austerlitz)
Choice.create!(libelle: '1835', is_right_answer: false, question: question_austerlitz)

libelle = 'Quand fut voté la loi sur la liberté de la presse?'
explication = "La loi du 29 juillet 1881 sur la liberté de la presse est une loi française, votée sous la IIIe République, qui définit les libertés et responsabilités de la presse française, imposant un cadre légal à toute publication, ainsi qu'à l'affichage public, au colportage et à la vente sur la voie publique.
Elle est souvent considérée comme le texte juridique fondateur de la liberté de la presse et de la liberté d'expression en France, inspirée par l'article 11 de la Déclaration des droits de l’homme et du citoyen du 26 août 1789. "
question_liberte = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1861', is_right_answer: false, question: question_liberte)
Choice.create!(libelle: '1871', is_right_answer: false, question: question_liberte)
Choice.create!(libelle: '1881', is_right_answer: true, question: question_liberte)
Choice.create!(libelle: '1891', is_right_answer: false, question: question_liberte)

libelle = 'Quelle est la date du scandale des décorations'
explication = "Le scandale des décorations de 1887, aussi appelé l'affaire des décorations par la presse de l'époque, est un scandale politico-financier français de trafic de décorations, qui éclabousse le président de la République, Jules Grévy, et le contraint à la démission le 2 décembre 1887. Il ne faut pas confondre cette affaire avec celle du trafic des décorations de 1926 impliquant un fonctionnaire, Marcel Ruotte."
question_decorations = Question.create!(libelle: libelle, difficulty: 4, explication: explication)
Choice.create!(libelle: '1857', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1867', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1877', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1887', is_right_answer: true, question: question_decorations)

libelle = 'L’Empire français déclare la guerre au royaume de Prusse en'
explication = "La guerre franco-allemande de 1870-1871, parfois appelée guerre franco-prussienne ou guerre de 1870, est un conflit qui oppose, du 19 juillet 1870 au 28 janvier 1871, la France à une coalition d'États allemands dirigée par la Prusse et comprenant les vingt-et-un autres États membres de la confédération de l'Allemagne du Nord, ainsi que le royaume de Bavière, celui de Wurtemberg et le grand-duché de Bade. Cette guerre fut considérée par le chancelier Otto von Bismarck comme une conséquence de la défaite prussienne lors de la bataille d'Iéna de 1806 contre l'Empire français. Il dira d'ailleurs, après la proclamation de l'Empire allemand à Versailles en 1871 : « Sans Iéna, pas de Sedan »."
question_decorations = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1870', is_right_answer: true, question: question_decorations)
Choice.create!(libelle: '1872', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1874', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1876', is_right_answer: false, question: question_decorations)

libelle = 'Quelle est la date de la bataille de Sedan'
explication = "La bataille de Sedan a lieu le 1er septembre 1870, durant la guerre franco-allemande. S'opposent à l'issue de cette dernière l'armée française, dite l'Armée de Châlons, forte de 120 000 hommes et de 560 canons et commandée par l'empereur Napoléon III, à l'armée prussienne sous le commandement du futur Kaiser (Guillaume Ier de Prusse), forte de 200 000 hommes et de 780 canons. Il s'agit d'une victoire décisive des forces prussiennes, l'empereur ayant lui-même été fait prisonnier, mettant fin à la guerre en faveur de la Prusse et de ses alliés (la Bavière notamment), bien que le combat continuât sous la nouvelle République."
question_decorations = Question.create!(libelle: libelle, difficulty: 1, explication: explication)
Choice.create!(libelle: '1er septembre 1870', is_right_answer: true, question: question_decorations)
Choice.create!(libelle: '1er septembre 1871', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1er septembre 1872', is_right_answer: false, question: question_decorations)
Choice.create!(libelle: '1er septembre 1873', is_right_answer: false, question: question_decorations)

libelle = 'Quelle est la date de vente de la Louisiane aux Etats Unis?'
explication = "Napoléon 1er prend la décision de vendre la Louisiane aux jeunes États-Unis le 30 avril 1803 contre la somme de 80 millions de francs (ce qui représente environ un demi-milliard d'euros 2009). L'acte de vente ne précise pas la surface du territoire, inconnue à l'époque."
question_louisiane = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1803', is_right_answer: true, question: question_louisiane)
Choice.create!(libelle: '1813', is_right_answer: false, question: question_louisiane)
Choice.create!(libelle: '1823', is_right_answer: false, question: question_louisiane)
Choice.create!(libelle: '1823', is_right_answer: false, question: question_louisiane)

libelle = "Quelle est la date de l'abolition de l'esclavage dans les colonies françaises?"
explication = "Le deuxième décret de l'abolition de l'esclavage en France a été signé le 27 avril 1848 par le Gouvernement provisoire de la Deuxième République2. Il a été adopté sous l'impulsion de Victor Schœlcher. L'acte français d'abolition de l'esclavage est le résultat d'un long combat commencé avec la controverse de Valladolid en 1550, poursuivi dans les colonies et en Europe, avec les Sociétés des amis des Noirs particulièrement."
question_abolition = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1828', is_right_answer: false, question: question_abolition)
Choice.create!(libelle: '1838', is_right_answer: false, question: question_abolition)
Choice.create!(libelle: '1848', is_right_answer: true, question: question_abolition)
Choice.create!(libelle: '1858', is_right_answer: false, question: question_abolition)

libelle = "Quelle est la date de la prise d'Alger?"
explication = "Le 4 juillet 1830, la bataille de Staoueli suivie de la prise du fort de l'Empereur livrait à une armée française, Alger, l'antique métropole des pirates barbaresques."
question_alger = Question.create!(libelle: libelle, difficulty: 3, explication: explication)
Choice.create!(libelle: '1800', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1810', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1820', is_right_answer: false, question: question_alger)
Choice.create!(libelle: '1820', is_right_answer: true, question: question_alger)