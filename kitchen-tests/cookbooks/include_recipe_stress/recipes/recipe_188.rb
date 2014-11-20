if node["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_0"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_1"]["attr_level_2"] = 17

if node["attr_level_1"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_2"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_1"] = 1

if node["attr_level_8"]["attr_level_6"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_3"] = 2

if node["attr_level_7"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_3"]["attr_level_5"] = 19

if node["attr_level_8"]["attr_level_6"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_1"] = 12

if node["attr_level_0"]["attr_level_2"]["attr_level_0"]["attr_level_4"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 17

if node["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_0"]["attr_level_2"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_9"]["attr_level_0"]["attr_level_0"]["attr_level_2"] = 4

if node["attr_level_8"]["attr_level_3"]["attr_level_3"]["attr_level_1"]["attr_level_1"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_6"]["attr_level_2"]["attr_level_3"] = 14

if node["attr_level_2"]["attr_level_3"]["attr_level_2"]["attr_level_1"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_8"]["attr_level_2"]["attr_level_2"]["attr_level_2"] = 7

if node["attr_level_8"]["attr_level_9"]["attr_level_3"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 3