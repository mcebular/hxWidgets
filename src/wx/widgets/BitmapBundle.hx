package wx.widgets;

#if (wxWidgetsVersion >= version("3.1.6"))

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/bmpbndl.h")
@:unreflective
@:native("wxBitmapBundle")
@:structAccess
extern class BitmapBundle {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBitmapBundle")      private static function _new():RawPointer<BitmapBundle>;
                                        public static inline function createInstance():Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("new wxBitmapBundle")      private static function _copy(other: Reference<BitmapBundle>):RawPointer<BitmapBundle>;
                                        public static inline function copy(other: Reference<BitmapBundle>):Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_copy(other));
                                        }

    @:native("new wxBitmapBundle")      private static function _newFromBitmap(bitmap:Reference<Bitmap>):RawPointer<BitmapBundle>;
                                        public static inline function createInstanceFromBitmap(bitmap:Reference<Bitmap>):Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_newFromBitmap(bitmap));
                                        }

    @:native("new wxBitmapBundle")      private static function _newFromImage(image:Reference<Image>):RawPointer<BitmapBundle>;
                                        public static inline function createInstanceFromImage(image:Reference<Image>):Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_newFromImage(image));
                                        }

    @:native("wxBitmapBundle::FromIconBundle") public static function _fromIconBundle(iconBundle:Reference<IconBundle>):BitmapBundle;
                                        public static inline function fromIconBundle(iconBundle:Reference<IconBundle>):Pointer<BitmapBundle> {
                                            // FromIconBundle returns a BitmapBundle, rather than a Pointer<BitmapBundle>.
                                            // Not sure how to get a proper Pointer for that BitmapBundle other than making a copy of it. :)
                                            return copy(_fromIconBundle(iconBundle));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("IsOk")                    public function isOk():Bool;
    @:native("GetDefaultSize")          public function getDefaultSize():Size;

}

#end