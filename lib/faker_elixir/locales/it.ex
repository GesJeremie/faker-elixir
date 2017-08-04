defmodule FakerElixir.Locales.It do
  @moduledoc false

  @first_names ["Alberto", "Alessandro", "Alighieri", "Amedeo", "Anselmo", "Antonino", "Arcibaldo", "Armando", "Audenico", "Ausonio", "Bacchisio", "Battista", "Bernardo", "Caio", "Carlo", "Cecco", "Cirino", "Costantino", "Damiano", "Davide", "Edilio", "Egidio", "Elio", "Emanuel", "Enrico", "Ercole", "Eusebio", "Evangelista", "Fabiano", "Ferdinando", "Fiorentino", "Flavio", "Fulvio", "Gabriele", "Gastone", "Germano", "Giacinto", "Gianantonio", "Gianleonardo", "Gianmarco", "Gianriccardo", "Gioacchino", "Giordano", "Giuliano", "Graziano", "Guido", "Iacopo", "Ilario", "Ione", "Italo", "Laerte", "Lauro", "Leonardo", "Liborio", "Lorenzo", "Ludovico", "Maggiore", "Manuele", "Mariano", "Matteo", "Mauro", "Mirco", "Modesto", "Muzio", "Odino", "Olo", "Oreste", "Osea", "Patrizio", "Piererminio", "Pierfrancesco", "Piersilvio", "Priamo", "Quarto", "Quirino", "Raniero", "Renato", "Rocco", "Romeo", "Rosalino", "Sabatino", "Samuel", "Santo", "Serse", "Silvano", "Sirio", "Tancredi", "Terzo", "Timoteo", "Tolomeo", "Ubaldo", "Ulrico", "Valdo", "Neri", "Vinicio", "Walter", "Zaccaria", "Abramo", "Adriano", "Alan", "Albino", "Alessio", "Alighiero", "Amerigo", "Anastasio", "Antimo", "Antonio", "Arduino", "Aroldo", "Arturo", "Augusto", "Avide", "Baldassarre", "Bettino", "Bortolo", "Caligola", "Carmelo", "Celeste", "Ciro", "Costanzo", "Dante", "Dindo", "Domiziano", "Edipo", "Egisto", "Eliziario", "Emidio", "Enzo", "Eriberto", "Erminio", "Ettore", "Eustachio", "Fabio", "Fernando", "Fiorenzo", "Folco", "Furio", "Gaetano", "Gavino", "Gerlando", "Giacobbe", "Giancarlo", "Gianmaria", "Giobbe", "Giorgio", "Giulio", "Gregorio", "Ippolito", "Ivano", "Jacopo", "Lamberto", "Lazzaro", "Leone", "Lino", "Loris", "Luigi", "Manfredi", "Marco", "Marino", "Marzio", "Mattia", "Max", "Michele", "Mirko", "Moreno", "Nazzareno", "Nestore", "Nico", "Odone", "Omar", "Orfeo", "Osvaldo", "Pacifico", "Pericle", "Pietro", "Primo", "Quasimodo", "Radio", "Raoul", "Renzo", "Rodolfo", "Romolo", "Rosolino", "Rufo", "Sabino", "Sandro", "Secondo", "Sesto", "Silverio", "Siro", "Tazio", "Teseo", "Tommaso", "Tristano", "Umberto", "Artemide", "Assia", "Azue", "Benedetta", "Bibiana", "Brigitta", "Carmela", "Cassiopea", "Cesidia", "Cira", "Clea", "Cleopatra", "Clodovea", "Concetta", "Cosetta", "Cristyn", "Damiana", "Danuta", "Deborah", "Demi", "Diamante", "Diana", "Donatella", "Doriana", "Elda", "Elga", "Elsa", "Emilia", "Enrica", "Erminia", "Eufemia", "Evita", "Fatima", "Felicia", "Filomena", "Flaviana", "Fortunata", "Gelsomina", "Genziana", "Giacinta", "Gilda", "Giovanna", "Giulietta", "Grazia", "Guendalina", "Ileana", "Irene", "Isabel", "Isira", "Ivonne", "Jole", "Claudia", "Laura", "Lucia", "Lia", "Lidia", "Lisa", "Loredana", "Loretta", "Luce", "Lucrezia", "Luna", "Marcella", "Maria", "Mariagiulia", "Marianita", "Mariapia", "Marieva", "Marina", "Maristella", "Matilde", "Mecren", "Mietta", "Miriana", "Miriam", "Monia", "Morgana", "Naomi", "Nicoletta", "Ninfa", "Noemi", "Nunzia", "Olimpia", "Oretta", "Ortensia", "Penelope", "Piccarda", "Prisca", "Rebecca", "Rita", "Rosalba", "Rosaria", "Rosita", "Samira", "Sarita", "Selvaggia", "Sibilla", "Soriana", "Thea", "Tosca", "Ursula", "Vania", "Vera", "Vienna", "Violante", "Vitalba", "Zelida"]
  @last_names ["Amato", "Barbieri", "Barone", "Basile", "Battaglia", "Bellini", "Benedetti", "Bernardi", "Bianc", "Bianchi", "Bruno", "Caputo", "Carbon", "Caruso", "Cattaneo", "Colombo", "Cont", "Conte", "Coppola", "Costa", "Costantin", "D'amico", "D'angelo", "Damico", "De Angelis", "De luca", "De rosa", "De Santis", "Donati", "Esposito", "Fabbri", "Farin", "Ferrara", "Ferrari", "Ferraro", "Ferretti", "Ferri", "Fior", "Fontana", "Galli", "Gallo", "Gatti", "Gentile", "Giordano", "Giuliani", "Grassi", "Grasso", "Greco", "Guerra", "Leone", "Lombardi", "Lombardo", "Longo", "Mancini", "Marchetti", "Marian", "Marini", "Marino", "Martinelli", "Martini", "Martino", "Mazza", "Messina", "Milani", "Montanari", "Monti", "Morelli", "Moretti", "Negri", "Neri", "Orlando", "Pagano", "Palmieri", "Palumbo", "Parisi", "Pellegrini", "Pellegrino", "Piras", "Ricci", "Rinaldi", "Riva", "Rizzi", "Rizzo", "Romano", "Ross", "Rossetti", "Ruggiero", "Russo", "Sala", "Sanna", "Santoro", "Sartori", "Serr", "Silvestri", "Sorrentino", "Testa", "Valentini", "Villa", "Vitale", "Vitali"]

  @zip_code_patterns ["#####"]

  @street_suffixes ["Piazza", "Strada", "Via", "Borgo", "Contrada", "Rotonda", "Incrocio"]

  @bank_names ["UniCredit", "Intesa Sanpaolo", "Banca d'Italia", "Cassa Depositi e Prestiti", "Banca Monte dei Paschi di Siena", "Banca Popolare di Milano", "UBI Banca", "Banca Nazionale del Lavoro", "Mediobanca", "Banca Popolare dell'Emilia Romagna", "Cariparma", "ICCREA Banca", "Banca Mediolanum", "Banca Carige", "Crediop", "Banca Popolare di Sondrio", "Credito Emiliano", "Credito Valtellinese", "Banca Sella Group", "Banca Popolare di Bari", "Banco di Desio e della Brianza", "Unipol Banca", "Cassa di Risparmio di Asti"]
  @colors ["rosso", "verde", "blu", "giallo", "viola", "menta verde", "bianca", "nero", "arancia", "rosa", "grigio", "marrone", "turchese", "cielo blu", "oro", "argento"]

  @domain_popular_emails ["gmail.com", "yahoo.com", "hotmail.com", "email.it", "libero.it", "yahoo.it"]
  @domain_extensions ["com", "net", "org", "it"]

  #def apps, do: @apps
  def bank_names, do: @bank_names
  #def building_patterns, do: @building_patterns
  #def cities, do: @cities
  def colors, do: @colors
  #def countries, do: @countries
  #def coupons, do: @coupons
  #def credit_cards, do: @credit_cards
  #def currencies, do: @currencies
  def domain_extensions, do: @domain_extensions
  def domain_popular_emails, do: @domain_popular_emails
  #def domain_school_emails, do: @domain_school_emails
  #def file_extensions, do: @file_extensions
  #def file_mimes, do: @file_mimes
  def first_names, do: @first_names
  def last_names, do: @last_names
  #def phone_cell_patterns, do: @phone_cell_patterns
  #def phone_home_patterns, do: @phone_home_patterns
  #def prefixes, do: @prefixes
  #def products, do: @products
  #def secondary_addresses, do: @secondary_addresses
  #def state_codes, do: @state_codes
  #def states, do: @states
  def street_suffixes, do: @street_suffixes
  #def suffixes, do: @suffixes
  #def time_zones, do: @time_zones
  #def title_descriptors, do: @title_descriptors
  #def title_jobs, do: @title_jobs
  #def title_levels, do: @title_levels
  #def version_patterns, do: @version_patterns
  #def weak_passwords, do: @weak_passwords
  #def words, do: @words
  def zip_code_patterns, do: @zip_code_patterns
  #def user_agents, do: @user_agents
end
