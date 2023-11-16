class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }

  # Un signet doit être lié à un film et une liste, et les associations [film, liste] doivent être uniques.
  # Le commentaire associé à un signet ne peut pas avoir moins de 6 caractères.
end
