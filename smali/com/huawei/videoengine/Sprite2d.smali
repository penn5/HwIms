.class public Lcom/huawei/videoengine/Sprite2d;
.super Ljava/lang/Object;
.source "Sprite2d.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"


# instance fields
.field private mAngle:F

.field private mColor:[F

.field private mDrawable:Lcom/huawei/videoengine/Drawable2d;

.field private mMatrixReady:Z

.field private mModelViewMatrix:[F

.field private mPosX:F

.field private mPosY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mScratchMatrix:[F

.field private mTextureId:I


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/Drawable2d;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mScratchMatrix:[F

    .line 22
    iput-object p1, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    .line 24
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/Sprite2d;->mTextureId:I

    .line 27
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mModelViewMatrix:[F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    .line 29
    return-void
.end method

.method private recomputeMatrix()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mModelViewMatrix:[F

    .line 38
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 39
    iget v2, p0, Lcom/huawei/videoengine/Sprite2d;->mPosX:F

    iget v4, p0, Lcom/huawei/videoengine/Sprite2d;->mPosY:F

    invoke-static {v0, v1, v2, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 40
    iget v2, p0, Lcom/huawei/videoengine/Sprite2d;->mAngle:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 41
    iget v2, p0, Lcom/huawei/videoengine/Sprite2d;->mAngle:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 43
    :cond_0
    iget v2, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleX:F

    iget v3, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleY:F

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Lcom/huawei/videoengine/FlatShadedProgram;[F)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mScratchMatrix:[F

    invoke-virtual {p0}, Lcom/huawei/videoengine/Sprite2d;->getModelViewMatrix()[F

    move-result-object v4

    move-object v2, p2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 165
    iget-object v3, p0, Lcom/huawei/videoengine/Sprite2d;->mScratchMatrix:[F

    iget-object v4, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 166
    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexCount()I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getCoordsPerVertex()I

    move-result v8

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 167
    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexStride()I

    move-result v9

    move-object v2, p1

    move v6, v1

    .line 165
    invoke-virtual/range {v2 .. v9}, Lcom/huawei/videoengine/FlatShadedProgram;->draw([F[FLjava/nio/FloatBuffer;IIII)V

    .line 168
    return-void
.end method

.method public draw(Lcom/huawei/videoengine/Texture2dProgram;[F)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mScratchMatrix:[F

    invoke-virtual {p0}, Lcom/huawei/videoengine/Sprite2d;->getModelViewMatrix()[F

    move-result-object v4

    move-object v2, p2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 177
    iget-object v3, p0, Lcom/huawei/videoengine/Sprite2d;->mScratchMatrix:[F

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 178
    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexCount()I

    move-result v6

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getCoordsPerVertex()I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 179
    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getVertexStride()I

    move-result v8

    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v9

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v10

    iget v11, p0, Lcom/huawei/videoengine/Sprite2d;->mTextureId:I

    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 180
    invoke-virtual {v0}, Lcom/huawei/videoengine/Drawable2d;->getTexCoordStride()I

    move-result v12

    move-object v2, p1

    move v5, v1

    .line 177
    invoke-virtual/range {v2 .. v12}, Lcom/huawei/videoengine/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    .line 181
    return-void
.end method

.method public getColor()[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v2, 0x1

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput v2, v0, v3

    .line 153
    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    array-length v1, v2

    .line 154
    .local v1, "-l_2_I":I
    iget-object v2, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    return-object v0
.end method

.method public getModelViewMatrix()[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-boolean v2, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    if-eqz v2, :cond_0

    .line 124
    :goto_0
    const/4 v2, 0x1

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput v2, v0, v3

    .line 125
    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/Sprite2d;->mModelViewMatrix:[F

    array-length v1, v2

    .line 126
    .local v1, "-l_2_I":I
    iget-object v2, p0, Lcom/huawei/videoengine/Sprite2d;->mModelViewMatrix:[F

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-object v0

    .line 122
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    .end local v1    # "-l_2_I":I
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/Sprite2d;->recomputeMatrix()V

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/huawei/videoengine/Sprite2d;->mPosX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/huawei/videoengine/Sprite2d;->mPosY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/huawei/videoengine/Sprite2d;->mAngle:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleY:F

    return v0
.end method

.method public setColor(FFF)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 135
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 137
    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    .prologue
    .line 110
    iput p1, p0, Lcom/huawei/videoengine/Sprite2d;->mPosX:F

    .line 111
    iput p2, p0, Lcom/huawei/videoengine/Sprite2d;->mPosY:F

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    .line 113
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    move v0, p1

    .line 82
    :goto_0
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    .line 83
    sub-float/2addr v0, v2

    goto :goto_0

    .line 85
    :cond_0
    :goto_1
    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 86
    add-float/2addr v0, v2

    goto :goto_1

    .line 88
    :cond_1
    iput v0, p0, Lcom/huawei/videoengine/Sprite2d;->mAngle:F

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    .line 90
    return-void
.end method

.method public setScale(FF)V
    .locals 1

    .prologue
    .line 65
    iput p1, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleX:F

    .line 66
    iput p2, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleY:F

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/Sprite2d;->mMatrixReady:Z

    .line 68
    return-void
.end method

.method public setTexture(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/huawei/videoengine/Sprite2d;->mTextureId:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Sprite2d pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Sprite2d;->mPosX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Sprite2d;->mPosY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Sprite2d;->mScaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/Sprite2d;->mAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " color={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/Sprite2d;->mColor:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/Sprite2d;->mDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
