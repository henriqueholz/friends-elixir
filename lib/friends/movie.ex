defmodule Friends.Movie do
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, Friends.Character
    has_one :distributor, Friends.Distributor
    many_to_many :actors, Friends.Actor, join_through: "movies_actors"
  end
  # def changeset(movie, params \\ %{}) do
  #   movie
  #   |> cast(params, [:title, :tagline])
  #   |> validate_required([:title])
  # end
end
