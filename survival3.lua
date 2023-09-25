local myWorld = World:new('survival3');

function lobby_easter_room(data)
          local p = Player:new(data["player"]);
          p:sendEvent("achievement.timecapsule");
         end 

registerHook("REGION_ENTER", "lobby_easter_room", "survival3-spawn_easter");


function survival_smarts(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.survivalsmarts");
         end 

registerHook("INTERACT", "survival_smarts", 143, "survival3", -612.0, 64.0, -80.0); 



function tramp_max(data)
	local player = Player:new(data.player);
	player:setVelocity(0, 3, 0);
end

registerHook("REGION_ENTER", "tramp_max", "survival3-tramp_max");
