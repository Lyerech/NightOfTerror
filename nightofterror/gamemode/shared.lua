GM.Name 	= "Night of Terror"
GM.Author 	= "VenomousFang & Lolcats"
GM.Email 	= ""
GM.Website 	= ""
GM.Help		= ""
  
DeriveGamemode( "fretta13" )
IncludePlayerClasses()					// Automatically includes files in "gamemode/player_class"
 

GM.TeamBased = true					// Team based game or a Free For All game?
GM.AllowAutoTeam = true				// Allow auto-assign?
GM.AllowSpectating = true			// Allow people to spectate during the game?
GM.SecondsBetweenTeamSwitches = 10	// The minimum time between each team change?
GM.GameLength = 10					// The overall length of the game
GM.RoundLimit = 8					// Maximum amount of rounds to be played in round based games
GM.VotingDelay = 5					// Delay between end of game, and vote. if you want to display any extra screens before the vote pops up
GM.ShowTeamName = false				// Show the team name on the HUD

GM.NoPlayerSuicide = true			// Set to true if players should not be allowed to commit suicide.
GM.NoPlayerDamage = false			// Set to true if players should not be able to damage each other.
GM.NoPlayerSelfDamage = false		// Allow players to hurt themselves?
GM.NoPlayerTeamDamage = false		// Allow team-members to hurt each other?
GM.NoPlayerPlayerDamage = false 	// Allow players to hurt each other?
GM.NoNonPlayerPlayerDamage = true 	// Allow damage from non players (physics, fire etc)
GM.NoPlayerFootsteps = false		// When true, all players have silent footsteps
GM.PlayerCanNoClip = false			// When true, players can use noclip without sv_cheats
GM.TakeFragOnSuicide = true			// -1 frag on suicide

GM.MaximumDeathLength = 0			// Player will repspawn if death length > this (can be 0 to disable)
GM.MinimumDeathLength = 2			// Player has to be dead for at least this long
GM.AutomaticTeamBalance = false     // Teams will be periodically balanced 
GM.ForceJoinBalancedTeams = false	// Players won't be allowed to join a team if it has more players than another team
GM.RealisticFallDamage = true		// Set to true if you want realistic fall damage instead of the fix 10 damage.
GM.AddFragsToTeamScore = false		// Adds player's individual kills to team score (must be team based)

GM.NoAutomaticSpawning = false		// Players don't spawn automatically when they die, some other system spawns them
GM.RoundBased = true				// Round based, like CS
GM.RoundLength = 600				// Round length, in seconds
GM.RoundPreStartTime = 5			// Preperation time before a round starts
GM.RoundPostLength = 6				// Seconds to show the 'x team won!' screen at the end of a round
GM.RoundEndsWhenOneTeamAlive = true	// CS Style rules

GM.EnableFreezeCam = false			// TF2 Style Freezecam
GM.DeathLingerTime = 2				// The time between you dying and it going into spectator mode, 0 disables

GM.SelectModel = false               // Can players use the playermodel picker in the F1 menu?
GM.SelectColor = false				// Can players modify the colour of their name? (ie.. no teams)

GM.PlayerRingSize = 0              // How big are the colored rings under the player's feet (if they are enabled) ?
GM.HudSkin = "SimpleSkin"			// The Derma skin to use for the HUD components
GM.SuicideString = "was consumed by the darkness"			// The string to append to the player's name when they commit suicide.
GM.DeathNoticeDefaultColor = Color( 255, 128, 0 ); // Default colour for entity kills
GM.DeathNoticeTextColor = color_white; // colour for text ie. "died", "killed"

GM.ValidSpectatorModes = { OBS_MODE_CHASE, OBS_MODE_IN_EYE, OBS_MODE_ROAMING } // The spectator modes that are allowed
GM.ValidSpectatorEntities = { "player" }	// Entities we can spectate, players being the obvious default choice.
GM.CanOnlySpectateOwnTeam = true; // you can only spectate players on your own team


TEAM_RUNNERS 		= 1
TEAM_PREDATORS		= 2

function GM:CreateTeams()

	if ( !GAMEMODE.TeamBased ) then return end
	
	team.SetUp( TEAM_RUNNERS, "Runners", Color( 70, 230, 70 ), true )
	team.SetSpawnPoint( TEAM_RUNNERS, "info_player_start" ) 
	team.SetClass( TEAM_RUNNERS, { "Runner" } )

	team.SetUp( TEAM_PREDATORS, "Predators", Color( 255, 50, 50 ) )
	team.SetSpawnPoint( TEAM_PREDATORS, "info_player_start", true )
	team.SetClass( TEAM_PREDATORS, { "Predator" } )
	
	team.SetUp( TEAM_SPECTATOR, "Spectators", Color( 200, 200, 200 ), true )
	team.SetSpawnPoint( TEAM_SPECTATOR, "info_player_start" )
	team.SetClass( TEAM_SPECTATOR, { "Spectator" } )

end
































