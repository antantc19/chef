if node["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_7"] = 9

if node["attr_level_7"]["attr_level_4"]["attr_level_3"]["attr_level_2"]["attr_level_0"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_5"]["attr_level_3"]["attr_level_5"] = 14

if node["attr_level_4"]["attr_level_3"]["attr_level_0"]["attr_level_1"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_0"] = 10

if node["attr_level_7"]["attr_level_4"]["attr_level_3"]["attr_level_3"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_1"] = 0

if node["attr_level_9"]["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_1"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_8"]["attr_level_0"]["attr_level_5"] = 18

if node["attr_level_4"]["attr_level_1"]["attr_level_1"]["attr_level_0"]["attr_level_1"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_3"] = 17

if node["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_7"]["attr_level_2"]["attr_level_5"] = 2

if node["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_5"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_0"] = 8

if node["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_6"]["attr_level_1"]["attr_level_0"]["attr_level_0"] = 19

if node["attr_level_8"]["attr_level_9"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_0"]["attr_level_5"] = 12