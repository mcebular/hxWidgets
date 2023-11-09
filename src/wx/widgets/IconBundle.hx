package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/iconbndl.h")
@:unreflective
@:native("wxIconBundle")
@:structAccess
extern class IconBundle {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxIconBundle")      private static function _new():RawPointer<IconBundle>;
                                        public static inline function createInstance():Pointer<IconBundle> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("new wxIconBundle")        private static function _newFromStream(stream:MemoryInputStream):RawPointer<IconBundle>;
                                        public static inline function createInstanceFromStream(stream:MemoryInputStream):Pointer<IconBundle> {
                                            return Pointer.fromRaw(_newFromStream(stream));
                                        }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetIconCount")            public function getIconCount():Int;
}
