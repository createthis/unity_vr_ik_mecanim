//========= Copyright 2016, HTC Corporation. All rights reserved. ===========

Shader "Custom/StereoRenderShader"
{
	Properties
	{
		_LeftEyeTexture("Left Eye Texture", 2D) = "white" {}
		_RightEyeTexture("Right Eye Texture", 2D) = "white" {}
	}
	
	CGINCLUDE
	#include "UnityCG.cginc"
	#include "UnityInstancing.cginc"
	ENDCG
		
	SubShader
	{
		Tags{ "RenderType" = "Opaque" }
	
		//Cull OFF

		CGPROGRAM
		#pragma surface surf Standard 

		#pragma multi_compile __ STEREO_RENDER
		#pragma target 3.0

		sampler2D _LeftEyeTexture;
		sampler2D _RightEyeTexture;

		struct Input
		{
			float2 uv_MainTex;
			float4 screenPos;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			float2 screenUV = IN.screenPos.xy / IN.screenPos.w;

#if UNITY_SINGLE_PASS_STEREO
			float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex];
			screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy;
#endif
			if (unity_StereoEyeIndex == 0)
			{
				fixed4 color = tex2D(_LeftEyeTexture, screenUV);

				o.Albedo = color.xyz;
				//o.Alpha = color.w;
			}
			else
			{
				fixed4 color = tex2D(_RightEyeTexture, screenUV);

				o.Albedo = color.xyz;
				//o.Alpha = color.w;
			}
		}

		ENDCG
	}

	Fallback "Diffuse"
}