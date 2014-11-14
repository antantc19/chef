if node["attr_level_1"]["attr_level_0"]["attr_level_3"]["attr_level_1"]["attr_level_3"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_2"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 10

if node["attr_level_5"]["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_7"]["attr_level_2"]["attr_level_2"]["attr_level_2"] = 12

if node["attr_level_7"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_0"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_0"] = 7

if node["attr_level_9"]["attr_level_8"]["attr_level_0"]["attr_level_4"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 1

if node["attr_level_1"]["attr_level_2"]["attr_level_4"]["attr_level_0"]["attr_level_3"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 11

if node["attr_level_8"]["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_0"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 9

if node["attr_level_3"]["attr_level_1"]["attr_level_5"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_9"]["attr_level_8"] = 15

if node["attr_level_2"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_2"]["attr_level_1"] = 13

if node["attr_level_2"]["attr_level_3"]["attr_level_3"]["attr_level_1"]["attr_level_3"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_0"] = 14

if node["attr_level_1"]["attr_level_7"]["attr_level_1"]["attr_level_5"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_0"] = 14