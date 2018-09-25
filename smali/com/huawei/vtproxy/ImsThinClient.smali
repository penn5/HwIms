.class public Lcom/huawei/vtproxy/ImsThinClient;
.super Ljava/lang/Object;
.source "ImsThinClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;,
        Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;
    }
.end annotation


# static fields
.field public static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field public static final CAAS_EVENT_PEER_RESOLUTION_CHANGE:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE"

.field public static final CAAS_EVENT_PLAYER_START:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PLAYER_START"

.field public static final CAAS_EVENT_PLAYER_STOP:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP"

.field public static final CAAS_EVENT_START_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.START_READY"

.field public static final CAAS_EVENT_VIDEO_QUALITY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY"

.field private static final DEFAULT_LOCAL_IPV4:Ljava/lang/String; = "127.0.0.1"

.field private static final EN_VSC_EVENT_PARAM_READY:I = 0x1

.field private static final EN_VSC_EVENT_PEER_RESOLUTION_CHANGE:I = 0x5

.field private static final EN_VSC_EVENT_PLAYER_START:I = 0x3

.field private static final EN_VSC_EVENT_PLAYER_STOP:I = 0x4

.field private static final EN_VSC_EVENT_START_READY:I = 0x2

.field private static final EN_VSC_EVENT_VIDEO_QUALITY:I = 0x6

.field private static EN_VSC_VPARA_LOCAL_MIRROR:I = 0x0

.field private static EN_VSC_VPARA_LOCAL_ROTATE:I = 0x0

.field private static EN_VSC_VPARA_NEGO_FPS:I = 0x0

.field private static EN_VSC_VPARA_NEGO_HEIGHT:I = 0x0

.field private static EN_VSC_VPARA_NEGO_WIDTH:I = 0x0

.field private static EN_VSC_VPARA_PEER_HEIGHT:I = 0x0

.field private static EN_VSC_VPARA_PEER_WIDTH:I = 0x0

.field private static EN_VSC_VPARA_QUALITY_LEVEL:I = 0x0

.field private static EN_VSC_VPARA_REMOTE_ROTATE:I = 0x0

.field public static final PARAM_QOS_LEVEL:Ljava/lang/String; = "qos_level"

.field public static final VT_FAILED:I = -0x1

.field public static final VT_OK:I

.field private static chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

.field private static volatile isSdkInited:Z

.field private static itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

.field private static mContext:Landroid/content/Context;

.field private static final mSdkHandler:Landroid/os/Handler;

.field private static final mZpandModDriveMsg:Ljava/lang/Runnable;

.field private static mZpandTimerActive:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 132
    const/4 v0, 0x1

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_LOCAL_ROTATE:I

    .line 133
    const/4 v0, 0x2

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_REMOTE_ROTATE:I

    .line 134
    const/4 v0, 0x3

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_FPS:I

    .line 135
    const/4 v0, 0x4

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_HEIGHT:I

    .line 136
    const/4 v0, 0x5

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_WIDTH:I

    .line 137
    const/4 v0, 0x6

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_PEER_HEIGHT:I

    .line 138
    const/4 v0, 0x7

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_PEER_WIDTH:I

    .line 139
    const/16 v0, 0x8

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_LOCAL_MIRROR:I

    .line 140
    const/16 v0, 0x9

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_QUALITY_LEVEL:I

    .line 160
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$1;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$1;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mZpandModDriveMsg:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$2;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$2;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mSdkHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method

.method private static ReportCurrentResCallBack(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 534
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "----UICALLBACK : [ReportCurrentResCallBack] enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    if-nez v0, :cond_0

    .line 540
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "----UICALLBACK : [ReportCurrentResCallBack] callback interface not set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    invoke-interface {v0, p0, p1}, Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;->getCurrentDynamicRes(II)V

    goto :goto_0
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->zpandModDriveMsg()V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 17
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->driveSdk(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActive()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static chrHmeReportCb([I)V
    .locals 7
    .param p0, "hmeChrData"    # [I

    .prologue
    .line 493
    const-string/jumbo v5, "VTPROXY"

    const-string/jumbo v6, "chrHmeReportCb in func"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "chrHmeReportCb hmeChrData : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, "logString":Ljava/lang/StringBuffer;
    if-nez p0, :cond_1

    .line 503
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "VTPROXY"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v5, Lcom/huawei/vtproxy/ImsThinClient;->chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    if-nez v5, :cond_2

    .line 511
    const-string/jumbo v5, "VTPROXY"

    const-string/jumbo v6, "chrHmeReportCb hme chr cb func is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 498
    :cond_1
    move-object v1, p0

    .local v1, "arr$":[I
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 500
    .local v0, "a":I
    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "a":I
    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    sget-object v5, Lcom/huawei/vtproxy/ImsThinClient;->chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    invoke-interface {v5, p0}, Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;->chrHmeCbGetErrReport([I)V

    goto :goto_0
.end method

.method public static createHmeLogFolder()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/vtproxy/ImsThinClient$4;

    invoke-direct {v1}, Lcom/huawei/vtproxy/ImsThinClient$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 279
    return-void
.end method

.method static createHmeLogPath(Ljava/io/File;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 604
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 605
    .local v1, "isSucceed":Z
    if-eqz v1, :cond_1

    .line 612
    const-string/jumbo v2, "VTPROXY"

    const-string/jumbo v3, "createHmeLogPath successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v1    # "isSucceed":Z
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createHmeLogPath failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v4

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isSucceed":Z
    :cond_1
    :try_start_1
    const-string/jumbo v2, "VTPROXY"

    const-string/jumbo v3, "createHmeLogPath failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    return v4
.end method

.method public static deInitImsThinClient()I
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 290
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "######deinit############"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->nativeDestroy()I

    move-result v0

    return v0
.end method

.method static deleteHmeLogPath(Ljava/io/File;)Z
    .locals 8
    .param p0, "filePath"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    const/4 v3, 0x0

    .line 633
    .local v3, "success":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 636
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 654
    :cond_0
    const-string/jumbo v4, "VTPROXY"

    const-string/jumbo v5, "deleteHmeLogPath success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return v7

    .line 634
    :cond_1
    return v6

    .line 638
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 639
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 644
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 646
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    .line 647
    if-eqz v3, :cond_4

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    .end local v2    # "i":I
    :cond_3
    const-string/jumbo v4, "VTPROXY"

    const-string/jumbo v5, "empty directory"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v7

    .line 649
    .restart local v2    # "i":I
    :cond_4
    const-string/jumbo v4, "VTPROXY"

    const-string/jumbo v5, "deleteHmeLogPath failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return v6

    .line 657
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteHmeLogPath failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VTPROXY"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v6
.end method

.method private static native driveSdk(I)I
.end method

.method private static native enableHmeLog(Z)V
.end method

.method private static native enableSetInitMaxBitRate(Z)V
.end method

.method private static getEventNameByEnum(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventEnum"    # I

    .prologue
    .line 471
    packed-switch p0, :pswitch_data_0

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 473
    :pswitch_0
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    return-object v0

    .line 475
    :pswitch_1
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.START_READY"

    return-object v0

    .line 477
    :pswitch_2
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.PLAYER_START"

    return-object v0

    .line 479
    :pswitch_3
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP"

    return-object v0

    .line 481
    :pswitch_4
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE"

    return-object v0

    .line 483
    :pswitch_5
    const-string/jumbo v0, "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY"

    return-object v0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static native getImsLpdcpThreshold()I
.end method

.method public static getLpdcpThreshold()I
    .locals 2

    .prologue
    .line 443
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "getThreshold begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getImsLpdcpThreshold()I

    move-result v0

    return v0
.end method

.method public static getNegotiatedFPS()I
    .locals 1

    .prologue
    .line 378
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_FPS:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getNegotiatedHeight()I
    .locals 1

    .prologue
    .line 387
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_HEIGHT:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getNegotiatedWidth()I
    .locals 1

    .prologue
    .line 396
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_NEGO_WIDTH:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method private static native getParaInt(I)I
.end method

.method public static getPeerHeight()I
    .locals 1

    .prologue
    .line 405
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_PEER_HEIGHT:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getPeerWidth()I
    .locals 1

    .prologue
    .line 414
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_PEER_WIDTH:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method private static native getQosInfo([Lcom/huawei/vtproxy/QosInfo;)I
.end method

.method public static getVideoQosInfo()Lcom/huawei/vtproxy/QosInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 428
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/huawei/vtproxy/QosInfo;

    .line 429
    .local v0, "qosInfo":[Lcom/huawei/vtproxy/QosInfo;
    new-instance v1, Lcom/huawei/vtproxy/QosInfo;

    invoke-direct {v1}, Lcom/huawei/vtproxy/QosInfo;-><init>()V

    aput-object v1, v0, v2

    .line 431
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getQosInfo([Lcom/huawei/vtproxy/QosInfo;)I

    .line 432
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 438
    aget-object v1, v0, v2

    return-object v1

    .line 434
    :cond_0
    const-string/jumbo v1, "VTPROXY"

    const-string/jumbo v2, "getVideoQos qosInfo is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v3
.end method

.method public static getVideoQualityIndication()I
    .locals 1

    .prologue
    .line 423
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_QUALITY_LEVEL:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static hideRmtVideo()I
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######hideRmtVideo context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->stopRmtVideo()I

    move-result v0

    return v0
.end method

.method private static imsEventNotifyCb(II)V
    .locals 4
    .param p0, "value"    # I
    .param p1, "sessionId"    # I

    .prologue
    .line 553
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->getEventNameByEnum(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "eventName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 558
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-eq v2, p0, :cond_1

    .line 564
    :goto_0
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "######imsEventNotifyCb: use UT context ########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/sci/SciSys;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/huawei/sci/SciSys;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 574
    :goto_1
    return-void

    .line 555
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 560
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, "ims_sdk_res_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "######imsEventNotifyCb: use VT context,########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "######imsEventNotifyCb: use VT context,########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private static imsGetLocalAddrCb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 591
    const-string/jumbo v0, "net.lte.vt.local_ip"

    const-string/jumbo v1, "127.0.0.1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static imsProcBootCompleted()V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "imsProcBootCompleted enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method private static imsSetLocalAddrCb(Ljava/lang/String;)V
    .locals 2
    .param p0, "strIP"    # Ljava/lang/String;

    .prologue
    .line 578
    if-eqz p0, :cond_0

    .line 584
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "########JniVsImsSetLocalAddrCb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string/jumbo v0, "net.lte.vt.local_ip"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 580
    :cond_0
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "######JniVsImsSetLocalAddrCb: Input is NULL########"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public static initImsThinClient(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 228
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "######init############"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    .line 232
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "2014-06-24"

    invoke-static {v1, v2, v0}, Lcom/huawei/vtproxy/ImsThinClient;->nativeInit(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0

    .line 234
    :cond_0
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "initImsThinClient mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSdkInited()Z
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    return v0
.end method

.method private static native nativeDestroy()I
.end method

.method private static native nativeInit(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public static pauseImsRTPStream(I)I
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 459
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->pauseRTPStream(I)I

    move-result v0

    return v0
.end method

.method private static native pauseRTPStream(I)I
.end method

.method private static native pauseRmtVideo()I
.end method

.method public static pauseVideo()I
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#####pauseVideo context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseRmtVideo()I

    move-result v0

    return v0
.end method

.method public static resumeImsRTPStream(I)I
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 462
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeRTPStream(I)I

    move-result v0

    return v0
.end method

.method private static native resumeRTPStream(I)I
.end method

.method private static native resumeRmtVideo()I
.end method

.method public static resumeVideo()I
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#####resumeVideo context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeRmtVideo()I

    move-result v0

    return v0
.end method

.method public static setBuffInfo(JJJJ)I
    .locals 2
    .param p0, "curBuffTime"    # J
    .param p2, "curBuffPktNum"    # J
    .param p4, "macUlThrput"    # J
    .param p6, "maxBuffTime"    # J

    .prologue
    .line 448
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "setBuffInfo begin!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static/range {p0 .. p7}, Lcom/huawei/vtproxy/ImsThinClient;->setImsBuffInfo(JJJJ)I

    move-result v0

    return v0
.end method

.method public static setChrHmeCallBack(Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .prologue
    .line 516
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "setChrHmeCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 518
    return-void
.end method

.method private static native setCurrentSession(I)I
.end method

.method public static setDeviceOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######set device orientation context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceOrientation: orientation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/vtproxy/ImsThinClient;->startRotateLocalRmtVideo(IZ)I

    move-result v0

    return v0
.end method

.method public static setDeviceOrientation(IZ)I
    .locals 2
    .param p0, "orientation"    # I
    .param p1, "enableLandScape"    # Z

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######set device orientation context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceOrientation: orientation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableLandScape is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsThinClient;->startRotateLocalRmtVideo(IZ)I

    move-result v0

    return v0
.end method

.method public static setFarEndSurface(Landroid/view/Surface;)I
    .locals 2
    .param p0, "remoteSurface"    # Landroid/view/Surface;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######setremotewin ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->setRemoteView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setFarEndSurface(Landroid/view/SurfaceView;)I
    .locals 2
    .param p0, "remoteView"    # Landroid/view/SurfaceView;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######setremotewin ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setRemoteView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V
    .locals 2
    .param p0, "func_getResCb"    # Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .prologue
    .line 546
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "----UICALLBACK : setGetResCallBack enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 549
    return-void
.end method

.method static setHmeLog(Z)V
    .locals 0
    .param p0, "isWrite"    # Z

    .prologue
    .line 665
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->enableHmeLog(Z)V

    .line 666
    return-void
.end method

.method private static native setImsBuffInfo(JJJJ)I
.end method

.method public static setImsCurrentSession(I)I
    .locals 1
    .param p0, "sessionId"    # I

    .prologue
    .line 466
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->setCurrentSession(I)I

    move-result v0

    return v0
.end method

.method private static native setImsRlQualInfo(IIII)I
.end method

.method public static setInitMaxBitRate(Z)V
    .locals 2
    .param p0, "isFlag"    # Z

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInitMaxBitRate isFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->enableSetInitMaxBitRate(Z)V

    .line 672
    return-void
.end method

.method private static native setParaInt(II)I
.end method

.method private static native setRemoteView(Ljava/lang/Object;)I
.end method

.method public static setRlQualInfo(IIII)I
    .locals 1
    .param p0, "rsrp"    # I
    .param p1, "rsrq"    # I
    .param p2, "rssi"    # I
    .param p3, "bler"    # I

    .prologue
    .line 453
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsRlQualInfo(IIII)I

    move-result v0

    return v0
.end method

.method public static setRmtVideoOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######set remote vidio orientation context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->EN_VSC_VPARA_REMOTE_ROTATE:I

    invoke-static {v0, p0}, Lcom/huawei/vtproxy/ImsThinClient;->setParaInt(II)I

    move-result v0

    return v0
.end method

.method public static showRmtVideo()I
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "######showRmtVideo context is ############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->startRmtVideo()I

    move-result v0

    return v0
.end method

.method private static native startRmtVideo()I
.end method

.method private static native startRotateLocalRmtVideo(IZ)I
.end method

.method private static native stopRmtVideo()I
.end method

.method private static native zpandModDriveMsg()V
.end method

.method public static zpandModPostDrv()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 176
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->mSdkHandler:Landroid/os/Handler;

    sget-object v3, Lcom/huawei/vtproxy/ImsThinClient;->mZpandModDriveMsg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 178
    .local v0, "ret":Z
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    return v1
.end method

.method private static native zpandTimerActive()V
.end method

.method public static zpandTimerDestroy()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerInit()I
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$3;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$3;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerStart(J)I
    .locals 4
    .param p0, "dwTimeLen"    # J

    .prologue
    const/4 v1, 0x0

    .line 202
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->mSdkHandler:Landroid/os/Handler;

    sget-object v3, Lcom/huawei/vtproxy/ImsThinClient;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 204
    .local v0, "ret":Z
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    return v1
.end method

.method public static zpandTimerStop()I
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->mSdkHandler:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    const/4 v0, 0x0

    return v0
.end method
