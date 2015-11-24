-- Class sample
PlayerData = { }

_ = PlayerData

function _:New(object)
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object
end

_.gold = 0;
_.missionComplete = { }
