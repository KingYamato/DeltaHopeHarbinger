--フュージョン・オブ・ファイア
--Fusion of Fire (Anime)
--original script by Larry126
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Fusion.CreateSummonEff(c,aux.FilterBoolFunction(Card.IsSetCard,0x119),nil,s.fextra)
	c:RegisterEffect(e1)
end
s.listed_series={0x119}
function s.fextra(e,tp,mg)
	return Duel.GetMatchingGroup(Fusion.IsMonsterFilter(Card.IsFaceup),tp,0,LOCATION_ONFIELD,nil)
end