function onWalk(cid, item, frompos, item2, topos)
    player1pos = {x=150, y=56, z=7, stackpos=253}
    player1 = getThingfromPos(player1pos)

      queststatus = getPlayerStorageValue(cid,9010)

if player1.itemid > 0 then
      if queststatus == -1 then
            doPlayerSendTextMessage(cid,18,"Wchodzac dalej nie bedzie juz odwrotu!")
      else
         doPlayerSendTextMessage(cid,18,"Juz wykonales to zadanie..")
         doMovePlayer(player1.uid, 2)
      end
end

    player2pos = {x=150, y=55, z=7, stackpos=253}
    player2 = getThingfromPos(player2pos)

if player2.itemid > 0 then
      queststatus = getPlayerStorageValue(cid,9010)
      if queststatus == -1 then
            doMovePlayer(cid, 0)
            setPlayerStorageValue(cid,9010,1)
		npos = {x=149, y=50, z=7}
            doSummonCreature("Cyclops",npos)
            teleportcreateposition = {x=150, y=49, z=7} -- Miejsce, w którym pojawi siê
            removeTeleport(teleportcreateposition)
      else
            doPlayerSendTextMessage(cid,18,"Dokoncz to co zaczoles.")
            doMovePlayer(cid, 0)
      end
end

   	return 1
   
   end