if node["attr_level_0"]["attr_level_9"]["attr_level_3"]["attr_level_1"]["attr_level_2"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_3"] = 6

if node["attr_level_3"]["attr_level_3"]["attr_level_3"]["attr_level_1"]["attr_level_1"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_4"]["attr_level_3"] = 7

if node["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_2"]["attr_level_3"]["attr_level_2"]["attr_level_3"] = 13

if node["attr_level_9"]["attr_level_2"]["attr_level_2"]["attr_level_2"]["attr_level_0"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_18"] = 3

if node["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_0"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 15

if node["attr_level_5"]["attr_level_0"]["attr_level_3"]["attr_level_4"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_0"]["attr_level_0"]["attr_level_3"] = 13

if node["attr_level_5"]["attr_level_8"]["attr_level_2"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 13

if node["attr_level_5"]["attr_level_8"]["attr_level_3"]["attr_level_1"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_4"]["attr_level_1"]["attr_level_2"] = 7

if node["attr_level_9"]["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_2"] = 2

if node["attr_level_9"]["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_0"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_1"] = 18