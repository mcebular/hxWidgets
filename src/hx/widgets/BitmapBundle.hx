package hx.widgets;

#if (wxWidgetsVersion >= version("3.1.6"))

import cpp.Pointer;
import cpp.Reference;
import haxe.io.Bytes;
import haxe.Resource;
import wx.widgets.BitmapBundle in WxBitmapBundle;
import wx.widgets.IconBundle in WxIconBundle;
import wx.widgets.Image in WxImage;

@:access(hx.widgets.Bitmap)
class BitmapBundle {
    private var _ref:Pointer<WxBitmapBundle>;

    public function new(ref:Pointer<WxBitmapBundle> = null) {
        if (ref == null) {
            _ref = WxBitmapBundle.createInstance().reinterpret();
        } else {
            _ref = ref;
        }
    }

    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }

    public var isOk(get, null):Bool;
    private function get_isOk():Bool {
        return bitmapBundleRef.ptr.isOk();
    }

    public var defaultSize(get, null):Size;
    private function get_defaultSize():Size {
        var size = bitmapBundleRef.ptr.getDefaultSize();
        return new Size(size.getWidth(), size.getHeight());
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromBitmap(bitmap: Bitmap) {
        return new BitmapBundle(WxBitmapBundle.createInstanceFromBitmap(bitmap.bitmapRef.ref).reinterpret());
    }

    @:access(hx.widgets.Image)
    public static function fromImage(image: Image) {
        return new BitmapBundle(WxBitmapBundle.createInstanceFromImage(image.imageRef.ref).reinterpret());
    }

    @:access(hx.widgets.IconBundle)
    public static function fromIconBundle(iconBundle: IconBundle) {
        return new BitmapBundle(WxBitmapBundle.fromIconBundle(iconBundle.iconBundleRef.ref).reinterpret());
    }

    public static function fromHaxeResource(resourceId:String):BitmapBundle {
        return fromHaxeBytes(Resource.getBytes(resourceId));
    }

    public static function fromHaxeBytes(bytes:Bytes):BitmapBundle {
        if (bytes == null) {
            return null;
        }

        var image:Image = new Image(bytes);
        return BitmapBundle.fromImage(image);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bitmapBundleRef(get, null):Pointer<WxBitmapBundle>;
    private function get_bitmapBundleRef():Pointer<WxBitmapBundle> {
        return _ref.reinterpret();
    }
}

#end