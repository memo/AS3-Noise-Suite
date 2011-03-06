﻿/***********************************************************************Copyright (c) 2008, Memo Akten, www.memo.tvThis program is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any later version.This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty ofMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with this program.  If not, see <http://www.gnu.org/licenses/>.	***********************************************************************/	package msa.noise {		import msa.noise.*		internal class NoiseSuper {				// generic hash table, left it public cos could be useful for other applications		static public var hash = [0xA2,0xA0,0x19,0x3B,0xF8,0xEB,0xAA,0xEE,0xF3,0x1C,0x67,0x28,0x1D,0xED,0x0,0xDE,0x95,0x2E,0xDC,0x3F,0x3A,0x82,0x35,0x4D,0x6C,0xBA,0x36,0xD0,0xF6,0xC,0x79,0x32,0xD1,0x59,0xF4,0x8,0x8B,0x63,0x89,0x2F,0xB8,0xB4,0x97,0x83,0xF2,0x8F,0x18,0xC7,0x51,0x14,0x65,0x87,0x48,0x20,0x42,0xA8,0x80,0xB5,0x40,0x13,0xB2,0x22,0x7E,0x57,								0xBC,0x7F,0x6B,0x9D,0x86,0x4C,0xC8,0xDB,0x7C,0xD5,0x25,0x4E,0x5A,0x55,0x74,0x50,0xCD,0xB3,0x7A,0xBB,0xC3,0xCB,0xB6,0xE2,0xE4,0xEC,0xFD,0x98,0xB,0x96,0xD3,0x9E,0x5C,0xA1,0x64,0xF1,0x81,0x61,0xE1,0xC4,0x24,0x72,0x49,0x8C,0x90,0x4B,0x84,0x34,0x38,0xAB,0x78,0xCA,0x1F,0x1,0xD7,0x93,0x11,0xC1,0x58,0xA9,0x31,0xF9,0x44,0x6D,								0xBF,0x33,0x9C,0x5F,0x9,0x94,0xA3,0x85,0x6,0xC6,0x9A,0x1E,0x7B,0x46,0x15,0x30,0x27,0x2B,0x1B,0x71,0x3C,0x5B,0xD6,0x6F,0x62,0xAC,0x4F,0xC2,0xC0,0xE,0xB1,0x23,0xA7,0xDF,0x47,0xB0,0x77,0x69,0x5,0xE9,0xE6,0xE7,0x76,0x73,0xF,0xFE,0x6E,0x9B,0x56,0xEF,0x12,0xA5,0x37,0xFC,0xAE,0xD9,0x3,0x8E,0xDD,0x10,0xB9,0xCE,0xC9,0x8D,								0xDA,0x2A,0xBD,0x68,0x17,0x9F,0xBE,0xD4,0xA,0xCC,0xD2,0xE8,0x43,0x3D,0x70,0xB7,0x2,0x7D,0x99,0xD8,0xD,0x60,0x8A,0x4,0x2C,0x3E,0x92,0xE5,0xAF,0x53,0x7,0xE0,0x29,0xA6,0xC5,0xE3,0xF5,0xF7,0x4A,0x41,0x26,0x6A,0x16,0x5E,0x52,0x2D,0x21,0xAD,0xF0,0x91,0xFF,0xEA,0x54,0xFA,0x66,0x1A,0x45,0x39,0xCF,0x75,0xA4,0x88,0xFB,0x5D,								0xA2,0xA0,0x19,0x3B,0xF8,0xEB,0xAA,0xEE,0xF3,0x1C,0x67,0x28,0x1D,0xED,0x0,0xDE,0x95,0x2E,0xDC,0x3F,0x3A,0x82,0x35,0x4D,0x6C,0xBA,0x36,0xD0,0xF6,0xC,0x79,0x32,0xD1,0x59,0xF4,0x8,0x8B,0x63,0x89,0x2F,0xB8,0xB4,0x97,0x83,0xF2,0x8F,0x18,0xC7,0x51,0x14,0x65,0x87,0x48,0x20,0x42,0xA8,0x80,0xB5,0x40,0x13,0xB2,0x22,0x7E,0x57,								0xBC,0x7F,0x6B,0x9D,0x86,0x4C,0xC8,0xDB,0x7C,0xD5,0x25,0x4E,0x5A,0x55,0x74,0x50,0xCD,0xB3,0x7A,0xBB,0xC3,0xCB,0xB6,0xE2,0xE4,0xEC,0xFD,0x98,0xB,0x96,0xD3,0x9E,0x5C,0xA1,0x64,0xF1,0x81,0x61,0xE1,0xC4,0x24,0x72,0x49,0x8C,0x90,0x4B,0x84,0x34,0x38,0xAB,0x78,0xCA,0x1F,0x1,0xD7,0x93,0x11,0xC1,0x58,0xA9,0x31,0xF9,0x44,0x6D,								0xBF,0x33,0x9C,0x5F,0x9,0x94,0xA3,0x85,0x6,0xC6,0x9A,0x1E,0x7B,0x46,0x15,0x30,0x27,0x2B,0x1B,0x71,0x3C,0x5B,0xD6,0x6F,0x62,0xAC,0x4F,0xC2,0xC0,0xE,0xB1,0x23,0xA7,0xDF,0x47,0xB0,0x77,0x69,0x5,0xE9,0xE6,0xE7,0x76,0x73,0xF,0xFE,0x6E,0x9B,0x56,0xEF,0x12,0xA5,0x37,0xFC,0xAE,0xD9,0x3,0x8E,0xDD,0x10,0xB9,0xCE,0xC9,0x8D,								0xDA,0x2A,0xBD,0x68,0x17,0x9F,0xBE,0xD4,0xA,0xCC,0xD2,0xE8,0x43,0x3D,0x70,0xB7,0x2,0x7D,0x99,0xD8,0xD,0x60,0x8A,0x4,0x2C,0x3E,0x92,0xE5,0xAF,0x53,0x7,0xE0,0x29,0xA6,0xC5,0xE3,0xF5,0xF7,0x4A,0x41,0x26,0x6A,0x16,0x5E,0x52,0x2D,0x21,0xAD,0xF0,0x91,0xFF,0xEA,0x54,0xFA,0x66,0x1A,0x45,0x39,0xCF,0x75,0xA4,0x88,0xFB,0x5D];					// linear interpolation of t from a to b		static public function lerp(t:Number, a:Number, b:Number):Number {			return a + t * (b - a);		}										// clamps a number between 0..1 and smooths the cutoff points		static public function smoothClamp(n:Number):Number {			return Smoothing.smooth5(clamp(n));		}						// clamps a number between 0, 1 		static public function clamp(n:Number):Number {			return n < 0 ? 0 : n > 1 ? 1 : n;		}						static public function smooth5(t:Number):Number {			return t * t * t * (t * (t * 6 - 15) + 10);		}						static public function smooth3(t:Number):Number {			return t * t * (3 - 2 * t);		}				static protected function grad(hash:int, x:Number, y:Number, z:Number):Number {			var h:Number = hash & 15;                  								// CONVERT LO 4 BITS OF HASH CODE			var u:Number = h<8 ? x : y;			var v:Number = h<4 ? y : (h == 12 || h==14) ? x : z;     				// INTO 12 GRADIENT DIRECTIONS.			return ((h&1) == 0 ? u : -u) + ((h&2) == 0 ? v : -v);		}							}}