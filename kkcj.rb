require "sketchup.rb"
if( not file_loaded? "example_plugin.rb" )
    file_loaded "example_plugin.rb"
end
#============kk向你问好！==============
toolbar = UI::Toolbar.new "斗西语录"
#样式设置
option={
  dialog_title: "斗西语录-陪伴你的每一天",
  width: 363,
  height: 363,
  left: 500,
  top: 500,
  resizable: false,
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

