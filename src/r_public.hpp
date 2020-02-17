#pragma once

struct IDirect3DVertexBuffer9;
struct IDirect3DIndexBuffer9;

extern "C"
{

void R_SyncRenderThread();
void R_ClearAllStaticModelCacheRefs();
void R_UnlockVertexBuffer(IDirect3DVertexBuffer9* vertexbuf);
void R_FreeStaticVertexBuffer(IDirect3DVertexBuffer9* vertexbuf);
void R_UnlockIndexBuffer(IDirect3DIndexBuffer9* indexbuf);
void R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9* indexbuf);

};
