-- Class sample
GameSettings = { }

_ = GameSettings

function _:New(object)
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object
end

_.isMute = false;
