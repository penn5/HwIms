.class public Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HandoverInfo"
.end annotation


# instance fields
.field protected mErrorCode:Ljava/lang/String;

.field protected mErrorMessage:Ljava/lang/String;

.field protected mExtraInfo:[B

.field protected mExtraType:I

.field protected mSrcTech:I

.field protected mTargetTech:I

.field protected mType:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 116
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 117
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 118
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 119
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    .line 120
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 131
    return-void
.end method

.method constructor <init>(Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;)V
    .locals 2
    .param p1, "handoverInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 116
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 117
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 118
    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 119
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    .line 120
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->hoType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 125
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->srcTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 126
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->dstTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 127
    iget-object v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->hoExtra:Lvendor/huawei/hardware/radio/V1_0/RILImsExtra;

    iget v0, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsExtra;->extraType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 128
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method
