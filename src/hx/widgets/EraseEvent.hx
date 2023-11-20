package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.EraseEvent in WxEraseEvent;
import wx.widgets.DC in WxDC;

class EraseEvent extends Event {
    public var DC(get, null):DC;
    private function get_DC():DC {
        var dcPtr = eraseEventRef.ptr.getDC();
        var dc = new DC();
        @:privateAccess dc._ref = dcPtr.reinterpret();
        return dc;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var eraseEventRef(get, null):Pointer<WxEraseEvent>;
    private function get_eraseEventRef():Pointer<WxEraseEvent> {
        return _ref.reinterpret();
    }
}