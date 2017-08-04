defmodule FakerElixir.Locales.En do

  @moduledoc false

  @cities ["New York City", "Los Angeles", "San Francisco", "Washington D.C", "Chicago", "Boston", "Seattle", "Houston", "Detroit", "New Orleans", "Baltimore", "Austin", "San Diego", "Portland", "Philadelphia", "Denver", "Minneapolis", "San Jose", "Oakland", "Dallas", "Kansas City", "Miami", "Nashville", "Atlanta", "Albuquerque", "Charlotte", "Memphis", "Milwaukee", "Raleigh", "Cleveland", "Columbus", "El Paso", "Phoenix", "Tucson", "Las Vegas", "Louisville", "Fort Worth", "Wichita", "Tulsa", "Jacksonville"]

  @countries [%{code: "AF", name: "Afghanistan"}, %{code: "AX", name: "Åland Islands"}, %{code: "AL", name: "Albania"}, %{code: "DZ", name: "Algeria"}, %{code: "AS", name: "American Samoa"}, %{code: "AD", name: "Andorra"}, %{code: "AO", name: "Angola"}, %{code: "AI", name: "Anguilla"}, %{code: "AQ", name: "Antarctica"}, %{code: "AG", name: "Antigua and Barbuda"}, %{code: "AR", name: "Argentina"}, %{code: "AM", name: "Armenia"}, %{code: "AW", name: "Aruba"}, %{code: "AU", name: "Australia"}, %{code: "AT", name: "Austria"}, %{code: "AZ", name: "Azerbaijan"}, %{code: "BS", name: "Bahamas"}, %{code: "BH", name: "Bahrain"}, %{code: "BD", name: "Bangladesh"}, %{code: "BB", name: "Barbados"}, %{code: "BY", name: "Belarus"}, %{code: "BE", name: "Belgium"}, %{code: "BZ", name: "Belize"}, %{code: "BJ", name: "Benin"}, %{code: "BM", name: "Bermuda"}, %{code: "BT", name: "Bhutan"}, %{code: "BO", name: "Bolivia, Plurinational State of"}, %{code: "BQ", name: "Bonaire, Sint Eustatius and Saba"}, %{code: "BA", name: "Bosnia and Herzegovina"}, %{code: "BW", name: "Botswana"}, %{code: "BV", name: "Bouvet Island"}, %{code: "BR", name: "Brazil"}, %{code: "IO", name: "British Indian Ocean Territory"}, %{code: "BN", name: "Brunei Darussalam"}, %{code: "BG", name: "Bulgaria"}, %{code: "BF", name: "Burkina Faso"}, %{code: "BI", name: "Burundi"}, %{code: "KH", name: "Cambodia"}, %{code: "CM", name: "Cameroon"}, %{code: "CA", name: "Canada"}, %{code: "CV", name: "Cape Verde"}, %{code: "KY", name: "Cayman Islands"}, %{code: "CF", name: "Central African Republic"}, %{code: "TD", name: "Chad"}, %{code: "CL", name: "Chile"}, %{code: "CN", name: "China"}, %{code: "CX", name: "Christmas Island"}, %{code: "CC", name: "Cocos (Keeling) Islands"}, %{code: "CO", name: "Colombia"}, %{code: "KM", name: "Comoros"}, %{code: "CG", name: "Congo"}, %{code: "CD", name: "Congo, the Democratic Republic of the"}, %{code: "CK", name: "Cook Islands"}, %{code: "CR", name: "Costa Rica"}, %{code: "CI", name: "Côte d'Ivoire"}, %{code: "HR", name: "Croatia"}, %{code: "CU", name: "Cuba"}, %{code: "CW", name: "Curaçao"}, %{code: "CY", name: "Cyprus"}, %{code: "CZ", name: "Czech Republic"}, %{code: "DK", name: "Denmark"}, %{code: "DJ", name: "Djibouti"}, %{code: "DM", name: "Dominica"}, %{code: "DO", name: "Dominican Republic"}, %{code: "EC", name: "Ecuador"}, %{code: "EG", name: "Egypt"}, %{code: "SV", name: "El Salvador"}, %{code: "GQ", name: "Equatorial Guinea"}, %{code: "ER", name: "Eritrea"}, %{code: "EE", name: "Estonia"}, %{code: "ET", name: "Ethiopia"}, %{code: "FK", name: "Falkland Islands (Malvinas)"}, %{code: "FO", name: "Faroe Islands"}, %{code: "FJ", name: "Fiji"}, %{code: "FI", name: "Finland"}, %{code: "FR", name: "France"}, %{code: "GF", name: "French Guiana"}, %{code: "PF", name: "French Polynesia"}, %{code: "TF", name: "French Southern Territories"}, %{code: "GA", name: "Gabon"}, %{code: "GM", name: "Gambia"}, %{code: "GE", name: "Georgia"}, %{code: "DE", name: "Germany"}, %{code: "GH", name: "Ghana"}, %{code: "GI", name: "Gibraltar"}, %{code: "GR", name: "Greece"}, %{code: "GL", name: "Greenland"}, %{code: "GD", name: "Grenada"}, %{code: "GP", name: "Guadeloupe"}, %{code: "GU", name: "Guam"}, %{code: "GT", name: "Guatemala"}, %{code: "GG", name: "Guernsey"}, %{code: "GN", name: "Guinea"}, %{code: "GW", name: "Guinea-Bissau"}, %{code: "GY", name: "Guyana"}, %{code: "HT", name: "Haiti"}, %{code: "HM", name: "Heard Island and McDonald Islands"}, %{code: "VA", name: "Holy See (Vatican City State)"}, %{code: "HN", name: "Honduras"}, %{code: "HK", name: "Hong Kong"}, %{code: "HU", name: "Hungary"}, %{code: "IS", name: "Iceland"}, %{code: "IN", name: "India"}, %{code: "ID", name: "Indonesia"}, %{code: "IR", name: "Iran, Islamic Republic of"}, %{code: "IQ", name: "Iraq"}, %{code: "IE", name: "Ireland"}, %{code: "IM", name: "Isle of Man"}, %{code: "IL", name: "Israel"}, %{code: "IT", name: "Italy"}, %{code: "JM", name: "Jamaica"}, %{code: "JP", name: "Japan"}, %{code: "JE", name: "Jersey"}, %{code: "JO", name: "Jordan"}, %{code: "KZ", name: "Kazakhstan"}, %{code: "KE", name: "Kenya"}, %{code: "KI", name: "Kiribati"}, %{code: "KP", name: "Korea, Democratic People's Republic of"}, %{code: "KR", name: "Korea, Republic of"}, %{code: "KW", name: "Kuwait"}, %{code: "KG", name: "Kyrgyzstan"}, %{code: "LA", name: "Lao People's Democratic Republic"}, %{code: "LV", name: "Latvia"}, %{code: "LB", name: "Lebanon"}, %{code: "LS", name: "Lesotho"}, %{code: "LR", name: "Liberia"}, %{code: "LY", name: "Libya"}, %{code: "LI", name: "Liechtenstein"}, %{code: "LT", name: "Lithuania"}, %{code: "LU", name: "Luxembourg"}, %{code: "MO", name: "Macao"}, %{code: "MK", name: "Macedonia, the former Yugoslav Republic of"}, %{code: "MG", name: "Madagascar"}, %{code: "MW", name: "Malawi"}, %{code: "MY", name: "Malaysia"}, %{code: "MV", name: "Maldives"}, %{code: "ML", name: "Mali"}, %{code: "MT", name: "Malta"}, %{code: "MH", name: "Marshall Islands"}, %{code: "MQ", name: "Martinique"}, %{code: "MR", name: "Mauritania"}, %{code: "MU", name: "Mauritius"}, %{code: "YT", name: "Mayotte"}, %{code: "MX", name: "Mexico"}, %{code: "FM", name: "Micronesia, Federated States of"}, %{code: "MD", name: "Moldova, Republic of"}, %{code: "MC", name: "Monaco"}, %{code: "MN", name: "Mongolia"}, %{code: "ME", name: "Montenegro"}, %{code: "MS", name: "Montserrat"}, %{code: "MA", name: "Morocco"}, %{code: "MZ", name: "Mozambique"}, %{code: "MM", name: "Myanmar"}, %{code: "NA", name: "Namibia"}, %{code: "NR", name: "Nauru"}, %{code: "NP", name: "Nepal"}, %{code: "NL", name: "Netherlands"}, %{code: "NC", name: "New Caledonia"}, %{code: "NZ", name: "New Zealand"}, %{code: "NI", name: "Nicaragua"}, %{code: "NE", name: "Niger"}, %{code: "NG", name: "Nigeria"}, %{code: "NU", name: "Niue"}, %{code: "NF", name: "Norfolk Island"}, %{code: "MP", name: "Northern Mariana Islands"}, %{code: "NO", name: "Norway"}, %{code: "OM", name: "Oman"}, %{code: "PK", name: "Pakistan"}, %{code: "PW", name: "Palau"}, %{code: "PS", name: "Palestine, State of"}, %{code: "PA", name: "Panama"}, %{code: "PG", name: "Papua New Guinea"}, %{code: "PY", name: "Paraguay"}, %{code: "PE", name: "Peru"}, %{code: "PH", name: "Philippines"}, %{code: "PN", name: "Pitcairn"}, %{code: "PL", name: "Poland"}, %{code: "PT", name: "Portugal"}, %{code: "PR", name: "Puerto Rico"}, %{code: "QA", name: "Qatar"}, %{code: "RE", name: "Réunion"}, %{code: "RO", name: "Romania"}, %{code: "RU", name: "Russian Federation"}, %{code: "RW", name: "Rwanda"}, %{code: "BL", name: "Saint Barthélemy"}, %{code: "SH", name: "Saint Helena, Ascension and Tristan da Cunha"}, %{code: "KN", name: "Saint Kitts and Nevis"}, %{code: "LC", name: "Saint Lucia"}, %{code: "MF", name: "Saint Martin (French part)"}, %{code: "PM", name: "Saint Pierre and Miquelon"}, %{code: "VC", name: "Saint Vincent and the Grenadines"}, %{code: "WS", name: "Samoa"}, %{code: "SM", name: "San Marino"}, %{code: "ST", name: "Sao Tome and Principe"}, %{code: "SA", name: "Saudi Arabia"}, %{code: "SN", name: "Senegal"}, %{code: "RS", name: "Serbia"}, %{code: "SC", name: "Seychelles"}, %{code: "SL", name: "Sierra Leone"}, %{code: "SG", name: "Singapore"}, %{code: "SX", name: "Sint Maarten (Dutch part)"}, %{code: "SK", name: "Slovakia"}, %{code: "SI", name: "Slovenia"}, %{code: "SB", name: "Solomon Islands"}, %{code: "SO", name: "Somalia"}, %{code: "ZA", name: "South Africa"}, %{code: "GS", name: "South Georgia and the South Sandwich Islands"}, %{code: "SS", name: "South Sudan"}, %{code: "ES", name: "Spain"}, %{code: "LK", name: "Sri Lanka"}, %{code: "SD", name: "Sudan"}, %{code: "SR", name: "Suriname"}, %{code: "SJ", name: "Svalbard and Jan Mayen"}, %{code: "SZ", name: "Swaziland"}, %{code: "SE", name: "Sweden"}, %{code: "CH", name: "Switzerland"}, %{code: "SY", name: "Syrian Arab Republic"}, %{code: "TW", name: "Taiwan, Province of China"}, %{code: "TJ", name: "Tajikistan"}, %{code: "TZ", name: "Tanzania, United Republic of"}, %{code: "TH", name: "Thailand"}, %{code: "TL", name: "Timor-Leste"}, %{code: "TG", name: "Togo"}, %{code: "TK", name: "Tokelau"}, %{code: "TO", name: "Tonga"}, %{code: "TT", name: "Trinidad and Tobago"}, %{code: "TN", name: "Tunisia"}, %{code: "TR", name: "Turkey"}, %{code: "TM", name: "Turkmenistan"}, %{code: "TC", name: "Turks and Caicos Islands"}, %{code: "TV", name: "Tuvalu"}, %{code: "UG", name: "Uganda"}, %{code: "UA", name: "Ukraine"}, %{code: "AE", name: "United Arab Emirates"}, %{code: "GB", name: "United Kingdom"}, %{code: "US", name: "United States"}, %{code: "UM", name: "United States Minor Outlying Islands"}, %{code: "UY", name: "Uruguay"}, %{code: "UZ", name: "Uzbekistan"}, %{code: "VU", name: "Vanuatu"}, %{code: "VE", name: "Venezuela, Bolivarian Republic of"}, %{code: "VN", name: "Viet Nam"}, %{code: "VG", name: "Virgin Islands, British"}, %{code: "VI", name: "Virgin Islands, U.S."}, %{code: "WF", name: "Wallis and Futuna"}, %{code: "EH", name: "Western Sahara"}, %{code: "YE", name: "Yemen"}, %{code: "ZM", name: "Zambia"}, %{code: "ZW", name: "Zimbabwe"}]

  @time_zones ["Pacific/Midway", "Pacific/Pago_Pago", "Pacific/Honolulu", "America/Juneau", "America/Los_Angeles", "America/Tijuana", "America/Denver", "America/Phoenix", "America/Chihuahua", "America/Mazatlan", "America/Chicago", "America/Regina", "America/Mexico_City", "America/Mexico_City", "America/Monterrey", "America/Guatemala", "America/New_York", "America/Indiana/Indianapolis", "America/Bogota", "America/Lima", "America/Lima", "America/Halifax", "America/Caracas", "America/La_Paz", "America/Santiago", "America/St_Johns", "America/Sao_Paulo", "America/Argentina/Buenos_Aires", "America/Guyana", "America/Godthab", "Atlantic/South_Georgia", "Atlantic/Azores", "Atlantic/Cape_Verde", "Europe/Dublin", "Europe/London", "Europe/Lisbon", "Europe/London", "Africa/Casablanca", "Africa/Monrovia", "Etc/UTC", "Europe/Belgrade", "Europe/Bratislava", "Europe/Budapest", "Europe/Ljubljana", "Europe/Prague", "Europe/Sarajevo", "Europe/Skopje", "Europe/Warsaw", "Europe/Zagreb", "Europe/Brussels", "Europe/Copenhagen", "Europe/Madrid", "Europe/Paris", "Europe/Amsterdam", "Europe/Berlin", "Europe/Berlin", "Europe/Rome", "Europe/Stockholm", "Europe/Vienna", "Africa/Algiers", "Europe/Bucharest", "Africa/Cairo", "Europe/Helsinki", "Europe/Kiev", "Europe/Riga", "Europe/Sofia", "Europe/Tallinn", "Europe/Vilnius", "Europe/Athens", "Europe/Istanbul", "Europe/Minsk", "Asia/Jerusalem", "Africa/Harare", "Africa/Johannesburg", "Europe/Moscow", "Europe/Moscow", "Europe/Moscow", "Asia/Kuwait", "Asia/Riyadh", "Africa/Nairobi", "Asia/Baghdad", "Asia/Tehran", "Asia/Muscat", "Asia/Muscat", "Asia/Baku", "Asia/Tbilisi", "Asia/Yerevan", "Asia/Kabul", "Asia/Yekaterinburg", "Asia/Karachi", "Asia/Karachi", "Asia/Tashkent", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kolkata", "Asia/Kathmandu", "Asia/Dhaka", "Asia/Dhaka", "Asia/Colombo", "Asia/Almaty", "Asia/Novosibirsk", "Asia/Rangoon", "Asia/Bangkok", "Asia/Bangkok", "Asia/Jakarta", "Asia/Krasnoyarsk", "Asia/Shanghai", "Asia/Chongqing", "Asia/Hong_Kong", "Asia/Urumqi", "Asia/Kuala_Lumpur", "Asia/Singapore", "Asia/Taipei", "Australia/Perth", "Asia/Irkutsk", "Asia/Ulaanbaatar", "Asia/Seoul", "Asia/Tokyo", "Asia/Tokyo", "Asia/Tokyo", "Asia/Yakutsk", "Australia/Darwin", "Australia/Adelaide", "Australia/Melbourne", "Australia/Melbourne", "Australia/Sydney", "Australia/Brisbane", "Australia/Hobart", "Asia/Vladivostok", "Pacific/Guam", "Pacific/Port_Moresby", "Asia/Magadan", "Asia/Magadan", "Pacific/Noumea", "Pacific/Fiji", "Asia/Kamchatka", "Pacific/Majuro", "Pacific/Auckland", "Pacific/Auckland", "Pacific/Tongatapu", "Pacific/Fakaofo", "Pacific/Apia"]

  @first_names ["Aaliyah", "Aaron", "Abagail", "Abbey", "Abbie", "Abbigail", "Abby", "Abdiel", "Abdul", "Abdullah", "Abe", "Abel", "Abelardo", "Abigail", "Abigale", "Abigayle", "Abner", "Abraham", "Ada", "Adah", "Adalberto", "Adaline", "Adam", "Adan", "Addie", "Addison", "Adela", "Adelbert", "Adele", "Adelia", "Adeline", "Adell", "Adella", "Adelle", "Aditya", "Adolf", "Adolfo", "Adolph", "Adolphus", "Adonis", "Adrain", "Adrian", "Adriana", "Adrianna", "Adriel", "Adrien", "Adrienne", "Afton", "Aglae", "Agnes", "Agustin", "Agustina", "Ahmad", "Ahmed", "Aida", "Aidan", "Aiden", "Aileen", "Aimee", "Aisha", "Aiyana", "Akeem", "Al", "Alaina", "Alan", "Alana", "Alanis", "Alanna", "Alayna", "Alba", "Albert", "Alberta", "Albertha", "Alberto", "Albin", "Albina", "Alda", "Alden", "Alec", "Aleen", "Alejandra", "Alejandrin", "Alek", "Alena", "Alene", "Alessandra", "Alessandro", "Alessia", "Aletha", "Alex", "Alexa", "Alexander", "Alexandra", "Alexandre", "Alexandrea", "Alexandria", "Alexandrine", "Alexandro", "Alexane", "Alexanne", "Alexie", "Alexis", "Alexys", "Alexzander", "Alf", "Alfonso", "Alfonzo", "Alford", "Alfred", "Alfreda", "Alfredo", "Ali", "Alia", "Alice", "Alicia", "Alisa", "Alisha", "Alison", "Alivia", "Aliya", "Aliyah", "Aliza", "Alize", "Allan", "Allen", "Allene", "Allie", "Allison", "Ally", "Alphonso", "Alta", "Althea", "Alva", "Alvah", "Alvena", "Alvera", "Alverta", "Alvina", "Alvis", "Alyce", "Alycia", "Alysa", "Alysha", "Alyson", "Alysson", "Amalia", "Amanda", "Amani", "Amara", "Amari", "Amaya", "Amber", "Ambrose", "Amelia", "Amelie", "Amely", "America", "Americo", "Amie", "Amina", "Amir", "Amira", "Amiya", "Amos", "Amparo", "Amy", "Amya", "Ana", "Anabel", "Anabelle", "Anahi", "Anais", "Anastacio", "Anastasia", "Anderson", "Andre", "Andreane", "Andreanne", "Andres", "Andrew", "Andy", "Angel", "Angela", "Angelica", "Angelina", "Angeline", "Angelita", "Angelo", "Angie", "Angus", "Anibal", "Anika", "Anissa", "Anita", "Aniya", "Aniyah", "Anjali", "Anna", "Annabel", "Annabell", "Annabelle", "Annalise", "Annamae", "Annamarie", "Anne", "Annetta", "Annette", "Annie", "Ansel", "Ansley", "Anthony", "Antoinette", "Antone", "Antonetta", "Antonette", "Antonia", "Antonietta", "Antonina", "Antonio", "Antwan", "Antwon", "Anya", "April", "Ara", "Araceli", "Aracely", "Arch", "Archibald", "Ardella", "Arden", "Ardith", "Arely", "Ari", "Ariane", "Arianna", "Aric", "Ariel", "Arielle", "Arjun", "Arlene", "Arlie", "Arlo", "Armand", "Armando", "Armani", "Arnaldo", "Arne", "Arno", "Arnold", "Arnoldo", "Arnulfo", "Aron", "Art", "Arthur", "Arturo", "Arvel", "Arvid", "Arvilla", "Aryanna", "Asa", "Asha", "Ashlee", "Ashleigh", "Ashley", "Ashly", "Ashlynn", "Ashton", "Ashtyn", "Asia", "Assunta", "Astrid", "Athena", "Aubree", "Aubrey", "Audie", "Audra", "Audreanne", "Audrey", "August", "Augusta", "Augustine", "Augustus", "Aurelia", "Aurelie", "Aurelio", "Aurore", "Austen", "Austin", "Austyn", "Autumn", "Ava", "Avery", "Avis", "Axel", "Ayana", "Ayden", "Ayla", "Aylin", "Baby", "Bailee", "Bailey", "Barbara", "Barney", "Baron", "Barrett", "Barry", "Bart", "Bartholome", "Barton", "Baylee", "Beatrice", "Beau", "Beaulah", "Bell", "Bella", "Belle", "Ben", "Benedict", "Benjamin", "Bennett", "Bennie", "Benny", "Benton", "Berenice", "Bernadette", "Bernadine", "Bernard", "Bernardo", "Berneice", "Bernhard", "Bernice", "Bernie", "Berniece", "Bernita", "Berry", "Bert", "Berta", "Bertha", "Bertram", "Bertrand", "Beryl", "Bessie", "Beth", "Bethany", "Bethel", "Betsy", "Bette", "Bettie", "Betty", "Bettye", "Beulah", "Beverly", "Bianka", "Bill", "Billie", "Billy", "Birdie", "Blair", "Blaise", "Blake", "Blanca", "Blanche", "Blaze", "Bo", "Bobbie", "Bobby", "Bonita", "Bonnie", "Boris", "Boyd", "Brad", "Braden", "Bradford", "Bradley", "Bradly", "Brady", "Braeden", "Brain", "Brandi", "Brando", "Brandon", "Brandt", "Brandy", "Brandyn", "Brannon", "Branson", "Brant", "Braulio", "Braxton", "Brayan", "Breana", "Breanna", "Breanne", "Brenda", "Brendan", "Brenden", "Brendon", "Brenna", "Brennan", "Brennon", "Brent", "Bret", "Brett", "Bria", "Brian", "Briana", "Brianne", "Brice", "Bridget", "Bridgette", "Bridie", "Brielle", "Brigitte", "Brionna", "Brisa", "Britney", "Brittany", "Brock", "Broderick", "Brody", "Brook", "Brooke", "Brooklyn", "Brooks", "Brown", "Bruce", "Bryana", "Bryce", "Brycen", "Bryon", "Buck", "Bud", "Buddy", "Buford", "Bulah", "Burdette", "Burley", "Burnice", "Buster", "Cade", "Caden", "Caesar", "Caitlyn", "Cale", "Caleb", "Caleigh", "Cali", "Calista", "Callie", "Camden", "Cameron", "Camila", "Camilla", "Camille", "Camren", "Camron", "Camryn", "Camylle", "Candace", "Candelario", "Candice", "Candida", "Candido", "Cara", "Carey", "Carissa", "Carlee", "Carleton", "Carley", "Carli", "Carlie", "Carlo", "Carlos", "Carlotta", "Carmel", "Carmela", "Carmella", "Carmelo", "Carmen", "Carmine", "Carol", "Carolanne", "Carole", "Carolina", "Caroline", "Carolyn", "Carolyne", "Carrie", "Carroll", "Carson", "Carter", "Cary", "Casandra", "Casey", "Casimer", "Casimir", "Casper", "Cassandra", "Cassandre", "Cassidy", "Cassie", "Catalina", "Caterina", "Catharine", "Catherine", "Cathrine", "Cathryn", "Cathy", "Cayla", "Ceasar", "Cecelia", "Cecil", "Cecile", "Cecilia", "Cedrick", "Celestine", "Celestino", "Celia", "Celine", "Cesar", "Chad", "Chadd", "Chadrick", "Chaim", "Chance", "Chandler", "Chanel", "Chanelle", "Charity", "Charlene", "Charles", "Charley", "Charlie", "Charlotte", "Chase", "Chasity", "Chauncey", "Chaya", "Chaz", "Chelsea", "Chelsey", "Chelsie", "Chesley", "Chester", "Chet", "Cheyanne", "Cheyenne", "Chloe", "Chris", "Christ", "Christa", "Christelle", "Christian", "Christiana", "Christina", "Christine", "Christop", "Christophe", "Christopher", "Christy", "Chyna", "Ciara", "Cicero", "Cielo", "Cierra", "Cindy", "Citlalli", "Clair", "Claire", "Clara", "Clarabelle", "Clare", "Clarissa", "Clark", "Claud", "Claude", "Claudia", "Claudie", "Claudine", "Clay", "Clemens", "Clement", "Clementina", "Clementine", "Clemmie", "Cleo", "Cleora", "Cleta", "Cletus", "Cleve", "Cleveland", "Clifford", "Clifton", "Clint", "Clinton", "Clotilde", "Clovis", "Cloyd", "Clyde", "Coby", "Cody", "Colby", "Cole", "Coleman", "Colin", "Colleen", "Collin", "Colt", "Colten", "Colton", "Columbus", "Concepcion", "Conner", "Connie", "Connor", "Conor", "Conrad", "Constance", "Constantin", "Consuelo", "Cooper", "Cora", "Coralie", "Corbin", "Cordelia", "Cordell", "Cordia", "Cordie", "Corene", "Corine", "Cornelius", "Cornell", "Corrine", "Cortez", "Cortney", "Cory", "Coty", "Courtney", "Coy", "Craig", "Crawford", "Creola", "Cristal", "Cristian", "Cristina", "Cristobal", "Cristopher", "Cruz", "Crystal", "Crystel", "Cullen", "Curt", "Curtis", "Cydney", "Cynthia", "Cyril", "Cyrus", "Dagmar", "Dahlia", "Daija", "Daisha", "Daisy", "Dakota", "Dale", "Dallas", "Dallin", "Dalton", "Damaris", "Dameon", "Damian", "Damien", "Damion", "Damon", "Dan", "Dana", "Dandre", "Dane", "D'angelo", "Dangelo", "Danial", "Daniela", "Daniella", "Danielle", "Danika", "Dannie", "Danny", "Dante", "Danyka", "Daphne", "Daphnee", "Daphney", "Darby", "Daren", "Darian", "Dariana", "Darien", "Dario", "Darion", "Darius", "Darlene", "Daron", "Darrel", "Darrell", "Darren", "Darrick", "Darrin", "Darrion", "Darron", "Darryl", "Darwin", "Daryl", "Dashawn", "Dasia", "Dave", "David", "Davin", "Davion", "Davon", "Davonte", "Dawn", "Dawson", "Dax", "Dayana", "Dayna", "Dayne", "Dayton", "Dean", "Deangelo", "Deanna", "Deborah", "Declan", "Dedric", "Dedrick", "Dee", "Deion", "Deja", "Dejah", "Dejon", "Dejuan", "Delaney", "Delbert", "Delfina", "Delia", "Delilah", "Dell", "Della", "Delmer", "Delores", "Delpha", "Delphia", "Delphine", "Delta", "Demarco", "Demarcus", "Demario", "Demetris", "Demetrius", "Demond", "Dena", "Denis", "Dennis", "Deon", "Deondre", "Deontae", "Deonte", "Dereck", "Derek", "Derick", "Deron", "Derrick", "Deshaun", "Deshawn", "Desiree", "Desmond", "Dessie", "Destany", "Destin", "Destinee", "Destiney", "Destini", "Destiny", "Devan", "Devante", "Deven", "Devin", "Devon", "Devonte", "Devyn", "Dewayne", "Dewitt", "Dexter", "Diamond", "Diana", "Dianna", "Diego", "Dillan", "Dillon", "Dimitri", "Dina", "Dino", "Dion", "Dixie", "Dock", "Dolly", "Dolores", "Domenic", "Domenica", "Domenick", "Domenico", "Domingo", "Dominic", "Dominique", "Don", "Donald", "Donato", "Donavon", "Donna", "Donnell", "Donnie", "Donny", "Dora", "Dorcas", "Dorian", "Doris", "Dorothea", "Dorothy", "Dorris", "Dortha", "Dorthy", "Doug", "Douglas", "Dovie", "Doyle", "Drake", "Drew", "Duane", "Dudley", "Dulce", "Duncan", "Durward", "Dustin", "Dusty", "Dwight", "Dylan", "Earl", "Earlene", "Earline", "Earnest", "Earnestine", "Easter", "Easton", "Ebba", "Ebony", "Ed", "Eda", "Edd", "Eddie", "Eden", "Edgar", "Edgardo", "Edison", "Edmond", "Edmund", "Edna", "Eduardo", "Edward", "Edwardo", "Edwin", "Edwina", "Edyth", "Edythe", "Effie", "Efrain", "Efren", "Eileen", "Einar", "Eino", "Eladio", "Elaina", "Elbert", "Elda", "Eldon", "Eldora", "Eldred", "Eldridge", "Eleanora", "Eleanore", "Eleazar", "Electa", "Elena", "Elenor", "Elenora", "Eleonore", "Elfrieda", "Eli", "Elian", "Eliane", "Elias", "Eliezer", "Elijah", "Elinor", "Elinore", "Elisa", "Elisabeth", "Elise", "Eliseo", "Elisha", "Elissa", "Eliza", "Elizabeth", "Ella", "Ellen", "Ellie", "Elliot", "Elliott", "Ellis", "Ellsworth", "Elmer", "Elmira", "Elmo", "Elmore", "Elna", "Elnora", "Elody", "Eloisa", "Eloise", "Elouise", "Eloy", "Elroy", "Elsa", "Else", "Elsie", "Elta", "Elton", "Elva", "Elvera", "Elvie", "Elvis", "Elwin", "Elwyn", "Elyse", "Elyssa", "Elza", "Emanuel", "Emelia", "Emelie", "Emely", "Emerald", "Emerson", "Emery", "Emie", "Emil", "Emile", "Emilia", "Emiliano", "Emilie", "Emilio", "Emily", "Emma", "Emmalee", "Emmanuel", "Emmanuelle", "Emmet", "Emmett", "Emmie", "Emmitt", "Emmy", "Emory", "Ena", "Enid", "Enoch", "Enola", "Enos", "Enrico", "Enrique", "Ephraim", "Era", "Eriberto", "Eric", "Erica", "Erich", "Erick", "Ericka", "Erik", "Erika", "Erin", "Erling", "Erna", "Ernest", "Ernestina", "Ernestine", "Ernesto", "Ernie", "Ervin", "Erwin", "Eryn", "Esmeralda", "Esperanza", "Esta", "Esteban", "Estefania", "Estel", "Estell", "Estella", "Estelle", "Estevan", "Esther", "Estrella", "Etha", "Ethan", "Ethel", "Ethelyn", "Ethyl", "Ettie", "Eudora", "Eugene", "Eugenia", "Eula", "Eulah", "Eulalia", "Euna", "Eunice", "Eusebio", "Eva", "Evalyn", "Evan", "Evangeline", "Evans", "Eve", "Eveline", "Evelyn", "Everardo", "Everett", "Everette", "Evert", "Evie", "Ewald", "Ewell", "Ezekiel", "Ezequiel", "Ezra", "Fabian", "Fabiola", "Fae", "Fannie", "Fanny", "Fatima", "Faustino", "Fausto", "Favian", "Fay", "Faye", "Federico", "Felicia", "Felicita", "Felicity", "Felipa", "Felipe", "Felix", "Felton", "Fermin", "Fern", "Fernando", "Ferne", "Fidel", "Filiberto", "Filomena", "Finn", "Fiona", "Flavie", "Flavio", "Fleta", "Fletcher", "Flo", "Florence", "Florencio", "Florian", "Florida", "Florine", "Flossie", "Floy", "Floyd", "Ford", "Forest", "Forrest", "Foster", "Frances", "Francesca", "Francesco", "Francis", "Francisca", "Francisco", "Franco", "Frank", "Frankie", "Franz", "Fred", "Freda", "Freddie", "Freddy", "Frederic", "Frederick", "Frederik", "Frederique", "Fredrick", "Fredy", "Freeda", "Freeman", "Freida", "Frida", "Frieda", "Friedrich", "Fritz", "Furman", "Gabe", "Gabriel", "Gabriella", "Gabrielle", "Gaetano", "Gage", "Gail", "Gardner", "Garett", "Garfield", "Garland", "Garnet", "Garnett", "Garret", "Garrett", "Garrick", "Garrison", "Garry", "Garth", "Gaston", "Gavin", "Gay", "Gayle", "Gaylord", "Gene", "General", "Genesis", "Genevieve", "Gennaro", "Genoveva", "Geo", "Geoffrey", "George", "Georgette", "Georgiana", "Georgianna", "Geovanni", "Geovanny", "Geovany", "Gerald", "Geraldine", "Gerard", "Gerardo", "Gerda", "Gerhard", "Germaine", "German", "Gerry", "Gerson", "Gertrude", "Gia", "Gianni", "Gideon", "Gilbert", "Gilberto", "Gilda", "Giles", "Gillian", "Gina", "Gino", "Giovani", "Giovanna", "Giovanni", "Giovanny", "Gisselle", "Giuseppe", "Gladyce", "Gladys", "Glen", "Glenda", "Glenna", "Glennie", "Gloria", "Godfrey", "Golda", "Golden", "Gonzalo", "Gordon", "Grace", "Gracie", "Graciela", "Grady", "Graham", "Grant", "Granville", "Grayce", "Grayson", "Green", "Greg", "Gregg", "Gregoria", "Gregorio", "Gregory", "Greta", "Gretchen", "Greyson", "Griffin", "Grover", "Guadalupe", "Gudrun", "Guido", "Guillermo", "Guiseppe", "Gunnar", "Gunner", "Gus", "Gussie", "Gust", "Gustave", "Guy", "Gwen", "Gwendolyn", "Hadley", "Hailee", "Hailey", "Hailie", "Hal", "Haleigh", "Haley", "Halie", "Halle", "Hallie", "Hank", "Hanna", "Hannah", "Hans", "Hardy", "Harley", "Harmon", "Harmony", "Harold", "Harrison", "Harry", "Harvey", "Haskell", "Hassan", "Hassie", "Hattie", "Haven", "Hayden", "Haylee", "Hayley", "Haylie", "Hazel", "Hazle", "Heath", "Heather", "Heaven", "Heber", "Hector", "Heidi", "Helen", "Helena", "Helene", "Helga", "Hellen", "Helmer", "Heloise", "Henderson", "Henri", "Henriette", "Henry", "Herbert", "Herman", "Hermann", "Hermina", "Herminia", "Herminio", "Hershel", "Herta", "Hertha", "Hester", "Hettie", "Hilario", "Hilbert", "Hilda", "Hildegard", "Hillard", "Hillary", "Hilma", "Hilton", "Hipolito", "Hiram", "Hobart", "Holden", "Hollie", "Hollis", "Holly", "Hope", "Horace", "Horacio", "Hortense", "Hosea", "Houston", "Howard", "Howell", "Hoyt", "Hubert", "Hudson", "Hugh", "Hulda", "Humberto", "Hunter", "Hyman", "Ian", "Ibrahim", "Icie", "Ida", "Idell", "Idella", "Ignacio", "Ignatius", "Ike", "Ila", "Ilene", "Iliana", "Ima", "Imani", "Imelda", "Immanuel", "Imogene", "Ines", "Irma", "Irving", "Irwin", "Isaac", "Isabel", "Isabell", "Isabella", "Isabelle", "Isac", "Isadore", "Isai", "Isaiah", "Isaias", "Isidro", "Ismael", "Isobel", "Isom", "Israel", "Issac", "Itzel", "Iva", "Ivah", "Ivory", "Ivy", "Izabella", "Izaiah", "Jabari", "Jace", "Jacey", "Jacinthe", "Jacinto", "Jack", "Jackeline", "Jackie", "Jacklyn", "Jackson", "Jacky", "Jaclyn", "Jacquelyn", "Jacques", "Jacynthe", "Jada", "Jade", "Jaden", "Jadon", "Jadyn", "Jaeden", "Jaida", "Jaiden", "Jailyn", "Jaime", "Jairo", "Jakayla", "Jake", "Jakob", "Jaleel", "Jalen", "Jalon", "Jalyn", "Jamaal", "Jamal", "Jamar", "Jamarcus", "Jamel", "Jameson", "Jamey", "Jamie", "Jamil", "Jamir", "Jamison", "Jammie", "Jan", "Jana", "Janae", "Jane", "Janelle", "Janessa", "Janet", "Janice", "Janick", "Janie", "Janis", "Janiya", "Jannie", "Jany", "Jaquan", "Jaquelin", "Jaqueline", "Jared", "Jaren", "Jarod", "Jaron", "Jarred", "Jarrell", "Jarret", "Jarrett", "Jarrod", "Jarvis", "Jasen", "Jasmin", "Jason", "Jasper", "Jaunita", "Javier", "Javon", "Javonte", "Jay", "Jayce", "Jaycee", "Jayda", "Jayde", "Jayden", "Jaydon", "Jaylan", "Jaylen", "Jaylin", "Jaylon", "Jayme", "Jayne", "Jayson", "Jazlyn", "Jazmin", "Jazmyn", "Jazmyne", "Jean", "Jeanette", "Jeanie", "Jeanne", "Jed", "Jedediah", "Jedidiah", "Jeff", "Jefferey", "Jeffery", "Jeffrey", "Jeffry", "Jena", "Jenifer", "Jennie", "Jennifer", "Jennings", "Jennyfer", "Jensen", "Jerad", "Jerald", "Jeramie", "Jeramy", "Jerel", "Jeremie", "Jeremy", "Jermain", "Jermaine", "Jermey", "Jerod", "Jerome", "Jeromy", "Jerrell", "Jerrod", "Jerrold", "Jerry", "Jess", "Jesse", "Jessica", "Jessie", "Jessika", "Jessy", "Jessyca", "Jesus", "Jett", "Jettie", "Jevon", "Jewel", "Jewell", "Jillian", "Jimmie", "Jimmy", "Jo", "Joan", "Joana", "Joanie", "Joanne", "Joannie", "Joanny", "Joany", "Joaquin", "Jocelyn", "Jodie", "Jody", "Joe", "Joel", "Joelle", "Joesph", "Joey", "Johan", "Johann", "Johanna", "Johathan", "John", "Johnathan", "Johnathon", "Johnnie", "Johnny", "Johnpaul", "Johnson", "Jolie", "Jon", "Jonas", "Jonatan", "Jonathan", "Jonathon", "Jordan", "Jordane", "Jordi", "Jordon", "Jordy", "Jordyn", "Jorge", "Jose", "Josefa", "Josefina", "Joseph", "Josephine", "Josh", "Joshua", "Joshuah", "Josiah", "Josiane", "Josianne", "Josie", "Josue", "Jovan", "Jovani", "Jovanny", "Jovany", "Joy", "Joyce", "Juana", "Juanita", "Judah", "Judd", "Jude", "Judge", "Judson", "Judy", "Jules", "Julia", "Julian", "Juliana", "Julianne", "Julie", "Julien", "Juliet", "Julio", "Julius", "June", "Junior", "Junius", "Justen", "Justice", "Justina", "Justine", "Juston", "Justus", "Justyn", "Juvenal", "Juwan", "Kacey", "Kaci", "Kacie", "Kade", "Kaden", "Kadin", "Kaela", "Kaelyn", "Kaia", "Kailee", "Kailey", "Kailyn", "Kaitlin", "Kaitlyn", "Kale", "Kaleb", "Kaleigh", "Kaley", "Kali", "Kallie", "Kameron", "Kamille", "Kamren", "Kamron", "Kamryn", "Kane", "Kara", "Kareem", "Karelle", "Karen", "Kari", "Kariane", "Karianne", "Karina", "Karine", "Karl", "Karlee", "Karley", "Karli", "Karlie", "Karolann", "Karson", "Kasandra", "Kasey", "Kassandra", "Katarina", "Katelin", "Katelyn", "Katelynn", "Katharina", "Katherine", "Katheryn", "Kathleen", "Kathlyn", "Kathryn", "Kathryne", "Katlyn", "Katlynn", "Katrina", "Katrine", "Kattie", "Kavon", "Kay", "Kaya", "Kaycee", "Kayden", "Kayla", "Kaylah", "Kaylee", "Kayleigh", "Kayley", "Kayli", "Kaylie", "Kaylin", "Keagan", "Keanu", "Keara", "Keaton", "Keegan", "Keeley", "Keely", "Keenan", "Keira", "Keith", "Kellen", "Kelley", "Kelli", "Kellie", "Kelly", "Kelsi", "Kelsie", "Kelton", "Kelvin", "Ken", "Kendall", "Kendra", "Kendrick", "Kenna", "Kennedi", "Kennedy", "Kenneth", "Kennith", "Kenny", "Kenton", "Kenya", "Kenyatta", "Kenyon", "Keon", "Keshaun", "Keshawn", "Keven", "Kevin", "Kevon", "Keyon", "Keyshawn", "Khalid", "Khalil", "Kian", "Kiana", "Kianna", "Kiara", "Kiarra", "Kiel", "Kiera", "Kieran", "Kiley", "Kim", "Kimberly", "King", "Kip", "Kira", "Kirk", "Kirsten", "Kirstin", "Kitty", "Kobe", "Koby", "Kody", "Kolby", "Kole", "Korbin", "Korey", "Kory", "Kraig", "Kris", "Krista", "Kristian", "Kristin", "Kristina", "Kristofer", "Kristoffer", "Kristopher", "Kristy", "Krystal", "Krystel", "Krystina", "Kurt", "Kurtis", "Kyla", "Kyle", "Kylee", "Kyleigh", "Kyler", "Kylie", "Kyra", "Lacey", "Lacy", "Ladarius", "Lafayette", "Laila", "Laisha", "Lamar", "Lambert", "Lamont", "Lance", "Landen", "Lane", "Laney", "Larissa", "Laron", "Larry", "Larue", "Laura", "Laurel", "Lauren", "Laurence", "Lauretta", "Lauriane", "Laurianne", "Laurie", "Laurine", "Laury", "Lauryn", "Lavada", "Lavern", "Laverna", "Laverne", "Lavina", "Lavinia", "Lavon", "Lavonne", "Lawrence", "Lawson", "Layla", "Layne", "Lazaro", "Lea", "Leann", "Leanna", "Leanne", "Leatha", "Leda", "Lee", "Leif", "Leila", "Leilani", "Lela", "Lelah", "Leland", "Lelia", "Lempi", "Lemuel", "Lenna", "Lennie", "Lenny", "Lenora", "Lenore", "Leo", "Leola", "Leon", "Leonard", "Leonardo", "Leone", "Leonel", "Leonie", "Leonor", "Leonora", "Leopold", "Leopoldo", "Leora", "Lera", "Lesley", "Leslie", "Lesly", "Lessie", "Lester", "Leta", "Letha", "Letitia", "Levi", "Lew", "Lewis", "Lexi", "Lexie", "Lexus", "Lia", "Liam", "Liana", "Libbie", "Libby", "Lila", "Lilian", "Liliana", "Liliane", "Lilla", "Lillian", "Lilliana", "Lillie", "Lilly", "Lily", "Lilyan", "Lina", "Lincoln", "Linda", "Lindsay", "Lindsey", "Linnea", "Linnie", "Linwood", "Lionel", "Lisa", "Lisandro", "Lisette", "Litzy", "Liza", "Lizeth", "Lizzie", "Llewellyn", "Lloyd", "Logan", "Lois", "Lola", "Lolita", "Loma", "Lon", "London", "Lonie", "Lonnie", "Lonny", "Lonzo", "Lora", "Loraine", "Loren", "Lorena", "Lorenz", "Lorenza", "Lorenzo", "Lori", "Lorine", "Lorna", "Lottie", "Lou", "Louie", "Louisa", "Lourdes", "Louvenia", "Lowell", "Loy", "Loyal", "Loyce", "Lucas", "Luciano", "Lucie", "Lucienne", "Lucile", "Lucinda", "Lucio", "Lucious", "Lucius", "Lucy", "Ludie", "Ludwig", "Lue", "Luella", "Luigi", "Luis", "Luisa", "Lukas", "Lula", "Lulu", "Luna", "Lupe", "Lura", "Lurline", "Luther", "Luz", "Lyda", "Lydia", "Lyla", "Lynn", "Lyric", "Lysanne", "Mabel", "Mabelle", "Mable", "Mac", "Macey", "Maci", "Macie", "Mack", "Mackenzie", "Macy", "Madaline", "Madalyn", "Maddison", "Madeline", "Madelyn", "Madelynn", "Madge", "Madie", "Madilyn", "Madisen", "Madison", "Madisyn", "Madonna", "Madyson", "Mae", "Maegan", "Maeve", "Mafalda", "Magali", "Magdalen", "Magdalena", "Maggie", "Magnolia", "Magnus", "Maia", "Maida", "Maiya", "Major", "Makayla", "Makenna", "Makenzie", "Malachi", "Malcolm", "Malika", "Malinda", "Mallie", "Mallory", "Malvina", "Mandy", "Manley", "Manuel", "Manuela", "Mara", "Marc", "Marcel", "Marcelina", "Marcelino", "Marcella", "Marcelle", "Marcellus", "Marcelo", "Marcia", "Marco", "Marcos", "Marcus", "Margaret", "Margarete", "Margarett", "Margaretta", "Margarette", "Margarita", "Marge", "Margie", "Margot", "Margret", "Marguerite", "Maria", "Mariah", "Mariam", "Marian", "Mariana", "Mariane", "Marianna", "Marianne", "Mariano", "Maribel", "Marie", "Mariela", "Marielle", "Marietta", "Marilie", "Marilou", "Marilyne", "Marina", "Mario", "Marion", "Marisa", "Marisol", "Maritza", "Marjolaine", "Marjorie", "Marjory", "Mark", "Markus", "Marlee", "Marlen", "Marlene", "Marley", "Marlin", "Marlon", "Marques", "Marquis", "Marquise", "Marshall", "Marta", "Martin", "Martina", "Martine", "Marty", "Marvin", "Mary", "Maryam", "Maryjane", "Maryse", "Mason", "Mateo", "Mathew", "Mathias", "Mathilde", "Matilda", "Matilde", "Matt", "Matteo", "Mattie", "Maud", "Maude", "Maudie", "Maureen", "Maurice", "Mauricio", "Maurine", "Maverick", "Mavis", "Max", "Maxie", "Maxime", "Maximilian", "Maximillia", "Maximillian", "Maximo", "Maximus", "Maxine", "Maxwell", "May", "Maya", "Maybell", "Maybelle", "Maye", "Maymie", "Maynard", "Mayra", "Mazie", "Mckayla", "Mckenna", "Mckenzie", "Meagan", "Meaghan", "Meda", "Megane", "Meggie", "Meghan", "Mekhi", "Melany", "Melba", "Melisa", "Melissa", "Mellie", "Melody", "Melvin", "Melvina", "Melyna", "Melyssa", "Mercedes", "Meredith", "Merl", "Merle", "Merlin", "Merritt", "Mertie", "Mervin", "Meta", "Mia", "Micaela", "Micah", "Michael", "Michaela", "Michale", "Micheal", "Michel", "Michele", "Michelle", "Miguel", "Mikayla", "Mike", "Mikel", "Milan", "Miles", "Milford", "Miller", "Millie", "Milo", "Milton", "Mina", "Minerva", "Minnie", "Miracle", "Mireille", "Mireya", "Misael", "Missouri", "Misty", "Mitchel", "Mitchell", "Mittie", "Modesta", "Modesto", "Mohamed", "Mohammad", "Mohammed", "Moises", "Mollie", "Molly", "Mona", "Monica", "Monique", "Monroe", "Monserrat", "Monserrate", "Montana", "Monte", "Monty", "Morgan", "Moriah", "Morris", "Mortimer", "Morton", "Mose", "Moses", "Moshe", "Mossie", "Mozell", "Mozelle", "Muhammad", "Muriel", "Murl", "Murphy", "Murray", "Mustafa", "Mya", "Myah", "Mylene", "Myles", "Myra", "Myriam", "Myrl", "Myrna", "Myron", "Myrtice", "Myrtie", "Myrtis", "Myrtle", "Nadia", "Nakia", "Name", "Nannie", "Naomi", "Naomie", "Napoleon", "Narciso", "Nash", "Nasir", "Nat", "Natalia", "Natalie", "Natasha", "Nathan", "Nathanael", "Nathanial", "Nathaniel", "Nathen", "Nayeli", "Neal", "Ned", "Nedra", "Neha", "Neil", "Nelda", "Nella", "Nelle", "Nellie", "Nels", "Nelson", "Neoma", "Nestor", "Nettie", "Neva", "Newell", "Newton", "Nia", "Nicholas", "Nicholaus", "Nichole", "Nick", "Nicklaus", "Nickolas", "Nico", "Nicola", "Nicolas", "Nicole", "Nicolette", "Nigel", "Nikita", "Nikki", "Nikko", "Niko", "Nikolas", "Nils", "Nina", "Noah", "Noble", "Noe", "Noel", "Noelia", "Noemi", "Noemie", "Noemy", "Nola", "Nolan", "Nona", "Nora", "Norbert", "Norberto", "Norene", "Norma", "Norris", "Norval", "Norwood", "Nova", "Novella", "Nya", "Nyah", "Nyasia", "Obie", "Oceane", "Ocie", "Octavia", "Oda", "Odell", "Odessa", "Odie", "Ofelia", "Okey", "Ola", "Olaf", "Ole", "Olen", "Oleta", "Olga", "Olin", "Oliver", "Ollie", "Oma", "Omari", "Omer", "Ona", "Onie", "Opal", "Ophelia", "Ora", "Oral", "Oran", "Oren", "Orie", "Orin", "Orion", "Orland", "Orlando", "Orlo", "Orpha", "Orrin", "Orval", "Orville", "Osbaldo", "Osborne", "Oscar", "Osvaldo", "Oswald", "Oswaldo", "Otha", "Otho", "Otilia", "Otis", "Ottilie", "Ottis", "Otto", "Ova", "Owen", "Ozella", "Pablo", "Paige", "Palma", "Pamela", "Pansy", "Paolo", "Paris", "Parker", "Pascale", "Pasquale", "Pat", "Patience", "Patricia", "Patrick", "Patsy", "Pattie", "Paul", "Paula", "Pauline", "Paxton", "Payton", "Pearl", "Pearlie", "Pearline", "Pedro", "Peggie", "Penelope", "Percival", "Percy", "Perry", "Pete", "Peter", "Petra", "Peyton", "Philip", "Phoebe", "Phyllis", "Pierce", "Pierre", "Pietro", "Pink", "Pinkie", "Piper", "Polly", "Porter", "Precious", "Presley", "Preston", "Price", "Prince", "Princess", "Priscilla", "Providenci", "Prudence", "Queen", "Queenie", "Quentin", "Quincy", "Quinn", "Quinten", "Quinton", "Rachael", "Rachel", "Rachelle", "Rae", "Raegan", "Rafael", "Rafaela", "Raheem", "Rahsaan", "Rahul", "Raina", "Raleigh", "Ralph", "Ramiro", "Ramon", "Ramona", "Randal", "Randall", "Randi", "Randy", "Ransom", "Raoul", "Raphael", "Raphaelle", "Raquel", "Rashad", "Rashawn", "Rasheed", "Raul", "Raven", "Ray", "Raymond", "Raymundo", "Reagan", "Reanna", "Reba", "Rebeca", "Rebecca", "Rebeka", "Rebekah", "Reece", "Reed", "Reese", "Regan", "Reggie", "Reginald", "Reid", "Reilly", "Reina", "Reinhold", "Remington", "Rene", "Renee", "Ressie", "Reta", "Retha", "Retta", "Reuben", "Reva", "Rex", "Rey", "Reyes", "Reymundo", "Reyna", "Reynold", "Rhea", "Rhett", "Rhianna", "Rhiannon", "Rhoda", "Ricardo", "Richard", "Richie", "Richmond", "Rick", "Rickey", "Rickie", "Ricky", "Rico", "Rigoberto", "Riley", "Rita", "River", "Robb", "Robbie", "Robert", "Roberta", "Roberto", "Robin", "Robyn", "Rocio", "Rocky", "Rod", "Roderick", "Rodger", "Rodolfo", "Rodrick", "Rodrigo", "Roel", "Rogelio", "Roger", "Rogers", "Rolando", "Rollin", "Roma", "Romaine", "Roman", "Ron", "Ronaldo", "Ronny", "Roosevelt", "Rory", "Rosa", "Rosalee", "Rosalia", "Rosalind", "Rosalinda", "Rosalyn", "Rosamond", "Rosanna", "Rosario", "Roscoe", "Rose", "Rosella", "Roselyn", "Rosemarie", "Rosemary", "Rosendo", "Rosetta", "Rosie", "Rosina", "Roslyn", "Ross", "Rossie", "Rowan", "Rowena", "Rowland", "Roxane", "Roxanne", "Roy", "Royal", "Royce", "Rozella", "Ruben", "Rubie", "Ruby", "Rubye", "Rudolph", "Rudy", "Rupert", "Russ", "Russel", "Russell", "Rusty", "Ruth", "Ruthe", "Ruthie", "Ryan", "Ryann", "Ryder", "Rylan", "Rylee", "Ryleigh", "Ryley", "Sabina", "Sabrina", "Sabryna", "Sadie", "Sadye", "Sage", "Saige", "Sallie", "Sally", "Salma", "Salvador", "Salvatore", "Sam", "Samanta", "Samantha", "Samara", "Samir", "Sammie", "Sammy", "Samson", "Sandra", "Sandrine", "Sandy", "Sanford", "Santa", "Santiago", "Santina", "Santino", "Santos", "Sarah", "Sarai", "Sarina", "Sasha", "Saul", "Savanah", "Savanna", "Savannah", "Savion", "Scarlett", "Schuyler", "Scot", "Scottie", "Scotty", "Seamus", "Sean", "Sebastian", "Sedrick", "Selena", "Selina", "Selmer", "Serena", "Serenity", "Seth", "Shad", "Shaina", "Shakira", "Shana", "Shane", "Shanel", "Shanelle", "Shania", "Shanie", "Shaniya", "Shanna", "Shannon", "Shanny", "Shanon", "Shany", "Sharon", "Shaun", "Shawn", "Shawna", "Shaylee", "Shayna", "Shayne", "Shea", "Sheila", "Sheldon", "Shemar", "Sheridan", "Sherman", "Sherwood", "Shirley", "Shyann", "Shyanne", "Sibyl", "Sid", "Sidney", "Sienna", "Sierra", "Sigmund", "Sigrid", "Sigurd", "Silas", "Sim", "Simeon", "Simone", "Sincere", "Sister", "Skye", "Skyla", "Skylar", "Sofia", "Soledad", "Solon", "Sonia", "Sonny", "Sonya", "Sophia", "Sophie", "Spencer", "Stacey", "Stacy", "Stan", "Stanford", "Stanley", "Stanton", "Stefan", "Stefanie", "Stella", "Stephan", "Stephania", "Stephanie", "Stephany", "Stephen", "Stephon", "Sterling", "Steve", "Stevie", "Stewart", "Stone", "Stuart", "Summer", "Sunny", "Susan", "Susana", "Susanna", "Susie", "Suzanne", "Sven", "Syble", "Sydnee", "Sydney", "Sydni", "Sydnie", "Sylvan", "Sylvester", "Sylvia", "Tabitha", "Tad", "Talia", "Talon", "Tamara", "Tamia", "Tania", "Tanner", "Tanya", "Tara", "Taryn", "Tate", "Tatum", "Tatyana", "Taurean", "Tavares", "Taya", "Taylor", "Teagan", "Ted", "Telly", "Terence", "Teresa", "Terrance", "Terrell", "Terrence", "Terrill", "Terry", "Tess", "Tessie", "Tevin", "Thad", "Thaddeus", "Thalia", "Thea", "Thelma", "Theo", "Theodora", "Theodore", "Theresa", "Therese", "Theresia", "Theron", "Thomas", "Thora", "Thurman", "Tia", "Tiana", "Tianna", "Tiara", "Tierra", "Tiffany", "Tillman", "Timmothy", "Timmy", "Timothy", "Tina", "Tito", "Titus", "Tobin", "Toby", "Tod", "Tom", "Tomas", "Tomasa", "Tommie", "Toney", "Toni", "Tony", "Torey", "Torrance", "Torrey", "Toy", "Trace", "Tracey", "Tracy", "Travis", "Travon", "Tre", "Tremaine", "Tremayne", "Trent", "Trenton", "Tressa", "Tressie", "Treva", "Trever", "Trevion", "Trevor", "Trey", "Trinity", "Trisha", "Tristian", "Tristin", "Triston", "Troy", "Trudie", "Trycia", "Trystan", "Turner", "Twila", "Tyler", "Tyra", "Tyree", "Tyreek", "Tyrel", "Tyrell", "Tyrese", "Tyrique", "Tyshawn", "Tyson", "Ubaldo", "Ulices", "Ulises", "Una", "Unique", "Urban", "Uriah", "Uriel", "Ursula", "Vada", "Valentin", "Valentina", "Valentine", "Valerie", "Vallie", "Van", "Vance", "Vanessa", "Vaughn", "Veda", "Velda", "Vella", "Velma", "Velva", "Vena", "Verda", "Verdie", "Vergie", "Verla", "Verlie", "Vern", "Verna", "Verner", "Vernice", "Vernie", "Vernon", "Verona", "Veronica", "Vesta", "Vicenta", "Vicente", "Vickie", "Vicky", "Victor", "Victoria", "Vida", "Vidal", "Vilma", "Vince", "Vincent", "Vincenza", "Vincenzo", "Vinnie", "Viola", "Violet", "Violette", "Virgie", "Virgil", "Virginia", "Virginie", "Vita", "Vito", "Viva", "Vivian", "Viviane", "Vivianne", "Vivien", "Vivienne", "Vladimir", "Wade", "Waino", "Waldo", "Walker", "Wallace", "Walter", "Walton", "Wanda", "Ward", "Warren", "Watson", "Wava", "Waylon", "Wayne", "Webster", "Weldon", "Wellington", "Wendell", "Wendy", "Werner", "Westley", "Weston", "Whitney", "Wilber", "Wilbert", "Wilburn", "Wiley", "Wilford", "Wilfred", "Wilfredo", "Wilfrid", "Wilhelm", "Wilhelmine", "Will", "Willa", "Willard", "William", "Willie", "Willis", "Willow", "Willy", "Wilma", "Wilmer", "Wilson", "Wilton", "Winfield", "Winifred", "Winnifred", "Winona", "Winston", "Woodrow", "Wyatt", "Wyman", "Xander", "Xavier", "Xzavier", "Yadira", "Yasmeen", "Yasmin", "Yasmine", "Yazmin", "Yesenia", "Yessenia", "Yolanda", "Yoshiko", "Yvette", "Yvonne", "Zachariah", "Zachary", "Zachery", "Zack", "Zackary", "Zackery", "Zakary", "Zander", "Zane", "Zaria", "Zechariah", "Zelda", "Zella", "Zelma", "Zena", "Zetta", "Zion", "Zita", "Zoe", "Zoey", "Zoie", "Zoila", "Zola", "Zora", "Zula"]
  @last_names  ["Abbott", "Abernathy", "Abshire", "Adams", "Altenwerth", "Anderson", "Ankunding", "Armstrong", "Auer", "Aufderhar", "Bahringer", "Bailey", "Balistreri", "Barrows", "Bartell", "Bartoletti", "Barton", "Bashirian", "Batz", "Bauch", "Baumbach", "Bayer", "Beahan", "Beatty", "Bechtelar", "Becker", "Bednar", "Beer", "Beier", "Berge", "Bergnaum", "Bergstrom", "Bernhard", "Bernier", "Bins", "Blanda", "Blick", "Block", "Bode", "Boehm", "Bogan", "Bogisich", "Borer", "Bosco", "Botsford", "Boyer", "Boyle", "Bradtke", "Brakus", "Braun", "Breitenberg", "Brekke", "Brown", "Bruen", "Buckridge", "Carroll", "Carter", "Cartwright", "Casper", "Cassin", "Champlin", "Christiansen", "Cole", "Collier", "Collins", "Conn", "Connelly", "Conroy", "Considine", "Corkery", "Cormier", "Corwin", "Cremin", "Crist", "Crona", "Cronin", "Crooks", "Cruickshank", "Cummerata", "Cummings", "Dach", "D'Amore", "Daniel", "Dare", "Daugherty", "Davis", "Deckow", "Denesik", "Dibbert", "Dickens", "Dicki", "Dickinson", "Dietrich", "Donnelly", "Dooley", "Douglas", "Doyle", "DuBuque", "Durgan", "Ebert", "Effertz", "Eichmann", "Emard", "Emmerich", "Erdman", "Ernser", "Fadel", "Fahey", "Farrell", "Fay", "Feeney", "Feest", "Feil", "Ferry", "Fisher", "Flatley", "Frami", "Franecki", "Friesen", "Fritsch", "Funk", "Gaylord", "Gerhold", "Gerlach", "Gibson", "Gislason", "Gleason", "Gleichner", "Glover", "Goldner", "Goodwin", "Gorczany", "Gottlieb", "Goyette", "Grady", "Graham", "Grant", "Green", "Greenfelder", "Greenholt", "Grimes", "Gulgowski", "Gusikowski", "Gutkowski", "Gutmann", "Haag", "Hackett", "Hagenes", "Hahn", "Haley", "Halvorson", "Hamill", "Hammes", "Hand", "Hane", "Hansen", "Harber", "Harris", "Hartmann", "Harvey", "Hauck", "Hayes", "Heaney", "Heathcote", "Hegmann", "Heidenreich", "Heller", "Herman", "Hermann", "Hermiston", "Herzog", "Hessel", "Hettinger", "Hickle", "Hilll", "Hills", "Hilpert", "Hintz", "Hirthe", "Hodkiewicz", "Hoeger", "Homenick", "Hoppe", "Howe", "Howell", "Hudson", "Huel", "Huels", "Hyatt", "Jacobi", "Jacobs", "Jacobson", "Jakubowski", "Jaskolski", "Jast", "Jenkins", "Jerde", "Johns", "Johnson", "Johnston", "Jones", "Kassulke", "Kautzer", "Keebler", "Keeling", "Kemmer", "Kerluke", "Kertzmann", "Kessler", "Kiehn", "Kihn", "Kilback", "King", "Kirlin", "Klein", "Kling", "Klocko", "Koch", "Koelpin", "Koepp", "Kohler", "Konopelski", "Koss", "Kovacek", "Kozey", "Krajcik", "Kreiger", "Kris", "Kshlerin", "Kub", "Kuhic", "Kuhlman", "Kuhn", "Kulas", "Kunde", "Kunze", "Kuphal", "Kutch", "Kuvalis", "Labadie", "Lakin", "Lang", "Langosh", "Langworth", "Larkin", "Larson", "Leannon", "Lebsack", "Ledner", "Leffler", "Legros", "Lehner", "Lemke", "Lesch", "Leuschke", "Lind", "Lindgren", "Littel", "Little", "Lockman", "Lowe", "Lubowitz", "Lueilwitz", "Luettgen", "Lynch", "Macejkovic", "MacGyver", "Maggio", "Mann", "Mante", "Marks", "Marquardt", "Marvin", "Mayer", "Mayert", "McClure", "McCullough", "McDermott", "McGlynn", "McKenzie", "McLaughlin", "Medhurst", "Mertz", "Metz", "Miller", "Mills", "Mitchell", "Moen", "Mohr", "Monahan", "Moore", "Morar", "Morissette", "Mosciski", "Mraz", "Mueller", "Muller", "Murazik", "Murphy", "Murray", "Nader", "Nicolas", "Nienow", "Nikolaus", "Nitzsche", "Nolan", "Oberbrunner", "O'Connell", "O'Conner", "O'Hara", "O'Keefe", "O'Kon", "Okuneva", "Olson", "Ondricka", "O'Reilly", "Orn", "Ortiz", "Osinski", "Pacocha", "Padberg", "Pagac", "Parisian", "Parker", "Paucek", "Pfannerstill", "Pfeffer", "Pollich", "Pouros", "Powlowski", "Predovic", "Price", "Prohaska", "Prosacco", "Purdy", "Quigley", "Quitzon", "Rath", "Ratke", "Rau", "Raynor", "Reichel", "Reichert", "Reilly", "Reinger", "Rempel", "Renner", "Reynolds", "Rice", "Rippin", "Ritchie", "Robel", "Roberts", "Rodriguez", "Rogahn", "Rohan", "Rolfson", "Romaguera", "Roob", "Rosenbaum", "Rowe", "Ruecker", "Runolfsdottir", "Runolfsson", "Runte", "Russel", "Rutherford", "Ryan", "Sanford", "Satterfield", "Sauer", "Sawayn", "Schaden", "Schaefer", "Schamberger", "Schiller", "Schimmel", "Schinner", "Schmeler", "Schmidt", "Schmitt", "Schneider", "Schoen", "Schowalter", "Schroeder", "Schulist", "Schultz", "Schumm", "Schuppe", "Schuster", "Senger", "Shanahan", "Shields", "Simonis", "Sipes", "Skiles", "Smith", "Smitham", "Spencer", "Spinka", "Sporer", "Stamm", "Stanton", "Stark", "Stehr", "Steuber", "Stiedemann", "Stokes", "Stoltenberg", "Stracke", "Streich", "Stroman", "Strosin", "Swaniawski", "Swift", "Terry", "Thiel", "Thompson", "Tillman", "Torp", "Torphy", "Towne", "Toy", "Trantow", "Tremblay", "Treutel", "Tromp", "Turcotte", "Turner", "Ullrich", "Upton", "Vandervort", "Veum", "Volkman", "Von", "VonRueden", "Waelchi", "Walker", "Walsh", "Walter", "Ward", "Waters", "Watsica", "Weber", "Wehner", "Weimann", "Weissnat", "Welch", "West", "White", "Wiegand", "Wilderman", "Wilkinson", "Will", "Williamson", "Willms", "Windler", "Wintheiser", "Wisoky", "Wisozk", "Witting", "Wiza", "Wolf", "Wolff", "Wuckert", "Wunsch", "Wyman", "Yost", "Yundt", "Zboncak", "Zemlak", "Ziemann", "Zieme", "Zulauf"]

  @street_suffixes ["Alley", "Avenue", "Branch", "Bridge", "Brook", "Brooks", "Burg", "Burgs", "Bypass", "Camp", "Canyon", "Cape", "Causeway", "Center", "Centers", "Circle", "Circles", "Cliff", "Cliffs", "Club", "Common", "Corner", "Corners", "Course", "Court", "Courts", "Cove", "Coves", "Creek", "Crescent", "Crest", "Crossing", "Crossroad", "Curve", "Dale", "Dam", "Divide", "Drive", "Drive", "Drives", "Estate", "Estates", "Expressway", "Extension", "Extensions", "Fall", "Falls", "Ferry", "Field", "Fields", "Flat", "Flats", "Ford", "Fords", "Forest", "Forge", "Forges", "Fork", "Forks", "Fort", "Freeway", "Garden", "Gardens", "Gateway", "Glen", "Glens", "Green", "Greens", "Grove", "Groves", "Harbor", "Harbors", "Haven", "Heights", "Highway", "Hill", "Hills", "Hollow", "Inlet", "Inlet", "Island", "Island", "Islands", "Islands", "Isle", "Isle", "Junction", "Junctions", "Key", "Keys", "Knoll", "Knolls", "Lake", "Lakes", "Land", "Landing", "Lane", "Light", "Lights", "Loaf", "Lock", "Locks", "Locks", "Lodge", "Lodge", "Loop", "Mall", "Manor", "Manors", "Meadow", "Meadows", "Mews", "Mill", "Mills", "Mission", "Mission", "Motorway", "Mount", "Mountain", "Mountain", "Mountains", "Mountains", "Neck", "Orchard", "Oval", "Overpass", "Park", "Parks", "Parkway", "Parkways", "Pass", "Passage", "Path", "Pike", "Pine", "Pines", "Place", "Plain", "Plains", "Plains", "Plaza", "Plaza", "Point", "Points", "Port", "Port", "Ports", "Ports", "Prairie", "Prairie", "Radial", "Ramp", "Ranch", "Rapid", "Rapids", "Rest", "Ridge", "Ridges", "River", "Road", "Road", "Roads", "Roads", "Route", "Row", "Rue", "Run", "Shoal", "Shoals", "Shore", "Shores", "Skyway", "Spring", "Springs", "Springs", "Spur", "Spurs", "Square", "Square", "Squares", "Squares", "Station", "Station", "Stravenue", "Stravenue", "Stream", "Stream", "Street", "Street", "Streets", "Summit", "Summit", "Terrace", "Throughway", "Trace", "Track", "Trafficway", "Trail", "Trail", "Tunnel", "Tunnel", "Turnpike", "Turnpike", "Underpass", "Union", "Unions", "Valley", "Valleys", "Via", "Viaduct", "View", "Views", "Village", "Village", "Villages", "Ville", "Vista", "Vista", "Walk", "Walks", "Wall", "Way", "Ways", "Well", "Wells"]

  @building_patterns ["#####", "####", "###"]
  @zip_code_patterns ["#####", "#####-####"]
  @version_patterns ["0.#.#", "0.##", "#.##", "#.#", "#.#.#"]
  @secondary_addresses ["Apt. ###", "Suite ###"]

  @phone_home_patterns ["###-###-####", "(###) ###-####", "1-###-###-####", "###.###.####", "###-###-####", "(###) ###-####", "1-###-###-####", "###.###.####", "###-###-#### x###", "(###) ###-#### x###", "1-###-###-#### x###", "###.###.#### x###", "###-###-#### x####", "(###) ###-#### x####", "1-###-###-#### x####", "###.###.#### x####", "###-###-#### x#####", "(###) ###-#### x#####", "1-###-###-#### x#####", "###.###.#### x#####"]
  @phone_cell_patterns ["###-###-####", "(###) ###-####", "1-###-###-####", "###.###.####"]

  @states ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
  @state_codes ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]

  @apps ["Lemonid", "Licemand", "Dohmer", "Increasure", "Nothers", "Coalify", "Koala-app", "Jaming", "Sharehouse", "Everal", "Westory", "Flation", "Browniee", "Summerica", "Prote", "Mackerill", "Chatic", "Seriods", "Chocolada", "Solidays", "Elcome", "Trakerit", "Gastroyo", "Pizzadeli", "Arties", "Factoric", "Univer", "Ukuku", "Britley", "High-poney", "Coffeecup", "Peeer", "Aliasmixo"]

  @words ["alias", "consequatur", "aut", "perferendis", "sit", "voluptatem", "accusantium", "doloremque", "aperiam", "eaque", "ipsa", "quae", "ab", "illo", "inventore", "veritatis", "et", "quasi", "architecto", "beatae", "vitae", "dicta", "sunt", "explicabo", "aspernatur", "aut", "odit", "aut", "fugit", "sed", "quia", "consequuntur", "magni", "dolores", "eos", "qui", "ratione", "voluptatem", "sequi", "nesciunt", "neque", "dolorem", "ipsum", "quia", "dolor", "sit", "amet", "consectetur", "adipisci", "velit", "sed", "quia", "non", "numquam", "eius", "modi", "tempora", "incidunt", "ut", "labore", "et", "dolore", "magnam", "aliquam", "quaerat", "voluptatem", "ut", "enim", "ad", "minima", "veniam", "quis", "nostrum", "exercitationem", "ullam", "corporis", "nemo", "enim", "ipsam", "voluptatem", "quia", "voluptas", "sit", "suscipit", "laboriosam", "nisi", "ut", "aliquid", "ex", "ea", "commodi", "consequatur", "quis", "autem", "vel", "eum", "iure", "reprehenderit", "qui", "in", "ea", "voluptate", "velit", "esse", "quam", "nihil", "molestiae", "et", "iusto", "odio", "dignissimos", "ducimus", "qui", "blanditiis", "praesentium", "laudantium", "totam", "rem", "voluptatum", "deleniti", "atque", "corrupti", "quos", "dolores", "et", "quas", "molestias", "excepturi", "sint", "occaecati", "cupiditate", "non", "provident", "sed", "ut", "perspiciatis", "unde", "omnis", "iste", "natus", "error", "similique", "sunt", "in", "culpa", "qui", "officia", "deserunt", "mollitia", "animi", "id", "est", "laborum", "et", "dolorum", "fuga", "et", "harum", "quidem", "rerum", "facilis", "est", "et", "expedita", "distinctio", "nam", "libero", "tempore", "cum", "soluta", "nobis", "est", "eligendi", "optio", "cumque", "nihil", "impedit", "quo", "porro", "quisquam", "est", "qui", "minus", "id", "quod", "maxime", "placeat", "facere", "possimus", "omnis", "voluptas", "assumenda", "est", "omnis", "dolor", "repellendus", "temporibus", "autem", "quibusdam", "et", "aut", "consequatur", "vel", "illum", "qui", "dolorem", "eum", "fugiat", "quo", "voluptas", "nulla", "pariatur", "at", "vero", "eos", "et", "accusamus", "officiis", "debitis", "aut", "rerum", "necessitatibus", "saepe", "eveniet", "ut", "et", "voluptates", "repudiandae", "sint", "et", "molestiae", "non", "recusandae", "itaque", "earum", "rerum", "hic", "tenetur", "a", "sapiente", "delectus", "ut", "aut", "reiciendis", "voluptatibus", "maiores", "doloribus", "asperiores", "repellat"]

  @prefixes ["Mr.", "Mrs.", "Ms.", "Miss", "Dr."]
  @suffixes ["Jr.", "Sr.", "I", "II", "III", "IV", "V", "MD", "DDS", "PhD", "DVM"]

  @title_descriptors ["Lead", "Senior", "Direct", "Corporate", "Dynamic", "Future", "Product", "National", "Regional", "District", "Central", "Global", "Customer", "Investor", "Dynamic", "International", "Legacy", "Forward", "Internal", "Human", "Chief", "Principal"]
  @title_levels ["Solutions", "Program", "Brand", "Security", "Research", "Marketing", "Directives", "Implementation", "Integration", "Functionality", "Response", "Paradigm", "Tactics", "Identity", "Markets", "Group", "Division", "Applications", "Optimization", "Operations", "Infrastructure", "Intranet", "Communications", "Web", "Branding", "Quality", "Assurance", "Mobility", "Accounts", "Data", "Creative", "Configuration", "Accountability", "Interactions", "Factors", "Usability", "Metrics"]
  @title_jobs ["Supervisor", "Associate", "Executive", "Liaison", "Officer", "Manager", "Engineer", "Specialist", "Director", "Coordinator", "Administrator", "Architect", "Analyst", "Designer", "Planner", "Orchestrator", "Technician", "Developer", "Producer", "Consultant", "Assistant", "Facilitator", "Agent", "Representative", "Strategist"]

  @domain_popular_emails ["gmail.com", "yahoo.com", "hotmail.com", "outlook.com"]
  @domain_school_emails ["acu.edu", "adelphi.edu", "scottlan.edu", "acofi.edu", "apu.edu", "babson.edu", "bsu.edu", "bucknell.edu", "calcoastuniv.edu", "cwru.edu", "columbia.edu", "daemen.edu", "drexel.edu", "earlham.edu", "emmanuel.edu", "fdu.edu", "fordham.edu", "furman.edu", "gallaudet.edu", "gbc.edu", "gac.edu", "haskell.edu", "harvard.edu", "huntcol.edu", "ici.edu", "jwu.edu", "kent.edu", "liberty.edu", "mcneese.edu", "manc.edu", "ndu.edu", "olivet.edu", "pittstate.edu", "providence.edu", "quinnipiac.edu", "runet.edu", "stcloud.msus.edu", "shsu.edu", "stanford.edu", "tamucc.edu", "usafa.af.mil", "uab.edu", "vcu.edu", "wcupa.edu", "xula.edu", "ycp.edu"]
  @domain_extensions ["com", "biz", "info", "name", "net", "org", "io", "com"]

  @weak_passwords ["password", "asdfgh", "guest", "admin", "qwerty", "1234", "0987", "12345", "123456", "default", "mypassword", "lol", "system", "facebook", "google", "twitter", "1111", "zzzz", "customer", "superadmin"]

  @credit_cards [
    %{
      type: "Visa",
      number_patterns: ["4539########", "4539###########", "4556########", "4556###########", "4916########", "4916###########", "4532########", "4532###########", "4929########", "4929###########", "40240071####", "40240071#######", "4485########", "4485###########", "4716########", "4716###########", "4###########", "4##############"],
      cvv_patterns: ["###"]
    },
    %{
      type: "MasterCard",
      number_patterns: ["51#############", "52#############", "53#############", "54#############", "55#############"],
      cvv_patterns: ["###"]
    },
    %{
      type: "American Express",
      number_patterns: ["34############", "37############"],
      cvv_patterns: ["####"]
    },
    %{
      type: "Discover Card",
      number_patterns: ["6011###########"],
      cvv_patterns: ["###"]
    }
  ]

  @bank_names ["J.P.Morgan Chase & Co", "Bank of America", "Wells Fargo", "Citigroup", "Goldman Sachs Group", "Morgan Stanley", "U.S. Bancorp", "Bank of New York Mellon", "PNC Financial Services", "Capital One", "HSBC North America Holdings", "TD Group US Holding", "State Street Corporation", "BB&T Corporation", "SunTrust Banks", "Charles Schwab Corporation", "Atlantic Bank", "Ally Financial", "Fifth Third Bank", "United Services Automobile Assoc.", "Citizens Financial Group", "RBC USA Holdco Corporation", "Santander Holdings USA", "BMO Financial Corp", "Regions Financial Corporation", "M&T Bank Corporation"]

  @colors ["red", "green", "blue", "yellow", "purple", "mint green", "teal", "white", "black", "orange", "pink", "grey", "maroon", "violet", "turquoise", "tan", "sky blue", "salmon", "plum", "orchid", "olive", "magenta", "lime", "ivory", "indigo", "gold", "fuchsia", "cyan", "azure", "lavender", "silver"]

  @file_extensions %{
   image: ~w(bmp gif jpeg jpg png tiff),
   audio: ~w(flac mp3 wav),
   text: ~w(css csv html js json txt),
   video: ~w(mp4 avi mov webm),
   office: ~w(doc docx xls xlsx ppt pptx odt ods odp pages numbers key pdf)
  }

  @file_mimes %{
    application: ~w(application/atom+xml application/ecmascript application/EDI-X12 application/EDIFACT application/json application/javascript application/ogg application/pdf application/postscript application/rdf+xml application/rss+xml application/soap+xml application/font-woff application/xhtml+xml application/xml-dtd application/xop+xml application/zip application/gzip),
    audio: ~w(audio/basic audio/L24 audio/mp4 audio/mpeg audio/ogg audio/vorbis audio/vnd.rn-realaudio audio/vnd.wave audio/webm),
    image: ~w(image/gif image/jpeg image/pjpeg image/png image/svg+xml image/tiff image/vnd.microsoft.icon),
    message: ~w(message/http message/imdn+xml message/partial message/rfc822),
    model: ~w(model/example model/iges model/mesh model/vrml model/x3d+binary model/x3d+vrml model/x3d+xml),
    multipart: ~w(multipart/mixed multipart/alternative multipart/related multipart/form-data multipart/signed multipart/encrypted),
    text: ~w(text/cmd text/css text/csv text/html text/javascript text/plain text/vcard text/xml),
    video: ~w(video/mpeg video/mp4 video/ogg video/quicktime video/webm video/x-matroska video/x-ms-wmv video/x-flv)
  }

  @currencies [
    %{country: "Afghanistan", name: "Afghanistani Afghani", code: "AFN", symbol: "AFN"},
    %{country: "Aland Islands", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Albania", name: "Albanian Lek", code: "ALL", symbol: "ALL"},
    %{country: "Algeria", name: "Algerian Dinar", code: "DZD", symbol: "دج"},
    %{country: "Andorra", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Angola", name: "Angolan Kwanza", code: "AOA", symbol: "Kz"},
    %{country: "Anguilla", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Antigua & Barbuda", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Argentina", name: "Argentine Peso", code: "ARS", symbol: "AR$"},
    %{country: "Armenia", name: "Armenian Dram", code: "AMD", symbol: "դր"},
    %{country: "Aruba", name: "Aruban Florin", code: "AWG", symbol: "ƒ"},
    %{country: "Australia", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Austria", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Azerbaijan", name: "Azerbaijani Manat", code: "AZN", symbol: "ман"},
    %{country: "Bahamas", name: "Bahamian Dollar", code: "BSD", symbol: "BS$"},
    %{country: "Bahrain", name: "Bahraini Dinar", code: "BHD", symbol: "ب.د"},
    %{country: "Bangladesh", name: "Bangladeshi Taka", code: "BDT", symbol: "৳"},
    %{country: "Barbados", name: "Barbados Dollar", code: "BBD", symbol: "Bds$"},
    %{country: "Belarus", name: "Belarusian Ruble", code: "BYR", symbol: "Br"},
    %{country: "Belgium", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Belize", name: "Belize Dollar", code: "BZD", symbol: "BZ$"},
    %{country: "Benin", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Bermuda", name: "Bermuda Dollar", code: "BMD", symbol: "BD$"},
    %{country: "Bhutan", name: "Bhutanese Ngultrum", code: "BTN", symbol: "Nu"},
    %{country: "Bolivia", name: "Bolivian Boliviano", code: "BOB", symbol: "Bs"},
    %{country: "Bosnia & Herzegovina", name: "Bosnia-Herzegovina Convertible Mark", code: "BAM", symbol: "KM"},
    %{country: "Botswana", name: "Botswana Pula", code: "BWP", symbol: "P"},
    %{country: "Brazil", name: "Brazilian Real", code: "BRL", symbol: "R$"},
    %{country: "Brunei", name: "Brunei Dollar", code: "BND", symbol: "B$"},
    %{country: "Bulgaria", name: "Bulgarian Lev", code: "BGN", symbol: "лв"},
    %{country: "Burkina Faso", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Burundi", name: "Burundian Franc", code: "BIF", symbol: "FBu"},
    %{country: "Cambodia", name: "Cambodian Riel", code: "KHR", symbol: "៛"},
    %{country: "Cameroon", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Canada", name: "Canadian Dollar", code: "CAD", symbol: "CA$"},
    %{country: "Cape Verde", name: "Cape Verde Escudo", code: "CVE", symbol: "CV$"},
    %{country: "Cayman Islands", name: "Cayman Islands Dollar", code: "KYD", symbol: "CI$"},
    %{country: "Central African Republic", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Chad", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Chile", name: "Chilean Peso", code: "CLP", symbol: "CL$"},
    %{country: "China", name: "Chinese Yuan Renminbi", code: "CNY", symbol: "CN¥"},
    %{country: "Christmas Island", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Cocos (Keeling) Islands", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Colombia", name: "Colombian Peso", code: "COP", symbol: "Col$"},
    %{country: "Comoros", name: "Comorian Franc", code: "KMF", symbol: "KMF"},
    %{country: "Congo (Dem. Rep.)", name: "Congolese franc", code: "CDF", symbol: "CDFr"},
    %{country: "Congo (Rep.)", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Cook Islands", name: "New Zealand Dollar", code: "NZD", symbol: "NZ$"},
    %{country: "Costa Rica", name: "Costa Rican Colon", code: "CRC", symbol: "₡"},
    %{country: "Cote d'Ivoire", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Croatia (Hrvatska)", name: "Croatian Kuna", code: "HRK", symbol: "HRK"},
    %{country: "Cuba", name: "Cuban Convertible Peso", code: "CUC", symbol: "CU$"},
    %{country: "Cyprus", name: "Cypriot Pound", code: "CYP", symbol: "CY£"},
    %{country: "Czech Republic", name: "Czech Koruna", code: "CZK", symbol: "Kč"},
    %{country: "Denmark", name: "Danish Krone", code: "DKK", symbol: "ø"},
    %{country: "Djibouti", name: "Djiboutian Franc", code: "DJF", symbol: "Fdj"},
    %{country: "Dominica", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Dominican Republic", name: "Dominican Peso", code: "DOP", symbol: "RD$"},
    %{country: "Ecuador", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Egypt", name: "Egyptian Pound", code: "EGP", symbol: "ج.م"},
    %{country: "El Salvador", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Equatorial Guinea", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Eritrea", name: "Eritrean Nakfa", code: "ERN", symbol: "Nfk"},
    %{country: "Estonia", name: "Estonian Kroon", code: "EEK", symbol: "KR"},
    %{country: "Ethiopia", name: "Ethiopian Birr", code: "ETB", symbol: "Br"},
    %{country: "Faeroe Islands", name: "Danish Krone", code: "DKK", symbol: "ø"},
    %{country: "Falkland Islands (Malvinas)", name: "Falkland pound", code: "FKP", symbol: "FK£"},
    %{country: "Fiji", name: "Fiji Dollar", code: "FJD", symbol: "FJ$"},
    %{country: "Finland", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "France", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "French Guiana", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "French Polynesia", name: "French Pacific Franc", code: "XPF", symbol: "CFP"},
    %{country: "TAAF", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Gabon", name: "Central African CFA", code: "XAF", symbol: "franc"},
    %{country: "Gambia", name: "Gambian Dalasi", code: "GMD", symbol: "D"},
    %{country: "Georgia", name: "Georgian Lari", code: "GEL", symbol: "GEL"},
    %{country: "Germany", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Ghana", name: "Ghanaian Cedi", code: "GHC", symbol: "₵"},
    %{country: "Gibraltar", name: "Gibraltar Pound", code: "GIP", symbol: "GI£"},
    %{country: "Greece", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Greenland", name: "Danish Krone", code: "DKK", symbol: "ø"},
    %{country: "Grenada", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Guadeloupe", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Guam", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Guatemala", name: "Guatemalan Quetzal", code: "GTQ", symbol: "Q"},
    %{country: "Guinea", name: "Guinean Franc", code: "GNF", symbol: "FG"},
    %{country: "Guinea-Bissau", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Guyana", name: "Guyanese Dollar", code: "GYD", symbol: "GY$"},
    %{country: "Haiti", name: "Haitian Gourde", code: "HTG", symbol: "G"},
    %{country: "Honduras", name: "Honduran Lempira", code: "HNL", symbol: "L"},
    %{country: "Hong Kong", name: "Hong Kong Dollar", code: "HKD", symbol: "HK$"},
    %{country: "Hungary", name: "Hungarian Forint", code: "HUF", symbol: "Ft"},
    %{country: "Iceland", name: "Icelandic Krona", code: "ISK", symbol: "ISK"},
    %{country: "India", name: "Indian Rupee", code: "INR", symbol: "IN₨"},
    %{country: "Indonesia", name: "Indonesian Rupiah", code: "IDR", symbol: "Rp"},
    %{country: "Iran", name: "Iranian Rial", code: "IRR", symbol: "ريال"},
    %{country: "Iraq", name: "Iraqi Dinar", code: "IQD", symbol: "ع.د"},
    %{country: "Ireland", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Isle of Man", name: "United Kingdom Pound Sterling", code: "GBP", symbol: "UK£"},
    %{country: "Israel", name: "Israeli New Sheqel", code: "ILS", symbol: "₪"},
    %{country: "Italy", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Jamaica", name: "Jamaican Dollar", code: "JMD", symbol: "JA$"},
    %{country: "Japan", name: "Japanese Yen", code: "JPY", symbol: "JP¥"},
    %{country: "Jersey", name: "United Kingdom Pound Sterling", code: "GBP", symbol: "UK£"},
    %{country: "Jordan", name: "Jordanian Dinar", code: "JOD", symbol: "JD"},
    %{country: "Kazakhstan", name: "Kazakhstani Tenge", code: "KZT", symbol: "KZT"},
    %{country: "Kenya", name: "Kenyan Shilling", code: "KES", symbol: "KSh"},
    %{country: "Kiribati", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Korea, North", name: "North Korean Won", code: "KPW", symbol: "₩"},
    %{country: "Korea, South", name: "Korean Won", code: "KRW", symbol: "₩"},
    %{country: "Kuwait", name: "Kuwaiti Dinar", code: "KWD", symbol: "د.ك"},
    %{country: "Kyrgyzstan", name: "Kyrgyzstani Som", code: "KGS", symbol: "KGS"},
    %{country: "Laos", name: "Lao Kip", code: "LAK", symbol: "₭"},
    %{country: "Latvia", name: "Latvian Lats", code: "LVL", symbol: "Ls"},
    %{country: "Lebanon", name: "Lebanese Pound", code: "LBP", symbol: "ل.ل"},
    %{country: "Lesotho", name: "Lesotho Loti", code: "LSL", symbol: "L"},
    %{country: "Liberia", name: "Liberian Dollar", code: "LRD", symbol: "L$"},
    %{country: "Libya", name: "Libyan Dinar", code: "LYD", symbol: "ل.د"},
    %{country: "Liechtenstein", name: "Swiss Franc", code: "CHF", symbol: "CHF"},
    %{country: "Lithuania", name: "Lithuanian Litas", code: "LTL", symbol: "Lt"},
    %{country: "Luxembourg", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Macau", name: "Macanese Pataca", code: "MOP", symbol: "MO$"},
    %{country: "Macedonia", name: "Macedonian Denar", code: "MKD", symbol: "MKD"},
    %{country: "Madagascar", name: "Malagasy Ariary", code: "MGA", symbol: "MGA"},
    %{country: "Malawi", name: "Malawian Kwacha", code: "MWK", symbol: "MK"},
    %{country: "Malaysia", name: "Malaysian Ringgit", code: "MYR", symbol: "RM"},
    %{country: "Maldives", name: "Maldives Rufiyaa", code: "MVR", symbol: "MRf"},
    %{country: "Mali", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Malta", name: "Maltese Lira", code: "MTL", symbol: "Lm"},
    %{country: "Marshall Islands", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Martinique", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Mauritania", name: "Mauritanian Ouguiya", code: "MRO", symbol: "UM"},
    %{country: "Mauritius", name: "Mauritian Rupee", code: "MUR", symbol: "MU₨"},
    %{country: "Mayotte", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Mexico", name: "Mexican Peso", code: "MXN", symbol: "Mex$"},
    %{country: "Micronesia", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Moldova", name: "Moldovan Leu", code: "MDL", symbol: "MDL"},
    %{country: "Monaco", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Mongolia", name: "Mongolian Tugrik", code: "MNT", symbol: "₮"},
    %{country: "Montenegro", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Montserrat", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Morocco", name: "Moroccan Dirham", code: "MAD", symbol: "د.م"},
    %{country: "Mozambique", name: "Mozambican Metical", code: "MZN", symbol: "MTn"},
    %{country: "Myanmar (Burma)", name: "Myanmar Kyat", code: "MMK", symbol: "K"},
    %{country: "Namibia", name: "Namibian Dollar", code: "NAD", symbol: "N$"},
    %{country: "Nauru", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Nepal", name: "Nepalese Rupee", code: "NPR", symbol: "NP₨"},
    %{country: "Netherlands", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Netherlands Antilles", name: "Netherlands Antillean Gulden", code: "ANG", symbol: "NAƒ"},
    %{country: "New Caledonia", name: "French Pacific Franc", code: "XPF", symbol: "CFP"},
    %{country: "New Zealand", name: "New Zealand Dollar", code: "NZD", symbol: "NZ$"},
    %{country: "Nicaragua", name: "Nicaraguan Córdoba", code: "NIO", symbol: "C$"},
    %{country: "Niger", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Nigeria", name: "Nigerian Naira", code: "NGN", symbol: "₦"},
    %{country: "Niue", name: "New Zealand Dollar", code: "NZD", symbol: "NZ$"},
    %{country: "Norfolk Island", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Northern Mariana Islands", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Norway", name: "Norwegian Krone", code: "NOK", symbol: "øre"},
    %{country: "Oman", name: "Omani Rial", code: "OMR", symbol: "ر.ع"},
    %{country: "Pakistan", name: "Pakistan Rupee", code: "PKR", symbol: "PKRs"},
    %{country: "Palau", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Palestine", name: "Jordanian Dinar", code: "JOD", symbol: "JD"},
    %{country: "Panama", name: "Panamanian Balboa", code: "PAB", symbol: "PAB"},
    %{country: "Papua New Guinea", name: "Papua New Guinea Kina", code: "PGK", symbol: "K"},
    %{country: "Paraguay", name: "Paraguay Guarani", code: "PYG", symbol: "₲"},
    %{country: "Peru", name: "Peruvian Nuevo Sol", code: "PEN", symbol: "S./"},
    %{country: "Philippines", name: "Philippine Peso", code: "PHP", symbol: "₱"},
    %{country: "Pitcairn Islands", name: "New Zealand Dollar", code: "NZD", symbol: "NZ$"},
    %{country: "Poland", name: "Polish Zloty", code: "PLN", symbol: "zł"},
    %{country: "Portugal", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Puerto Rico", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Qatar", name: "Qatari Riyal", code: "QAR", symbol: "ر.ق"},
    %{country: "Reunion", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Romania", name: "Romanian Leu", code: "RON", symbol: "ROL"},
    %{country: "Russia", name: "Russian Ruble", code: "RUB", symbol: "RUруб"},
    %{country: "Rwanda", name: "Rwandan Franc", code: "RWF", symbol: "RF"},
    %{country: "St Helena", name: "St Helena Pound", code: "SHP", symbol: "SH£"},
    %{country: "St Kitts & Nevis", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "St Lucia", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "St Pierre & Miquelon", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "St Vincent & Grenadines", name: "East Caribbean Dollar", code: "XCD", symbol: "EC$"},
    %{country: "Samoa", name: "Samoan Tala", code: "WST", symbol: "WS$"},
    %{country: "Samoa (American)", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "San Marino", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Sao Tome & Principe", name: "Sao Tome Dobra", code: "STD", symbol: "Db"},
    %{country: "Saudi Arabia", name: "Saudi Arabian Riyal", code: "SAR", symbol: "ر.س"},
    %{country: "Senegal", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Serbia", name: "Serbian Dinar", code: "RSD", symbol: "дин"},
    %{country: "Seychelles", name: "Seychelles Rupee", code: "SCR", symbol: "SRe"},
    %{country: "Sierra Leone", name: "Sierra Leonean Leone", code: "SLL", symbol: "Le"},
    %{country: "Singapore", name: "Singapore Dollar", code: "SGD", symbol: "S$"},
    %{country: "Slovakia", name: "Slovak Koruna", code: "SKK", symbol: "Sk"},
    %{country: "Slovenia", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Solomon Islands", name: "Solomon Islands Dollar", code: "SBD", symbol: "SI$"},
    %{country: "Somalia", name: "Somali Shilling", code: "SOS", symbol: "Sh"},
    %{country: "South Africa", name: "South African Rand", code: "ZAR", symbol: "SAR"},
    %{country: "South Georgia Islands", name: "United Kingdom Pound Sterling", code: "GBP", symbol: "UK£"},
    %{country: "Spain", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Sri Lanka", name: "Sri Lankan Rupee", code: "LKR", symbol: "LK₨"},
    %{country: "Sudan", name: "Sudanese Dinar", code: "SDD", symbol: "£Sd"},
    %{country: "Suriname", name: "Suriname Dollar", code: "SRD", symbol: "SR$"},
    %{country: "Svalbard & Jan Mayen", name: "Norwegian Krone", code: "NOK", symbol: "øre"},
    %{country: "Swaziland", name: "Swazi Lilangeni", code: "SZL", symbol: "SZL"},
    %{country: "Sweden", name: "Swedish Krona", code: "SEK", symbol: "kr"},
    %{country: "Switzerland", name: "Swiss Franc", code: "CHF", symbol: "CHF"},
    %{country: "Syria", name: "Syrian Pound", code: "SYP", symbol: "S£"},
    %{country: "Taiwan", name: "New Taiwan Dollar", code: "TWD", symbol: "NT$"},
    %{country: "Tajikistan", name: "Tajikistan Somoni", code: "TJS", symbol: "TJS"},
    %{country: "Tanzania", name: "Tanzanian Shilling", code: "TZS", symbol: "TSh"},
    %{country: "Thailand", name: "Thai Baht", code: "THB", symbol: "฿"},
    %{country: "Timor-Leste", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Togo", name: "West African CFA", code: "XOF", symbol: "franc"},
    %{country: "Tokelau", name: "New Zealand Dollar", code: "NZD", symbol: "NZ$"},
    %{country: "Tonga", name: "Tongan Pa'Anga", code: "TOP", symbol: "PT$"},
    %{country: "Trinidad & Tobago", name: "Trinidad and Tobago Dollar", code: "TTD", symbol: "TT$"},
    %{country: "Tunisia", name: "Tunisian Dinar", code: "TND", symbol: "د.ت"},
    %{country: "Turkey", name: "Turkish New Lira", code: "TRY", symbol: "YTL"},
    %{country: "Turkmenistan", name: "Turkmenistani Manat", code: "TMM", symbol: "m"},
    %{country: "Turks & Caicos Islands", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Tuvalu", name: "Australian Dollar", code: "AUD", symbol: "AU$"},
    %{country: "Uganda", name: "Ugandan Shilling", code: "UGX", symbol: "USh"},
    %{country: "Ukraine", name: "Ukrainian Hryvnia", code: "UAH", symbol: "₴"},
    %{country: "United Arab Emirates", name: "United Arab Emirates Dirham", code: "AED", symbol: "د.إ"},
    %{country: "UK", name: "United Kingdom Pound Sterling", code: "GBP", symbol: "UK£"},
    %{country: "USA", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Uruguay", name: "Uruguayan peso", code: "UYU", symbol: "UR$"},
    %{country: "Uzbekistan", name: "Uzbekistani Som", code: "UZS", symbol: "UZS"},
    %{country: "Vanuatu", name: "Vanuatu Vatu", code: "VUV", symbol: "Vt"},
    %{country: "Vatican City", name: "European Euro", code: "EUR", symbol: "€"},
    %{country: "Venezuela", name: "Venezuelan Bolivar", code: "VEB", symbol: "Bs"},
    %{country: "Vietnam", name: "Viet Nam Dong", code: "VND", symbol: "₫"},
    %{country: "Virgin Islands, British", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Virgin Islands, United States", name: "United States Dollar", code: "USD", symbol: "US$"},
    %{country: "Wallis & Futuna", name: "French Pacific Franc", code: "XPF", symbol: "CFP"},
    %{country: "Yemen", name: "Yemeni Rial", code: "YER", symbol: "YER"},
    %{country: "Zambia", name: "Zambian Kwacha", code: "ZMK", symbol: "ZK"},
    %{country: "Zimbabwe", name: "Zimbabwean Dollar", code: "ZWD", symbol: "Z$"},
  ]

  @coupons %{
    adjective: ~w(Amazing Awesome Best Cool Good Great Incredible Killer Premium Special Stellar Sweet Welcome),
    noun: ~w(Code Coupon Deal Discount Price Promo Promotion Sale Savings)
  }

  @products %{
    adjective: ~w(Small Ergonomic Rustic Intelligent Gorgeous Incredible Fantastic Pratical Sleek Awesome Generic Handcrafted Handmade Licensed Refined Unbranded Tasty),
    material: ~w(Steel Wooden Concrete Plastic Cotton Granite Rubber Metal Soft Fresh Frozen),
    name: ~w(Ashtray Ball Ballon Bacon Chair Cheese Car Computer Keyboard Mouse Bike Gloves Pants Pizza Shirt Skirt Table Shoes Drink Hat Towels Soap)
  }

  @user_agents %{
    browser: [
      :firefox,
      :opera,
      :chrome,
      :ie,
      :safari
    ],
    firefox: [
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0) Gecko/20100101 Firefox/40.0",
      "Mozilla/5.0 (Android; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0",
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:43.0) Gecko/20100101 Firefox/43.0"
    ],
    opera: [
      # Find better agent strings
      "Opera/9.00 (Nintendo Wii; U; ; 1309-9; en)",
      "Opera/9.10 (Nintendo Wii; U; ; 1621; en)",
      "Opera/9.30 (Nintendo Wii; U; ; 2047-7; en)"
    ],
    chrome: [
      "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36",
      "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36",
      "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36"
    ],
    ie: [
      "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/6.0)",
      "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)",
      "Mozilla/5.0 (Windows NT 6.1; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C; rv:11.0) like Gecko"
    ],
    safari: [
      "Mozilla/5.0 (iPad; CPU OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B411 Safari/600.1.4",
      "Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B436 Safari/600.1.4",
      "Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4"
    ],

    console: [
      :playstation,
      :xbox,
      :wii,
    ],
    playstation: [
      "Mozilla/4.0 (PS3 (PlayStation 3); 1.00)",
      "Mozilla/5.0 (PlayStation Vita 3.50) AppleWebKit/537.73 (KHTML, like Gecko) Silk/3.2",
      "Mozilla/5.0 (PlayStation Vita 3.36) AppleWebKit/537.73 (KHTML, like Gecko) Silk/3.2",
      "Mozilla/4.0 (PSP (PlayStation Portable); 2.00)",
      "Mozilla/5.0 (PLAYSTATION 3; 1.0)",
      "Mozilla/5.0 (PLAYSTATION 3; 1.5)",
      "Mozilla/5.0 (PLAYSTATION 3; 1.90)",
      "Mozilla/5.0 (PlayStation 4 2.02) AppleWebKit/537.73 (KHTML, like Gecko)",
      "Mozilla/5.0 (PlayStation 4 2.04) AppleWebKit/537.73 (KHTML, like Gecko)",
      "Mozilla/5.0 (PlayStation 4 2.51) AppleWebKit/537.73 (KHTML, like Gecko)"
    ],
    xbox: [
      "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0; Xbox; Xbox One)"
    ],
    wii: [
      "Opera/9.00 (Nintendo Wii; U; ; 1309-9; en)",
      "Opera/9.10 (Nintendo Wii; U; ; 1621; en)",
      "Opera/9.30 (Nintendo Wii; U; ; 2047-7; en)"
    ],

    bot: [
      "Googlebot-Image/1.0",
      "Googlebot/2.1 (+http://www.google.com/bot.html)",
      "Mozilla/2.0 (compatible; Ask Jeeves/Teoma)",
      "Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)",
      "YahooSeeker-Testing/v3.9 (compatible; Mozilla 4.0; MSIE 5.5; http://search.yahoo.com/)",
      "BaiDuSpider"
    ],
    phone: [
      "Mozilla/5.0 (iPad; CPU OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B411 Safari/600.1.4",
      "Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B436 Safari/600.1.4",
      "Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; HTC; HTC6690LVW) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537",
      "Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 521) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537"
    ],
    tablet: [
      "Mozilla/5.0 (Android; Mobile; rv:40.0) Gecko/40.0 Firefox/40.0",
      "Mozilla/5.0 (Android; Mobile; rv:42.0) Gecko/42.0 Firefox/42.0",
      "Mozilla/5.0 (iPad; CPU OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B411 Safari/600.1.4",
      "Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B436 Safari/600.1.4"
    ],
    desktop: [
      "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/6.0)",
      "Mozilla/5.0 (Linux; U; X11; en-US; Valve Steam GameOverlay/1424305157; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.86 Safari/537.36",
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36",
      "Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-us) AppleWebKit/537+ (KHTML, like Gecko) Version/5.0 Safari/537.6+ Midori/0.4"
    ]
  }

  def apps, do: @apps
  def bank_names, do: @bank_names
  def building_patterns, do: @building_patterns
  def cities, do: @cities
  def colors, do: @colors
  def countries, do: @countries
  def coupons, do: @coupons
  def credit_cards, do: @credit_cards
  def currencies, do: @currencies
  def domain_extensions, do: @domain_extensions
  def domain_popular_emails, do: @domain_popular_emails
  def domain_school_emails, do: @domain_school_emails
  def file_extensions, do: @file_extensions
  def file_mimes, do: @file_mimes
  def first_names, do: @first_names
  def last_names, do: @last_names
  def phone_cell_patterns, do: @phone_cell_patterns
  def phone_home_patterns, do: @phone_home_patterns
  def prefixes, do: @prefixes
  def products, do: @products
  def secondary_addresses, do: @secondary_addresses
  def state_codes, do: @state_codes
  def states, do: @states
  def street_suffixes, do: @street_suffixes
  def suffixes, do: @suffixes
  def time_zones, do: @time_zones
  def title_descriptors, do: @title_descriptors
  def title_jobs, do: @title_jobs
  def title_levels, do: @title_levels
  def version_patterns, do: @version_patterns
  def weak_passwords, do: @weak_passwords
  def words, do: @words
  def zip_code_patterns, do: @zip_code_patterns
  def user_agents, do: @user_agents
end
