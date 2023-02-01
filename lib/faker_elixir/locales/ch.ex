defmodule FakerElixir.Locales.Ch do

  @moduledoc false

  @cities ["Hornussen", "Zürich", "Bern", "Basel", "Luzern", "Thun", "Lausanne", "Dittingen", "Chur", "Davos", "Filisur", "Thyon 2000", "Genf", "Yverdon-les-Bains", "Brig", "Mettmenstetten", "Aathal-Seegräben", "Neuchatel", "Sion", "Lengnau", "Montreux", "Vevey", "Visp", "Frick", "Basel", "Baden", "Laufenburg", "Altdorf", "Engelberg", "Bitsch", "Schwyz", "Samedan", "St. Moritz", "Samnaun", "Lugano", "Bellinzona", "Locarno", "Biasca"]

  @first_names ["Martin", "Hans", "Angela", "Robert", "Georges", "Urs", "Beat", "Reto", "Andrin", "Verena", "Simon", "Rosmarie", "Helena", "Dorli", "Astrid", "Bianca", "Thomas", "Vreni", "Regula", "Mirko", "Tobias", "Walther", "Daniel", "Peter", "Christian", "Andreas", "Michael", "Markus", "Marco", "David", "Bruno", "Anna", "Sandra", "Ruth", "Claudia", "Claudio", "Elisabeth", "Nicole", "Barbara", "Daniela", "Christiane", "Claudine", "Roland", "Werner", "René", "Patrick", "Patricia", "Jean", "Michel", "André", "Alain", "Claude", "Ana", "Marie", "Luca", "Andrea", "Sara", "Francesca", "Paola", "Guy", "Viola", "Simonetta", "Ignazio", "Karin"]
  @last_names ["Müller", "Schmid", "Meyer", "Meier", "Keller", "Hauser", "Huber", "Schwizer", "Bianchi", "Bernasconi", "Fontana", "Crivelli", "Galli", "Colombo", "Rossi", "Favre", "Muller", "Ferrière", "Casalongua", "Neff", "Chastel", "Gautier", "Micheli", "Weber", "Baumann", "Brunner", "Fischer", "Steiner", "Schneider", "Moser", "Frey", "Frei", "Gerber", "Graf", "Roth", "Maurer", "Cassis", "Berset", "Amherd", "Unternährer", "Parmelin", "Sommaruga", "Keller-Suter", "Suter", "Turnherr"]

  @building_patterns ["#", "##", "###"]
  @zip_code_patterns ["####"]
  @secondary_addresses ["Abteilung ##", "Etage #", "Zimmer ##"]
  @street_suffixes ["Strasse", "Weg", "Park", "Pass"]

  @prefixes ["Herr", "Frau", "Dr.", "Prof"]

  @bank_names ["UBS", "Credit Suisse", "Alternative Bank", "Banque Cantonale de Genève", "Banque Cantonale du Jura", "Glarner Kantonalbank", "PostFinance", "Raiffeisen", "Valiant", "Zürcher Kantonalbank", "Neue Aargauer Bank"]

  @colors ["Rot", "Grün", "Blau", "Gelb", "Violett", "Weiss", "Schwarz", "Orange", "Rosarot", "Grau", "Türkis", "Hellblau", "Olivgrün"]

  @phone_home_patterns ["+41 #########", "+41 ## ### ## ##", "0#########", "0## ### ## ##", "0## #######", "0##/### ## ##"]
  @phone_cell_patterns ["+41 77#######", "+41 78#######", "+41 79#######", "+41 76#######", "+41 77 ### ## ##", "+41 78 ### ## ##", "+41 79 ### ## ##", "+41 76 ### ## ##"]

  @domain_popular_emails ["gmail.ch", "yahoo.ch", "hotmail.ch", "freemail.ch", ""]
  @domain_extensions ["com", "ch", "swiss", "net", "org", "io"]

  #def apps, do: @apps
  def bank_names, do: @bank_names
  def building_patterns, do: @building_patterns
  def cities, do: @cities
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
  def phone_cell_patterns, do: @phone_cell_patterns
  def phone_home_patterns, do: @phone_home_patterns
  def prefixes, do: @prefixes
  #def products, do: @products
  def secondary_addresses, do: @secondary_addresses
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
