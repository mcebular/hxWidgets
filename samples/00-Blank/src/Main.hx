package;

import hx.widgets.*;
import hx.widgets.styles.*;

/*
Note: Images in buttons for ubuntu dont work until you run:
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"
*/
class Main {
    public static function main() {
        var app = new App();
        app.init();

        var sic = new SingleInstanceChecker();

        var frame:Frame = new Frame(null, "hxWidgets");

        frame.resize(800, 600);

        var panel = new Panel(frame);
        
        frame.layout();
        frame.show();

        app.run();
        app.exit();
    }

}
