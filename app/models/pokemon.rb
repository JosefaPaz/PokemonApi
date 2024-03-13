# == Schema Information
#
# Table name: pokemons
#
# id              :bigint           not null, primary key
# name            :string           not null
# pokemon_type    :string           not null
class Pokemon < ApplicationRecord
  validates :name, presence: true
end
