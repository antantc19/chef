if node["attr_level_1"]["attr_level_3"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_3"] = 8

if node["attr_level_2"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 15

if node["attr_level_2"]["attr_level_0"]["attr_level_1"]["attr_level_5"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_0"]["attr_level_2"]["attr_level_3"] = 5

if node["attr_level_4"]["attr_level_7"]["attr_level_0"]["attr_level_4"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 15

if node["attr_level_4"]["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_2"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_2"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 19

if node["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_0"]["attr_level_1"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 6

if node["attr_level_0"]["attr_level_5"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 7

if node["attr_level_6"]["attr_level_6"]["attr_level_4"]["attr_level_4"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_3"]["attr_level_2"]["attr_level_1"]["attr_level_2"] = 3

if node["attr_level_2"]["attr_level_6"]["attr_level_4"]["attr_level_4"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_7"]["attr_level_4"]["attr_level_0"]["attr_level_1"] = 15

if node["attr_level_2"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_3"] = 1