defmodule FakerElixir.Locales.Fr do

  @moduledoc false

  @cities ["Paris", "Marseille", "Lyon", "Toulouse", "Nice", "Nantes", "Strasbourg", "Montpellier", "Bordeaux", "Lille", "Rennes", "Reims", "Le Havre", "Saint-Étienne", "Toulon", "Grenoble", "Dijon", "Angers", "Saint-Denis", "Villeurbanne", "Le Mans", "Aix-en-Provence", "Brest", "Nîmes", "Limoges", "Clermont-Ferrand", "Tours", "Amiens", "Metz", "Perpignan", "Besançon", "Orléans", "Boulogne-Billancourt", "Mulhouse", "Rouen", "Caen", "Nancy", "Saint-Denis", "Saint-Paul", "Montreuil", "Argenteuil", "Roubaix", "Dunkerque14", "Tourcoing", "Nanterre", "Avignon", "Créteil", "Poitiers", "Fort-de-France", "Courbevoie", "Versailles", "Vitry-sur-Seine", "Colombes", "Pau", "Aulnay-sous-Bois", "Asnières-sur-Seine", "Rueil-Malmaison", "Saint-Pierre", "Antibes", "Saint-Maur-des-Fossés", "Champigny-sur-Marne", "La Rochelle", "Aubervilliers", "Calais", "Cannes", "Le Tampon", "Béziers", "Colmar", "Bourges", "Drancy", "Mérignac", "Saint-Nazaire", "Valence", "Ajaccio", "Issy-les-Moulineaux", "Villeneuve-d'Ascq", "Levallois-Perret", "Noisy-le-Grand", "Quimper", "La Seyne-sur-Mer", "Antony", "Troyes", "Neuilly-sur-Seine", "Sarcelles", "Les Abymes", "Vénissieux", "Clichy", "Lorient", "Pessac", "Ivry-sur-Seine", "Cergy", "Cayenne", "Niort", "Chambéry", "Montauban", "Saint-Quentin", "Villejuif", "Hyères", "Beauvais", "Cholet"]

  @first_names ["Enzo", "Lucas", "Mathis", "Nathan", "Thomas", "Hugo", "Théo", "Tom", "Louis", "Raphaël", "Clément", "Léo", "Mathéo", "Maxime", "Alexandre", "Antoine", "Yanis", "Paul", "Baptiste", "Alexis", "Gabriel", "Arthur", "Jules", "Ethan", "Noah", "Quentin", "Axel", "Evan", "Mattéo", "Romain", "Valentin", "Maxence", "Noa", "Adam", "Nicolas", "Julien", "Mael", "Pierre", "Rayan", "Victor", "Mohamed", "Adrien", "Kylian", "Sacha", "Benjamin", "Léa", "Clara", "Manon", "Chloé", "Camille", "Ines", "Sarah", "Jade", "Lola", "Anaïs", "Lucie", "Océane", "Lilou", "Marie", "Eva", "Romane", "Lisa", "Zoe", "Julie", "Mathilde", "Louise", "Juliette", "Clémence", "Célia", "Laura", "Lena", "Maëlys", "Charlotte", "Ambre", "Maeva", "Pauline", "Lina", "Jeanne", "Lou", "Noémie", "Justine", "Louna", "Elisa", "Alice", "Emilie", "Carla", "Maëlle", "Alicia", "Mélissa"]
  @last_names ["Martin", "Bernard", "Motte", "Vigier", "Monin", "Larue", "Honore", "Lafond", "Dumortier", "Metais", "Raffin", "Lemercier", "Fremont", "Schaeffer", "Renaudin", "Despres", "Lavaud", "Barriere", "Beaulieu", "Santos", "Bachelet", "Rousselle", "Fevre", "Pouliquen", "Dubos", "Paillard", "Bonnaud", "Godart", "Pillet", "Carton", "Revel", "Leloup", "Bellet", "Auffret", "Herault", "Madec", "Bardet", "Beauvais", "De", "Beguin", "Chemin", "Viguier", "Fraisse", "Vigouroux", "Vignal", "Braun", "Gross", "Antoine", "Camus", "Georges", "Perret", "Coulon", "Gros", "Devaux", "Ollivier", "Blanchard", "Marie", "Barbier", "Brun", "Dumas", "Brunet", "Schmitt", "Leroux", "Colin", "Fernandez", "Renard", "Arnaud", "Rolland", "Caron", "Giraud", "Leclerc"]

  @building_patterns ["#", "##", "###"]
  @zip_code_patterns ["#####"]
  @secondary_addresses ["Apt. ###", "Immeuble. ###"]

  @prefixes ["M.", "Mme", "Mlle", "Dr", "Prof"]

  @weak_passwords ["motdepass", "motdepasse", "abcedef", "invite", "administrateur", "azerty", "1234", "0987", "12345", "123456", "monmotdepasse", "lol", "systeme", "facebook", "google", "twitter", "1111", "zzzz", "client", "superadministrateur"]

  @bank_names ["Axa banque", "Allianz banque", "Banque CIC", "BNP Paribas", "Boursorama banque", "Caisse agricole Crédit Mutuel", "Caisse d’Epargne", "Crédit Agricole S.A.", "Crédit du Nord", "Crédit Lyonnais", "Fortis banque France", "Fortuneo banque", "Groupama banque", "HSBC France", "ING Direct", "LCL", "La Banque Postale", "Médiatis", "Monabanq", "Société Générale", "Sofinco"]

  @colors ["rouge", "vert", "bleu", "jaune", "violet", "vert menthe", "blanc", "noir", "orange", "rose", "gris", "marron", "violet", "turquoise", "bleu ciel", "saumon", "prune", "olive", "magenta", "citron", "ivoir", "indigo", "or", "cyan", "azur", "lavande", "argent"]

  @phone_home_patterns ["01########", "02########", "03########", "04########", "05########", "09########", "+33 1########", "+33 2########", "+33 3########", "+33 4########", "+33 5########", "+33 9########", "01 ## ## ## ##", "02 ## ## ## ##", "03 ## ## ## ##", "04 ## ## ## ##", "05 ## ## ## ##", "09 ## ## ## ##", "+33 1 ## ## ## ##", "+33 2 ## ## ## ##", "+33 3 ## ## ## ##", "+33 4 ## ## ## ##", "+33 5 ## ## ## ##", "+33 9 ## ## ## ##"]
  @phone_cell_patterns ["06########", "07########", "+33 6########", "+33 7########", "06 ## ## ## ##", "07 ## ## ## ##", "+33 6 ## ## ## ##", "+33 7 ## ## ## ##"]

  @domain_popular_emails ["gmail.com", "yahoo.fr", "hotmail.fr", "free.fr"]

  def bank_names, do: @bank_names
  def building_patterns, do: @building_patterns
  def cities, do: @cities
  def colors, do: @colors
  def domain_popular_emails, do: @domain_popular_emails
  def first_names, do: @first_names
  def last_names, do: @last_names
  def phone_cell_patterns, do: @phone_cell_patterns
  def phone_home_patterns, do: @phone_home_patterns
  def prefixes, do: @prefixes
  def secondary_addresses, do: @secondary_addresses
  def weak_passwords, do: @weak_passwords
  def zip_code_patterns, do: @zip_code_patterns

end
