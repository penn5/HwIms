.class public Lcom/huawei/videoengine/Drawable2d;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/Drawable2d$Prefab;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_COORDS:[F

.field private static final RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_COORDS:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"

.field private static final TRIANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_COORDS:[F

.field private static final TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_TEX_COORDS:[F


# instance fields
.field private mCoordsPerVertex:I

.field private mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mTexCoordStride:I

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I

.field private mVertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [F

    aput v4, v0, v6

    const v1, 0x3f13cd3a

    aput v1, v0, v7

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x2

    aput v1, v0, v2

    const v1, -0x416c32c6

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v5, v0, v1

    const v1, -0x416c32c6

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [F

    aput v5, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 25
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    .line 26
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 27
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 28
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/high16 v1, -0x41000000    # -0.5f

    aput v1, v0, v6

    const/high16 v1, -0x41000000    # -0.5f

    aput v1, v0, v7

    const/4 v1, 0x2

    aput v5, v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x3

    aput v1, v0, v2

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 48
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    .line 49
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 50
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 51
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v6

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v7

    const/4 v1, 0x2

    aput v3, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    aput v1, v0, v2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v4, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 72
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 73
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 74
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 75
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/huawei/videoengine/Drawable2d$Prefab;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/huawei/videoengine/Drawable2d$1;->$SwitchMap$com$huawei$videoengine$Drawable2d$Prefab:[I

    invoke-virtual {p1}, Lcom/huawei/videoengine/Drawable2d$Prefab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Drawable2d fail!! Unknown shape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 101
    :pswitch_0
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 102
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 103
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 104
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 105
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    array-length v0, v0

    iget v1, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    .line 125
    :goto_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordStride:I

    .line 126
    iput-object p1, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    .line 127
    return-void

    .line 108
    :pswitch_1
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 109
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 110
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 111
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 112
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    array-length v0, v0

    iget v1, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    goto :goto_0

    .line 115
    :pswitch_2
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 116
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 117
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 118
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 119
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    array-length v0, v0

    iget v1, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCoordsPerVertex()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    return v0
.end method

.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexCoordStride()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordStride:I

    return v0
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    return v0
.end method

.method public getVertexStride()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v0, "[Drawable2d: ...]"

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Drawable2d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
