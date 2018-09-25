.class public Lcom/huawei/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;,
        Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java_GLES20"

.field private static final manufaturer:Ljava/lang/String;


# instance fields
.field private lnativeObject:J

.field private nativeFreeResFlag:Z

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private openGLCreated:Z

.field private remoteSurface:Landroid/view/Surface;

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 35
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 37
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 38
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 42
    iput-object v5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 43
    iput v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 44
    iput v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 55
    const-string/jumbo v0, "hme_engine_java_GLES20"

    const-string/jumbo v2, "enter ViEAndroidGLES20 creat!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;

    invoke-direct {v0, v5}, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;-><init>(Lcom/huawei/videoengine/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 64
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;

    const/4 v2, 0x6

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    .line 68
    const-string/jumbo v0, "hme_engine_java_GLES20"

    const-string/jumbo v1, "end creatting ViEAndroidGLES20!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 4

    .prologue
    .line 314
    .local v0, "-l_2_I":I
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 317
    return-void

    .line 315
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "%s: EGL error: 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java_GLES20"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native createOpenGLNative(JII)I
.end method

.method private native drawNative(J)V
.end method

.method private native freeGlNative(J)V
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string/jumbo v2, "activity"

    .line 75
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 76
    .local v0, "-l_1_R":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 81
    .local v1, "-l_2_R":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 85
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-ge v2, v3, :cond_2

    .line 89
    return v4

    .line 78
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    return v4

    .line 83
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    return v4

    .line 87
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method

.method public static useOpenGL2(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deRegisterNativeObject()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 254
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getRemoteSurface()V
    .locals 6

    .prologue
    .line 208
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "ViEAndroidGLES20.java! getRemoteSurface!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget-object v1, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string/jumbo v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 213
    :try_start_0
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    if-nez v1, :cond_2

    .line 221
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "ViEAndroidGLES20.java! remoteSurface is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 216
    :cond_2
    :try_start_1
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "ViEAndroidGLES20.java! set remote surface to native channel!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 226
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_3
    :try_start_2
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "ViEAndroidGLES20.java! getRemoteSurface but not registered!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public javaUpdateResFreeFlag()V
    .locals 2

    .prologue
    .line 272
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-nez v1, :cond_1

    .line 98
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    return-void

    .line 95
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v1, :cond_0

    .line 120
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    if-eqz v1, :cond_4

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "second! onDrawFrame before freeGlNative! openGLCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java_GLES20"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 140
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "onDrawFrame after freeGlNative!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 147
    return-void

    .line 100
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 102
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "first! onDrawFrame before freeGlNative!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 104
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "onDrawFrame after freeGlNative!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 112
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 108
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_3
    :try_start_3
    const-string/jumbo v1, "hme_engine_java_GLES20"

    const-string/jumbo v2, "onDrawFrame 0 == lnativeObject!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :cond_4
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    if-eqz v1, :cond_5

    .line 133
    :goto_3
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->drawNative(J)V

    goto :goto_1

    .line 123
    :cond_5
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    move-result v1

    if-nez v1, :cond_6

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    .prologue
    .line 151
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViEAndroidGLES20.java! enter onSurfaceChanged + width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java_GLES20"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeFunctionsRegisted flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java_GLES20"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 157
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 158
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 162
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 163
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->resetRender(JII)V

    .line 165
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 170
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return-void

    .line 166
    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    .local v0, "-l_4_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .prologue
    .line 178
    const-string/jumbo v2, "hme_engine_java_GLES20"

    const-string/jumbo v3, "ViEAndroidGLES20.java! onSurfaceCreated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 182
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 183
    .local v0, "-l_3_R":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    return-void

    .line 183
    :cond_1
    :try_start_1
    sget-object v2, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string/jumbo v3, "HUAWEI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 187
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 188
    const-string/jumbo v2, "hme_engine_java_GLES20"

    const-string/jumbo v3, "ViEAndroidGLES20.java! lnativeObject is registerd!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v2, v3, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 193
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "hme_engine_java_GLES20"

    const-string/jumbo v3, "ViEAndroidGLES20.java! not registered,save remote surface!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onSurfaceDestory(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "hme_engine_java_GLES20"

    const-string/jumbo v1, "ViEAndroidGLES20.java! onSurfaceDestory!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public reDraw()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->requestRender()V

    goto :goto_0
.end method

.method public registerNativeObject(J)V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    :try_start_0
    iput-wide p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resetRender(JII)V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 420
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    .line 421
    return-void
.end method
