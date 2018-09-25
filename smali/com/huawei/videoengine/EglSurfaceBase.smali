.class public Lcom/huawei/videoengine/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "hme_engine_java_EglSurfaceBase"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/huawei/videoengine/EglCore;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 24
    iput v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 25
    iput v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    .line 28
    iput-object p1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 29
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/videoengine/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 60
    iput p1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 61
    iput p2, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    .line 62
    return-void

    .line 56
    :cond_0
    const-string/jumbo v0, "hme_engine_java_EglSurfaceBase"

    const-string/jumbo v1, "surface already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, p1}, Lcom/huawei/videoengine/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 48
    return-void

    .line 39
    :cond_0
    const-string/jumbo v0, "hme_engine_java_EglSurfaceBase"

    const-string/jumbo v1, "surface already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    if-ltz v0, :cond_0

    .line 86
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    if-ltz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 104
    return-void
.end method

.method public makeCurrentReadFrom(Lcom/huawei/videoengine/EglSurfaceBase;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p1, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 112
    return-void
.end method

.method public releaseEglSurface()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 94
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 96
    iput v2, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    iput v2, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 97
    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v4, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v4}, Lcom/huawei/videoengine/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "-l_2_R":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglSurfaceBase;->getWidth()I

    move-result v2

    .line 163
    .local v2, "-l_3_I":I
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglSurfaceBase;->getHeight()I

    move-result v3

    .line 164
    .local v3, "-l_4_I":I
    mul-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 165
    .local v6, "-l_5_R":Ljava/lang/Object;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 166
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 168
    const-string/jumbo v0, "glReadPixels"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    const/4 v8, 0x0

    .line 173
    .local v8, "-l_6_R":Ljava/lang/Object;
    :try_start_0
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v8    # "-l_6_R":Ljava/lang/Object;
    .local v9, "-l_6_R":Ljava/lang/Object;
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 175
    .local v10, "-l_7_R":Ljava/lang/Object;
    invoke-virtual {v10, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 176
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x5a

    :try_start_2
    invoke-virtual {v10, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    if-nez v9, :cond_1

    .line 181
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " frame as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_EglSurfaceBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 144
    .end local v2    # "-l_3_I":I
    .end local v3    # "-l_4_I":I
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v7    # "-l_2_R":Ljava/lang/Object;
    .end local v9    # "-l_6_R":Ljava/lang/Object;
    .end local v10    # "-l_7_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "hme_engine_java_EglSurfaceBase"

    const-string/jumbo v1, "Expected EGL context/surface is not current"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 179
    .restart local v2    # "-l_3_I":I
    .restart local v3    # "-l_4_I":I
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    .restart local v7    # "-l_2_R":Ljava/lang/Object;
    .restart local v9    # "-l_6_R":Ljava/lang/Object;
    .restart local v10    # "-l_7_R":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    .end local v9    # "-l_6_R":Ljava/lang/Object;
    .end local v10    # "-l_7_R":Ljava/lang/Object;
    .restart local v8    # "-l_6_R":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    .end local v8    # "-l_6_R":Ljava/lang/Object;
    .local v11, "-l_8_R":Ljava/lang/Object;
    :goto_1
    if-nez v8, :cond_2

    :goto_2
    throw v11

    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    .end local v11    # "-l_8_R":Ljava/lang/Object;
    .restart local v9    # "-l_6_R":Ljava/lang/Object;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "-l_6_R":Ljava/lang/Object;
    .restart local v8    # "-l_6_R":Ljava/lang/Object;
    goto :goto_1

    .end local v8    # "-l_6_R":Ljava/lang/Object;
    .restart local v9    # "-l_6_R":Ljava/lang/Object;
    .restart local v10    # "-l_7_R":Ljava/lang/Object;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "-l_6_R":Ljava/lang/Object;
    .restart local v8    # "-l_6_R":Ljava/lang/Object;
    goto :goto_1
.end method

.method public setPresentationTime(J)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/videoengine/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 134
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v2, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Lcom/huawei/videoengine/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 121
    .local v0, "-l_1_I":I
    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    const-string/jumbo v1, "hme_engine_java_EglSurfaceBase"

    const-string/jumbo v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
