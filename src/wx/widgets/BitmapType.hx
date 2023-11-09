package wx.widgets;

@:include("wx/gdicmn.h")
extern enum abstract BitmapType(BitmapTypeImpl)  {
    @:native("wxBitmapType::wxBITMAP_TYPE_INVALID")             var INVALID;
    @:native("wxBitmapType::wxBITMAP_TYPE_BMP")                 var BMP;
    @:native("wxBitmapType::wxBITMAP_TYPE_BMP_RESOURCE")        var BMP_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_RESOURCE")            var RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_ICO")                 var ICO;
    @:native("wxBitmapType::wxBITMAP_TYPE_ICO_RESOURCE")        var ICO_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_CUR")                 var CUR;
    @:native("wxBitmapType::wxBITMAP_TYPE_CUR_RESOURCE")        var CUR_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_XBM")                 var XBM;
    @:native("wxBitmapType::wxBITMAP_TYPE_XBM_DATA")            var XBM_DATA;
    @:native("wxBitmapType::wxBITMAP_TYPE_XPM")                 var XPM;
    @:native("wxBitmapType::wxBITMAP_TYPE_XPM_DATA")            var XPM_DATA;
    @:native("wxBitmapType::wxBITMAP_TYPE_TIFF")                var TIFF;
    @:native("wxBitmapType::wxBITMAP_TYPE_TIF")                 var TIF;
    @:native("wxBitmapType::wxBITMAP_TYPE_TIFF_RESOURCE")       var TIFF_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_TIF_RESOURCE")        var TIF_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_GIF")                 var GIF;
    @:native("wxBitmapType::wxBITMAP_TYPE_GIF_RESOURCE")        var GIF_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_PNG")                 var PNG;
    @:native("wxBitmapType::wxBITMAP_TYPE_PNG_RESOURCE")        var PNG_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_JPEG")                var JPEG;
    @:native("wxBitmapType::wxBITMAP_TYPE_JPEG_RESOURCE")       var JPEG_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_PNM")                 var PNM;
    @:native("wxBitmapType::wxBITMAP_TYPE_PNM_RESOURCE")        var PNM_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_PCX")                 var PCX;
    @:native("wxBitmapType::wxBITMAP_TYPE_PCX_RESOURCE")        var PCX_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_PICT")                var PICT;
    @:native("wxBitmapType::wxBITMAP_TYPE_PICT_RESOURCE")       var PICT_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_ICON")                var ICON;
    @:native("wxBitmapType::wxBITMAP_TYPE_ICON_RESOURCE")       var ICON_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_ANI")                 var ANI;
    @:native("wxBitmapType::wxBITMAP_TYPE_IFF")                 var IFF;
    @:native("wxBitmapType::wxBITMAP_TYPE_TGA")                 var TGA;
    @:native("wxBitmapType::wxBITMAP_TYPE_MACCURSOR")           var MACCURSOR;
    @:native("wxBitmapType::wxBITMAP_TYPE_MACCURSOR_RESOURCE")  var MACCURSOR_RESOURCE;
    @:native("wxBitmapType::wxBITMAP_TYPE_ANY")                 var ANY;
}

@:include("wx/gdicmn.h")
@:native("cpp::Struct<wxBitmapType, cpp::EnumHandler>")
extern class BitmapTypeImpl {
}
