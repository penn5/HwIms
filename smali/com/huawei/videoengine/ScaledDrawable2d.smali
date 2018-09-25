.class public Lcom/huawei/videoengine/ScaledDrawable2d;
.super Lcom/huawei/videoengine/Drawable2d;
.source "ScaledDrawable2d.java"


# static fields
.field private static final SIZEOF_FLOAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"


# instance fields
.field private mRecalculate:Z

.field private mScale:F

.field private mTweakedTexCoordArray:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/Drawable2d$Prefab;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/Drawable2d;-><init>(Lcom/huawei/videoengine/Drawable2d$Prefab;)V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mScale:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mRecalculate:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 49
    iget-boolean v6, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mRecalculate:Z

    if-nez v6, :cond_0

    .line 74
    :goto_0
    iget-object v6, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mTweakedTexCoordArray:Ljava/nio/FloatBuffer;

    return-object v6

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/huawei/videoengine/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 52
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    .line 54
    .local v1, "-l_2_I":I
    iget-object v6, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mTweakedTexCoordArray:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_1

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mTweakedTexCoordArray:Ljava/nio/FloatBuffer;

    .line 64
    .local v2, "-l_3_R":Ljava/lang/Object;
    iget v3, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mScale:F

    .line 65
    .local v3, "-l_4_F":F
    const/4 v4, 0x0

    .local v4, "-l_5_I":I
    :goto_2
    if-lt v4, v1, :cond_2

    .line 71
    iput-boolean v8, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mRecalculate:Z

    goto :goto_0

    .line 55
    .end local v2    # "-l_3_R":Ljava/lang/Object;
    .end local v3    # "-l_4_F":F
    .end local v4    # "-l_5_I":I
    :cond_1
    mul-int/lit8 v6, v1, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    .restart local v2    # "-l_3_R":Ljava/lang/Object;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mTweakedTexCoordArray:Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 66
    .restart local v3    # "-l_4_F":F
    .restart local v4    # "-l_5_I":I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    .line 67
    .local v5, "-l_6_F":F
    sub-float v6, v5, v7

    mul-float/2addr v6, v3

    add-float v5, v6, v7

    .line 68
    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setScale(F)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_2
    iput p1, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mScale:F

    .line 38
    iput-boolean v1, p0, Lcom/huawei/videoengine/ScaledDrawable2d;->mRecalculate:Z

    .line 39
    return-void
.end method
