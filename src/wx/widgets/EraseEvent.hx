package wx.widgets;
import cpp.Pointer;

@:include("wx/event.h")
@:unreflective
@:native("wxEraseEvent")
@:structAccess
extern class EraseEvent extends Event {
    @:native("GetDC")            public function getDC():Pointer<DC>;
}