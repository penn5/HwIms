.class public Lcom/huawei/ims/GbaAuth;
.super Landroid/os/Handler;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;,
        Lcom/huawei/ims/GbaAuth$AkaResult;,
        Lcom/huawei/ims/GbaAuth$AuthResp;,
        Lcom/huawei/ims/GbaAuth$AuthRespChallenge;,
        Lcom/huawei/ims/GbaAuth$AuthSyncfail;,
        Lcom/huawei/ims/GbaAuth$BtidElem;,
        Lcom/huawei/ims/GbaAuth$DataValue;,
        Lcom/huawei/ims/GbaAuth$GbaResult;,
        Lcom/huawei/ims/GbaAuth$GbaStatus;,
        Lcom/huawei/ims/GbaAuth$KSNAF_STATE;,
        Lcom/huawei/ims/GbaAuth$KsNafElem;,
        Lcom/huawei/ims/GbaAuth$UiccGbaType;
    }
.end annotation


# static fields
.field public static final AUTH_RESP_FAIL:I = 0x1

.field public static final AUTH_RESP_SUCCESS:I = 0x0

.field public static final AUTH_RESP_SYNC_FAIL:I = 0x2

.field public static final AUTH_RESP_UNSUPPORTED:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT_LIFETIME_IN_MINUTE:I = 0x1e

.field public static final EFAIL:I = 0x1

.field public static final EVENT_NOTIFY_BP_UPDATE:I = 0x7

.field public static final EVENT_NOTIFY_GBA_KSNAF:I = 0x8

.field public static final EVENT_NOTIFY_UICC_AUTH:I = 0x6

.field public static final EVENT_REQUEST_GET_UICC_FILE_DONE:I = 0x4

.field public static final EVENT_REQUEST_UICC_AUTH_DONE:I = 0x1

.field public static final EVENT_REQUEST_UICC_BOOTSTRAP_DONE:I = 0x2

.field public static final EVENT_REQUEST_UICC_FILE_UPDATE_DONE:I = 0x3

.field public static final EVENT_REQUEST_UICC_KS_NAF_DONE:I = 0x5

.field public static final GBA_LIFETIME_PROTECT_IN_MINUTE:I = 0x5

.field public static final GBA_ME:I = 0x0

.field public static final GBA_U:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GbaAuth"

.field private static MAX_AUTH_COUNTS:I

.field private static MAX_BOOTSTRAP_COUNTS:I

.field public static final SUCCESS:I


# instance fields
.field private mAsyncSign:Ljava/lang/Object;

.field private mAuthCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootstrapCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtidTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$BtidElem;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/huawei/ims/ImsRIL;

.field private mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

.field private mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

.field private mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field private mKsNafTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$KsNafElem;",
            ">;"
        }
    .end annotation
.end field

.field private mKsnafEncodedByBase64:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 197
    sput v0, Lcom/huawei/ims/GbaAuth;->MAX_AUTH_COUNTS:I

    .line 199
    sput v0, Lcom/huawei/ims/GbaAuth;->MAX_BOOTSTRAP_COUNTS:I

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V
    .locals 2
    .param p1, "cm"    # Lcom/huawei/ims/ImsRIL;
    .param p2, "imsConfigImpl"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p3, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 186
    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    .line 204
    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 205
    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 146
    iput-object p1, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 147
    new-instance v0, Lcom/huawei/ims/GbaAuthUtil;

    invoke-direct {v0, p0}, Lcom/huawei/ims/GbaAuthUtil;-><init>(Lcom/huawei/ims/GbaAuth;)V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 148
    iput p3, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 149
    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtKsnafEncodedByBase64()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    .line 152
    :cond_0
    return-void
.end method

.method private addAuthTimes(Ljava/lang/String;)V
    .locals 3
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 773
    .local v0, "authCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before addAuthTimes, auth Counts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 775
    if-nez v0, :cond_0

    .line 776
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string/jumbo v1, "after addAuthTimes, authCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 780
    return-void

    .line 783
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after addAuthTimes, authCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method private addBootstrapTimes(Ljava/lang/String;)V
    .locals 3
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 820
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 822
    .local v0, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before addBootstrapTimes, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 824
    if-nez v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v1, "after addBootstrapTimes, bootstrapCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 828
    return-void

    .line 831
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 832
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after setBootstrapCounts, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private generateKs([B[B)[B
    .locals 4
    .param p1, "ck"    # [B
    .param p2, "ik"    # [B

    .prologue
    const/4 v3, 0x0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter generateKs ck="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    const-string/jumbo v2, ", ik="

    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 560
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 562
    .local v0, "ks":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 563
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "leave generateKs, ks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 567
    return-object v0
.end method

.method private generateS([B[B[B)[B
    .locals 15
    .param p1, "rand"    # [B
    .param p2, "impi"    # [B
    .param p3, "nafId"    # [B

    .prologue
    .line 585
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "enter generateS rand="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 586
    const-string/jumbo v13, ", impi="

    .line 585
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 586
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 587
    const-string/jumbo v13, ", nafId="

    .line 585
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 587
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 589
    const/4 v12, 0x1

    new-array v1, v12, [B

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-byte v12, v1, v13

    .line 590
    .local v1, "FC":[B
    const/4 v12, 0x6

    new-array v6, v12, [B

    .local v6, "P0":[B
    fill-array-data v6, :array_0

    .line 591
    const/4 v12, 0x2

    new-array v2, v12, [B

    .local v2, "L0":[B
    fill-array-data v2, :array_1

    .line 592
    move-object/from16 v7, p1

    .line 593
    .local v7, "P1":[B
    move-object/from16 v0, p1

    array-length v12, v0

    int-to-short v12, v12

    invoke-static {v12}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v3

    .line 594
    .local v3, "L1":[B
    move-object/from16 v8, p2

    .line 595
    .local v8, "P2":[B
    move-object/from16 v0, p2

    array-length v12, v0

    int-to-short v12, v12

    invoke-static {v12}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v4

    .line 596
    .local v4, "L2":[B
    move-object/from16 v9, p3

    .line 597
    .local v9, "P3":[B
    move-object/from16 v0, p3

    array-length v12, v0

    int-to-short v12, v12

    invoke-static {v12}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v5

    .line 599
    .local v5, "L3":[B
    array-length v12, v1

    array-length v13, v6

    add-int/2addr v12, v13

    array-length v13, v2

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    array-length v13, v0

    add-int/2addr v12, v13

    array-length v13, v3

    add-int/2addr v12, v13

    .line 600
    move-object/from16 v0, p2

    array-length v13, v0

    .line 599
    add-int/2addr v12, v13

    .line 600
    array-length v13, v4

    .line 599
    add-int/2addr v12, v13

    .line 600
    move-object/from16 v0, p3

    array-length v13, v0

    .line 599
    add-int/2addr v12, v13

    .line 600
    array-length v13, v5

    .line 599
    add-int/2addr v12, v13

    new-array v10, v12, [B

    .line 601
    .local v10, "S":[B
    array-length v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v1, v13, v10, v14, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 602
    array-length v11, v1

    .line 603
    .local v11, "len":I
    array-length v12, v6

    const/4 v13, 0x0

    invoke-static {v6, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 604
    array-length v12, v6

    add-int/2addr v11, v12

    .line 605
    array-length v12, v2

    const/4 v13, 0x0

    invoke-static {v2, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 606
    array-length v12, v2

    add-int/2addr v11, v12

    .line 607
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 608
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/2addr v11, v12

    .line 609
    array-length v12, v3

    const/4 v13, 0x0

    invoke-static {v3, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 610
    array-length v12, v3

    add-int/2addr v11, v12

    .line 611
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 612
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/2addr v11, v12

    .line 613
    array-length v12, v4

    const/4 v13, 0x0

    invoke-static {v4, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 614
    array-length v12, v4

    add-int/2addr v11, v12

    .line 615
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 616
    move-object/from16 v0, p3

    array-length v12, v0

    add-int/2addr v11, v12

    .line 617
    array-length v12, v5

    const/4 v13, 0x0

    invoke-static {v5, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 619
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "leave generateS, len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", s="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v10}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 620
    return-object v10

    .line 590
    :array_0
    .array-data 1
        0x67t
        0x62t
        0x61t
        0x2dt
        0x6dt
        0x65t
    .end array-data

    .line 591
    nop

    :array_1
    .array-data 1
        0x0t
        0x6t
    .end array-data
.end method

.method private getNafIdViaBtid([B)Ljava/lang/String;
    .locals 6
    .param p1, "btid"    # [B

    .prologue
    const/4 v5, 0x0

    .line 858
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 859
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 861
    .local v3, "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    invoke-direct {p0, v4, p1}, Lcom/huawei/ims/GbaAuth;->isEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    iget-object v2, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 864
    .local v2, "nafId":[B
    if-eqz v2, :cond_0

    .line 865
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 870
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    .end local v2    # "nafId":[B
    .end local v3    # "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    :cond_1
    return-object v5
.end method

.method private handleAuthExpire(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string/jumbo v0, "enter handleAuthExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 766
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    return-void
.end method

.method private handleBootstrapExpire(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 812
    const-string/jumbo v0, "enter handleBootstrapExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeBtid(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    return-void
.end method

.method private handleTimeout()V
    .locals 7

    .prologue
    .line 901
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 903
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 906
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 907
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 909
    .local v4, "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "nafId":Ljava/lang/String;
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-nez v5, :cond_1

    .line 912
    const-string/jumbo v5, "ks is null, AKA is fail"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 921
    :goto_1
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-eqz v5, :cond_0

    .line 927
    iget-boolean v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 930
    const-string/jumbo v5, "time is up, remove it"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 936
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 938
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->removeKsNaf([B)V

    goto :goto_0

    .line 914
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter handleTimeout, value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 915
    const-string/jumbo v6, ", lifetime="

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 915
    iget-object v6, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 916
    const-string/jumbo v6, ", key="

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 916
    const/4 v6, 0x4

    invoke-static {v2, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 917
    const-string/jumbo v6, ", mBTid="

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 917
    iget-object v6, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 918
    const-string/jumbo v6, ", mKs="

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 918
    iget-object v6, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 943
    :cond_2
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->resetBootstrapCounts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 945
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "nafId":Ljava/lang/String;
    .end local v4    # "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    :cond_3
    return-void
.end method

.method private declared-synchronized handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V
    .locals 7
    .param p1, "resp"    # Lcom/huawei/ims/GbaAuth$AuthResp;

    .prologue
    monitor-enter p0

    .line 654
    :try_start_0
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$AkaResult;-><init>()V

    .line 656
    .local v0, "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUiccAuthDone mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 658
    iget v4, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    packed-switch v4, :pswitch_data_0

    .line 693
    :pswitch_0
    sget-object v4, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 695
    sget-object v4, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v4, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 699
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v0}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 700
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p0, v3}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 701
    return-void

    .line 661
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_1
    :try_start_1
    iget-object v2, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    .line 664
    .local v2, "ch":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v2, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    iget-object v6, v2, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v6, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v5, v6}, Lcom/huawei/ims/GbaAuth;->generateKs([B[B)[B

    move-result-object v5

    iput-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    const-string/jumbo v5, ", res="

    .line 665
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    iget-object v5, v2, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    .line 665
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 667
    sget-object v4, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 668
    iget-object v4, v2, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    .end local v2    # "ch":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 672
    .restart local v0    # "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    :pswitch_2
    :try_start_2
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    .line 674
    .local v1, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AUTH_RESP_SYNC_FAIL auts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 676
    sget-object v4, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    iput-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 677
    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 680
    iget-boolean v4, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    if-eqz v4, :cond_0

    .line 681
    iget-object v4, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 683
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auts, base64="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hiddenPrivacyByteInfo([B)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # [B

    .prologue
    .line 968
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hmacSha256([B[B)[B
    .locals 7
    .param p1, "key"    # [B
    .param p2, "data"    # [B

    .prologue
    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, "mac":Ljavax/crypto/Mac;
    const/4 v3, 0x0

    .line 633
    .local v3, "sKey":Ljavax/crypto/SecretKey;
    const/4 v1, 0x0

    .line 636
    .local v1, "hmacsha256":[B
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter hmacSha256 key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 637
    const-string/jumbo v6, ", data="

    .line 636
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 637
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    .line 636
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v5, "HMAC-SHA256"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 640
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HMAC-SHA256"

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .local v4, "sKey":Ljavax/crypto/SecretKey;
    :try_start_1
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 643
    .end local v3    # "sKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 645
    .local v1, "hmacsha256":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leave hmacSha256, ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 650
    .end local v1    # "hmacsha256":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "sKey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v1

    .line 646
    .local v1, "hmacsha256":[B
    .restart local v3    # "sKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 647
    .end local v1    # "hmacsha256":[B
    .end local v3    # "sKey":Ljavax/crypto/SecretKey;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hmacSha256 Exception e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mac":Ljavax/crypto/Mac;
    .restart local v4    # "sKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "sKey":Ljavax/crypto/SecretKey;
    .local v3, "sKey":Ljavax/crypto/SecretKey;
    goto :goto_1
.end method

.method private isAuthExpire(Ljava/lang/String;)Z
    .locals 4
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 739
    if-nez p1, :cond_0

    .line 740
    const-string/jumbo v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 742
    return v3

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 747
    .local v0, "authCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAuthExpire, authCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 749
    if-nez v0, :cond_1

    .line 750
    return v3

    .line 753
    :cond_1
    sget v1, Lcom/huawei/ims/GbaAuth;->MAX_AUTH_COUNTS:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 754
    const-string/jumbo v1, "Auth Expire!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 756
    const/4 v1, 0x1

    return v1

    .line 759
    :cond_2
    return v3
.end method

.method private isBootstrapExpire(Ljava/lang/String;)Z
    .locals 4
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 790
    if-nez p1, :cond_0

    .line 791
    const-string/jumbo v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 792
    return v3

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 797
    .local v0, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBootstrapExpire, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 799
    if-nez v0, :cond_1

    .line 800
    return v3

    .line 803
    :cond_1
    sget v1, Lcom/huawei/ims/GbaAuth;->MAX_BOOTSTRAP_COUNTS:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 804
    const-string/jumbo v1, "Bootstrap Expire!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 805
    const/4 v1, 0x1

    return v1

    .line 808
    :cond_2
    return v3
.end method

.method private isBusy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 883
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v1, v2, :cond_0

    .line 884
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v1, v2, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 885
    :cond_1
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEqual([B[B)Z
    .locals 1
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 964
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private isTimeout(Ljava/util/Date;)Z
    .locals 3
    .param p1, "lifeTime"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 889
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 891
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTimeout, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lifeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x1

    return v1

    .line 896
    :cond_0
    return v2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private declared-synchronized notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .locals 2
    .param p1, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    .prologue
    monitor-enter p0

    .line 713
    :try_start_0
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 714
    const-string/jumbo v0, "Gba status is null, notifyBpUpdate stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 715
    return-void

    .line 718
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$BtidElem;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 719
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V
    .locals 2
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;

    .prologue
    .line 722
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 723
    const-string/jumbo v0, "Gba status is null, notifyKsNaf stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 724
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$KsNafElem;Ljava/lang/Object;)V

    .line 728
    return-void
.end method

.method private notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V
    .locals 2
    .param p1, "aka"    # Lcom/huawei/ims/GbaAuth$AkaResult;

    .prologue
    .line 704
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_0

    .line 705
    const-string/jumbo v0, "Gba status is null, notifyUiccAuth stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$AkaResult;Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method private removeBtid(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    return-void
.end method

.method private removeKsNaf(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    return-void
.end method

.method private removeKsNaf([B)V
    .locals 1
    .param p1, "btid"    # [B

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "nafId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method private resetAuthCounts(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 838
    const-string/jumbo v0, "enter resetAuthCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 840
    if-nez p1, :cond_0

    .line 841
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    return-void
.end method

.method private resetBootstrapCounts(Ljava/lang/String;)V
    .locals 1
    .param p1, "nafId"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string/jumbo v0, "enter resetBootstrapCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 850
    if-nez p1, :cond_0

    .line 851
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-void
.end method

.method private restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method private static shortToBytes(S)[B
    .locals 3
    .param p0, "n"    # S

    .prologue
    .line 547
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 549
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 550
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 552
    return-object v0
.end method

.method private transByteArrayToHexString([B)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # [B

    .prologue
    const/4 v0, 0x0

    .line 874
    if-nez p1, :cond_0

    .line 875
    return-object v0

    .line 878
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 536
    :try_start_0
    const-string/jumbo v0, "enter clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 538
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 539
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 541
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 542
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 544
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getGBAKsnaf(I[B)Lcom/huawei/ims/GbaAuth$GbaResult;
    .locals 9
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    .prologue
    monitor-enter p0

    .line 432
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enter getGBAKsnaf, gbaType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", nafId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 433
    const/4 v3, 0x0

    .line 434
    .local v3, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    const/4 v0, 0x0

    .line 435
    .local v0, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    new-instance v2, Lcom/huawei/ims/GbaAuth$GbaResult;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$GbaResult;-><init>()V

    .line 438
    .local v2, "gabRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->handleTimeout()V

    .line 441
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->isBusy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 442
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 443
    return-object v2

    .line 447
    :cond_0
    if-eqz p2, :cond_1

    .line 448
    :try_start_1
    iget-object v7, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 452
    :cond_1
    if-nez v3, :cond_2

    .line 453
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 454
    return-object v2

    .line 458
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    check-cast v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 462
    .local v0, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    if-eqz v7, :cond_6

    .line 463
    iget v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    if-eq v7, p1, :cond_3

    .line 464
    const-string/jumbo v7, "gba type is not equal in ksnaf, ingored"

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 468
    :cond_3
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->isAuthExpire(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 471
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->handleAuthExpire(Ljava/lang/String;)V

    .line 472
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 473
    return-object v2

    .line 476
    :cond_4
    :try_start_3
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->addAuthTimes(Ljava/lang/String;)V

    .line 479
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I

    .line 480
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    iput-object v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->ksnaf:[B

    .line 485
    if-eqz v0, :cond_5

    .line 486
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    .line 489
    :cond_5
    const-string/jumbo v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    .local v5, "sbtid":Ljava/lang/String;
    :try_start_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v5    # "sbtid":Ljava/lang/String;
    .local v6, "sbtid":Ljava/lang/String;
    move-object v5, v6

    .line 496
    .end local v6    # "sbtid":Ljava/lang/String;
    .restart local v5    # "sbtid":Ljava/lang/String;
    :goto_0
    :try_start_5
    iput-object v5, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->btid:Ljava/lang/String;

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ksnaf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v8}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 499
    const-string/jumbo v8, ", btid="

    .line 498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 499
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    invoke-direct {p0, v8}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    const-string/jumbo v8, ", nafid="

    .line 498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    invoke-direct {p0, v8}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 502
    return-object v2

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CString to UTF-8 fail, e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gabRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    .end local v4    # "nafIdHexString":Ljava/lang/String;
    .end local v5    # "sbtid":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 506
    .restart local v0    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .restart local v2    # "gabRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    :cond_6
    if-eqz v0, :cond_8

    :try_start_7
    iget-object v7, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-eqz v7, :cond_8

    .line 507
    iget v7, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    if-eq v7, p1, :cond_7

    .line 508
    const-string/jumbo v7, "gba type is not equal in btid, ingored"

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 510
    :cond_7
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I

    .line 511
    const-string/jumbo v5, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 513
    .restart local v5    # "sbtid":Ljava/lang/String;
    :try_start_8
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v5    # "sbtid":Ljava/lang/String;
    .restart local v6    # "sbtid":Ljava/lang/String;
    move-object v5, v6

    .line 517
    .end local v6    # "sbtid":Ljava/lang/String;
    .restart local v5    # "sbtid":Ljava/lang/String;
    :goto_1
    :try_start_9
    iput-object v5, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->btid:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    .line 518
    return-object v2

    .line 514
    :catch_1
    move-exception v1

    .line 515
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CString to UTF-8 fail, e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "sbtid":Ljava/lang/String;
    :cond_8
    sget-object v7, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-virtual {v7}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->getValue()I

    move-result v7

    iput v7, v2, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 524
    return-object v2
.end method

.method declared-synchronized getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;
    .locals 1

    .prologue
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 212
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 245
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 248
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    const/4 v1, 0x0

    .line 215
    .local v1, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 216
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 217
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthResp;

    .line 223
    .local v1, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    :goto_1
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    goto :goto_0

    .line 219
    .local v1, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    :cond_0
    const-string/jumbo v2, "EVENT_REQUEST_UICC_AUTH_DONE err"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/huawei/ims/GbaAuth$AuthResp;

    .end local v1    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    invoke-direct {v1}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    .line 221
    .local v1, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    const/4 v2, 0x1

    iput v2, v1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    goto :goto_1

    .line 227
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V

    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V

    goto :goto_0

    .line 242
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/GbaAuth$KsNafElem;

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method declared-synchronized reset()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 530
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset GBA to null, previous GBA status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 532
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stringUtf8ToBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 162
    if-nez p1, :cond_0

    monitor-exit p0

    .line 163
    return-object v2

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "ret":[B
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .end local v1    # "ret":[B
    :goto_0
    monitor-exit p0

    .line 174
    return-object v1

    .line 170
    .restart local v1    # "ret":[B
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stringUtf8ToBytes Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized triggerGBABootstrap(I[B[BLjava/lang/Object;)I
    .locals 3
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 251
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enter triggerGBABootstrap gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    const-string/jumbo v1, ", asyncSign="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, ", rand="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string/jumbo v1, ", auth="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 257
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 259
    new-instance v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$BtidElem;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 260
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 263
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mbUsed:Z

    .line 266
    if-nez p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/huawei/ims/ImsRIL;->requestUiccAuth([B[BLandroid/os/Message;)V

    .line 276
    :goto_0
    const-string/jumbo v0, "leave triggerGBABootstrap"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 278
    return v2

    .line 273
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/huawei/ims/ImsRIL;->requestUiccGbaBootstrap([B[BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized triggerGBABpUpdate(I[B[BLjava/lang/String;Ljava/lang/Object;)I
    .locals 8
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "btid"    # [B
    .param p4, "lifetime"    # Ljava/lang/String;
    .param p5, "asyncSign"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 282
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter triggerGBABpUpdate, gbaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 283
    const-string/jumbo v6, ", lifetime="

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 283
    const-string/jumbo v6, ", asyncSign="

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 284
    const-string/jumbo v6, ", rand="

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 284
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 285
    const-string/jumbo v6, ", btid="

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 285
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 287
    sget-object v5, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v5, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 288
    iput-object p5, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 290
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 291
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p3, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    .line 292
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p2, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 304
    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 305
    .local v3, "expectLifeTime":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v3, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 306
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v6, v6, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v5, v6}, Ljava/util/Date;->setMinutes(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "expectLifeTime":Ljava/util/Date;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-nez v5, :cond_0

    .line 322
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 323
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-virtual {v0, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 324
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object v0, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can not parse the lifetime. set lifetime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v6, v6, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 328
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_0
    if-nez p1, :cond_2

    .line 330
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v5, v6}, Lcom/huawei/ims/GbaAuth;->restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V

    .line 332
    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    const/4 v6, 0x7

    invoke-virtual {p0, v6, v5}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 333
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {p0, v4}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 335
    const-string/jumbo v5, "leave triggerGBABpUpdate"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 336
    return v7

    .line 309
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v1    # "df":Ljava/text/SimpleDateFormat;
    .restart local v3    # "expectLifeTime":Ljava/util/Date;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "enter triggerGBABpUpdate, expect lifeTime is timeout, use the lifetime from nework"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 314
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "expectLifeTime":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[error] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 344
    :cond_2
    :try_start_5
    const-string/jumbo v5, "leave triggerGBABpUpdate"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    const/4 v5, 0x1

    monitor-exit p0

    return v5
.end method

.method declared-synchronized triggerGBAKsNAF(I[B[BLjava/lang/Object;)I
    .locals 11
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B
    .param p3, "impi"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    monitor-enter p0

    .line 350
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enter triggerGBAKsNAF, gbaType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 351
    const-string/jumbo v7, ", asyncSign="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    const-string/jumbo v7, ", nafId="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v7

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 353
    const-string/jumbo v7, ", impi="

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 353
    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v7

    .line 350
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->isBootstrapExpire(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 361
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->handleBootstrapExpire(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 362
    return v9

    .line 365
    :cond_0
    :try_start_1
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->addBootstrapTimes(Ljava/lang/String;)V

    .line 368
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "naf":Ljava/lang/String;
    sget-object v6, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v6, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 370
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 372
    if-nez p1, :cond_5

    .line 374
    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 377
    .local v1, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    if-nez v1, :cond_1

    .line 378
    new-instance v1, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .end local v1    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    invoke-direct {v1}, Lcom/huawei/ims/GbaAuth$KsNafElem;-><init>()V

    .line 379
    .restart local v1    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    iput p1, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    .line 380
    iput-object p2, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 381
    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v6, v6, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    iput-object v6, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBTid:[B

    .line 384
    :cond_1
    sget-object v6, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v6, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 388
    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/huawei/ims/GbaAuth;->mCurrBTid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v7, v7, Lcom/huawei/ims/GbaAuth$BtidElem;->mBTid:[B

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 390
    .local v0, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    if-nez v0, :cond_2

    .line 394
    const-string/jumbo v6, "leave triggerGBAKsNAF, btid get btid null"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 395
    return v9

    .line 399
    :cond_2
    :try_start_2
    iget-object v6, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    iget-object v7, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B

    iget-object v8, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    invoke-direct {p0, v7, p3, v8}, Lcom/huawei/ims/GbaAuth;->generateS([B[B[B)[B

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/huawei/ims/GbaAuth;->hmacSha256([B[B)[B

    move-result-object v2

    .line 402
    .local v2, "ksnaf":[B
    if-nez v2, :cond_3

    .line 403
    const-string/jumbo v6, "ksnaf is null, AKA is failed"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 404
    return v9

    .line 407
    :cond_3
    :try_start_3
    iget-boolean v6, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    if-eqz v6, :cond_4

    .line 408
    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    iput-object v6, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    .line 413
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ksnaf, base64="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/huawei/ims/GbaAuth;->mKsnafEncodedByBase64:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v7}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V

    .line 416
    iget-object v6, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/16 v6, 0x8

    invoke-virtual {p0, v6, v1}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 419
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p0, v3}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 421
    const-string/jumbo v6, "leave triggerGBAKsNAF"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 422
    return v10

    .line 410
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_4
    iput-object v2, v1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v1    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v2    # "ksnaf":[B
    .end local v4    # "naf":Ljava/lang/String;
    .end local v5    # "nafIdHexString":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 426
    .restart local v4    # "naf":Ljava/lang/String;
    .restart local v5    # "nafIdHexString":Ljava/lang/String;
    :cond_5
    :try_start_5
    sget-object v6, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v6, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 427
    return v9
.end method
