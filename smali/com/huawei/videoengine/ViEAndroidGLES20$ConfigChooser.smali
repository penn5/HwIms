.class Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/ViEAndroidGLES20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 335
    sput v3, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 336
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/16 v1, 0x3024

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3023

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/16 v1, 0x3040

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x3038

    const/16 v2, 0x8

    aput v1, v0, v2

    sput-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    .line 324
    iput p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    .line 325
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    .line 326
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    .line 327
    iput p4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    .line 328
    iput p5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    .line 329
    iput p6, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    .line 330
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    return p5

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 348
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 349
    .local v5, "-l_3_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 351
    aget v4, v5, v4

    .line 353
    .local v4, "-l_4_I":I
    if-lez v4, :cond_0

    .line 360
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 361
    .local v3, "-l_5_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 365
    invoke-virtual {p0, p1, p2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0

    .line 355
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "hme_engine_java_GLES20"

    const-string/jumbo v1, "No configs match configSpec"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object v3
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p3, "-l_4_R"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 370
    move-object/from16 v0, p3

    array-length v11, v0

    .local v11, "-l_5_I":I
    const/4 v12, 0x0

    .local v12, "-l_6_I":I
    :goto_0
    if-lt v12, v11, :cond_0

    .line 394
    const/4 v1, 0x0

    return-object v1

    .line 370
    :cond_0
    aget-object v4, p3, v12

    .line 371
    .local v4, "-l_7_R":Ljava/lang/Object;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 373
    .local v13, "-l_8_I":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 377
    .local v14, "-l_9_I":I
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    if-ge v13, v1, :cond_2

    .line 370
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 377
    :cond_2
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    if-lt v14, v1, :cond_1

    .line 381
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 383
    .local v7, "-l_10_I":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 385
    .local v8, "-l_11_I":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 387
    .local v9, "-l_12_I":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 390
    .local v10, "-l_13_I":I
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    if-ne v7, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    if-ne v8, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    if-ne v9, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    if-ne v10, v1, :cond_1

    .line 392
    return-object v4
.end method
