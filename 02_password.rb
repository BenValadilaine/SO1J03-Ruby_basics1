=begin
signup -> demande à l'utilisateur de définir un mot de passe
login -> demande à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
welcome_screen -> affiche un écran de bienvenue avec des informations top secrètes de la NSA
=end

def signup
  puts  "Définissez un mot de passe :"
  print "> "
  password = gets.chomp
  return password
end

def login (password)
  #Pour vérifier le mot de passe
  puts "Pour accéder à votre compte, saisissez votre mot de passe :"
  print "> "

  verify_pswd = gets.chomp

  if
    verify_pswd == password
    puts "Mot de passe correct"
  end

  while verify_pswd != password
    puts "Mot de passe incorrect, veuillez réessayer :"
    print "> "
    verify_pswd = gets.chomp
    puts "Mot de passe correct"
  end
end

def welcome_screen
  puts "Coucou t'as réussi"
end

#Test des méthodes :
def perform
password = signup
login(password)
end

perform
