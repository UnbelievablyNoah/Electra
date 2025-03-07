local settings = {}

settings.Prefix = ";"

settings.ElectraCreatorPowers = true --// Allows the developers of Electra to have creator admin in your game, this is for diagnosing Electra related problems.

settings.Creators = {100534123,108898368,2046950240}
settings.Admins = {2046950240}
settings.Moderators = {2046950240}

settings.DiscordLogging = false
settings.DiscordWebhookID = ""
settings.DiscordWebhookToken = ""

settings.GetVersionNumberFromHTTP = true;

settings.Trello = false
settings.TrelloAPIKey = ""
settings.TrelloAPIToken = ""

settings.APIEnabled = true

settings.Banned = {} --// UserIds or username, example: {"terryiscool160",100534123}
settings.BanMessage = "You are banned from this game." --// What a user who is banned gets shown when they are kicked

--// You can get your ID and Token from where i've specified: https://discord.com/api/webhooks/id/token

return settings