.class public final Lcom/huawei/videoengine/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "hme_engine_java_eglcore"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 38
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 39
    iput-object v9, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 40
    const/4 v4, -0x1

    iput v4, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    .line 59
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v4, v5, :cond_1

    .line 63
    if-eqz p1, :cond_2

    .line 67
    :goto_0
    invoke-static {v7}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 68
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v4, v5, :cond_3

    .line 71
    new-array v0, v6, [I

    .line 72
    .local v0, "-l_3_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v0, v7, v0, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_5

    .line 97
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v4, v5, :cond_6

    .line 116
    :goto_2
    new-array v1, v10, [I

    .line 117
    .local v1, "-l_4_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v6, 0x3098

    invoke-static {v4, v5, v6, v1, v7}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EGLContext created, client version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme_engine_java_eglcore"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 60
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "EGL already set up"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_2
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_0

    .line 69
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "unable to get EGL14 display"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    :cond_4
    iput-object v9, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 74
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "unable to initialize EGL14"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_5
    invoke-direct {p0, p2, v8}, Lcom/huawei/videoengine/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 81
    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 82
    new-array v2, v8, [I

    const/16 v4, 0x3098

    aput v4, v2, v7

    aput v8, v2, v10

    const/16 v4, 0x3038

    aput v4, v2, v6

    .line 86
    .local v2, "-l_5_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v1, p1, v2, v7}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 89
    .local v3, "-l_6_R":Ljava/lang/Object;
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v4

    const/16 v5, 0x3000

    if-ne v4, v5, :cond_0

    .line 91
    iput-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 92
    iput-object v3, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 93
    iput v8, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    goto :goto_1

    .line 99
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    .end local v3    # "-l_6_R":Ljava/lang/Object;
    :cond_6
    invoke-direct {p0, p2, v6}, Lcom/huawei/videoengine/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v1

    .line 100
    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    if-eqz v1, :cond_7

    .line 103
    new-array v2, v8, [I

    const/16 v4, 0x3098

    aput v4, v2, v7

    aput v6, v2, v10

    const/16 v4, 0x3038

    aput v4, v2, v6

    .line 107
    .restart local v2    # "-l_5_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v1, p1, v2, v7}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 109
    .restart local v3    # "-l_6_R":Ljava/lang/Object;
    const-string/jumbo v4, "eglCreateContext"

    invoke-direct {p0, v4}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 110
    iput-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 111
    iput-object v3, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 112
    iput v6, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    goto/16 :goto_2

    .line 101
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    .end local v3    # "-l_6_R":Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Unable to find a suitable EGLConfig"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "-l_2_I":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkEglError error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java_eglcore"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 11

    .prologue
    const/16 v10, 0x3038

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 129
    const/4 v8, 0x4

    .line 130
    .local v8, "-l_3_I":I
    if-ge p2, v9, :cond_0

    .line 137
    :goto_0
    const/16 v0, 0xd

    new-array v1, v0, [I

    const/16 v0, 0x3024

    aput v0, v1, v2

    aput v5, v1, v7

    const/16 v0, 0x3023

    const/4 v4, 0x2

    aput v0, v1, v4

    aput v5, v1, v9

    const/16 v0, 0x3022

    const/4 v4, 0x4

    aput v0, v1, v4

    const/4 v0, 0x5

    aput v5, v1, v0

    const/16 v0, 0x3021

    const/4 v4, 0x6

    aput v0, v1, v4

    const/4 v0, 0x7

    aput v5, v1, v0

    const/16 v0, 0x3040

    aput v0, v1, v5

    const/16 v0, 0x9

    aput v8, v1, v0

    const/16 v0, 0xa

    aput v10, v1, v0

    const/16 v0, 0xb

    aput v2, v1, v0

    const/16 v0, 0xc

    aput v10, v1, v0

    .line 148
    .local v1, "-l_4_R":Ljava/lang/Object;
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 152
    :goto_1
    new-array v3, v7, [Landroid/opengl/EGLConfig;

    .line 153
    .local v3, "-l_5_R":Ljava/lang/Object;
    new-array v6, v7, [I

    .line 154
    .local v6, "-l_6_R":Ljava/lang/Object;
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    aget-object v0, v3, v2

    return-object v0

    .line 131
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    .end local v6    # "-l_6_R":Ljava/lang/Object;
    :cond_0
    const/16 v8, 0x44

    goto :goto_0

    .line 149
    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x3

    const/16 v4, 0x3142

    aput v4, v1, v0

    .line 150
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aput v7, v1, v0

    goto :goto_1

    .line 156
    .restart local v3    # "-l_5_R":Ljava/lang/Object;
    .restart local v6    # "-l_6_R":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to find RGB8888 / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " EGLConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "hme_engine_java_eglcore"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 349
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 350
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 351
    .local v1, "-l_2_R":Ljava/lang/Object;
    const/16 v3, 0x3059

    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 352
    .local v2, "-l_3_R":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current EGL ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java_eglcore"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 239
    const/4 v2, 0x5

    new-array v0, v2, [I

    const/16 v2, 0x3057

    aput v2, v0, v4

    const/4 v2, 0x1

    aput p1, v0, v2

    const/16 v2, 0x3056

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x3

    aput p2, v0, v2

    const/16 v2, 0x3038

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 244
    .local v0, "-l_3_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 246
    .local v1, "-l_4_R":Ljava/lang/Object;
    const-string/jumbo v2, "eglCreatePbufferSurface"

    invoke-direct {p0, v2}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 247
    if-eqz v1, :cond_0

    .line 252
    return-object v1

    .line 249
    :cond_0
    const-string/jumbo v2, "hme_engine_java_eglcore"

    const-string/jumbo v3, "surface was null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v5
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 214
    instance-of v2, p1, Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 221
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/16 v2, 0x3038

    aput v2, v0, v4

    .line 224
    .local v0, "-l_2_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v3, p1, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 226
    .local v1, "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v2, "eglCreateWindowSurface"

    invoke-direct {p0, v2}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 227
    if-eqz v1, :cond_2

    .line 232
    return-object v1

    .line 214
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java_eglcore"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v5

    .line 229
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "hme_engine_java_eglcore"

    const-string/jumbo v3, "surface was null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v5
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 196
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 198
    return-void

    .line 192
    :cond_0
    :try_start_1
    const-string/jumbo v1, "hme_engine_java_eglcore"

    const-string/jumbo v2, "WARNING: EglCore was not explicitly released -- state may be leaked"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglCore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x3059

    .line 315
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :goto_1
    return-void

    .line 261
    :cond_0
    const-string/jumbo v0, "hme_engine_java_eglcore"

    const-string/jumbo v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    const-string/jumbo v0, "hme_engine_java_eglcore"

    const-string/jumbo v1, "eglMakeCurrent failed L259"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :goto_1
    return-void

    .line 275
    :cond_0
    const-string/jumbo v0, "hme_engine_java_eglcore"

    const-string/jumbo v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_1
    const-string/jumbo v0, "hme_engine_java_eglcore"

    const-string/jumbo v1, "eglMakeCurrent failed L273"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public makeNothingCurrent()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string/jumbo v0, "hme_engine_java_eglcore"

    const-string/jumbo v1, "eglMakeCurrent failed L284"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 323
    .local v0, "-l_3_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 324
    aget v1, v0, v2

    return v1
.end method

.method public release()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 179
    :goto_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 180
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 182
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 174
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 175
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 176
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    goto :goto_0
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 206
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 308
    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
