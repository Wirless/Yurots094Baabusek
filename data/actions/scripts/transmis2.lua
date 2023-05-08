function onCreatureDeath(cid, creature, creaturename, deathpos, corpse)
queststatus = getPlayerStorageValue(cid,9010) -- potrzebny storage (misja)
total = 5 -- potworow do zabicia
  if creaturename == "Cyclops" then
     if queststatus == total then
        doPlayerSendTextMessage(cid,18,"Wspaniale, zabiles juz wszystkich.")
        setPlayerStorageValue(cid,9010,3)
        teleportgotoposition = {x=148, y=56, z=7} -- Miejsce gdzie bêdzie teleportowa³ teleport, który sie pojawi
        teleportcreateposition = {x=150, y=49, z=7} -- Miejsce, w którym pojawi siê
        addTeleport(teleportcreateposition,teleportgotoposition)
     end
     if queststatus < total then
        doPlayerSay(cid, "I kill ".. queststatus .." of ".. total .." cyclops ;)", 1)
        npos = {x=149, y=50, z=7}
        doSummonCreature("Cyclops",npos)
        setPlayerStorageValue(cid,9010,queststatus+1)
     end
  end
end
