
           (function () {
    if (window.top.location != window.self.location) {return;}
    if (window.DotMetricsInitScript == undefined) {
        window.DotMetricsInitScript = true;

        var rand=new Date().getTime();
        var domain = window.location.hostname;
        var imgUrl = "http://script.dotmetrics.net/hit.gif?id=1654&dom=" + domain + "&r=" + rand;
        if(document.location.protocol == 'https:'){
	        imgUrl = imgUrl.replace('http://', 'https://');
        }

        var im=new Image;
        im.src = imgUrl;
        im.onload = function (){im.onload=null};

        function NewDotMetricsLoad(DotMetricsContentLoadedFunction) {
            if (document.readyState != undefined && document.readyState != 'loading') {
                setTimeout(function () {
                    DotMetricsContentLoadedFunction();
                }, 100);
            } else if (document.addEventListener) {
                document.addEventListener("DOMContentLoaded", DotMetricsContentLoadedFunction, false);
            } else if (document.attachEvent) {
                document.attachEvent("onreadystatechange", DotMetricsContentLoadedFunction);
            } else if (window.addEventListener) {
                window.addEventListener("load", DotMetricsContentLoadedFunction, false);
            } else if (window.attachEvent) {
                window.attachEvent("onload", DotMetricsContentLoadedFunction);
            }
        }

        NewDotMetricsLoad(function () {
            if (document.createElement) {
                if (typeof window.DotMetricsSettings == 'undefined') {
                    window.DotMetricsSettings =
                                {
                                    CurrentPage: window.location,
                                    Debug: false,
                                    DataUrl: "http://script.dotmetrics.net/SiteEvent.dotmetrics",
                                    PostUrl: "http://script.dotmetrics.net/DeviceInfo.dotmetrics",
                                    ScriptUrl:  "http://script.dotmetrics.net/Scripts/script.v36.js",
                                    PingUrl: "http://script.dotmetrics.net/Ping.dotmetrics",
                                    SiteSectionId: 1654,
                                    SiteId: 363,
                                    FlashUrl: "http://script.dotmetrics.net/Scripts/DotMetricsFlash.swf",
                                    TimeOnPage: 'DotMetricsTimeOnPage'
                                };

                    if(document.location.protocol == 'https:'){
	                    window.DotMetricsSettings.DataUrl = window.DotMetricsSettings.DataUrl.replace('http://', 'https://');
	                    window.DotMetricsSettings.PostUrl = window.DotMetricsSettings.PostUrl.replace('http://', 'https://');
	                    window.DotMetricsSettings.ScriptUrl = window.DotMetricsSettings.ScriptUrl.replace('http://', 'https://');
	                    window.DotMetricsSettings.FlashUrl = window.DotMetricsSettings.FlashUrl.replace('http://', 'https://');
	                    window.DotMetricsSettings.PingUrl = window.DotMetricsSettings.PingUrl.replace('http://', 'https://');
                    }

                    var fileref = document.createElement('script');
                    fileref.setAttribute("type", "text/javascript");
                    fileref.setAttribute("src", window.DotMetricsSettings.ScriptUrl);
                    fileref.setAttribute("async", "async");
                    if (typeof fileref != "undefined") {
                        document.getElementsByTagName("head")[0].appendChild(fileref);
                    }
                }
            }
        });
    }
})(window);