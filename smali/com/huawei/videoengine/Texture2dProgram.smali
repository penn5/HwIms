.class public Lcom/huawei/videoengine/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_BW:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_FILT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

.field public static final KERNEL_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mColorAdjust:F

.field private mKernel:[F

.field private mProgramHandle:I

.field private mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field private mTexOffset:[F

.field private mTextureTarget:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muColorAdjustLoc:I

.field private muKernelLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I

.field private muTexOffsetLoc:I


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const v5, 0x8d65

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    .line 122
    iput-object p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    .line 124
    sget-object v0, Lcom/huawei/videoengine/Texture2dProgram$1;->$SwitchMap$com$huawei$videoengine$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unhandled type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 126
    :pswitch_0
    const/16 v0, 0xde1

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 127
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 146
    :goto_0
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Created program "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    .line 156
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    .line 158
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    const-string/jumbo v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    .line 160
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    .line 162
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uKernel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    .line 164
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    if-ltz v0, :cond_1

    .line 171
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uTexOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    .line 172
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    const-string/jumbo v1, "uTexOffset"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string/jumbo v1, "uColorAdjust"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    .line 174
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    const-string/jumbo v1, "uColorAdjust"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 177
    new-array v0, v6, [F

    aput v3, v0, v4

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/huawei/videoengine/Texture2dProgram;->setKernel([FF)V

    .line 178
    const/16 v0, 0x100

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/huawei/videoengine/Texture2dProgram;->setTexSize(II)V

    .line 180
    :goto_1
    return-void

    .line 130
    :pswitch_1
    iput v5, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 131
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_0

    .line 134
    :pswitch_2
    iput v5, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 135
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_0

    .line 138
    :pswitch_3
    iput v5, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 139
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_0

    .line 148
    :cond_0
    const-string/jumbo v0, "hme_engine_java_OpenGL"

    const-string/jumbo v1, "Unable to create program"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 166
    :cond_1
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    .line 167
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    .line 168
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createTextureObject()I
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v5, 0x46180400    # 9729.0f

    const v4, 0x8d65

    .line 211
    new-array v0, v2, [I

    .line 212
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 213
    const-string/jumbo v2, "glGenTextures"

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 215
    aget v1, v0, v3

    .line 216
    .local v1, "-l_2_I":I
    iget v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glBindTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 219
    const/16 v2, 0x2801

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 221
    const/16 v2, 0x2800

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 223
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 225
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 227
    const-string/jumbo v2, "glTexParameter"

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 229
    return v1
.end method

.method public draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V
    .locals 8

    .prologue
    .line 283
    const-string/jumbo v1, "draw start"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 286
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 287
    const-string/jumbo v1, "glUseProgram"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 290
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 291
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    move/from16 v0, p9

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 294
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, p1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 295
    const-string/jumbo v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, p7, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 299
    const-string/jumbo v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 302
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 303
    const-string/jumbo v1, "glEnableVertexAttribArray"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 306
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    const/4 v4, 0x0

    const/16 v3, 0x1406

    move v2, p5

    move v5, p6

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 308
    const-string/jumbo v1, "glVertexAttribPointer"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 311
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 312
    const-string/jumbo v1, "glEnableVertexAttribArray"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 315
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    move/from16 v5, p10

    move-object/from16 v6, p8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 317
    const-string/jumbo v1, "glVertexAttribPointer"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 320
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    if-gez v1, :cond_0

    .line 327
    :goto_0
    const/4 v1, 0x5

    invoke-static {v1, p3, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 329
    :try_start_0
    const-string/jumbo v1, "glDrawArrays"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 336
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 337
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 338
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 339
    return-void

    .line 321
    :cond_0
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    iget-object v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 322
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    iget-object v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTexOffset:[F

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 323
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    iget v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mColorAdjust:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, "-l_11_R":Ljava/lang/Object;
    const-string/jumbo v1, "hme_engine_java_OpenGL"

    const-string/jumbo v2, "draw error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getProgramType()Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deleting program "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 192
    return-void
.end method

.method public setKernel([FF)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 238
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iput p2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mColorAdjust:F

    .line 247
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Kernel size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " vs. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java_OpenGL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public setTexSize(II)V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 253
    int-to-float v2, p1

    div-float v0, v3, v2

    .line 254
    .local v0, "-l_3_F":F
    int-to-float v2, p2

    div-float v1, v3, v2

    .line 257
    .local v1, "-l_4_F":F
    const/16 v2, 0x12

    new-array v2, v2, [F

    neg-float v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    neg-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aput v5, v2, v3

    neg-float v3, v1

    const/4 v4, 0x3

    aput v3, v2, v4

    const/4 v3, 0x4

    aput v0, v2, v3

    neg-float v3, v1

    const/4 v4, 0x5

    aput v3, v2, v4

    neg-float v3, v0

    const/4 v4, 0x6

    aput v3, v2, v4

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v5, v2, v3

    const/16 v3, 0xa

    aput v0, v2, v3

    const/16 v3, 0xb

    aput v5, v2, v3

    neg-float v3, v0

    const/16 v4, 0xc

    aput v3, v2, v4

    const/16 v3, 0xd

    aput v1, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput v1, v2, v3

    const/16 v3, 0x10

    aput v0, v2, v3

    const/16 v3, 0x11

    aput v1, v2, v3

    iput-object v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTexOffset:[F

    .line 263
    return-void
.end method
