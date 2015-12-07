!function(e,t,n){function r(e,t){return typeof e===t}function a(){var e,t,n,a,o,i,s;for(var l in w)if(w.hasOwnProperty(l)){if(e=[],t=w[l],t.name&&(e.push(t.name.toLowerCase()),t.options&&t.options.aliases&&t.options.aliases.length))for(n=0;n<t.options.aliases.length;n++)e.push(t.options.aliases[n].toLowerCase());for(a=r(t.fn,"function")?t.fn():t.fn,o=0;o<e.length;o++)i=e[o],s=i.split("."),1===s.length?x[s[0]]=a:(!x[s[0]]||x[s[0]]instanceof Boolean||(x[s[0]]=new Boolean(x[s[0]])),x[s[0]][s[1]]=a),T.push((a?"":"no-")+s.join("-"))}}function o(e){var t=C.className,n=x._config.classPrefix||"";if(E&&(t=t.baseVal),x._config.enableJSClass){var r=new RegExp("(^|\\s)"+n+"no-js(\\s|$)");t=t.replace(r,"$1"+n+"js$2")}x._config.enableClasses&&(t+=" "+n+e.join(" "+n),E?C.className.baseVal=t:C.className=t)}function i(){return"function"!=typeof t.createElement?t.createElement(arguments[0]):E?t.createElementNS.call(t,"http://www.w3.org/2000/svg",arguments[0]):t.createElement.apply(t,arguments)}function s(){var e=t.body;return e||(e=i(E?"svg":"body"),e.fake=!0),e}function l(e,n,r,a){var o,l,d,c,u="modernizr",A=i("div"),f=s();if(parseInt(r,10))for(;r--;)d=i("div"),d.id=a?a[r]:u+(r+1),A.appendChild(d);return o=i("style"),o.type="text/css",o.id="s"+u,(f.fake?f:A).appendChild(o),f.appendChild(A),o.styleSheet?o.styleSheet.cssText=e:o.appendChild(t.createTextNode(e)),A.id=u,f.fake&&(f.style.background="",f.style.overflow="hidden",c=C.style.overflow,C.style.overflow="hidden",C.appendChild(f)),l=n(A,e),f.fake?(f.parentNode.removeChild(f),C.style.overflow=c,C.offsetHeight):A.parentNode.removeChild(A),!!l}function d(e,t){return!!~(""+e).indexOf(t)}function c(e){return e.replace(/([A-Z])/g,function(e,t){return"-"+t.toLowerCase()}).replace(/^ms-/,"-ms-")}function u(t,r){var a=t.length;if("CSS"in e&&"supports"in e.CSS){for(;a--;)if(e.CSS.supports(c(t[a]),r))return!0;return!1}if("CSSSupportsRule"in e){for(var o=[];a--;)o.push("("+c(t[a])+":"+r+")");return o=o.join(" or "),l("@supports ("+o+") { #modernizr { position: absolute; } }",function(e){return"absolute"==getComputedStyle(e,null).position})}return n}function A(e){return e.replace(/([a-z])-([a-z])/g,function(e,t,n){return t+n.toUpperCase()}).replace(/^-/,"")}function f(e,t,a,o){function s(){c&&(delete _.style,delete _.modElem)}if(o=r(o,"undefined")?!1:o,!r(a,"undefined")){var l=u(e,a);if(!r(l,"undefined"))return l}for(var c,f,p,m,h,g=["modernizr","tspan"];!_.style;)c=!0,_.modElem=i(g.shift()),_.style=_.modElem.style;for(p=e.length,f=0;p>f;f++)if(m=e[f],h=_.style[m],d(m,"-")&&(m=A(m)),_.style[m]!==n){if(o||r(a,"undefined"))return s(),"pfx"==t?m:!0;try{_.style[m]=a}catch(v){}if(_.style[m]!=h)return s(),"pfx"==t?m:!0}return s(),!1}function p(e,t){return function(){return e.apply(t,arguments)}}function m(e,t,n){var a;for(var o in e)if(e[o]in t)return n===!1?e[o]:(a=t[e[o]],r(a,"function")?p(a,n||t):a);return!1}function h(e,t,n,a,o){var i=e.charAt(0).toUpperCase()+e.slice(1),s=(e+" "+k.join(i+" ")+i).split(" ");return r(t,"string")||r(t,"undefined")?f(s,t,a,o):(s=(e+" "+z.join(i+" ")+i).split(" "),m(s,t,n))}function g(e,t,r){return h(e,n,n,t,r)}function v(e,t){return e-1===t||e===t||e+1===t}function y(e,t){if("object"==typeof e)for(var n in e)P(e,n)&&y(n,e[n]);else{e=e.toLowerCase();var r=e.split("."),a=x[r[0]];if(2==r.length&&(a=a[r[1]]),"undefined"!=typeof a)return x;t="function"==typeof t?t():t,1==r.length?x[r[0]]=t:(!x[r[0]]||x[r[0]]instanceof Boolean||(x[r[0]]=new Boolean(x[r[0]])),x[r[0]][r[1]]=t),o([(t&&0!=t?"":"no-")+r.join("-")]),x._trigger(e,t)}return x}var w=[],b={_version:"3.2.0",_config:{classPrefix:"",enableClasses:!0,enableJSClass:!0,usePrefixes:!0},_q:[],on:function(e,t){var n=this;setTimeout(function(){t(n[e])},0)},addTest:function(e,t,n){w.push({name:e,fn:t,options:n})},addAsyncTest:function(e){w.push({name:null,fn:e})}},x=function(){};x.prototype=b,x=new x;var T=[],C=t.documentElement,E="svg"===C.nodeName.toLowerCase();E||!function(e,t){function n(e,t){var n=e.createElement("p"),r=e.getElementsByTagName("head")[0]||e.documentElement;return n.innerHTML="x<style>"+t+"</style>",r.insertBefore(n.lastChild,r.firstChild)}function r(){var e=y.elements;return"string"==typeof e?e.split(" "):e}function a(e,t){var n=y.elements;"string"!=typeof n&&(n=n.join(" ")),"string"!=typeof e&&(e=e.join(" ")),y.elements=n+" "+e,d(t)}function o(e){var t=v[e[h]];return t||(t={},g++,e[h]=g,v[g]=t),t}function i(e,n,r){if(n||(n=t),u)return n.createElement(e);r||(r=o(n));var a;return a=r.cache[e]?r.cache[e].cloneNode():m.test(e)?(r.cache[e]=r.createElem(e)).cloneNode():r.createElem(e),!a.canHaveChildren||p.test(e)||a.tagUrn?a:r.frag.appendChild(a)}function s(e,n){if(e||(e=t),u)return e.createDocumentFragment();n=n||o(e);for(var a=n.frag.cloneNode(),i=0,s=r(),l=s.length;l>i;i++)a.createElement(s[i]);return a}function l(e,t){t.cache||(t.cache={},t.createElem=e.createElement,t.createFrag=e.createDocumentFragment,t.frag=t.createFrag()),e.createElement=function(n){return y.shivMethods?i(n,e,t):t.createElem(n)},e.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+r().join().replace(/[\w\-:]+/g,function(e){return t.createElem(e),t.frag.createElement(e),'c("'+e+'")'})+");return n}")(y,t.frag)}function d(e){e||(e=t);var r=o(e);return!y.shivCSS||c||r.hasCSS||(r.hasCSS=!!n(e,"article,aside,dialog,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}")),u||l(e,r),e}var c,u,A="3.7.3",f=e.html5||{},p=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,m=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,h="_html5shiv",g=0,v={};!function(){try{var e=t.createElement("a");e.innerHTML="<xyz></xyz>",c="hidden"in e,u=1==e.childNodes.length||function(){t.createElement("a");var e=t.createDocumentFragment();return"undefined"==typeof e.cloneNode||"undefined"==typeof e.createDocumentFragment||"undefined"==typeof e.createElement}()}catch(n){c=!0,u=!0}}();var y={elements:f.elements||"abbr article aside audio bdi canvas data datalist details dialog figcaption figure footer header hgroup main mark meter nav output picture progress section summary template time video",version:A,shivCSS:f.shivCSS!==!1,supportsUnknownElements:u,shivMethods:f.shivMethods!==!1,type:"default",shivDocument:d,createElement:i,createDocumentFragment:s,addElements:a};e.html5=y,d(t),"object"==typeof module&&module.exports&&(module.exports=y)}("undefined"!=typeof e?e:this,t),x.addTest("canvas",function(){var e=i("canvas");return!(!e.getContext||!e.getContext("2d"))}),x.addTest("ie8compat",!e.addEventListener&&!!t.documentMode&&7===t.documentMode),x.addTest("svg",!!t.createElementNS&&!!t.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect);var S=b.testStyles=l;x.addTest("unicode",function(){var e,t=i("span"),n=i("span");return S("#modernizr{font-family:Arial,sans;font-size:300em;}",function(r){t.innerHTML=E?"妇":"&#5987",n.innerHTML=E?"☆":"&#9734",r.appendChild(t),r.appendChild(n),e="offsetWidth"in t&&t.offsetWidth!==n.offsetWidth}),e}),x.addTest("video",function(){var e=i("video"),t=!1;try{(t=!!e.canPlayType)&&(t=new Boolean(t),t.ogg=e.canPlayType('video/ogg; codecs="theora"').replace(/^no$/,""),t.h264=e.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/,""),t.webm=e.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/,""),t.vp9=e.canPlayType('video/webm; codecs="vp9"').replace(/^no$/,""),t.hls=e.canPlayType('application/x-mpegURL; codecs="avc1.42E01E"').replace(/^no$/,""))}catch(n){}return t});var B="Moz O ms Webkit",k=b._config.usePrefixes?B.split(" "):[];b._cssomPrefixes=k;var R={elem:i("modernizr")};x._q.push(function(){delete R.elem});var _={style:R.elem.style};x._q.unshift(function(){delete _.style});var z=b._config.usePrefixes?B.toLowerCase().split(" "):[];b._domPrefixes=z,b.testAllProps=h,b.testAllProps=g,x.addTest("cssanimations",g("animationName","a",!0)),x.addTest("appearance",g("appearance"));var Q=function(t){var r,a=D.length,o=e.CSSRule;if("undefined"==typeof o)return n;if(!t)return!1;if(t=t.replace(/^@/,""),r=t.replace(/-/g,"_").toUpperCase()+"_RULE",r in o)return"@"+t;for(var i=0;a>i;i++){var s=D[i],l=s.toUpperCase()+"_"+r;if(l in o)return"@-"+s.toLowerCase()+"-"+t}return!1};b.atRule=Q;var U=b.prefixed=function(e,t,n){return 0===e.indexOf("@")?Q(e):(-1!=e.indexOf("-")&&(e=A(e)),t?h(e,t,n):h(e,"pfx"))};x.addTest("backgroundblendmode",U("backgroundBlendMode","text")),x.addTest("bgsizecover",g("backgroundSize","cover")),x.addTest("boxsizing",g("boxSizing","border-box",!0)&&(t.documentMode===n||t.documentMode>7));var D=b._config.usePrefixes?" -webkit- -moz- -o- -ms- ".split(" "):[];b._prefixes=D,x.addTest("csscalc",function(){var e="width:",t="calc(10px);",n=i("a");return n.style.cssText=e+D.join(t+e),!!n.style.length}),x.addTest("checked",function(){return S("#modernizr {position:absolute} #modernizr input {margin-left:10px} #modernizr :checked {margin-left:20px;display:block}",function(e){var t=i("input");return t.setAttribute("type","checkbox"),t.setAttribute("checked","checked"),e.appendChild(t),20===t.offsetLeft})}),function(){x.addTest("csscolumns",function(){var e=!1,t=g("columnCount");try{(e=!!t)&&(e=new Boolean(e))}catch(n){}return e});for(var e,t,n=["Width","Span","Fill","Gap","Rule","RuleColor","RuleStyle","RuleWidth","BreakBefore","BreakAfter","BreakInside"],r=0;r<n.length;r++)e=n[r].toLowerCase(),t=g("column"+n[r]),("breakbefore"===e||"breakafter"===e||"breakinside"==e)&&(t=t||g(n[r])),x.addTest("csscolumns."+e,t)}(),x.addTest("flexbox",g("flexBasis","1px",!0)),x.addTest("flexboxlegacy",g("boxDirection","reverse",!0)),x.addTest("flexboxtweener",g("flexAlign","end",!0)),x.addTest("cssgradients",function(){for(var e,t="background-image:",n="gradient(linear,left top,right bottom,from(#9f9),to(white));",r="",a=0,o=D.length-1;o>a;a++)e=0===a?"to ":"",r+=t+D[a]+"linear-gradient("+e+"left top, #9f9, white);";x._config.usePrefixes&&(r+=t+"-webkit-"+n);var s=i("a"),l=s.style;return l.cssText=r,(""+l.backgroundImage).indexOf("gradient")>-1}),x.addTest("multiplebgs",function(){var e=i("a").style;return e.cssText="background:url(https://),url(https://),red url(https://)",/(url\s*\(.*?){3}/.test(e.background)}),x.addTest("shapes",g("shapeOutside","content-box",!0)),x.addTest("csstransforms",function(){return-1===navigator.userAgent.indexOf("Android 2.")&&g("transform","scale(1)",!0)}),S("#modernizr { height: 50vh; }",function(t){var n=parseInt(e.innerHeight/2,10),r=parseInt((e.getComputedStyle?getComputedStyle(t,null):t.currentStyle).height,10);x.addTest("cssvhunit",r==n)}),S("#modernizr1{width: 50vmax}#modernizr2{width:50px;height:50px;overflow:scroll}#modernizr3{position:fixed;top:0;left:0;bottom:0;right:0}",function(t){var n=t.childNodes[2],r=t.childNodes[1],a=t.childNodes[0],o=parseInt((r.offsetWidth-r.clientWidth)/2,10),i=a.clientWidth/100,s=a.clientHeight/100,l=parseInt(50*Math.max(i,s),10),d=parseInt((e.getComputedStyle?getComputedStyle(n,null):n.currentStyle).width,10);x.addTest("cssvmaxunit",v(l,d)||v(l,d-o))},3),S("#modernizr1{width: 50vm;width:50vmin}#modernizr2{width:50px;height:50px;overflow:scroll}#modernizr3{position:fixed;top:0;left:0;bottom:0;right:0}",function(t){var n=t.childNodes[2],r=t.childNodes[1],a=t.childNodes[0],o=parseInt((r.offsetWidth-r.clientWidth)/2,10),i=a.clientWidth/100,s=a.clientHeight/100,l=parseInt(50*Math.min(i,s),10),d=parseInt((e.getComputedStyle?getComputedStyle(n,null):n.currentStyle).width,10);x.addTest("cssvminunit",v(l,d)||v(l,d-o))},3),S("#modernizr { width: 50vw; }",function(t){var n=parseInt(e.innerWidth/2,10),r=parseInt((e.getComputedStyle?getComputedStyle(t,null):t.currentStyle).width,10);x.addTest("cssvwunit",r==n)});var P;!function(){var e={}.hasOwnProperty;P=r(e,"undefined")||r(e.call,"undefined")?function(e,t){return t in e&&r(e.constructor.prototype[t],"undefined")}:function(t,n){return e.call(t,n)}}(),b._l={},b.on=function(e,t){this._l[e]||(this._l[e]=[]),this._l[e].push(t),x.hasOwnProperty(e)&&setTimeout(function(){x._trigger(e,x[e])},0)},b._trigger=function(e,t){if(this._l[e]){var n=this._l[e];setTimeout(function(){var e,r;for(e=0;e<n.length;e++)(r=n[e])(t)},0),delete this._l[e]}},x._q.push(function(){b.addTest=y}),x.addAsyncTest(function(){var e,t,n,r=i("img"),a="sizes"in r;!a&&"srcset"in r?(t="data:image/gif;base64,R0lGODlhAgABAPAAAP///wAAACH5BAAAAAAALAAAAAACAAEAAAICBAoAOw==",e="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",n=function(){y("sizes",2==r.width)},r.onload=n,r.onerror=n,r.setAttribute("sizes","9px"),r.srcset=e+" 1w,"+t+" 8w",r.src=e):y("sizes",a)}),x.addTest("srcset","srcset"in i("img")),x.addAsyncTest(function(){var e=new Image;e.onerror=function(){y("webpalpha",!1,{aliases:["webp-alpha"]})},e.onload=function(){y("webpalpha",1==e.width,{aliases:["webp-alpha"]})},e.src="data:image/webp;base64,UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAABBxAR/Q9ERP8DAABWUDggGAAAADABAJ0BKgEAAQADADQlpAADcAD++/1QAA=="}),x.addAsyncTest(function(){var e=new Image;e.onerror=function(){y("webplossless",!1,{aliases:["webp-lossless"]})},e.onload=function(){y("webplossless",1==e.width,{aliases:["webp-lossless"]})},e.src="data:image/webp;base64,UklGRh4AAABXRUJQVlA4TBEAAAAvAAAAAAfQ//73v/+BiOh/AAA="}),x.addAsyncTest(function(){function e(e,t,n){function r(t){var r=t&&"load"===t.type?1==a.width:!1,o="webp"===e;y(e,o?new Boolean(r):r),n&&n(t)}var a=new Image;a.onerror=r,a.onload=r,a.src=t}var t=[{uri:"data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA=",name:"webp"},{uri:"data:image/webp;base64,UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAABBxAR/Q9ERP8DAABWUDggGAAAADABAJ0BKgEAAQADADQlpAADcAD++/1QAA==",name:"webp.alpha"},{uri:"data:image/webp;base64,UklGRlIAAABXRUJQVlA4WAoAAAASAAAAAAAAAAAAQU5JTQYAAAD/////AABBTk1GJgAAAAAAAAAAAAAAAAAAAGQAAABWUDhMDQAAAC8AAAAQBxAREYiI/gcA",name:"webp.animation"},{uri:"data:image/webp;base64,UklGRh4AAABXRUJQVlA4TBEAAAAvAAAAAAfQ//73v/+BiOh/AAA=",name:"webp.lossless"}],n=t.shift();e(n.name,n.uri,function(n){if(n&&"load"===n.type)for(var r=0;r<t.length;r++)e(t[r].name,t[r].uri)})}),x.addTest("scriptasync","async"in i("script")),x.addTest("scriptdefer","defer"in i("script")),x.addTest("svgasimg",t.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1")),x.addTest("svgfilters",function(){var t=!1;try{t="SVGFEColorMatrixElement"in e&&2==SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_SATURATE}catch(n){}return t}),x.addTest("inlinesvg",function(){var e=i("div");return e.innerHTML="<svg/>","http://www.w3.org/2000/svg"==("undefined"!=typeof SVGRect&&e.firstChild&&e.firstChild.namespaceURI)}),x.addTest("atobbtoa","atob"in e&&"btoa"in e,{aliases:["atob-btoa"]}),a(),o(T),delete b.addTest,delete b.addAsyncTest;for(var I=0;I<x._q.length;I++)x._q[I]();e.Modernizr=x}(window,document);