if node["attr_level_1"]["attr_level_2"]["attr_level_2"]["attr_level_1"]["attr_level_2"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 0

if node["attr_level_1"]["attr_level_5"]["attr_level_0"]["attr_level_0"]["attr_level_3"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_7"]["attr_level_3"]["attr_level_1"]["attr_level_3"] = 8

if node["attr_level_5"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_1"] = 15

if node["attr_level_4"]["attr_level_4"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_1"]["attr_level_3"] = 0

if node["attr_level_6"]["attr_level_8"]["attr_level_1"]["attr_level_0"]["attr_level_2"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 18

if node["attr_level_8"]["attr_level_5"]["attr_level_0"]["attr_level_1"]["attr_level_0"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_2"]["attr_level_7"] = 17

if node["attr_level_3"]["attr_level_4"]["attr_level_3"]["attr_level_1"]["attr_level_0"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_7"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 17

if node["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_5"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_8"]["attr_level_0"]["attr_level_2"]["attr_level_2"] = 10

if node["attr_level_0"]["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_0"]["attr_level_0"]["attr_level_3"] = 11

if node["attr_level_1"]["attr_level_3"]["attr_level_3"]["attr_level_2"]["attr_level_0"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 2