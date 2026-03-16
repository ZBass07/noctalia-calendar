import QtQuick
import QtQuick.Layouts
import qs.Modules.DesktopWidgets
import Quickshell
import qs.Commons
import qs.Widgets

Rectangle {
  id: root

  // Plugin API (injected by PluginService)
  property var pluginApi: null

  // Required properties for bar widgets
  property ShellScreen screen
  property string widgetId: ""
  property string section: ""

  implicitWidth: row.implicitWidth + Style.marginM * 2
  implicitHeight: Style.barHeight

  color: Style.capsuleColor
  radius: Style.radiusM

  RowLayout {
    id: row
    anchors.centerIn: parent
    spacing: Style.marginS

    NIcon {
      icon: "heart"
      color: Color.mPrimary
    }

    NText {
      text: "My Plugin"
      color: Color.mOnSurface
      pointSize: Style.fontSizeS
    }
  }
}
DraggableDesktopWidget {
  id: root

  // Plugin API (injected by PluginService)
  property var pluginApi: null

  // Widget dimensions
  implicitWidth: 200
  implicitHeight: 120

  // Your widget content here
}
