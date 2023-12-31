print("Made By .Zep91 on Discord")
print("Idea by pantelakislak0 on Discord")
sendMsg = true 

function main()

    local TXT = "Geometry Dash is a series of music platforming video games developed by Swedish developer Robert RobTop Topala. The game was released on 13 August 2013 on iOS and Android, and the Steam version on 22 December 2014.[1][2] In Geometry Dash, players control the movement of an icon and navigate along music-based levels, while avoiding obstacles such as spikes that instantly destroy the icon on impact.Geometry Dash consists of 21 official levels. It has a level creation system, where players can create their own custom levels, share them online and play levels designed by other players. In addition to the official levels, certain user-created levels have been featured in in-game content. In-game currency, such as stars, coins, orbs or diamonds, can be obtained from various sources, such as official levels, user-created levels or chests.In addition to the original game, three other spin-off games in the series have been made: Geometry Dash Meltdown, Geometry Dash World, and Geometry Dash SubZero.Gameplay The beginning of 'Electroman Adventures', the 13th of 21 levels in the game and currently the fourth to last level of Geometry Dash Lite. Geometry Dash can be played with a touchscreen, keyboard, mouse, or controller. The player manipulates the movement of their icon through input in the form of pressing or holding to reach the end of a level. If the player crashes into an obstacle, such as a spike, a wall or a sawblade, the level restarts from the beginning. There is also a practice mode in which a player may place checkpoints to survey or practice a level, but is unable to collect coins or gain progress for normal mode. The timing and rhythm of the in-game music are key parts of the game, often in relation to each other.[3]players's icon takes the form of one of seven different game modes, each of which behaves differently with each interaction. Player movement is further complicated by portals that allow the player to change between seven game modes, reverse gravity, change the size of their icon, mirror the direction of their movement, change their speed, or teleport. Furthermore, pads and orbs can be used to move the player in varying directions or change gravity. There are 21 official levels in the full version of Geometry Dash, 18 of which are unlocked upon installation. The other three require a specific number of secret coins hidden within all the official levels. Each level grants rewards upon completion.[3][4] Official levels steadily advance in difficulty. Levels are categorized into six  difficulty ratings: Easy, Normal, Hard, Harder, Insane, and Demon (which contains an additional counter). Players can earn achievements that unlock rewards, such as icons or colours.[5] Players may also utilize three shops that use an in-game currency to acquire icons or colours The full version of the game features the ability to upload and download user-created levels.[6] The creator must complete their level with all user-placed coins in normal mode before it can be uploaded: a process known as verification. Changes made after verification will render the level unverified again.[5] Some custom levels have a specific difficulty determined by Topala. The creator of a level, its players and the game's moderators can influence this decision. User-created levels can be categorized into 12 difficulty ratings, including five of the ratings used in official levels. The auto difficulty is reserved for 'auto' levels which do not require input for completion. Additionally, there are five variations of the Demon difficulty: Easy, Medium, Hard, Insane, and Extreme. In approved user-created levels, each difficulty rewards a certain number of stars upon completion.DevelopmentThe game began as a project that could have moved in any direction, according to Topala. He made the remarks, 'it simply started as a template with a cube that could crash and jump' and 'there really was no detailed plan'.[7] He previously developed it for the computer but later altered his plan and made attempts to make it a mobile game. Topala was inspired by The Impossible Game and took about four months to create the game and take it to the App Store and Google Play Store. In the beta version, the game was called Geometry Jump but later changed to Geometry Dash. The game is developed on the Cocos2d game engine.[8]Upon its release, Geometry Dash had seven levels free to play on the game's free version, alongside nine other levels released in later updates. It gained popularity around the world, especially in Canada, where it achieved the title of the most popular paid iPhone app in June 2014.[9] There are four free versions of the game, one being Geometry Dash Lite which includes the first 16 levels from the full version.[4]On 14 August 2021, Topala released a sneak peek video of version 2.2, the first major update since 2017, on his YouTube channel. The release date has yet to be announced.[10][11] On 4 September 2022, Topala released the second sneak peek, over a year after the first.[12] Topala released a third sneak peek on 15 May 2023, which showcased additional platformer mode features and a sound effect library for custom levels.[13]ReceptionThe game received generally positive reviews from critics. Softpedia complimented the game's style and challenge that it brings up, saying, 'While it can get a bit frustrating sometimes, you can always complete the stages using the practice mode and then jump into the many different user-generated levels'.[14] 148Apps gave the game a positive review, stating, 'Geometry Dash provides all of the challenge expected from an 'impossible' game while also making it more accessible to newcomers'.[15] Geometry Dash has also been listed by the reviewer Chris Morris on the website Common Sense Media as a child-friendly video game that parents could let their children play on, stating that the game was a 'good way to handle frustration', and that 'families can also talk about rhythm and the joy of dancing in time with music'.[16] On the App Store, Geometry Dash was ranked 2nd for the app's Top 10 Paid iPad Games and 7th for Top 10 Paid iPhone Games in 2018.[17]Other gamesFor Geometry Dash World, Gamezebo praised the game's captivation and decent gameplay styles. Although, the reviewer noted that it was not the 'most interesting looking game out there'.[18] Gerson Noboa from AndroidGuys praised the Geometry Dash spin-off, stating that 'Geometry Dash World is a worthy addition to your game arsenal. Thanks to tightly connected graphical and sound elements, the game provides an awesome, integrated experience that is rarely seen in Play Store games'.[19]"

    local function splitemUp(text)
        local chunks = {}
        for i = 1, #text, 100 do
            table.insert(chunks, text:sub(i, i + 99))
        end
        return chunks
    end


    local textChunks = splitemUp(TXT)

    for _, chunk in ipairs(textChunks) do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chunk, "All")
        wait(5)
    end
end

local player = game.Players.LocalPlayer

player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        sendMsg = false
        task.wait(1)
    end)
end)
while sendMsg do  
    player.CharacterAdded:Connect(onCharacterAdded)
    main()
    wait()
end
