if node["attr_level_7"]["attr_level_7"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 17

if node["attr_level_1"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 14

if node["attr_level_1"]["attr_level_2"]["attr_level_4"]["attr_level_2"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_3"]["attr_level_1"]["attr_level_2"] = 5

if node["attr_level_6"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 3

if node["attr_level_4"]["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_3"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 9

if node["attr_level_0"]["attr_level_6"]["attr_level_3"]["attr_level_1"]["attr_level_3"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 9

if node["attr_level_0"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_1"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_7"]["attr_level_3"]["attr_level_4"] = 9

if node["attr_level_9"]["attr_level_1"]["attr_level_8"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 4

if node["attr_level_6"]["attr_level_7"]["attr_level_1"]["attr_level_0"]["attr_level_2"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_10"] = 10

if node["attr_level_0"]["attr_level_1"]["attr_level_3"]["attr_level_2"]["attr_level_0"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_1"]["attr_level_4"] = 1