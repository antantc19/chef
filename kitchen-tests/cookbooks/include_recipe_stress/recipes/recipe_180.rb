if node["attr_level_4"]["attr_level_0"]["attr_level_4"]["attr_level_5"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_2"] = 6

if node["attr_level_1"]["attr_level_5"]["attr_level_4"]["attr_level_4"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_11"] = 17

if node["attr_level_1"]["attr_level_3"]["attr_level_3"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 11

if node["attr_level_9"]["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 12

if node["attr_level_7"]["attr_level_7"]["attr_level_3"]["attr_level_2"]["attr_level_2"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_2"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 3

if node["attr_level_4"]["attr_level_7"]["attr_level_2"]["attr_level_5"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_1"]["attr_level_5"] = 5

if node["attr_level_0"]["attr_level_9"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_3"] = 6

if node["attr_level_5"]["attr_level_1"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_1"] = 1

if node["attr_level_2"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_0"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_2"] = 4

if node["attr_level_6"]["attr_level_1"]["attr_level_4"]["attr_level_5"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_4"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 16