require "sketchup.rb"
if( not file_loaded? "example_plugin.rb" )
    file_loaded "example_plugin.rb"
end
#============kk向你问好！==============
toolbar = UI::Toolbar.new "斗西语录"
test=["我们像是表面上的针，不停的转动，一面转，一面看着时间匆匆离去，却无能为力。",
      "或许，最美的事不是留住时光，而是留住记忆，如最初相识的感觉一样，哪怕一个不经意的笑容，便是我们最怀念的故事。但愿，时光，如初见。",
      "时间没有等我，是你忘了带我走，我左手过目不忘的的萤火，右手里是十年一个漫长的打坐。",
      "当你真正爱一样东西的时候你就会发现语言多么的脆弱和无力。文字与感觉永远有隔阂。",
      "我忘了哪年哪月的哪一日我在哪面墙上刻下一张脸—张微笑着忧伤着凝望我的脸。",
      "如果难过，就努力抬头望天空吧，望着望着就忘了......它那么大，一定可以包容你的所有委屈。",
      "我哒哒的马蹄是个美丽的错误，我只是过客，不是归人。",
      "要理想不要幻想，要激情不要矫情。凡事知足常乐。",
      "我的眼泪留了下来，灌溉了下面柔软的小草，不知道来年，会不会开出一地的记忆和忧愁。",
      "在一起久了，两个人的性格会逐渐互补，爱得多的那个脾气会越来越好、越来越迁就;被爱的那个则会越来越霸道。总有一个人会改变自己，放下底线来迎合纵容你。不是天生好脾气，只是怕失去你，才宁愿把你越宠越坏，困在怀里。所谓性格不合，只是不爱的借口。"]
#样式设置
option={
  dialog_title: "斗西语录-陪伴你的每一天",
  width: 363,
  height: 363,
  left: 500,
  top: 500,
}

cmd = UI::Command.new("hello") {
  html_dialog = UI::WebDialog.new(option)
  path = Sketchup.find_support_file "kkcj/kkcj.html", "Plugins"
  html_dialog.set_file path
  html_dialog.show
  UI.start_timer(5){html_dialog.close}
}

cmd.small_icon = cmd.large_icon= "kkcj/image/head_portrait_for_kk.png" #设置图标
cmd.tooltip = "斗西语录"  #图标名
cmd.status_bar_text = "点击获取语录" #左下角的提示
toolbar = toolbar.add_item cmd
toolbar.show #展示该工具栏

