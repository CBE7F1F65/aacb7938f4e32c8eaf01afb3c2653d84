/*
** Haaf's Game Engine 1.7
** Copyright (C) 2003-2007, Relish Games
** hge.relishgames.com
**
** hgeSprite helper class implementation
*/


#include "..\..\include\hge\hgesprite.h"

#include "..\..\include\JRenderer.h"


//HGE *hgeSprite::hge=0;


hgeSprite::hgeSprite(JTexture * texture, float texx, float texy, float w, float h)
{
	float texx1, texy1, texx2, texy2;

//	hge=hgeCreate(HGE_VERSION);
	
	if(texture)
	{
//		tex_width = (float)hge->Texture_GetWidth(texture);
//		tex_height = (float)hge->Texture_GetHeight(texture);
		tex_width = (float)texture->mTexWidth;
		tex_height = (float)texture->mTexHeight;
	}
	else
	{
		tex_width = 1.0f;
		tex_height = 1.0f;
	}

	if (w < 0 || h < 0)
	{
		w = tex_width;
		h = tex_height;
	}

	tx=texx; ty=texy;
	width=w; height=h;

	scale3d = 1.0f;

	hotX=w/2; hotY=h/2;
	bXFlip=false; bYFlip=false;
	bHSFlip=false;
	quad.tex=texture;

	texx1=texx/tex_width;
	texy1=texy/tex_height;
	texx2=(texx+w)/tex_width;
	texy2=(texy+h)/tex_height;

	quad.v[0].tx = texx1; quad.v[0].ty = texy1;
	quad.v[1].tx = texx2; quad.v[1].ty = texy1;
	quad.v[2].tx = texx2; quad.v[2].ty = texy2;
	quad.v[3].tx = texx1; quad.v[3].ty = texy2;

	quad.v[0].z = 
	quad.v[1].z = 
	quad.v[2].z = 
	quad.v[3].z = 0.0f;

	quad.v[0].col = 
	quad.v[1].col = 
	quad.v[2].col = 
	quad.v[3].col = 0xffffffff;

	quad.blend=BLEND_DEFAULT;
}

hgeSprite::hgeSprite(const hgeSprite &spr)
{
	memcpy(this, &spr, sizeof(hgeSprite));
//	hge=hgeCreate(HGE_VERSION);
}

void hgeSprite::Render(float x, float y)
{
//	if (hge->System_Is2DMode())
//	{
		RenderEx(x, y, 0);
//		return;
//	}
	/*
	
		float tempx1, tempy1, tempx2, tempy2;
	
		tempx1 = x-hotX;
		tempy1 = y-hotY;
		tempx2 = x+width-hotX;
		tempy2 = y+height-hotY;
	
		quad.v[0].x = tempx1; quad.v[0].y = tempy1;
		quad.v[1].x = tempx2; quad.v[1].y = tempy1;
		quad.v[2].x = tempx2; quad.v[2].y = tempy2;
		quad.v[3].x = tempx1; quad.v[3].y = tempy2;
	
		hge->Gfx_RenderQuad(&quad);
		*/
	
}


void hgeSprite::RenderEx(float x, float y, float rot, float hscale, float vscale)
{
	float tx1, ty1, tx2, ty2;
	float sint, cost;

	if(vscale==0) vscale=hscale;

//	if (hge->System_Is2DMode())
//	{
		hscale *= scale3d;
		vscale *= scale3d;
//	}

	tx1 = -hotX*hscale;
	ty1 = -hotY*vscale;
	tx2 = (width-hotX)*hscale;
	ty2 = (height-hotY)*vscale;

	if (rot != 0.0f)
	{
		cost = cosf(rot);
		sint = sinf(rot);
			
		quad.v[0].x  = tx1*cost - ty1*sint + x;
		quad.v[0].y  = tx1*sint + ty1*cost + y;	

		quad.v[1].x  = tx2*cost - ty1*sint + x;
		quad.v[1].y  = tx2*sint + ty1*cost + y;	

		quad.v[2].x  = tx2*cost - ty2*sint + x;
		quad.v[2].y  = tx2*sint + ty2*cost + y;	

		quad.v[3].x  = tx1*cost - ty2*sint + x;
		quad.v[3].y  = tx1*sint + ty2*cost + y;	
	}
	else
	{
		quad.v[0].x = tx1 + x; quad.v[0].y = ty1 + y;
		quad.v[1].x = tx2 + x; quad.v[1].y = ty1 + y;
		quad.v[2].x = tx2 + x; quad.v[2].y = ty2 + y;
		quad.v[3].x = tx1 + x; quad.v[3].y = ty2 + y;
	}

	JRenderer::GetInstance()->RenderQuad(&quad);
//	hge->Gfx_RenderQuad(&quad);
}


void hgeSprite::RenderStretch(float x1, float y1, float x2, float y2)
{
	quad.v[0].x = x1; quad.v[0].y = y1;
	quad.v[1].x = x2; quad.v[1].y = y1;
	quad.v[2].x = x2; quad.v[2].y = y2;
	quad.v[3].x = x1; quad.v[3].y = y2;

	JRenderer::GetInstance()->RenderQuad(&quad);
//	hge->Gfx_RenderQuad(&quad);
}


void hgeSprite::Render4V(float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3)
{
	quad.v[0].x = x0; quad.v[0].y = y0;
	quad.v[1].x = x1; quad.v[1].y = y1;
	quad.v[2].x = x2; quad.v[2].y = y2;
	quad.v[3].x = x3; quad.v[3].y = y3;

	JRenderer::GetInstance()->RenderQuad(&quad);
	//	hge->Gfx_RenderQuad(&quad);
}


void hgeSprite::SetFlip(bool bX, bool bY, bool bHotSpot)
{
	float tx, ty;

	if(bHSFlip && bXFlip) hotX = width - hotX;
	if(bHSFlip && bYFlip) hotY = height - hotY;

	bHSFlip = bHotSpot;
	
	if(bHSFlip && bXFlip) hotX = width - hotX;
	if(bHSFlip && bYFlip) hotY = height - hotY;

	if(bX != bXFlip)
	{
		tx=quad.v[0].tx; quad.v[0].tx=quad.v[1].tx; quad.v[1].tx=tx;
		ty=quad.v[0].ty; quad.v[0].ty=quad.v[1].ty; quad.v[1].ty=ty;
		tx=quad.v[3].tx; quad.v[3].tx=quad.v[2].tx; quad.v[2].tx=tx;
		ty=quad.v[3].ty; quad.v[3].ty=quad.v[2].ty; quad.v[2].ty=ty;

		bXFlip=!bXFlip;
	}

	if(bY != bYFlip)
	{
		tx=quad.v[0].tx; quad.v[0].tx=quad.v[3].tx; quad.v[3].tx=tx;
		ty=quad.v[0].ty; quad.v[0].ty=quad.v[3].ty; quad.v[3].ty=ty;
		tx=quad.v[1].tx; quad.v[1].tx=quad.v[2].tx; quad.v[2].tx=tx;
		ty=quad.v[1].ty; quad.v[1].ty=quad.v[2].ty; quad.v[2].ty=ty;

		bYFlip=!bYFlip;
	}
}


void hgeSprite::SetTexture(JTexture * tex)
{
	float tx1,ty1,tx2,ty2;
	float tw,th;

	quad.tex=tex;

	if(tex)
	{
//		tw = (float)hge->Texture_GetWidth(tex);
//		th = (float)hge->Texture_GetHeight(tex);
		tw = tex->mTexWidth;
		th = tex->mTexHeight;
	}
	else
	{
		tw = 1.0f;
		th = 1.0f;
	}

	if(tw!=tex_width || th!=tex_height)
	{
		tx1=quad.v[0].tx*tex_width;
		ty1=quad.v[0].ty*tex_height;
		tx2=quad.v[2].tx*tex_width;
		ty2=quad.v[2].ty*tex_height;

		tex_width=tw;
		tex_height=th;

		tx1/=tw; ty1/=th;
		tx2/=tw; ty2/=th;

		quad.v[0].tx=tx1; quad.v[0].ty=ty1; 
		quad.v[1].tx=tx2; quad.v[1].ty=ty1; 
		quad.v[2].tx=tx2; quad.v[2].ty=ty2; 
		quad.v[3].tx=tx1; quad.v[3].ty=ty2; 
	}
}


void hgeSprite::SetTextureRect(float x, float y, float w, float h, bool adjSize)
{
	float tx1, ty1, tx2, ty2;
	bool bX,bY,bHS;

	tx=x;
	ty=y;

	if (w < 0 || h < 0)
	{
		w = tex_width;
		h = tex_height;
	}
	
	if(adjSize)
	{
		width=w;
		height=h;
	}

	tx1=tx/tex_width; ty1=ty/tex_height;
	tx2=(tx+w)/tex_width; ty2=(ty+h)/tex_height;

	quad.v[0].tx=tx1; quad.v[0].ty=ty1; 
	quad.v[1].tx=tx2; quad.v[1].ty=ty1; 
	quad.v[2].tx=tx2; quad.v[2].ty=ty2; 
	quad.v[3].tx=tx1; quad.v[3].ty=ty2; 

	bX=bXFlip; bY=bYFlip; bHS=bHSFlip;
	bXFlip=false; bYFlip=false;
	SetFlip(bX,bY,bHS);
	hotX = w / 2; hotY = h / 2;

/////////////////// consider animation frame somehow! ////////////////
}


void hgeSprite::SetColor(DWORD col, int i)
{
	if(i!=-1) quad.v[i].col=col;
	else { quad.v[0].col=quad.v[1].col=quad.v[2].col=quad.v[3].col=col; }
}

void hgeSprite::SetColor(DWORD col0, DWORD col1, DWORD col2, DWORD col3)
{
	quad.v[0].col = col0;
	quad.v[1].col = col1;
	quad.v[2].col = col2;
	quad.v[3].col = col3;
}

void hgeSprite::SetZ(float z, int i)
{
//	if(i == -1 || hge->System_Is2DMode())
//	{
		SetZ(z, z, z, z);
//	}
//	else
//	{
//		quad.v[i].z = z;
//	}
}

float hgeSprite::Transform3DPoint(float &x, float &y, float &z)
{
	hge3DPoint ptfar;
	ptfar.x = SCREEN_WIDTH / 2;
	ptfar.y = SCREEN_HEIGHT / 2;
	ptfar.z = ptfar.y;
	float scale = (ptfar.z - z) / ptfar.z;
	x = (x - ptfar.x) * scale + ptfar.x;
	y = (y - ptfar.y) * scale + ptfar.y;
	z = 0;
	return scale;
}

void hgeSprite::SetZ(float z0, float z1, float z2, float z3)
{
	quad.v[0].z = z0;
	quad.v[1].z = z1;
	quad.v[2].z = z2;
	quad.v[3].z = z3;

//	if (hge->System_Is2DMode())
//	{
		for (int i=0; i<4; i++)
		{
			//use z0
			float zscale = Transform3DPoint(quad.v[i].x, quad.v[i].y, quad.v[0].z);
			if (i == 0)
			{
				scale3d = zscale;
			}
			quad.v[i].z = 0;
		}
//	}
}