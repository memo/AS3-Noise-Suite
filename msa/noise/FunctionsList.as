﻿/***********************************************************************Copyright (c) 2008, Memo Akten, www.memo.tvThis program is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any later version.This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty ofMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with this program.  If not, see <http://www.gnu.org/licenses/>.	***********************************************************************/	package msa.noise {		public class FunctionsList {						static public const fractalFunctions:Array = [/*			{ data: Noise.fBm3,					label:'Noise.fBm3 - Fractal Brownian Motion (standard Fractal Perlin Noise)'},			{ data: Noise.multiFractal3,		label:'Noise.multiFractal3   - standard Fractal Perlin Noise'},			{ data: Noise.turbulence3,			label:'Noise.turbulence3   - Turbulent Perlin Noise (1 octave => Strings)'},*/			{ data: Perlin.improvedU,			label:'Perlin.improvedU - Unsigned Perlin Noise improved algorithm'},					{ data: Perlin.fractalNoise,		label:'Perlin.fractalNoise - Fractal Brownian Motion (standard Fractal Perlin Noise)'},					{ data: Perlin.turbulence,			label:'Perlin.turbulence   - Turbulent Perlin Noise (1 octave => Strings)'},			{ data: Perlin.turbulenceHard,		label:'Perlin.turbulenceHard   - Turbulent Perlin Noise (1 octave => Strings)'},									{ data: Voronoi.F1,					label:'Voronoi.F1 '},			{ data: Voronoi.F2,					label:'Voronoi.F2 '},					{ data: Voronoi.F3,					label:'Voronoi.F3 '},					{ data: Voronoi.F4,					label:'Voronoi.F4 '},					{ data: Voronoi.F1F2,				label:'Voronoi.F1F2 '},					{ data: Voronoi.cracked,			label:'Voronoi.cracked '},					//{ data: Noise.explosion3,			label:'Noise.explosion3   -)'},			//{ data: Noise.noise3,				label:'Noise.noise3   - single pass Perlin Noise (basis for all below)'},		];						static public const voronoiDistanceFunctions:Array = [			{ data: Voronoi.dist_Real,			label:'Voronoi.dist_Real'},					{ data: Voronoi.dist_Squared,		label:'Voronoi.dist_Squared'},			{ data: Voronoi.dist_Manhattan,		label:'Voronoi.dist_Manhattan'},					{ data: Voronoi.dist_Chebychev,		label:'Voronoi.dist_Chebychev'},					{ data: Voronoi.dist_MinkovskyH,	label:'Voronoi.dist_MinkovskyH'},					{ data: Voronoi.dist_Minkovsky4,	label:'Voronoi.dist_Minkovsky4'},		];			}	}