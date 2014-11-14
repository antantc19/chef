if node["attr_level_1"]["attr_level_3"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_9"]["attr_level_1"]["attr_level_1"]["attr_level_0"] = 7

if node["attr_level_5"]["attr_level_5"]["attr_level_3"]["attr_level_2"]["attr_level_1"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_5"]["attr_level_1"]["attr_level_1"]["attr_level_0"] = 12

if node["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 8

if node["attr_level_7"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_9"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 7

if node["attr_level_9"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_8"]["attr_level_0"]["attr_level_3"] = 3

if node["attr_level_8"]["attr_level_8"]["attr_level_1"]["attr_level_1"]["attr_level_1"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_4"]["attr_level_0"]["attr_level_1"] = 14

if node["attr_level_1"]["attr_level_9"]["attr_level_0"]["attr_level_0"]["attr_level_0"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_4"]["attr_level_4"]["attr_level_3"] = 6

if node["attr_level_6"]["attr_level_4"]["attr_level_0"]["attr_level_0"]["attr_level_0"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_1"]["attr_level_0"]["attr_level_1"]["attr_level_3"] = 8

if node["attr_level_1"]["attr_level_9"]["attr_level_0"]["attr_level_0"]["attr_level_2"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_4"]["attr_level_4"]["attr_level_1"]["attr_level_1"] = 5

if node["attr_level_7"]["attr_level_9"]["attr_level_4"]["attr_level_2"]["attr_level_1"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_4"]["attr_level_2"]["attr_level_0"] = 12