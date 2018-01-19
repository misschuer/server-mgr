----------------------------------------------------------------------------------------------------------------------------------------------
--BinLog封装
BinLogObject = {
	ptr = nil,

	new = function(self, object)
		object = object or {}
		setmetatable(object, self)
		self.__index = self
		return object
	end,
	
	GetBit = function(self, index, offset)
		return binLogLib.GetBit(self.ptr, index, offset)
	end,
	
	SetBit = function(self, index, offset)
		binLogLib.SetBit(self.ptr, index, offset)
	end,
	
	UnSetBit = function(self, index, offset)
		binLogLib.UnSetBit(self.ptr, index, offset)
	end,
	
	GetByte = function(self, index, offset)
		return binLogLib.GetByte(self.ptr, index, offset)
	end,

	AddByte = function(self, index, offset, value)
		binLogLib.AddByte(self.ptr, index, offset, value)
	end,
	
	SubByte = function(self, index, offset, value)
		binLogLib.SubByte(self.ptr, index, offset, value)
	end,
	
	SetByte = function(self, index, offset, value)
		binLogLib.SetByte(self.ptr, index, offset, value)
	end,
	
	GetUInt16 = function(self, index, offset)
		return binLogLib.GetUInt16(self.ptr, index, offset)
	end,
	
	AddUInt16 = function(self, index, offset, value)
		binLogLib.AddUInt16(self.ptr, index, offset, value)
	end,
	
	SubUInt16 = function(self, index, offset, value)
		binLogLib.SubUInt16(self.ptr, index, offset, value)
	end,

	SetUInt16 = function(self, index, offset, value)
		binLogLib.SetUInt16(self.ptr, index, offset, value)
	end,
	
	GetUInt32 = function(self, index)
		return binLogLib.GetUInt32(self.ptr, index)
	end,
	
	SetUInt32 = function(self, index, value)
		binLogLib.SetUInt32(self.ptr, index, value)
	end,

	AddUInt32 = function(self, index, value)
		binLogLib.AddUInt32(self.ptr, index, value)
	end,
	
	SubUInt32 = function(self, index, value)
		binLogLib.SubUInt32(self.ptr, index, value)
	end,
	
	GetInt32 = function(self, index)
		return binLogLib.GetInt32(self.ptr, index)
	end,
	
	SetInt32 = function(self, index, value)
		binLogLib.SetInt32(self.ptr, index, value)
	end,

	AddInt32 = function(self, index, value)
		binLogLib.AddInt32(self.ptr, index, value)
	end,
	
	SubInt32 = function(self, index, value)
		binLogLib.SubInt32(self.ptr, index, value)
	end,
	
	GetDouble = function(self, index)
		return binLogLib.GetDouble(self.ptr, index)
	end,
	
	SetDouble = function(self, index, value)
		binLogLib.SetDouble(self.ptr, index, value)
	end,

	AddDouble = function(self, index, value)
		binLogLib.AddDouble(self.ptr, index, value)
	end,
	
	SubDouble = function(self, index, value)
		binLogLib.SubDouble(self.ptr, index, value)
	end,
	
	GetFloat = function(self, index)
		return binLogLib.GetFloat(self.ptr, index)
	end,
	
	SetFloat = function(self, index, value)
		binLogLib.SetFloat(self.ptr, index, value)
	end,
	
	SetStr = function(self, index,value)
		binLogLib.SetStr(self.ptr, index,value)
	end,
	
	GetStr = function(self, index)
		return binLogLib.GetStr(self.ptr, index)
	end,
	
	GetUInt32Len = function(self)
		return binLogLib.GetUInt32Len(self.ptr)
	end,
	
	GetStrLen = function(self)
		return binLogLib.GetStrLen(self.ptr)
	end,
	
	--获得GUID
	GetGuid = function(self)
		return self:GetStr(BINLOG_STRING_FIELD_GUID)
	end,
	--设置GUID
	-- SetGuid = function(self,val)
		-- self:SetStr(BINLOG_STRING_FIELD_GUID,val)
	-- end,
	
	--获取名称
	GetName = function(self)
		return self:GetStr(BINLOG_STRING_FIELD_NAME)
	end,
	--设置名称
	SetName = function(self, name)
		self:SetStr(BINLOG_STRING_FIELD_NAME, name)
	end,
	
	--获取所有者
	GetOwner = function(self)
		return self:GetStr(BINLOG_STRING_FIELD_OWNER)
	end,
	--设置所有者
	SetOwner = function(self, owner)
		self:SetStr(BINLOG_STRING_FIELD_OWNER, owner)
	end,
	
	--获取版本号
	GetVersion = function(self)
		return self:GetStr(BINLOG_STRING_FIELD_VERSION)
	end,
	--设置版本号
	SetVersion = function(self, version)
		self:SetStr(BINLOG_STRING_FIELD_VERSION, version)
	end,
}

