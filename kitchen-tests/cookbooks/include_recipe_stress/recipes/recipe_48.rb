if node["attr_level_9"]["attr_level_2"]["attr_level_0"]["attr_level_1"]["attr_level_0"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 17

if node["attr_level_0"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 10

if node["attr_level_5"]["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_3"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_8"]["attr_level_3"]["attr_level_0"]["attr_level_2"] = 15

if node["attr_level_6"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_0"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_0"] = 1

if node["attr_level_0"]["attr_level_8"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_4"]["attr_level_4"]["attr_level_1"]["attr_level_2"] = 1

if node["attr_level_3"]["attr_level_1"]["attr_level_3"]["attr_level_5"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_0"]["attr_level_1"]["attr_level_4"] = 18

if node["attr_level_1"]["attr_level_7"]["attr_level_2"]["attr_level_0"]["attr_level_1"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_4"]["attr_level_4"]["attr_level_0"]["attr_level_2"] = 1

if node["attr_level_3"]["attr_level_7"]["attr_level_1"]["attr_level_4"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_7"]["attr_level_6"] = 8

if node["attr_level_7"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_1"]["attr_level_3"]["attr_level_3"] = 15

if node["attr_level_9"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 17