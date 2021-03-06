function getMasCookie(c_name){
	var c_value = document.cookie;
	var c_start = c_value.indexOf(" " + c_name + "=");
	if (c_start == -1) {
		c_start = c_value.indexOf(c_name + "=");
	}
	if (c_start == -1){
		c_value = null;
	}else{
		c_start = c_value.indexOf("=", c_start) + 1;
		var c_end = c_value.indexOf(";", c_start);
		if (c_end == -1){
			c_end = c_value.length;
		}
		c_value = unescape(c_value.substring(c_start,c_end));
	}
	return c_value;
}
function setMasCookie(c_name,value,exdays){
	var exdate=new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString()) + ";Path=/";
	document.cookie=c_name + "=" + c_value;
}
/*cookieEnabled*/
var cookieEnabled=(navigator.cookieEnabled)? true : false;
if (typeof navigator.cookieEnabled=="undefined" && !cookieEnabled){	document.cookie="testcookie";
	cookieEnabled=(document.cookie.indexOf("testcookie")!=-1)? true : false;
}

/*Check if localstorage available*/
var localstorageAvailable;
try {
	localStorage.setItem('mod', 'mod');
	localStorage.removeItem('mod');
	localstorageAvailable = true;
} catch(e) {
	localstorageAvailable = false;
}

function setupDomainData_k3aw33r2csdqascvrs3hi5(){
	var masVerifyIdFrame = document.getElementById('masVerifyId_k3aw33r2csdqascvrs3hi5').contentWindow;
	if (masVerifyIdFrame != null){
		masVerifyIdFrame.postMessage(JSON.stringify({key: '_mas_verify_id_v2', method: 'get', functionKey: 'k3aw33r2csdqascvrs3hi5'}), '*');
	}
}
var fetchAdFlag_k3aw33r2csdqascvrs3hi5=true;

if(document.getElementById('masVerifyId_k3aw33r2csdqascvrs3hi5')==null && (cookieEnabled || localstorageAvailable)){
	var eventMethod  = window.addEventListener ? 'addEventListener': 'attachEvent';
	var eventer      = window[eventMethod];
	var messageEvent = eventMethod == 'attachEvent' ? 'onmessage' : 'message';
	eventer(messageEvent,function(e) {
		var key  = e.message ? 'message' : 'data';
		var data;
		try {
			data = JSON.parse(e[key]);
		} catch(e) { return; }
		if (data.key != undefined && data.key == '_mas_verify_id_v2' && data.functionKey != undefined && data.functionKey == 'k3aw33r2csdqascvrs3hi5') {
			if (data.cValue == '' && data.lsValue == ''){
				if (cookieEnabled){
					setMasCookie('_mas_sync_cookie_v1', 1, 365);
				}
				if (localstorageAvailable){
					localStorage.setItem('_mas_sync_cookie_v1', 1);
				}
			}else {
				if (localstorageAvailable && data.lsValue != ''){
					localStorage.setItem(data.key, data.lsValue);
					localStorage.setItem('_mas_sync_cookie_v1', 0);
				}
				if (cookieEnabled && data.cValue != ''){
					setMasCookie(data.key, data.cValue, 365);
					setMasCookie('_mas_sync_cookie_v1', 0, 365);
				}
			}
			window['checkFlag_'+ data.functionKey]();
		}
	}, false);
	var iframe=document.createElement('iframe');
	iframe.setAttribute('id', 'masVerifyId_k3aw33r2csdqascvrs3hi5');

	iframe.src='http://mas.nth.ch/mashlp/cdc/verifyIdIframe.jsp';
	iframe.style.display = 'none';
	iframe.setAttribute('height','0');
	iframe.setAttribute('width','0');
	if (iframe.attachEvent) iframe.attachEvent('onload', setupDomainData_k3aw33r2csdqascvrs3hi5);
	else iframe.addEventListener('load', setupDomainData_k3aw33r2csdqascvrs3hi5, false)
	document.body.appendChild(iframe);
	fetchAdFlag_k3aw33r2csdqascvrs3hi5=false
}
function fetchAd_k3aw33r2csdqascvrs3hi5(){
var apidData = 'k3aw33r2csdqascvrs3hi5';
/*viewportWidthAndHeight*/
var viewportwidth;
var viewportheight;
if (typeof window.innerWidth != 'undefined')
{
	viewportwidth = window.innerWidth,	viewportheight = window.innerHeight;
}
else if (typeof document.documentElement != 'undefined' && typeof document.documentElement.clientWidth != 'undefined' && document.documentElement.clientWidth != 0){
	viewportwidth = document.documentElement.clientWidth,	viewportheight = document.documentElement.clientHeight;
}
else{
	viewportwidth = document.getElementsByTagName('body')[0].clientWidth,	viewportheight = document.getElementsByTagName('body')[0].clientHeight;
}

/*Get verify id*/
var _mas_verify_id_v2 = '';
if (localstorageAvailable){
	_mas_verify_id_v2 = window.localStorage._mas_verify_id_v2;
}
if ((_mas_verify_id_v2 == undefined || _mas_verify_id_v2 == '')  && cookieEnabled){
	_mas_verify_id_v2 = getMasCookie('_mas_verify_id_v2')
}
if(_mas_verify_id_v2 == null){
	_mas_verify_id_v2 = '';
} else {
	var masVerifyIdFrame = document.getElementById('masVerifyId_k3aw33r2csdqascvrs3hi5').contentWindow;	if (masVerifyIdFrame != null){
		if (localstorageAvailable){
			masVerifyIdFrame.postMessage(JSON.stringify({key: '_mas_verify_id_v2', method: 'set', storage: 'localStorage', data: _mas_verify_id_v2}), '*')
		}
		if (cookieEnabled){
			masVerifyIdFrame.postMessage(JSON.stringify({key: '_mas_verify_id_v2', method: 'set', storage: 'cookie', data: _mas_verify_id_v2}), '*')
		}
	}
}

var paramsData = 'apid=' + apidData + '&cookies_enabled=' + cookieEnabled + '&resolution_width=' + viewportwidth + '&resolution_height=' + viewportheight + '&fngpt=' + _mas_verify_id_v2 
+ '&localstorageAvailable=' + localstorageAvailable;
paramsData += "";
var scrpt_k3aw33r2csdqascvrs3hi5 = document.createElement('script');
scrpt_k3aw33r2csdqascvrs3hi5.setAttribute('src', 'http://mas.nth.ch/mas/mas_imp.jsp?' + paramsData);
scrpt_k3aw33r2csdqascvrs3hi5.type = 'text/javascript';
var head = document.getElementsByTagName('head')[0];
head.appendChild(scrpt_k3aw33r2csdqascvrs3hi5);
}
function checkFlag_k3aw33r2csdqascvrs3hi5(){
	if(window.sflag != null){ 
		setTimeout('fetchAd_k3aw33r2csdqascvrs3hi5()', 1000);
	}
	else{
		window.sflag = 1;
		fetchAd_k3aw33r2csdqascvrs3hi5();
	}
}
if(fetchAdFlag_k3aw33r2csdqascvrs3hi5){ 
	checkFlag_k3aw33r2csdqascvrs3hi5();
}