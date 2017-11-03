//Démarrage du système
var isiPad = false, isiPhone = false, isMobile = true;
function initialize() {
    app.receivedEvent('deviceready');
	
	isiPad   = /iPad/.test(navigator.userAgent) && !window.MSStream;
	isiPhone = /iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
	
	//AJAX
	$.ajaxSetup({
		timeout: 10*1000,
	});
}

//Cycle de vie
var app = {
    initialize: function() {
		isMobile = ('ontouchstart' in window);
        this.bindEvents();
    },
    bindEvents: function() {
		//Device ou web
		if(isMobile)
		    document.addEventListener('deviceready', this.onDeviceReady, false);
		else
		    document.addEventListener('DOMContentLoaded', this.onDeviceReady, false);
    },
    onDeviceReady: function() {
		//Init par défaut
		initialize();
    },
    receivedEvent: function(id) {
        console.log('Received Event: ' + id);
    }
};
app.initialize();


//Prototypes for Strings
String.prototype.trim = function()
	{ return (this.replace(/^[\s\xA0]+/, "").replace(/[\s\xA0]+$/, "")) }
String.prototype.startsWith = function(str) 
	{ return (this.match("^"+str)==str) }
String.prototype.endsWith = function(str) 
	{ return (this.match(str+"$")==str) }
String.prototype.replaceAll = function(str, str2)
	{ return (this.replace(new RegExp(str, 'g'), str2)) }
String.prototype.pad = function(length) {
	var str = '' + this;
    while (str.length < length) {
        str = '0' + str;
    }
    return str;
}
function ab2str(buf) {
	return String.fromCharCode.apply(null, new Uint16Array(buf));
}
function str2ab(str) {
	var buf = new ArrayBuffer(str.length*2); // 2 bytes for each char
	var bufView = new Uint16Array(buf);
	for (var i=0, strLen=str.length; i < strLen; i++) {
		bufView[i] = str.charCodeAt(i);
	}
	return buf;
}