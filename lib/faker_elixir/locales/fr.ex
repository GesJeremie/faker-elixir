defmodule FakerElixir.Locales.Fr do

  @moduledoc false

  @cities ["Paris", "Marseille", "Lyon", "Toulouse", "Nice", "Nantes", "Strasbourg", "Montpellier", "Bordeaux", "Lille", "Rennes", "Reims", "Le Havre", "Saint-Étienne", "Toulon", "Grenoble", "Dijon", "Angers", "Saint-Denis", "Villeurbanne", "Le Mans", "Aix-en-Provence", "Brest", "Nîmes", "Limoges", "Clermont-Ferrand", "Tours", "Amiens", "Metz", "Perpignan", "Besançon", "Orléans", "Boulogne-Billancourt", "Mulhouse", "Rouen", "Caen", "Nancy", "Saint-Denis", "Saint-Paul", "Montreuil", "Argenteuil", "Roubaix", "Dunkerque14", "Tourcoing", "Nanterre", "Avignon", "Créteil", "Poitiers", "Fort-de-France", "Courbevoie", "Versailles", "Vitry-sur-Seine", "Colombes", "Pau", "Aulnay-sous-Bois", "Asnières-sur-Seine", "Rueil-Malmaison", "Saint-Pierre", "Antibes", "Saint-Maur-des-Fossés", "Champigny-sur-Marne", "La Rochelle", "Aubervilliers", "Calais", "Cannes", "Le Tampon", "Béziers", "Colmar", "Bourges", "Drancy", "Mérignac", "Saint-Nazaire", "Valence", "Ajaccio", "Issy-les-Moulineaux", "Villeneuve-d'Ascq", "Levallois-Perret", "Noisy-le-Grand", "Quimper", "La Seyne-sur-Mer", "Antony", "Troyes", "Neuilly-sur-Seine", "Sarcelles", "Les Abymes", "Vénissieux", "Clichy", "Lorient", "Pessac", "Ivry-sur-Seine", "Cergy", "Cayenne", "Niort", "Chambéry", "Montauban", "Saint-Quentin", "Villejuif", "Hyères", "Beauvais", "Cholet"]

  @building_patterns ["#", "##", "###"]
  @zip_code_patterns ["#####"]
  @secondary_addresses ["Apt. ###", "Immeuble. ###"]

  def cities, do: @cities
  def building_patterns, do: @building_patterns
  def zip_code_patterns, do: @zip_code_patterns
  def secondary_addresses, do: @secondary_addresses

end
