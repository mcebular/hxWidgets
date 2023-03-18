package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/snglinst.h")
@:unreflective
@:native("wxSingleInstanceChecker")
@:structAccess
extern class SingleInstanceChecker {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSingleInstanceChecker") private static function _new():RawPointer<SingleInstanceChecker>;
                                            public static inline function createInstance():Pointer<SingleInstanceChecker> {
                                                return Pointer.fromRaw(_new());
                                            }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("IsAnotherRunning")        public function isAnotherRunning():Bool;
}
