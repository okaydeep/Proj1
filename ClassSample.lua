-- Class sample
ClassSample = { }

_ = ClassSample

function _:New(object)
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object
end

_.version = 0
_.name = "ClassSample"
_.data = { description="This is a demo for using class of lua", demoTable={1, 2, 3} }

function _:Intro()
	print("Hello, my name is " .. self.name .. ", version is " .. self.version)
	print(self.data.description)
end
