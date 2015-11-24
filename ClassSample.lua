-- Class sample
ClassSample = { }

function ClassSample:New(object)
	print(self.name)
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object
end

ClassSample.version = 0
ClassSample.name = "ClassSample"
ClassSample.data = { description="This is a demo for using class of lua", demoTable={1, 2, 3} }

function ClassSample:Intro()	
	print("Hello, my name is " .. self.name .. ", version is " .. self.version)
	print(self.data.description)
end
