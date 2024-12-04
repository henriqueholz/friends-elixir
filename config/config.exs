import Config

config :friends, ecto_repos: [Friends.Repo]

config :friends, Friends.Repo,
  database: "friends",
  username: "postgres",
  password: "",
  hostname: "localhost"
