if(xClaimInitScript == undefined)
                {
                    var xClaimInitScript = true;

                    function NewXClaimLoad(DOMContentLoadedFunction)
                    {
                        if(document.readyState != undefined  && document.readyState != 'loading'){
                            setTimeout(function(){
                            DOMContentLoadedFunction();
                            },100);
                        } else if ( document.addEventListener ) {
                            document.addEventListener( "DOMContentLoaded", DOMContentLoadedFunction, false );
                        } else if ( document.attachEvent ) {
                            document.attachEvent("onreadystatechange", DOMContentLoadedFunction);
                        }else if(window.addEventListener){
                            window.addEventListener( "load", DOMContentLoadedFunction, false );
                        }else if(window.attachEvent){
                            window.attachEvent( "onload", DOMContentLoadedFunction );
                        }
                    }

                    NewXClaimLoad(function () {
                        if (document.createElement ) {
                            var time = "&time="+ Math.round(new Date().getTime());
                            var url = "&url=" + escape( window.location.href );
                            var cookieData = "&cookieEnabled=";
                            if (typeof xclaimCookieEnabled !== 'undefined') {
                                cookieData += xclaimCookieEnabled;
                            }
                            var filename = "http://bh-engine.intextad.net/Xclaim.js?partnerid=200025" + time + url + cookieData;
                            var fileref=document.createElement('script');
                            fileref.setAttribute("type","text/javascript");
                            fileref.setAttribute("src", filename);
                            if (typeof fileref != "undefined")
                                document.getElementsByTagName("head")[0].appendChild(fileref);
                            }
                     });
                }