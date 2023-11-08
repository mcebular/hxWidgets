package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import haxe.io.Bytes;
import haxe.Resource;
import wx.widgets.IconBundle in WxIconBundle;

class IconBundle {
    private var _ref:Pointer<WxIconBundle>;

    public function new(ref:Pointer<WxIconBundle> = null) {
        if (ref == null) {
            _ref = WxIconBundle.createInstance().reinterpret();
        } else {
            _ref = ref;
        }
    }

    public static function fromHaxeResource(resourceId:String):IconBundle {
        return fromHaxeBytes(Resource.getBytes(resourceId));
    }

    @:access(hx.widgets.MemoryInputStream)
    public static function fromHaxeBytes(bytes:Bytes):IconBundle {
        if (bytes == null) {
            return null;
        }
        var stream = new MemoryInputStream(bytes);
        var ref = WxIconBundle.createInstanceFromStream(stream.memoryinputstreamRef.ref).reinterpret();
        stream.destroy();
        return new IconBundle(ref);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var iconBundleRef(get, null):Pointer<WxIconBundle>;
    private function get_iconBundleRef():Pointer<WxIconBundle> {
        return _ref.reinterpret();
    }
}
