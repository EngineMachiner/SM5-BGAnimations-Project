
local params = {
	File = GAMESTATE:GetCurrentSong():GetBackgroundPath(),
	Reversed = true
}

return Def.ActorFrame{
    LoadActor( "../Resources/Scripts/Kaleidoscopes/Main.lua", params )..{}	
}