class GoodnessValidator < ActiveModel::Validator
	def validate(record)
		if record[:username].include?(" ")
			record.errors[:username] << "Le nom d'utilisateur ne doit pas contenir d'espace ."
		end

		if User.find_by username: record[:username]
			record.errors[:username] << "l'utilisateur #{record.username} existe déjà ."
		end
	end
end

class User < ApplicationRecord
	validates_with GoodnessValidator
end
