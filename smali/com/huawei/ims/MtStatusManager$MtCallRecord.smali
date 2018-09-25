.class Lcom/huawei/ims/MtStatusManager$MtCallRecord;
.super Ljava/lang/Object;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/MtStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtCallRecord"
.end annotation


# static fields
.field public static final STATE_CANCELLED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_INVITED:I = 0x2

.field public static final STATE_RANG:I = 0x3


# instance fields
.field private mInviteTime:J

.field private mRingOrHangTime:J

.field private mState:I


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .prologue
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .prologue
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .prologue
    iget v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 334
    iput-wide v2, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 335
    iput-wide v2, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 336
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 337
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "st"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 340
    if-ne v2, p1, :cond_0

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 342
    iput v2, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 347
    :goto_0
    iput-wide v4, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 348
    return-void

    .line 344
    :cond_0
    iput-wide v4, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 345
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public setHang(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 357
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 358
    return-void
.end method

.method public setRing(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 351
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 352
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 353
    return-void
.end method
