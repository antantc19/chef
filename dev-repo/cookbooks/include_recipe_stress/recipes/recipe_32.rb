if node["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_3"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_7"]["attr_level_2"]["attr_level_3"] = 1

if node["attr_level_5"]["attr_level_8"]["attr_level_0"]["attr_level_2"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_9"]["attr_level_4"]["attr_level_2"]["attr_level_3"] = 16

if node["attr_level_2"]["attr_level_9"]["attr_level_1"]["attr_level_0"]["attr_level_3"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_7"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 17

if node["attr_level_9"]["attr_level_2"]["attr_level_2"]["attr_level_1"]["attr_level_0"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_4"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 7

if node["attr_level_0"]["attr_level_0"]["attr_level_1"]["attr_level_5"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_9"]["attr_level_3"]["attr_level_3"] = 8

if node["attr_level_7"]["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_0"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_9"]["attr_level_4"]["attr_level_0"]["attr_level_2"] = 7

if node["attr_level_3"]["attr_level_4"]["attr_level_8"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 13

if node["attr_level_1"]["attr_level_3"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_17"] = 8

if node["attr_level_9"]["attr_level_3"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_1"]["attr_level_0"]["attr_level_2"] = 9

if node["attr_level_8"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_2"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 8