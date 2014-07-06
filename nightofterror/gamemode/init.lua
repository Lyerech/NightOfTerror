
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

// This is called every second to see if we can end the round
function GM:CheckRoundEnd()

	if ( !GAMEMODE:InRound() ) then return end 

	local deadplayers = 0

	for k,v in pairs( team.GetPlayers( TEAM_RUNNERS ) ) do

		if !v:Alive() then
			deadplayers = deadplayers + 1 
		end

	end

	--if deadplayers == table.Count(team.GetPlayers(TEAM_RUNNERS)) then
		--GAMEMODE:RoundEndWithResult( )
--	end
	
end

function GM:OnRoundWinner( ply, resulttext ) 
end
 
// Called when the round ends
function GM:OnRoundEnd( num )
end