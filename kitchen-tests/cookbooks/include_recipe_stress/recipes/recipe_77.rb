if node["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_8"]["attr_level_8"] = 18

if node["attr_level_1"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_0"] = 3

if node["attr_level_4"]["attr_level_5"]["attr_level_1"]["attr_level_1"]["attr_level_0"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_8"]["attr_level_4"]["attr_level_2"]["attr_level_2"] = 9

if node["attr_level_3"]["attr_level_4"]["attr_level_3"]["attr_level_2"]["attr_level_2"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_0"] = 9

if node["attr_level_2"]["attr_level_4"]["attr_level_0"]["attr_level_0"]["attr_level_3"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 19

if node["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_2"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_7"]["attr_level_7"] = 3

if node["attr_level_2"]["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_1"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_3"]["attr_level_0"]["attr_level_5"] = 18

if node["attr_level_6"]["attr_level_0"]["attr_level_7"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_2"]["attr_level_2"]["attr_level_1"] = 11

if node["attr_level_4"]["attr_level_0"]["attr_level_3"]["attr_level_1"]["attr_level_2"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_5"]["attr_level_1"]["attr_level_1"]["attr_level_2"] = 11

if node["attr_level_1"]["attr_level_6"]["attr_level_8"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_6"]["attr_level_2"]["attr_level_3"] = 7