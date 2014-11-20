if node["attr_level_2"]["attr_level_2"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_3"] = 13

if node["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_1"] = 5

if node["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_5"] = 12

if node["attr_level_1"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 12

if node["attr_level_2"]["attr_level_18"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 6

if node["attr_level_8"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_1"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_4"]["attr_level_4"]["attr_level_4"] = 14

if node["attr_level_7"]["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_4"]["attr_level_2"]["attr_level_2"] = 15

if node["attr_level_9"]["attr_level_7"]["attr_level_0"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_2"] = 13

if node["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_1"]["attr_level_0"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_5"]["attr_level_2"]["attr_level_0"]["attr_level_2"] = 6

if node["attr_level_8"]["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_0"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_9"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 15