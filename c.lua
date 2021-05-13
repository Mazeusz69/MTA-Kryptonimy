--[[    
Modern Stories: Kryptonimy

@package msmta.pl - kryptonimy
@author Mazeusz* <mazeusz@msmta.pl>
@copyright (C) 2021 Modern Stories

@Skrypt zostaje udostępniony publicznie dla społeczności GTAO.PL z dniem 13.05.2021.
@Zakaz zmiany Autora.
]]--

sn = {

  --["nazwa txt"] = {"ścieżka do pliku", "textura która ma być podmieniona"},
	["K001"] = {"SAPD/k001", "nap"},
}


function oklej(veh)
	local textura=getElementData(veh,"textura") or false
	local fid=getElementData(veh,"vehicle:ownedFaction") or false
	local id=getElementData(veh,"vehicle:id") or false
	
	if textura then
		sh = dxCreateShader('sh.fx')			
		if fid and fid~=0 then
			for k,v in pairs(sn) do
				if (textura==k) then
					u1 = dxCreateTexture('img/'..v[1]..'.png')
					dxSetShaderValue(sh, 'gTexture', u1)
					engineApplyShaderToWorldTexture(sh, v[2], veh)
				end
			end
		end			
	end			

end
addEvent("oklejpojazd",true)
addEventHandler("oklejpojazd", root , oklej)