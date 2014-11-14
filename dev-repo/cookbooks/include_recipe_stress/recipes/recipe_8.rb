if node["attr_level_1"]["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_2"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_2"] = 18

if node["attr_level_4"]["attr_level_4"]["attr_level_3"]["attr_level_0"]["attr_level_2"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 3

if node["attr_level_2"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_2"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_2"]["attr_level_0"] = 12

if node["attr_level_9"]["attr_level_1"]["attr_level_3"]["attr_level_0"]["attr_level_3"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_7"]["attr_level_0"]["attr_level_1"]["attr_level_0"] = 8

if node["attr_level_3"]["attr_level_3"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_2"] = 18

if node["attr_level_0"]["attr_level_9"]["attr_level_0"]["attr_level_0"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_0"]["attr_level_0"]["attr_level_2"] = 8

if node["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_1"]["attr_level_0"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_1"]["attr_level_1"]["attr_level_5"] = 16

if node["attr_level_5"]["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_1"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_0"] = 19

if node["attr_level_3"]["attr_level_6"]["attr_level_4"]["attr_level_0"]["attr_level_1"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_2"] = 0

if node["attr_level_2"]["attr_level_4"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_3"] = 5