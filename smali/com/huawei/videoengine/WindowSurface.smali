.class public Lcom/huawei/videoengine/WindowSurface;
.super Lcom/huawei/videoengine/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/EglSurfaceBase;-><init>(Lcom/huawei/videoengine/EglCore;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/huawei/videoengine/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/EglSurfaceBase;-><init>(Lcom/huawei/videoengine/EglCore;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/huawei/videoengine/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 23
    iput-object p2, p0, Lcom/huawei/videoengine/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 25
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/videoengine/WindowSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public recreate(Lcom/huawei/videoengine/EglCore;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/videoengine/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/huawei/videoengine/WindowSurface;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 66
    iget-object v0, p0, Lcom/huawei/videoengine/WindowSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 67
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "hme_engine_java_EglSurfaceBase"

    const-string/jumbo v1, "not yet implemented for SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/huawei/videoengine/WindowSurface;->releaseEglSurface()V

    .line 44
    return-void
.end method
