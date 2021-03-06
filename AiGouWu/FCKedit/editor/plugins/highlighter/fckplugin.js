﻿/*
 * 把HighLighter做为FCKeditor的语法显示插件
 * Author : Garfeild < garfield0601@gmail.com >
 * since  : 2007-10-19
 */

// Register the related commands.
//FCKCommands.RegisterCommand( 'HighLighter', new FCKDialogCommand("HighLighter",FCKLang.DlgHighLighterTitle,FCKConfig.Plugins.Items['highlighter'].Path + 'highlighter.html', 540, 540 ) ) ;
FCKCommands.RegisterCommand( 'HighLighter', new FCKDialogCommand("HighLighter",FCKLang['CodeDlgTitle'],FCKConfig.PluginsPath + 'highlighter/highlighter.html', 540, 500 ) ) ;

// Create the "highlighter" toolbar button.
var oHighLighterItem		= new FCKToolbarButton( 'HighLighter', FCKLang['CodeBtn'] ) ;
oHighLighterItem.IconPath	= FCKConfig.PluginsPath + 'highlighter/highlighter.gif' ;

FCKToolbarItems.RegisterItem( 'HighLighter', oHighLighterItem );// 'HighLighter' is the name used in the Toolbar config.

var FCKHighLighter = new Object();
var CSS_PATH 	  = FCKConfig.PluginsPath + "highlighter/dp.SyntaxHighlighter/Styles/";
var pool = {"firstCss" : true };

FCKHighLighter.Add = function( value ){
	var oDiv  = FCK.CreateElement("div");
 	oDiv._FCKhighLighter = "hlDiv" + Math.random()  ; 
	oDiv.className="dp-highlighter";
	oDiv.innerHTML = value;
	if(pool.firstCss) {
		pool.firstCss = false;
		//oDiv.innerHTML += "<link href='" + CSS_PATH + "SyntaxHighlighter.css'" + "type='text/css' rel='stylesheet'></link>";
	}
	//  alert(oDiv.innerHTML);
}
FCKHighLighter.OnDoubleClick = function( div ){
//	if(div._FCKhighLighter = "hlDiv") FCKCommands.GetCommand( 'HighLighter' ).Execute() ;
	if(div.className == "dp-highlighter" && div.tagName=="DIV") FCKCommands.GetCommand( 'HighLighter' ).Execute() ;
}
FCK.RegisterDoubleClickHandler( FCKHighLighter.OnDoubleClick, 'DIV' ) ;
