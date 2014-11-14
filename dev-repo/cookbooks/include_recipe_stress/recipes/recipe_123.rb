if node["attr_level_0"]["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_2"]["attr_level_2"]["attr_level_1"] = 2

if node["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_1"]["attr_level_3"]["attr_level_0"]["attr_level_2"] = 3

if node["attr_level_4"]["attr_level_7"]["attr_level_3"]["attr_level_0"]["attr_level_2"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_2"]["attr_level_3"]["attr_level_1"]["attr_level_1"] = 15

if node["attr_level_6"]["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_1"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_7"]["attr_level_0"]["attr_level_0"]["attr_level_3"] = 2

if node["attr_level_5"]["attr_level_2"]["attr_level_3"]["attr_level_1"]["attr_level_0"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_0"]["attr_level_0"]["attr_level_2"] = 3

if node["attr_level_4"]["attr_level_2"]["attr_level_3"]["attr_level_4"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_3"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 10

if node["attr_level_4"]["attr_level_18"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 7

if node["attr_level_0"]["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_4"]["attr_level_1"]["attr_level_0"]["attr_level_1"] = 11

if node["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_0"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_9"]["attr_level_3"]["attr_level_1"]["attr_level_0"] = 13

if node["attr_level_1"]["attr_level_3"]["attr_level_2"]["attr_level_2"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_3"] = 12