package hx.widgets;

import cpp.Pointer;
import wx.widgets.SingleInstanceChecker in WxSingleInstanceChecker;

class SingleInstanceChecker {
    private var _ref:Pointer<WxSingleInstanceChecker>;

    public function new() {
        WxSingleInstanceChecker.createInstance();
    }

    public function isAnotherRunning(): Bool {
        return singleInstanceCheckerRef.ptr.isAnotherRunning();
    }

    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var singleInstanceCheckerRef(get, null):Pointer<WxSingleInstanceChecker>;
    private function get_singleInstanceCheckerRef():Pointer<WxSingleInstanceChecker> {
        return _ref.reinterpret();
    }

}
