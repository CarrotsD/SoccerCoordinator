
var players = [[String: Any]]()

players = [
    ["name": "Joe Smith", "height": 42, "experience": true, "guardian": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": 36, "experience": true, "guardian": "Clara Tanner"],
    ["name": "Bill Bon", "height": 43, "experience": true, "guardian": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": 45, "experience": false, "guardian": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": 40, "experience": false, "guardian": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": 41, "experience": false, "guardian": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": 45, "experience": false, "guardian": "Jeff Adams"],
    ["name": "Karl Saygan", "height": 42, "experience": true, "guardian": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": 44, "experience": true, "guardian": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": 41, "experience": false, "guardian": "Gala Dali"],
    ["name": "Joe Kavalier", "height": 39, "experience": false, "guardian": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": 44, "experience": false, "guardian": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": 41, "experience": true, "guardian": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": 47, "experience": false, "guardian": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": 43, "experience": false, "guardian": "Claire Willis"],
    ["name": "Phillip Helm", "height": 44, "experience": true, "guardian": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": 42, "experience": true, "guardian": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": 45, "experience": true, "guardian": "Hyman and Rachel Krustofski"]
]


// Creating Empty Teams

var Sharks = [[String: Any]]()
var Dragons = [[String: Any]]()
var Raptors = [[String: Any]]()



// Creating 2 kinds of players

var experiencedPlayers = [[String: Any]]()
var inexperiencedPlayers = [[String: Any]]()

for player in players {
    if player["experience"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}



// First dividing experienced players into the 3 groups

for experiencedPlayer in experiencedPlayers {
    if Sharks.count < experiencedPlayers.count / 3 {
        Sharks.append(experiencedPlayer)
    } else if Dragons.count < experiencedPlayers.count / 3 {
        Dragons.append(experiencedPlayer)
    } else {
        Raptors.append(experiencedPlayer)
    }
}


// Then dividing the rest into these 3 groups

for inexperiencedPlayer in inexperiencedPlayers {
    if Sharks.count < players.count / 3 {
        Sharks.append(inexperiencedPlayer)
    } else if Dragons.count < players.count / 3 {
        Dragons.append(inexperiencedPlayer)
    } else {
        Raptors.append(inexperiencedPlayer)
    }
}











