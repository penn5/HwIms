.class public Lcom/huawei/videoengine/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cameraTextureRotate([FI)V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 196
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    .line 199
    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    .line 202
    const/16 v0, 0x10e

    if-eq p1, v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Rotate a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", invaild"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 198
    invoke-static {p0, v1, v3, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 200
    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 201
    invoke-static {p0, v1, v6, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 203
    :cond_2
    const/high16 v2, 0x43870000    # 270.0f

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 204
    invoke-static {p0, v1, v6, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 101
    .local v0, "-l_1_I":I
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "-l_2_R":Ljava/lang/Object;
    const-string/jumbo v2, "hme_engine_java_OpenGL"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    if-ltz p0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' in program"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    .prologue
    .line 162
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 165
    .local v1, "-l_2_R":Ljava/lang/Object;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-object v1
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11

    .prologue
    const/16 v3, 0x2601

    const/4 v2, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 131
    new-array v9, v2, [I

    .line 134
    .local v9, "-l_4_R":Ljava/lang/Object;
    invoke-static {v2, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 135
    aget v10, v9, v1

    .line 136
    .local v10, "-l_5_I":I
    const-string/jumbo v2, "glGenTextures"

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 139
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 143
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 145
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 147
    const-string/jumbo v2, "loadImageTexture"

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    const/16 v7, 0x1401

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, p3

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 152
    const-string/jumbo v0, "loadImageTexture"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    return v10
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/huawei/videoengine/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "-l_2_I":I
    if-eqz v0, :cond_0

    .line 49
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/huawei/videoengine/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "-l_3_I":I
    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 55
    .local v2, "-l_4_I":I
    const-string/jumbo v4, "glCreateProgram"

    invoke-static {v4}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 56
    if-eqz v2, :cond_2

    .line 59
    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 60
    const-string/jumbo v4, "glAttachShader"

    invoke-static {v4}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 61
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 62
    const-string/jumbo v4, "glAttachShader"

    invoke-static {v4}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 64
    new-array v3, v7, [I

    .line 65
    .local v3, "-l_5_R":Ljava/lang/Object;
    const v4, 0x8b82

    invoke-static {v2, v4, v3, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 66
    aget v4, v3, v6

    if-ne v4, v7, :cond_3

    .line 72
    :goto_1
    return v2

    .line 47
    .end local v1    # "-l_3_I":I
    .end local v2    # "-l_4_I":I
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    :cond_0
    return v6

    .line 51
    .restart local v1    # "-l_3_I":I
    :cond_1
    return v6

    .line 57
    .restart local v2    # "-l_4_I":I
    :cond_2
    const-string/jumbo v4, "hme_engine_java_OpenGL"

    const-string/jumbo v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .restart local v3    # "-l_5_R":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v4, "hme_engine_java_OpenGL"

    const-string/jumbo v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme_engine_java_OpenGL"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 70
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getIDENTITY_MATRIX()[F
    .locals 2

    .prologue
    .line 28
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 29
    .local v0, "-l_0_R":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 30
    return-object v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 82
    .local v0, "-l_2_I":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 83
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 84
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 85
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 86
    .local v1, "-l_3_R":Ljava/lang/Object;
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 87
    aget v2, v1, v4

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java_OpenGL"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java_OpenGL"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logVersionInfo()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vendor  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f00

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "renderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f01

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f02

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
