local world = World:new('survival3');
local world2 = World:new('Creative');
local world4 = World:new('mobarena');
local world5 = World:new('azuren');
local world6 = World:new('survival3_end');
local world7 = World:new('pvparena');
local world8 = World:new('wizardpvp');

---------------------------
----------messaging--------
---------------------------

function spawn_whisper(npc, msg, player)
	p:sendMessage('&f&c' .. npc .. '&f' .. msg);
end

-------------------
-----Sounds--------
-------------------

local stairs = Location:new(world, 19511.481, 72.0, -20795;
local stairs2 = Location:new(world, 19516. 70, -20771;

function stairs_spawn(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&6A Staircase to the hall appears.");
	stairs:playSound('ITEM_TOTEM_USE', 1, 0.1);
end

registerHook("INTERACT", "stairs_spawn", 143, "survival3", 19511.0, 73, -20796.0);

function stair_mine(data)
	local p = Player:new(data["player"]);
	p:sendMessage("&6A staircase opens nearby..");
	stairs2:playSound('ENTITY_ILLUSION_ILLAGER_AMBIENT', 1, 1);
end

registerHook("INTERACT", "stairs_mine", 143, "survival3", 19517, 69, -20769);

--------------------
------gamemode check--
----------------------

function s_mode(data)
        local p = Player:new(data["player"]);
        p:setMode("SURVIVAL");
end

registerHook("REGION_ENTER", "s_mode", "survival3-spawn");

----------------------
------Treehouse--
----------------------

local function Mob(position, mobType)
	local entity = Entity:new(position);
	entity:spawn(mobType);
	table.insert(entityList, entity);
end

local treehouse = Location:new(world, 19495.0, 96.0, -20846.4);
local treehouse2 = Location:new(world, 19495.0, 98.0, -20846.4);

function play_wait(data)
        local p = Player:new(data["player"]);
        treehouse:playSound('RECORD_WAIT', 1, 1);
	Mob(treehouse2, "PARROT");
end

registerHook("REGION_ENTER", "play_wait", "survival3-parrot");


-------------------
------Cheeves------
-------------------

function lobby_easter_room(data)
          local p = Player:new(data["player"]);
          p:sendEvent("achievement.timecapsule");
         end 

function survival_smarts(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.survivalsmarts");
         end 

function snooping(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.snoopingaround");
         end 

function beworse(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.couldbeworse");
         end

function couldbe(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.wherecouldtheybe");
         end 

function crawler(data)
         local p = Player:new(data["player"]);       
          p:sendEvent("achievement.dungeoncrawler");
         end 

registerHook("REGION_ENTER", "lobby_easter_room", "survival3-spawn_easter");
registerHook("REGION_ENTER", "lobby_easter_room", "survival3-belowspawn2");
registerHook("INTERACT", "survival_smarts", 143, "survival3", 19481.0, 73.0, -20825.0);
registerHook("REGION_ENTER", "snooping", "survival3-primarytunnel");
registerHook("REGION_ENTER", "beworse", "survival3-primarybasin");
registerHook("REGION_ENTER", "couldbe", "survival3-doorwaycontrols");
registerHook("REGION_ENTER", "crawler", "survival3-crawl");

-------------------
-----Shops---------
-------------------
local world = "survival3";
local current = 6;
local maxData = 6;
local blocks = {
        Location:new(world, 19491.0, 64.0, -20816.0),
        Location:new(world, 19491.0, 64.0, -20815.0),
        Location:new(world, 19491.0, 63.0, -20816.0),
        Location:new(world, 19491.0, 63.0, -20815.0),
        Location:new(world, 19491.0, 62.0, -20816.0),
        Location:new(world, 19491.0, 62.0, -20815.0),

};

function shop_secret(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        shop_secret1();
end

function shop_secret1()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function shop_secret2()
        for index, key in ipairs(blocks) do
                key:setBlock(1, current);
        end
end

registerHook("REGION_ENTER", "shop_secret1", "survival3-shop_secret_1");
registerHook("REGION_ENTER", "shop_secret2", "survival3-shop_secret_2");

-------------------
-----Free Gear-----
-------------------

local helmet = Location:new(world, 19550.0, 64.0, -20797.0);
local chest = Location:new(world, 19548.0, 64.0, -20797.0);
local legs = Location:new(world, 19546.0, 64.0, -20797.0);
local boots = Location:new(world, 19544.0, 64.0, -20797.0);
local sword = Location:new(world, 19542.0, 64.0, -20797.0);

local helmetChestPlayers = {};
local helmetChestResetTimer = Timer:new("helmet_reset_chest", 200 * 600 * 50);
local helmetChestResetTimerRunning = false;
local helmetChestOpen = Location:new(myWorld3, 19550.0, 64.0, -20797.0);

local chestChestPlayers = {};
local chestChestResetTimer = Timer:new("chest_reset_chest", 200 * 600 * 50);
local chestChestResetTimerRunning = false;
local chesttChestOpen = Location:new(myWorld3, 19548.0, 64.0, -20797.0);

local legsChestPlayers = {};
local legsChestResetTimer = Timer:new("legs_reset_chest", 200 * 600 * 50);
local legsChestResetTimerRunning = false;
local legsChestOpen = Location:new(myWorld3, 19546.0, 64.0, -20797.0);

local bootsChestPlayers = {};
local bootsChestResetTimer = Timer:new("boots_reset_chest", 200 * 600 * 50);
local bootsChestResetTimerRunning = false;
local bootsChestOpen = Location:new(myWorld3, 19544.0, 64.0, -20797.0);

local swordChestPlayers = {};
local swordChestResetTimer = Timer:new("sword_reset_chest", 200 * 600 * 50);
local swordChestResetTimerRunning = false;
local swordChestOpen = Location:new(myWorld3, 19542.0, 64.0, -20797.0);

function helmet_reset_chest()
	helmetChestPlayers = {};
	helmetChestResetTimerRunning = false;
end

function chest_reset_chest()
	chestChestPlayers = {};
	chestChestResetTimerRunning = false;
end

function legs_reset_chest()
	legsChestPlayers = {};
	bootsChestResetTimerRunning = false;
end

function legs_reset_chest()
	legsChestPlayers = {};
	legsChestResetTimerRunning = false;
end

function sword_reset_chest()
	swordChestPlayers = {};
	swordChestResetTimerRunning = false;
end

function helmet_1(data)
        local player = Player:new(data.player);
        if not  helmetChestPlayers[player.name] then
                helmet:cloneChestToPlayer(player.name);
                player:closeInventory();
                helmetChestPlayers[player.name] = true;
		player:sendMessage("&a Free helment purchased!");
		player:sendMessage("&c You're been placed on a cooldown for this armour, better not lose it.");

                if not helmetChestResetTimerRunning then
                        helmetChestResetTimerRunning = true;
                        helmetChestResetTimer:start();
                end
        end
end

function chest_1(data)
        local player = Player:new(data.player);
        if not  chestChestPlayers[player.name] then
                chest:cloneChestToPlayer(player.name);
                player:closeInventory();
                chestChestPlayers[player.name] = true;
		player:sendMessage("&a Free chestplate purchased!");
		player:sendMessage("&c You're been placed on a cooldown for this armour, better not lose it.");

                if not chestChestResetTimerRunning then
                        chestChestResetTimerRunning = true;
                        chestChestResetTimer:start();
                end
        end
end

function legs_1(data)
        local player = Player:new(data.player);
        if not  legsChestPlayers[player.name] then
                legs:cloneChestToPlayer(player.name);
                player:closeInventory();
                legsChestPlayers[player.name] = true;
		player:sendMessage("&a Free leggings purchased!");
		player:sendMessage("&c You're been placed on a cooldown for this armour, better not lose it.");

                if not legsChestResetTimerRunning then
                        legsChestResetTimerRunning = true;
                        legsChestResetTimer:start();
                end
        end
end

function boots_1(data)
        local player = Player:new(data.player);
        if not  bootsChestPlayers[player.name] then
                boots:cloneChestToPlayer(player.name);
                player:closeInventory();
                bootsChestPlayers[player.name] = true;
		player:sendMessage("&a Free boots purchased!");
		player:sendMessage("&c You're been placed on a cooldown for this armour, better not lose it.");

                if not bootsChestResetTimerRunning then
                        bootsChestResetTimerRunning = true;
                        bootsChestResetTimer:start();
                end
        end
end

function sword_1(data)
        local player = Player:new(data.player);
        if not  swordChestPlayers[player.name] then
                sword:cloneChestToPlayer(player.name);
                player:closeInventory();
                swordChestPlayers[player.name] = true;
		player:sendMessage("&a Free sword purchased!");
		player:sendMessage("&c You're been placed on a cooldown for this weapon, better not lose it.");

                if not swordChestResetTimerRunning then
                        swordChestResetTimerRunning = true;
                        swordChestResetTimer:start();
                end
        end
end
registerHook("INTERACT", "helmet_1", 143, "survival3", 19537.0, 71.0, -20733.0);
registerHook("INTERACT", "chest_1", 143, "survival3", 19536.0, 71.0, -20733.0);
registerHook("INTERACT", "legs_1", 143, "survival3", 19535.0, 71.0, -20733.0);
registerHook("INTERACT", "boots_1", 143, "survival3", 19534.0, 71.0, -20733.0);
registerHook("INTERACT", "boots_1", 143, "survival3", 19533.0, 71.0, -20733.0);
registerHook("INTERACT", "helmet_1", 143, "survival3", 19533.0, 71.0, -20849.0);
registerHook("INTERACT", "chest_1", 143, "survival3", 19534.0, 71.0, -20849.0);
registerHook("INTERACT", "legs_1", 143, "survival3", 19535.0, 71.0, -20849.0);
registerHook("INTERACT", "boots_1", 143, "survival3", 19536.0, 71.0, -20849.0);
registerHook("INTERACT", "boots_1", 143, "survival3", 19537.0, 71.0, -20849.0);
registerHook("INTERACT", "sword_1", 143, "survival3", 19537.0, 71, -20849.0);
registerHook("INTERACT", "sword_1", 143, "survival3", 19533.0, 71, -20733.0);

-------------------------------
---------Anvils---------------
------------------------------

local world = "survival3";
local current = 1;
local maxData = 1;
local blocks = {
        Location:new(world, 19483.0. 72.0, -20773.0),
        Location:new(world, 19477.0. 72.0, -20824.0),

};

function spawn_anvils(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAnvils();
end

function spawn_setAnvils()
        for index, key in ipairs(blocks) do
                key:setBlock(145, current);
        end
end

registerHook("REGION_ENTER", "spawn_anvils", "survival3-market1");
registerHook("REGION_ENTER", "spawn_anvils", "survival3-market2");

------------------------------------------------
----------------pve portal----------------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19560.0, 71.0, -20773.0),
        Location:new(world, 19560.0, 71.0, -20772.0),
        Location:new(world, 19560.0, 71.0, -20771.0),
        Location:new(world, 19559.0, 71.0, -20774.0),
        Location:new(world, 19559.0, 71.0, -20773.0),
        Location:new(world, 19559.0, 71.0, -20772.0),
        Location:new(world, 19559.0, 71.0, -20771.0),
        Location:new(world, 19559.0, 71.0, -20770.0),
        Location:new(world, 19558.0, 71.0, -20774.0),
        Location:new(world, 19558.0, 71.0, -20773.0),
        Location:new(world, 19558.0, 71.0, -20772.0),
        Location:new(world, 19558.0, 71.0, -20771.0),
        Location:new(world, 19558.0, 71.0, -20770.0),
        Location:new(world, 19557.0, 71.0, -20774.0),
        Location:new(world, 19557.0, 71.0, -20773.0),
        Location:new(world, 19557.0, 71.0, -20772.0),
        Location:new(world, 19557.0, 71.0, -20771.0),
        Location:new(world, 19557.0, 71.0, -20770.0),
        Location:new(world, 19556.0, 71.0, -20773.0),
        Location:new(world, 19556.0, 71.0, -20772.0),
        Location:new(world, 19556.0, 71.0, -20771.0),

};

function spawn_pve(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir();
end

function spawn_setAir()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir", 143, "survival3", 19561.0, 72, -20772.0);
registerHook("REGION_LEAVE", "spawn_setGlass", "survival3-pve_tp");

------------------------------------------------
----------------creative portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19568.0, 71.0, -20792.0),
        Location:new(world, 19568.0, 71.0, -20791.0),
        Location:new(world, 19568.0, 71.0, -20790.0),
        Location:new(world, 19567.0, 71.0, -20793.0),
        Location:new(world, 19567.0, 71.0, -20792.0),
        Location:new(world, 19567.0, 71.0, -20791.0),
        Location:new(world, 19567.0, 71.0, -20790.0),
        Location:new(world, 19567.0, 71.0, -20789.0),
        Location:new(world, 19566.0, 71.0, -20793.0),
        Location:new(world, 19566.0, 71.0, -20792.0),
        Location:new(world, 19566.0, 71.0, -20791.0),
        Location:new(world, 19566.0, 71.0, -20790.0),
        Location:new(world, 19566.0, 71.0, -20789.0),
        Location:new(world, 19565.0, 71.0, -20793.0),
        Location:new(world, 19565.0, 71.0, -20792.0),
        Location:new(world, 19565.0, 71.0, -20791.0),
        Location:new(world, 19565.0, 71.0, -20790.0),
        Location:new(world, 19565.0, 71.0, -20789.0),
        Location:new(world, 19564.0, 71.0, -20792.0),
        Location:new(world, 19564.0, 71.0, -20791.0),
        Location:new(world, 19564.0, 71.0, -20790.0),

};

function spawn_creative(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir1();
end

function spawn_setAir1()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass1()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir1", 143, "survival3", 19569.0, 72, -20791.0);
registerHook("REGION_LEAVE", "spawn_setGlass1", "survival3-creative_tp");

------------------------------------------------
----------------pkr portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19560.0, 71.0, -20811.0),
        Location:new(world, 19560.0, 71.0, -20810.0),
        Location:new(world, 19560.0, 71.0, -20809.0),
        Location:new(world, 19559.0, 71.0, -20812.0),
        Location:new(world, 19559.0, 71.0, -20811.0),
        Location:new(world, 19559.0, 71.0, -20810.0),
        Location:new(world, 19559.0, 71.0, -20809.0),
        Location:new(world, 19559.0, 71.0, -20808.0),
        Location:new(world, 19558.0, 71.0, -20812.0),
        Location:new(world, 19558.0, 71.0, -20811.0),
        Location:new(world, 19558.0, 71.0, -20810.0),
        Location:new(world, 19558.0, 71.0, -20809.0),
        Location:new(world, 19558.0, 71.0, -20808.0),
        Location:new(world, 19557.0, 71.0, -20812.0),
        Location:new(world, 19557.0, 71.0, -20811.0),
        Location:new(world, 19557.0, 71.0, -20810.0),
        Location:new(world, 19557.0, 71.0, -20809.0),
        Location:new(world, 19557.0, 71.0, -20808.0),
        Location:new(world, 19556.0, 71.0, -20811.0),
        Location:new(world, 19556.0, 71.0, -20810.0),
        Location:new(world, 19556.0, 71.0, -20809.0),

};

function spawn_pkr(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir2();
end

function spawn_setAir2()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass2()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir2", 143, "survival3", 19561.0, 72, -20810.0);
registerHook("REGION_LEAVE", "spawn_setGlass2", "survival3-pkr_tp");

------------------------------------------------
----------------spleef portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19556.0, 71.0, -20802.0),
        Location:new(world, 19556.0, 71.0, -20801.0),
        Location:new(world, 19556.0, 71.0, -20800.0),
        Location:new(world, 19565.0, 71.0, -20803.0),
        Location:new(world, 19565.0, 71.0, -20802.0),
        Location:new(world, 19565.0, 71.0, -20801.0),
        Location:new(world, 19565.0, 71.0, -20800.0),
        Location:new(world, 19565.0, 71.0, -20799.0),
        Location:new(world, 19564.0, 71.0, -20803.0),
        Location:new(world, 19564.0, 71.0, -20802.0),
        Location:new(world, 19564.0, 71.0, -20801.0),
        Location:new(world, 19564.0, 71.0, -20800.0),
        Location:new(world, 19564.0, 71.0, -20799.0),
        Location:new(world, 19563.0, 71.0, -20803.0),
        Location:new(world, 19563.0, 71.0, -20802.0),
        Location:new(world, 19563.0, 71.0, -20801.0),
        Location:new(world, 19563.0, 71.0, -20800.0),
        Location:new(world, 19563.0, 71.0, -20799.0),
        Location:new(world, 19562.0, 71.0, -20802.0),
        Location:new(world, 19562.0, 71.0, -20801.0),
        Location:new(world, 19562.0, 71.0, -20800.0),

};

function spawn_spleef(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir3();
end

function spawn_setAir3()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass3()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir3", 143, "survival3", 19567.0, 72, -20801.0);
registerHook("REGION_LEAVE", "spawn_setGlass3", "survival3-spleef_tp");


------------------------------------------------
----------------ER portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19552.0, 71.0, -20818.0),
        Location:new(world, 19552.0, 71.0, -20817.0),
        Location:new(world, 19552.0, 71.0, -20816.0),
        Location:new(world, 19551.0, 71.0, -20819.0),
        Location:new(world, 19551.0, 71.0, -20818.0),
        Location:new(world, 19551.0, 71.0, -20817.0),
        Location:new(world, 19551.0, 71.0, -20816.0),
        Location:new(world, 19551.0, 71.0, -20815.0),
        Location:new(world, 19550.0, 71.0, -20819.0),
        Location:new(world, 19550.0, 71.0, -20818.0),
        Location:new(world, 19550.0, 71.0, -20817.0),
        Location:new(world, 19550.0, 71.0, -20816.0),
        Location:new(world, 19550.0, 71.0, -20815.0),
        Location:new(world, 19549.0, 71.0, -20819.0),
        Location:new(world, 19549.0, 71.0, -20818.0),
        Location:new(world, 19549.0, 71.0, -20817.0),
        Location:new(world, 19549.0, 71.0, -20816.0),
        Location:new(world, 19549.0, 71.0, -20815.0),
        Location:new(world, 19548.0, 71.0, -20818.0),
        Location:new(world, 19548.0, 71.0, -20817.0),
        Location:new(world, 19548.0, 71.0, -20816.0),

};

function spawn_er(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir4();
end

function spawn_setAir4()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass4()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir4", 143, "survival3", 19553.0, 72, -20817.0);
registerHook("REGION_LEAVE", "spawn_setGlass4", "survival3-er_tp");


------------------------------------------------
----------------pvp portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19566.0, 71.0, -20782.0),
        Location:new(world, 19566.0, 71.0, -20781.0),
        Location:new(world, 19566.0, 71.0, -20780.0),
        Location:new(world, 19565.0, 71.0, -20783.0),
        Location:new(world, 19565.0, 71.0, -20782.0),
        Location:new(world, 19565.0, 71.0, -20781.0),
        Location:new(world, 19565.0, 71.0, -20780.0),
        Location:new(world, 19565.0, 71.0, -20779.0),
        Location:new(world, 19564.0, 71.0, -20783.0),
        Location:new(world, 19564.0, 71.0, -20782.0),
        Location:new(world, 19564.0, 71.0, -20781.0),
        Location:new(world, 19564.0, 71.0, -20780.0),
        Location:new(world, 19564.0, 71.0, -20779.0),
        Location:new(world, 19563.0, 71.0, -20783.0),
        Location:new(world, 19563.0, 71.0, -20782.0),
        Location:new(world, 19563.0, 71.0, -20781.0),
        Location:new(world, 19563.0, 71.0, -20780.0),
        Location:new(world, 19563.0, 71.0, -20779.0),
        Location:new(world, 19566.0, 71.0, -20782.0),
        Location:new(world, 19566.0, 71.0, -20781.0),
        Location:new(world, 19566.0, 71.0, -20780.0),

};

function spawn_pvp(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir5();
end

function spawn_setAir5()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass5()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir5", 143, "survival3", 19567.0, 72, -20781.0);
registerHook("REGION_LEAVE", "spawn_setGlass5", "survival3-pvp_tp");


------------------------------------------------
----------------wpvp portal-----------------
------------------------------------------------

local world = "survival3";
local current = 2;
local maxData = 2;
local blocks = {
        Location:new(world, 19552.0, 71.0, -20766.0),
        Location:new(world, 19552.0, 71.0, -20765.0),
        Location:new(world, 19552.0, 71.0, -20764.0),
        Location:new(world, 19551.0, 71.0, -20767.0),
        Location:new(world, 19551.0, 71.0, -20766.0),
        Location:new(world, 19551.0, 71.0, -20765.0),
        Location:new(world, 19551.0, 71.0, -20764.0),
        Location:new(world, 19551.0, 71.0, -20763.0),
        Location:new(world, 19550.0, 71.0, -20767.0),
        Location:new(world, 19550.0, 71.0, -20766.0),
        Location:new(world, 19550.0, 71.0, -20765.0),
        Location:new(world, 19550.0, 71.0, -20764.0),
        Location:new(world, 19550.0, 71.0, -20763.0),
        Location:new(world, 19549.0, 71.0, -20767.0),
        Location:new(world, 19549.0, 71.0, -20766.0),
        Location:new(world, 19549.0, 71.0, -20765.0),
        Location:new(world, 19549.0, 71.0, -20764.0),
        Location:new(world, 19549.0, 71.0, -20763.0),
        Location:new(world, 19548.0, 71.0, -20766.0),
        Location:new(world, 19548.0, 71.0, -20765.0),
        Location:new(world, 19548.0, 71.0, -20764.0),

};

function spawn_wpvp(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir6();
end

function spawn_setAir6()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setGlass6()
        for index, key in ipairs(blocks) do
                key:setBlock(35, current);
        end
end

registerHook("INTERACT", "spawn_setAir6", 143, "survival3", 19553.0, 72, -20765.0);
registerHook("REGION_LEAVE", "spawn_setGlass6", "survival3-wpvp_tp");


------------------Portal Warps

local world = World:new('survival3');
local world2 = World:new('Creative');
local world4 = World:new('mobarena');
local world5 = World:new('azuren');
local world6 = World:new('survival3_end');
local world7 = World:new('pvparena');
local world8 = World:new('wizardpvp');
local world9 = World:new('survival3_nether');

local creativetp = Location:new(world2, -14.190, 67.0, -13.673);
creativetp:setYaw(-51.3);
creativetp:setPitch(-24.3);

local pvptp = Location:new(world7, -1039.491, 4.0, 466.538);
pvptp:setYaw(-179.1);
pvptp:setPitch(1.5);

local wpvptp = Location:new(world8, 1029.194, 5.0, 4.199);
wpvptp:setYaw(-2.2);
wpvptp:setPitch(13.3);

local spleeftp = Location:new(world2, -347.353, 95.0, 207.66);
spleeftp:setYaw(0.0);
spleeftp:setPitch(0.0);

local pkrtp = Location:new(world2, -1407.420, 71.0, 5653.615);
pkrtp:setYaw(0.0);
pkrtp:setPitch(0.6);

local ertp = Location:new(world2, -1621.546, 64.0, 5817.491);
ertp:setYaw(-90.7);
ertp:setPitch(-0.0);

local pvetp = Location:new(world4, 837.441, 97.0, 149.280);
pvetp:setYaw(-1.2);
pvetp:setPitch(5.1);

local nethertp = Location:new(world9, 1.087, 65.0, -0.122);
nethertp:setYaw(0.7);
nethertp:setPitch(1.8);

local endtp = Location:new(world6, 72.930, 59.0, -25.591);
endtp:setYaw(73.5);
endtp:setPitch(-6.6);

local aztp = Location:new(world5, 10000.856, 65.0, 9998.979);
aztp:setYaw(-3.0);
aztp:setPitch(-0.6);


function tp_creative(data)
             local player = Player:new(data.player);
             player:teleport(creativetp);

      end

function tp_pvp(data)
             local player = Player:new(data.player);
             player:teleport(pvptp);

      end

function tp_wpvp(data)
             local player = Player:new(data.player);
             player:teleport(wpvptp);

      end

function tp_spleef(data)
             local player = Player:new(data.player);
             player:teleport(spleeftp);

      end

function tp_pkr(data)
             local player = Player:new(data.player);
             player:teleport(pkrtp);

      end

function tp_ertp(data)
             local player = Player:new(data.player);
             player:teleport(ertp);

      end

function tp_pve(data)
             local player = Player:new(data.player);
             player:teleport(pvptp);

      end

function tp_end(data)
             local player = Player:new(data.player);
             player:teleport(endtp);

      end

function tp_nether(data)
             local player = Player:new(data.player);
             player:teleport(nethertp);

      end

function tp_az(data)
             local player = Player:new(data.player);
             player:teleport(aztp);

      end

registerHook("REGION_ENTER", "tp_creative", "survival3-cr_tp");
registerHook("REGION_ENTER", "tp_pvp", "survival3-pvp_tp");
registerHook("REGION_ENTER", "tp_wpvp", "survival3-wpvp_tp");
registerHook("REGION_ENTER", "tp_spleef", "survival3-spleef_tp");
registerHook("REGION_ENTER", "tp_pkr", "survival3-pkr_tp");
registerHook("REGION_ENTER", "tp_er", "survival3-er_tp");
registerHook("REGION_ENTER", "tp_pve", "survival3-pve_tp");
registerHook("REGION_ENTER", "tp_end", "survival3-end_tp");
registerHook("REGION_ENTER", "tp_nether", "survival3-nether_tp");
registerHook("REGION_ENTER", "tp_azu", "survival3-azu_tp");


------------------------------------------------
----------------hol-----------------
------------------------------------------------

local world = "survival3";
local current = 1;
local maxData = 1;
local blocks = {
        Location:new(world, 19499, 81, -20788),
        Location:new(world, 19499, 81, -20789),
        Location:new(world, 19499, 81, -20790),
        Location:new(world, 19499, 81, -20791),
        Location:new(world, 19499, 81, -20792),
        Location:new(world, 19499, 81, -20793),
        Location:new(world, 19499, 81, -20794),
	Location:new(world, 19500, 80, -20788),
        Location:new(world, 19500, 80, -20789),
        Location:new(world, 19500, 80, -20790),
        Location:new(world, 19500, 80, -20791),
        Location:new(world, 19500, 80, -20792),
        Location:new(world, 19500, 80, -20793),
        Location:new(world, 19500, 80, -20794),
	Location:new(world, 19501, 79, -20788),
        Location:new(world, 19501, 79, -20789),
        Location:new(world, 19501, 79, -20790),
        Location:new(world, 19501, 79, -20791),
        Location:new(world, 19501, 79, -20792),
        Location:new(world, 19501, 79, -20793),
        Location:new(world, 19501, 79, -20794),
	Location:new(world, 19502, 78, -20788),
        Location:new(world, 19502, 78, -20789),
        Location:new(world, 19502, 78, -20790),
        Location:new(world, 19502, 78, -20791),
        Location:new(world, 19502, 78, -20792),
        Location:new(world, 19502, 78, -20793),
        Location:new(world, 19502, 78, -20794),
	Location:new(world, 19503, 77, -20788),
        Location:new(world, 19503, 77, -20789),
        Location:new(world, 19503, 77, -20790),
        Location:new(world, 19503, 77, -20791),
        Location:new(world, 19503, 77, -20792),
        Location:new(world, 19503, 77, -20793),
        Location:new(world, 19503, 77, -20794),
	Location:new(world, 19504, 76, -20788),
        Location:new(world, 19504, 76, -20789),
        Location:new(world, 19504, 76, -20790),
        Location:new(world, 19504, 76, -20791),
        Location:new(world, 19504, 76, -20792),
        Location:new(world, 19504, 76, -20793),
        Location:new(world, 19504, 76, -20794),
	Location:new(world, 19505, 75, -20788),
        Location:new(world, 19505, 75, -20789),
        Location:new(world, 19505, 75, -20790),
        Location:new(world, 19505, 75, -20791),
        Location:new(world, 19505, 75, -20792),
        Location:new(world, 19505, 75, -20793),
        Location:new(world, 19505, 75, -20794),
	Location:new(world, 19506, 74, -20788),
        Location:new(world, 19506, 74, -20789),
        Location:new(world, 19506, 74, -20790),
        Location:new(world, 19506, 74, -20791),
        Location:new(world, 19506, 74, -20792),
        Location:new(world, 19506, 74, -20793),
        Location:new(world, 19506, 74, -20794),
	Location:new(world, 19507, 73, -20788),
        Location:new(world, 19507, 73, -20789),
        Location:new(world, 19507, 73, -20790),
        Location:new(world, 19507, 73, -20791),
        Location:new(world, 19507, 73, -20792),
        Location:new(world, 19507, 73, -20793),
        Location:new(world, 19507, 73, -20794),
	Location:new(world, 19508, 72, -20788),
        Location:new(world, 19508, 72, -20789),
        Location:new(world, 19508, 72, -20790),
        Location:new(world, 19508, 72, -20791),
        Location:new(world, 19508, 72, -20792),
        Location:new(world, 19508, 72, -20793),
        Location:new(world, 19508, 72, -20794),
        

};

function spawn_hol(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir7();
end

function spawn_setAir7()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setstairs()
        for index, key in ipairs(blocks) do
                key:setBlock(109, current);
        end
end
		
registerHook("REGION_ENTER", "spawn_setAir7", "survival3-hol_door");
registerHook("INTERACT", "spawn_setstairs", 143, "survival3", 19511.0, 73, -20796.0);
		
------------------------------------------------
----------------mine-----------------
------------------------------------------------

local world = "survival3";
local current = 1;
local maxData = 1;
local blocks = {
        Location:new(world, 19528, 68, -20770),
        Location:new(world, 19527, 68, -20770),
        Location:new(world, 19526, 68, -20770),
        Location:new(world, 19528, 68, -20769),
        Location:new(world, 19527, 68, -20769),
        Location:new(world, 19526, 68, -20769),
        Location:new(world, 19528, 68, -20768),
        Location:new(world, 19527, 68, -20768),
        Location:new(world, 19526, 68, -20768),
        Location:new(world, 19528, 68, -20767),
        Location:new(world, 19527, 68, -20767),
        Location:new(world, 19526, 68, -20767),


};

function spawn_mine(data)
        if current == maxData then
                current = 1;
        else
                current = current + 1;
        end
        spawn_setAir8();
end

function spawn_setAir8()
        for index, key in ipairs(blocks) do
                key:setBlock(0, current);
        end
end

function spawn_setstone()
        for index, key in ipairs(blocks) do
                key:setBlock(98, current);
        end
end
		
registerHook("REGION_ENTER", "spawn_setAir8", "survival3-mine_door");
registerHook("INTERACT", "spawn_setAir8", 143, "survival3", 19517, 69, -20769);
		
