/*!
 * @project        SEOmatic
 * @name           vendors~seomatic-meta.js
 * @author         Andrew Welch
 * @build          Thu, Jun 13, 2019 6:16 PM ET
 * @release        23b7de5f3c9b585eb06b41f0421807d3836f74e4 [develop]
 * @copyright      Copyright (c) 2019 nystudio107
 *
 */
(window.webpackJsonp=window.webpackJsonp||[]).push([[9],{1:function(t,e){var i;i=function(){return this}();try{i=i||new Function("return this")()}catch(t){"object"==typeof window&&(i=window)}t.exports=i},22:function(t,e,i){(function(e){var i;
/*!
 * bootstrap-tokenfield
 * https://github.com/sliptree/bootstrap-tokenfield
 * Copyright 2013-2014 Sliptree and other contributors; Licensed MIT
 */
/*!
 * bootstrap-tokenfield
 * https://github.com/sliptree/bootstrap-tokenfield
 * Copyright 2013-2014 Sliptree and other contributors; Licensed MIT
 */
i=function(t,e){"use strict";var i=function(i,n){var s=this;this.$element=t(i),this.textDirection=this.$element.css("direction"),this.options=t.extend(!0,{},t.fn.tokenfield.defaults,{tokens:this.$element.val()},this.$element.data(),n),this._delimiters="string"==typeof this.options.delimiter?[this.options.delimiter]:this.options.delimiter,this._triggerKeys=t.map(this._delimiters,function(t){return t.charCodeAt(0)}),this._firstDelimiter=this._delimiters[0];var r=t.inArray(" ",this._delimiters),a=t.inArray("-",this._delimiters);r>=0&&(this._delimiters[r]="\\s"),a>=0&&(delete this._delimiters[a],this._delimiters.unshift("-"));var o=["\\","$","[","{","^",".","|","?","*","+","(",")"];t.each(this._delimiters,function(e,i){t.inArray(i,o)>=0&&(s._delimiters[e]="\\"+i)});var h,p=e&&"function"==typeof e.getMatchedCSSRules?e.getMatchedCSSRules(i):null,l=i.style.width,u=this.$element.width();p&&t.each(p,function(t,e){e.style.width&&(h=e.style.width)});var d="rtl"===t("body").css("direction")?"right":"left",c={position:this.$element.css("position")};c[d]=this.$element.css(d),this.$element.data("original-styles",c).data("original-tabindex",this.$element.prop("tabindex")).css("position","absolute").css(d,"-10000px").prop("tabindex",-1),this.$wrapper=t('<div class="tokenfield form-control" />'),this.$element.hasClass("input-lg")&&this.$wrapper.addClass("input-lg"),this.$element.hasClass("input-sm")&&this.$wrapper.addClass("input-sm"),"rtl"===this.textDirection&&this.$wrapper.addClass("rtl");var f=this.$element.prop("id")||(new Date).getTime()+""+Math.floor(100*(1+Math.random()));this.$input=t('<input type="text" class="token-input" autocomplete="off" />').appendTo(this.$wrapper).prop("placeholder",this.$element.prop("placeholder")).prop("id",f+"-tokenfield").prop("tabindex",this.$element.data("original-tabindex"));var v=t('label[for="'+this.$element.prop("id")+'"]');if(v.length&&v.prop("for",this.$input.prop("id")),this.$copyHelper=t('<input type="text" />').css("position","absolute").css(d,"-10000px").prop("tabindex",-1).prependTo(this.$wrapper),l?this.$wrapper.css("width",l):h?this.$wrapper.css("width",h):this.$element.parents(".form-inline").length&&this.$wrapper.width(u),(this.$element.prop("disabled")||this.$element.parents("fieldset[disabled]").length)&&this.disable(),this.$element.prop("readonly")&&this.readonly(),this.$mirror=t('<span style="position:absolute; top:-999px; left:0; white-space:pre;"/>'),this.$input.css("min-width",this.options.minWidth+"px"),t.each(["fontFamily","fontSize","fontWeight","fontStyle","letterSpacing","textTransform","wordSpacing","textIndent"],function(t,e){s.$mirror[0].style[e]=s.$input.css(e)}),this.$mirror.appendTo("body"),this.$wrapper.insertBefore(this.$element),this.$element.prependTo(this.$wrapper),this.update(),this.setTokens(this.options.tokens,!1,!1),this.listen(),!t.isEmptyObject(this.options.autocomplete)){var $="rtl"===this.textDirection?"right":"left",m=t.extend({minLength:this.options.showAutocompleteOnFocus?0:null,position:{my:$+" top",at:$+" bottom",of:this.$wrapper}},this.options.autocomplete);this.$input.autocomplete(m)}if(!t.isEmptyObject(this.options.typeahead)){var k=this.options.typeahead,g={minLength:this.options.showAutocompleteOnFocus?0:null},y=t.isArray(k)?k:[k,k];y[0]=t.extend({},g,y[0]),this.$input.typeahead.apply(this.$input,y),this.typeahead=!0}this.$element.trigger("tokenfield:initialize")};i.prototype={constructor:i,createToken:function(e,i){var n=this;if("string"==typeof e&&(e={value:e,label:e}),void 0===i&&(i=!0),e.value=t.trim(e.value),e.label=e.label&&e.label.length?t.trim(e.label):e.value,e.value.length&&e.label.length&&!(e.label.length<=this.options.minLength)&&!(this.options.limit&&this.getTokens().length>=this.options.limit)){var s=t.Event("tokenfield:createtoken",{attrs:e});if(this.$element.trigger(s),s.attrs&&!s.isDefaultPrevented()){var r=t('<div class="token" />').attr("data-value",e.value).append('<span class="token-label" />').append('<a href="#" class="close" tabindex="-1">&times;</a>');this.$input.hasClass("tt-input")?this.$input.parent().before(r):this.$input.before(r),this.$input.css("width",this.options.minWidth+"px");var a=r.find(".token-label"),o=r.find(".close");return this.maxTokenWidth||(this.maxTokenWidth=this.$wrapper.width()-o.outerWidth()-parseInt(o.css("margin-left"),10)-parseInt(o.css("margin-right"),10)-parseInt(r.css("border-left-width"),10)-parseInt(r.css("border-right-width"),10)-parseInt(r.css("padding-left"),10)-parseInt(r.css("padding-right"),10),parseInt(a.css("border-left-width"),10),parseInt(a.css("border-right-width"),10),parseInt(a.css("padding-left"),10),parseInt(a.css("padding-right"),10),parseInt(a.css("margin-left"),10),parseInt(a.css("margin-right"),10)),a.text(e.label).css("max-width",this.maxTokenWidth),r.on("mousedown",function(t){if(n._disabled||n._readonly)return!1;n.preventDeactivation=!0}).on("click",function(t){return!n._disabled&&!n._readonly&&(n.preventDeactivation=!1,t.ctrlKey||t.metaKey?(t.preventDefault(),n.toggle(r)):void n.activate(r,t.shiftKey,t.shiftKey))}).on("dblclick",function(t){if(n._disabled||n._readonly||!n.options.allowEditing)return!1;n.edit(r)}),o.on("click",t.proxy(this.remove,this)),this.$element.trigger(t.Event("tokenfield:createdtoken",{attrs:e,relatedTarget:r.get(0)})),i&&this.$element.val(this.getTokensList()).trigger(t.Event("change",{initiator:"tokenfield"})),this.update(),this.$element.get(0)}}},setTokens:function(e,i,n){if(e){i||this.$wrapper.find(".token").remove(),void 0===n&&(n=!0),"string"==typeof e&&(e=this._delimiters.length?e.split(new RegExp("["+this._delimiters.join("")+"]")):[e]);var s=this;return t.each(e,function(t,e){s.createToken(e,n)}),this.$element.get(0)}},getTokenData:function(e){var i=e.map(function(){var e=t(this);return{value:e.attr("data-value"),label:e.find(".token-label").text()}}).get();return 1==i.length&&(i=i[0]),i},getTokens:function(e){var i=this,n=[],s=e?".active":"";return this.$wrapper.find(".token"+s).each(function(){n.push(i.getTokenData(t(this)))}),n},getTokensList:function(e,i,n){var s=(e=e||this._firstDelimiter)+((i=null!=i?i:this.options.beautify)&&" "!==e?" ":"");return t.map(this.getTokens(n),function(t){return t.value}).join(s)},getInput:function(){return this.$input.val()},listen:function(){var i=this;this.$element.on("change",t.proxy(this.change,this)),this.$wrapper.on("mousedown",t.proxy(this.focusInput,this)),this.$input.on("focus",t.proxy(this.focus,this)).on("blur",t.proxy(this.blur,this)).on("paste",t.proxy(this.paste,this)).on("keydown",t.proxy(this.keydown,this)).on("keypress",t.proxy(this.keypress,this)).on("keyup",t.proxy(this.keyup,this)),this.$copyHelper.on("focus",t.proxy(this.focus,this)).on("blur",t.proxy(this.blur,this)).on("keydown",t.proxy(this.keydown,this)).on("keyup",t.proxy(this.keyup,this)),this.$input.on("keypress",t.proxy(this.update,this)).on("keyup",t.proxy(this.update,this)),this.$input.on("autocompletecreate",function(){var e=t(this).data("ui-autocomplete").menu.element,n=i.$wrapper.outerWidth()-parseInt(e.css("border-left-width"),10)-parseInt(e.css("border-right-width"),10);e.css("min-width",n+"px")}).on("autocompleteselect",function(t,e){return i.createToken(e.item)&&(i.$input.val(""),i.$input.data("edit")&&i.unedit(!0)),!1}).on("typeahead:selected typeahead:autocompleted",function(t,e,n){i.createToken(e)&&(i.$input.typeahead("val",""),i.$input.data("edit")&&i.unedit(!0))}),t(e).on("resize",t.proxy(this.update,this))},keydown:function(e){if(this.focused){var i=this;switch(e.keyCode){case 8:if(!this.$input.is(document.activeElement))break;this.lastInputValue=this.$input.val();break;case 37:n("rtl"===this.textDirection?"next":"prev");break;case 38:s("prev");break;case 39:n("rtl"===this.textDirection?"prev":"next");break;case 40:s("next");break;case 65:if(this.$input.val().length>0||!e.ctrlKey&&!e.metaKey)break;this.activateAll(),e.preventDefault();break;case 9:case 13:if(this.$input.data("ui-autocomplete")&&this.$input.data("ui-autocomplete").menu.element.find("li:has(a.ui-state-focus)").length)break;if(this.$input.hasClass("tt-input")&&this.$wrapper.find(".tt-cursor").length)break;if(this.$input.hasClass("tt-input")&&this.$wrapper.find(".tt-hint").val().length)break;if(this.$input.is(document.activeElement)&&this.$input.val().length||this.$input.data("edit"))return this.createTokensFromInput(e,this.$input.data("edit"));if(13===e.keyCode){if(!this.$copyHelper.is(document.activeElement)||1!==this.$wrapper.find(".token.active").length)break;if(!i.options.allowEditing)break;this.edit(this.$wrapper.find(".token.active"))}}this.lastKeyDown=e.keyCode}function n(t){if(i.$input.is(document.activeElement)){if(i.$input.val().length>0)return;t+="All";var n=i.$input.hasClass("tt-input")?i.$input.parent()[t](".token:first"):i.$input[t](".token:first");if(!n.length)return;i.preventInputFocus=!0,i.preventDeactivation=!0,i.activate(n),e.preventDefault()}else i[t](e.shiftKey),e.preventDefault()}function s(n){if(e.shiftKey){if(i.$input.is(document.activeElement)){if(i.$input.val().length>0)return;var s=i.$input.hasClass("tt-input")?i.$input.parent()[n+"All"](".token:first"):i.$input[n+"All"](".token:first");if(!s.length)return;i.activate(s)}var r="prev"===n?"next":"prev",a="prev"===n?"first":"last";i.firstActiveToken[r+"All"](".token").each(function(){i.deactivate(t(this))}),i.activate(i.$wrapper.find(".token:"+a),!0,!0),e.preventDefault()}}},keypress:function(e){if(this.lastKeyPressCode=e.keyCode,this.lastKeyPressCharCode=e.charCode,-1!==t.inArray(e.charCode,this._triggerKeys)&&this.$input.is(document.activeElement))return this.$input.val()&&this.createTokensFromInput(e),!1},keyup:function(t){if(this.preventInputFocus=!1,this.focused){switch(t.keyCode){case 8:if(this.$input.is(document.activeElement)){if(this.$input.val().length||this.lastInputValue.length&&8===this.lastKeyDown)break;this.preventDeactivation=!0;var e=this.$input.hasClass("tt-input")?this.$input.parent().prevAll(".token:first"):this.$input.prevAll(".token:first");if(!e.length)break;this.activate(e)}else this.remove(t);break;case 46:this.remove(t,"next")}this.lastKeyUp=t.keyCode}},focus:function(t){this.focused=!0,this.$wrapper.addClass("focus"),this.$input.is(document.activeElement)&&(this.$wrapper.find(".active").removeClass("active"),this.$firstActiveToken=null,this.options.showAutocompleteOnFocus&&this.search())},blur:function(t){this.focused=!1,this.$wrapper.removeClass("focus"),this.preventDeactivation||this.$element.is(document.activeElement)||(this.$wrapper.find(".active").removeClass("active"),this.$firstActiveToken=null),!this.preventCreateTokens&&(this.$input.data("edit")&&!this.$input.is(document.activeElement)||this.options.createTokensOnBlur)&&this.createTokensFromInput(t),this.preventDeactivation=!1,this.preventCreateTokens=!1},paste:function(t){var e=this;setTimeout(function(){e.createTokensFromInput(t)},1)},change:function(t){"tokenfield"!==t.initiator&&this.setTokens(this.$element.val())},createTokensFromInput:function(t,e){if(!(this.$input.val().length<this.options.minLength)){var i=this.getTokensList();return this.setTokens(this.$input.val(),!0),i==this.getTokensList()&&this.$input.val().length?!1:(this.$input.hasClass("tt-input")?this.$input.typeahead("val",""):this.$input.val(""),this.$input.data("edit")&&this.unedit(e),!1)}},next:function(t){if(t){var e=this.$wrapper.find(".active:first");if(!(!e||!this.$firstActiveToken)&&e.index()<this.$firstActiveToken.index())return this.deactivate(e)}var i=this.$wrapper.find(".active:last").nextAll(".token:first");i.length?this.activate(i,t):this.$input.focus()},prev:function(t){if(t){var e=this.$wrapper.find(".active:last");if(!(!e||!this.$firstActiveToken)&&e.index()>this.$firstActiveToken.index())return this.deactivate(e)}var i=this.$wrapper.find(".active:first").prevAll(".token:first");i.length||(i=this.$wrapper.find(".token:first")),i.length||t?this.activate(i,t):this.$input.focus()},activate:function(e,i,n,s){if(e){if(void 0===s)s=!0;if(n)i=!0;if(this.$copyHelper.focus(),i||(this.$wrapper.find(".active").removeClass("active"),s?this.$firstActiveToken=e:delete this.$firstActiveToken),n&&this.$firstActiveToken){var r=this.$firstActiveToken.index()-2,a=e.index()-2,o=this;this.$wrapper.find(".token").slice(Math.min(r,a)+1,Math.max(r,a)).each(function(){o.activate(t(this),!0)})}e.addClass("active"),this.$copyHelper.val(this.getTokensList(null,null,!0)).select()}},activateAll:function(){var e=this;this.$wrapper.find(".token").each(function(i){e.activate(t(this),0!==i,!1,!1)})},deactivate:function(t){t&&(t.removeClass("active"),this.$copyHelper.val(this.getTokensList(null,null,!0)).select())},toggle:function(t){t&&(t.toggleClass("active"),this.$copyHelper.val(this.getTokensList(null,null,!0)).select())},edit:function(e){if(e){var i={value:e.data("value"),label:e.find(".token-label").text()},n={attrs:i,relatedTarget:e.get(0)},s=t.Event("tokenfield:edittoken",n);if(this.$element.trigger(s),!s.isDefaultPrevented()){e.find(".token-label").text(i.value);var r=e.outerWidth(),a=this.$input.hasClass("tt-input")?this.$input.parent():this.$input;e.replaceWith(a),this.preventCreateTokens=!0,this.$input.val(i.value).select().data("edit",!0).width(r),this.update(),this.$element.trigger(t.Event("tokenfield:editedtoken",n))}}},unedit:function(t){if((this.$input.hasClass("tt-input")?this.$input.parent():this.$input).appendTo(this.$wrapper),this.$input.data("edit",!1),this.$mirror.text(""),this.update(),t){var e=this;setTimeout(function(){e.$input.focus()},1)}},remove:function(e,i){if(!(this.$input.is(document.activeElement)||this._disabled||this._readonly)){var n="click"===e.type?t(e.target).closest(".token"):this.$wrapper.find(".token.active");if("click"!==e.type){if(!i)i="prev";if(this[i](),"prev"===i)var s=0===n.first().prevAll(".token:first").length}var r={attrs:this.getTokenData(n),relatedTarget:n.get(0)},a=t.Event("tokenfield:removetoken",r);if(this.$element.trigger(a),!a.isDefaultPrevented()){var o=t.Event("tokenfield:removedtoken",r),h=t.Event("change",{initiator:"tokenfield"});n.remove(),this.$element.val(this.getTokensList()).trigger(o).trigger(h),this.$wrapper.find(".token").length&&"click"!==e.type&&!s||this.$input.focus(),this.$input.css("width",this.options.minWidth+"px"),this.update(),e.preventDefault(),e.stopPropagation()}}},update:function(t){var e=this.$input.val(),i=parseInt(this.$input.css("padding-left"),10)+parseInt(this.$input.css("padding-right"),10);if(this.$input.data("edit")){if(e||(e=this.$input.prop("placeholder")),e===this.$mirror.text())return;this.$mirror.text(e);var n=this.$mirror.width()+10;if(n>this.$wrapper.width())return this.$input.width(this.$wrapper.width());this.$input.width(n)}else{if(this.$input.css("width",this.options.minWidth+"px"),"rtl"===this.textDirection)return this.$input.width(this.$input.offset().left+this.$input.outerWidth()-this.$wrapper.offset().left-parseInt(this.$wrapper.css("padding-left"),10)-i-1);this.$input.width(this.$wrapper.offset().left+this.$wrapper.width()+parseInt(this.$wrapper.css("padding-left"),10)-this.$input.offset().left-i)}},focusInput:function(e){if(!(t(e.target).closest(".token").length||t(e.target).closest(".token-input").length||t(e.target).closest(".tt-dropdown-menu").length)){var i=this;setTimeout(function(){i.$input.focus()},0)}},search:function(){this.$input.data("ui-autocomplete")&&this.$input.autocomplete("search")},disable:function(){this.setProperty("disabled",!0)},enable:function(){this.setProperty("disabled",!1)},readonly:function(){this.setProperty("readonly",!0)},writeable:function(){this.setProperty("readonly",!1)},setProperty:function(t,e){this["_"+t]=e,this.$input.prop(t,e),this.$element.prop(t,e),this.$wrapper[e?"addClass":"removeClass"](t)},destroy:function(){this.$element.val(this.getTokensList()),this.$element.css(this.$element.data("original-styles")),this.$element.prop("tabindex",this.$element.data("original-tabindex"));var e=t('label[for="'+this.$input.prop("id")+'"]');return e.length&&e.prop("for",this.$element.prop("id")),this.$element.insertBefore(this.$wrapper),this.$element.removeData("original-styles").removeData("original-tabindex").removeData("bs.tokenfield"),this.$wrapper.remove(),this.$element}};var n=t.fn.tokenfield;return t.fn.tokenfield=function(e,n){var s,r=[];Array.prototype.push.apply(r,arguments);var a=this.each(function(){var a=t(this),o=a.data("bs.tokenfield"),h="object"==typeof e&&e;"string"==typeof e&&o&&o[e]?(r.shift(),s=o[e].apply(o,r)):o||"string"==typeof e||n||a.data("bs.tokenfield",o=new i(this,h))});return void 0!==s?s:a},t.fn.tokenfield.defaults={minWidth:60,minLength:0,allowEditing:!0,limit:0,autocomplete:{},typeahead:{},showAutocompleteOnFocus:!1,createTokensOnBlur:!1,delimiter:",",beautify:!0},t.fn.tokenfield.Constructor=i,t.fn.tokenfield.noConflict=function(){return t.fn.tokenfield=n,this},i},t.exports=e.window&&e.window.$?i(e.window.$):function(t){if(!t.$&&!t.fn)throw new Error("Tokenfield requires a window object with jQuery or a jQuery instance");return i(t.$||t)}}).call(this,i(1))}}]);
//# sourceMappingURL=vendors~seomatic-meta.js.map