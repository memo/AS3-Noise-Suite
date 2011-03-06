﻿/***********************************************************************Copyright (c) 2008, Memo Akten, www.memo.tvThis program is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any later version.This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty ofMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with this program.  If not, see <http://www.gnu.org/licenses/>.	***********************************************************************/	package msa.utils {	import flash.ui.Keyboard;	import flash.events.*;	import flash.display.*;	import flash.utils.*;	import flash.text.*;		public class FPSCounter extends TextField {		private var comboString:String;		private var comboIndex:int		= 0;				private var lastTime:int		= 0;		private var nowTime:int			= 0;		private var frameCount:int		= 0;		private var avgCount:int		= 0;		private var fps:Number			= 0;				public function FPSCounter(tf:TextFormat = null, visible = true) {				// constructor			if(tf == null) tf = new TextFormat('_sans', 15, 0x888888);			defaultTextFormat = tf;			autoSize = TextFieldAutoSize.RIGHT;			selectable = false;						this.visible = visible;						addEventListener(Event.ADDED_TO_STAGE, addedToStage);		}						public function enableKeyCombo(comboString:String = 'fps') {			if(stage) stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler, false, 0, true);			else throw new Error('You have to add the FPSCounter to the stage before you can enable keyCombo check');		}				public function disableKeyCombo() {			if(stage) stage.removeEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);		}						private function addedToStage(e:Event) {			trace('FPSCounter::addedToStage');						avgCount = stage.frameRate * 2;		// start off by checking every 2 * stage.frameRate frames (hopefully every 2 seconds)			stage.addEventListener(Event.RESIZE, onResize, false, 0, true);								setDisplay(visible);			update();			onResize();		}						private function keyDownHandler(evt:KeyboardEvent):void {			if(evt.charCode == comboString.charCodeAt(comboIndex)) {				comboIndex++;				if(comboIndex == comboString.length) {					comboIndex = 0;					setDisplay(!visible);		// toggle display				}			} else {				comboIndex = 0;			}		}				private function setDisplay(b:Boolean):void {			trace('FPSCounter::setDisplay', b);			if(visible = b) addEventListener(Event.ENTER_FRAME, update, false, 0, true);			else removeEventListener(Event.ENTER_FRAME, update);		}				private function update(e:Event = null):void {			if(++frameCount == avgCount) {				nowTime = getTimer();				fps = frameCount * 1000 / (nowTime - lastTime);				avgCount = int(fps * 2);				text = fps.toFixed(2);				lastTime = nowTime;				frameCount = 0;			}		}				private function onResize(e:Event = null) {			x = stage.stageWidth - 10;			y = 10;		}			}}