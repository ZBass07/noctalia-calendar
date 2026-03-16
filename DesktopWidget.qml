import QtQuick
import QtQuick.Layouts
import qs.Modules.DesktopWidgets
import Quickshell
import qs.Commons
import qs.Widgets

DraggableDesktopWidget {
  id: root

  // Custom colors from widget data
  property color textColor: {
    var color = widgetData && widgetData.textColor ? widgetData.textColor : ""
    return (color && color !== "") ? color : Color.mOnSurface
  }

  // Custom font size
  property real fontSize: {
    var size = widgetData && widgetData.fontSize ? widgetData.fontSize : 0
    return (size && size > 0) ? size : Style.fontSizeL
  }

  // Opacity
  property real widgetOpacity: (widgetData && widgetData.opacity) ? widgetData.opacity : 1.0

  // Boolean options
  property bool showDetails: (widgetData && widgetData.showDetails !== undefined) ? widgetData.showDetails : true

  //remove bg 
  showBackground: false
}
