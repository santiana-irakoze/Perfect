class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# database_authenticatable permet d'identifier l'utilisateur dans la base de données
# registerable permet à l'utilisateur de créer un compte, avec le form sign up
# recoverable permet de clicker sur un lien quand l'utilisateur a oublié son mot de passe
# rememberable permet d'avoir une check box permettant de se souvenir de l'utilisateur
# validatable permet d'ajouter des validations sur le model user
# confirmable permet de recevoir un mail de confirmation pour valider son compte
# lockable permet de bloquer un compte après plusieurs tentatives de se log sans succès
# timeoutable permet qu'au bout dun certain temps de dire que la session utilisateur va expirer
# trackable permet de tracker l'utilisateur et avoir plus d'infos sur lui
# omniauthable permet de faire du facebook login ou google login ou linkedin login
# n'oublie pas de décommenter dans la migration devise si tu actives/supprimes un module
