.class Lcom/huawei/videoengine/VideoCapture2Android$TranObj;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranObj"
.end annotation


# instance fields
.field private mEncSf:Landroid/view/Surface;

.field private mVH:I

.field private mVW:I

.field private mVsf:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/view/Surface;II)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    .line 585
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    .line 586
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    .line 587
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    .line 588
    return-void
.end method


# virtual methods
.method public getEncSf()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    return-object v0
.end method

.method public getHeigth()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    return v0
.end method

.method public getViewSf()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    return v0
.end method
