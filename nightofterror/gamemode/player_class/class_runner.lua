local CLASS = {}
 
CLASS.DisplayName			= "Runner"
CLASS.WalkSpeed 			= 340
CLASS.CrouchedWalkSpeed 	= 0.2
CLASS.RunSpeed				= 420
CLASS.DuckSpeed				= 0.2
CLASS.JumpPower				= 200
CLASS.PlayerModel			= "models/player/breen.mdl"
CLASS.DrawTeamRing			= false
CLASS.DrawViewModel			= true
CLASS.CanUseFlashlight      = false
CLASS.MaxHealth				= 100
CLASS.StartHealth			= 100
CLASS.StartArmor			= 0
CLASS.RespawnTime           = 0 // 0 means use the default spawn time chosen by gamemode
CLASS.DropWeaponOnDie		= false
CLASS.TeammateNoCollide 	= false
CLASS.AvoidPlayers			= false // Automatically avoid players that we're no colliding
CLASS.Selectable			= false // When false, this disables all the team checking
CLASS.FullRotation			= false // Allow the player's model to rotate upwards, etc etc
 
function CLASS:Loadout( pl )
 
	pl:Give( "weapon_coflantern" )
 
end
 
player_class.Register( "Runner", CLASS )