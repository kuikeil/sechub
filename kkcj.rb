#============斗西语录==============
toolbar = UI::Toolbar.new "斗西语录"
#样式设置
cmd = UI::Command.new("斗西语录") { #新建命令
option={
  dialog_title: "斗西语录-陪伴你的每一次设计",
  width: 363,#宽度
  height: 395,#高度
  left: 500,#距离屏幕左侧距离
  top: 500,#距离屏幕上侧距离
  min_width:363,#最大高度
  min_height:395,#最小高度
}
html_dialog = UI::WebDialog.new(option)
  path = Sketchup.find_support_file "kkcj/kkcj.html", "Plugins" #查找html文件
  html_dialog.set_file path#设置web的html文件
  html_dialog.show#展示web
  UI.start_timer(5){html_dialog.close} #等待五秒后关闭此窗口
}
cmd.small_icon = cmd.large_icon= "kkcj/image/dxhp.png" #设置图标
cmd.tooltip = "斗西语录"  #图标名
cmd.status_bar_text = "点击获取语录" #左下角的提示
toolbar = toolbar.add_item cmd
toolbar.show #展示该工具栏

