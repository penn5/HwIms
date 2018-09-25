.class public Lcom/huawei/sci/SciSys;
.super Ljava/lang/Object;
.source "SciSys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSys$SYS_TIME;
    }
.end annotation


# static fields
.field public static final EVENT_WHAT:I = 0x0

.field public static final LOG_DIR:Ljava/lang/String; = "hrslog"

.field public static final LOG_QOE_DIR:Ljava/lang/String; = "qoelog"

.field public static final SCI_ACC_NET_3GPP_CDMA:I = 0x8

.field public static final SCI_ACC_NET_3GPP_EUTRAN:I = 0x17

.field public static final SCI_ACC_NET_3GPP_EUTRAN_FDD:I = 0x15

.field public static final SCI_ACC_NET_3GPP_EUTRAN_TDD:I = 0x16

.field public static final SCI_ACC_NET_3GPP_EVDO:I = 0x9

.field public static final SCI_ACC_NET_3GPP_GERAN:I = 0x5

.field public static final SCI_ACC_NET_3GPP_HSPA:I = 0xa

.field public static final SCI_ACC_NET_3GPP_UTRAN:I = 0x14

.field public static final SCI_ACC_NET_3GPP_UTRAN_FDD:I = 0x6

.field public static final SCI_ACC_NET_3GPP_UTRAN_TDD:I = 0x7

.field public static final SCI_ACC_NET_802_11A:I = 0x1

.field public static final SCI_ACC_NET_802_11B:I = 0x2

.field public static final SCI_ACC_NET_802_11G:I = 0x3

.field public static final SCI_ACC_NET_802_11N:I = 0x4

.field public static final SCI_ACC_NET_UNKNOWN:I = 0x0

.field public static final SCI_ACC_NET_WMF_MOBILE_WIMAX:I = 0xc

.field public static final SCI_SERVER_STATUS_CONNECT:I = 0x1

.field public static final SCI_SERVER_STATUS_DISCONNECT:I = 0x0

.field public static final SCI_SERVER_STATUS_TEMPERR:I = 0x2

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_EXPIRED:I = 0x1b

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_INVALID:I = 0x1a

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCOUNT_EXCEPTION:I = 0x9

.field public static final SCI_SRV_DISCONNECT_STATCODE_APPKEY_INVALID:I = 0x1c

.field public static final SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED:I = 0x0

.field public static final SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED_RELOGIN:I = 0x7

.field public static final SCI_SRV_DISCONNECT_STATCODE_CANCEL:I = 0x8

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_ACTION_NEEDED:I = 0xc

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_DISABLED:I = 0xb

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_DORMANT:I = 0xd

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_INVALID_REQ:I = 0x10

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_MSISDN_INVALID:I = 0x19

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_NETPWRK_AUTH_FAILED:I = 0x13

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_OTP_INVALID:I = 0x20

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_PWD_MISSED:I = 0x14

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_ACK:I = 0x17

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_REQUEST:I = 0x16

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST:I = 0x15

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST_NOTIFY:I = 0x18

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RETRY_LATER:I = 0x12

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_SERVER_IN_ERR:I = 0x11

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_TMP_DISABLED:I = 0x1e

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONNCET_ERR:I = 0x1

.field public static final SCI_SRV_DISCONNECT_STATCODE_DEACTED:I = 0x4

.field public static final SCI_SRV_DISCONNECT_STATCODE_RMVED_USER:I = 0xf

.field public static final SCI_SRV_DISCONNECT_STATCODE_SERVER_BUSY:I = 0x2

.field public static final SCI_SRV_DISCONNECT_STATCODE_SRV_FORCE_LOGOUT:I = 0x5

.field public static final SCI_SRV_DISCONNECT_STATCODE_UNKNOWN_ERR:I = 0x6

.field public static final SCI_SRV_DISCONNECT_STATCODE_UNREG_USER:I = 0xe

.field public static final SCI_SRV_DISCONNECT_STATCODE_USER_SWITCHED:I = 0x1d

.field public static final SCI_SRV_DISCONNECT_STATCODE_WRONG_LOCAL_TIME:I = 0x3

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_CONNECTING:I = 0x1

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_DISCONNECTED:I = 0x2

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_NET_UNAVAILABLE:I = 0x0

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_OTHER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SCI"

.field public static final ZFAILED:I = 0x1

.field public static final ZOK:I

.field private static bInitFlag:Z

.field private static deleteLogPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mExistLibInLibPath:Z

.field private static mLibPath:Ljava/lang/String;

.field private static mLibPathX:Ljava/lang/String;

.field private static final mSciHandler:Landroid/os/Handler;

.field private static final mSciHandlerX:Landroid/os/Handler;

.field private static final mSdkHandler:Landroid/os/Handler;

.field private static mWorkPath:Ljava/lang/String;

.field private static final mZpandModDriveMsg:Ljava/lang/Runnable;

.field private static mZpandTimerActive:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    sput-object v1, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    .line 83
    sput-boolean v2, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 85
    const-string/jumbo v0, "/data/data/com.huawei.ims/caas"

    sput-object v0, Lcom/huawei/sci/SciSys;->deleteLogPath:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/huawei/sci/SciSys$1;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$1;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/huawei/sci/SciSys$2;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$2;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/huawei/sci/SciSys$3;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$3;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/huawei/sci/SciSys$4;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$4;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mZpandModDriveMsg:Ljava/lang/Runnable;

    .line 136
    sput-object v1, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    .line 137
    sput-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    .line 138
    sput-boolean v2, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method static synthetic access$000(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSys;->driveSdk(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSys;->driveSci(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandModDriveMsg()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandTimerActive()V

    return-void
.end method

.method public static native clean()V
.end method

.method public static cliCbEvnt(J)I
    .locals 6
    .param p0, "zEvntId"    # J

    .prologue
    const/4 v2, 0x0

    .line 313
    sget-object v3, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    sget-object v3, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 316
    .local v1, "ret":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static native construct()V
.end method

.method private static createLogPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pcWorkPath"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hrslog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/sci/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hrslog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "pcLogPath":Ljava/lang/String;
    return-object v0
.end method

.method private static createLogQoePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "pcWorkPath"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "qoelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 244
    return-void
.end method

.method public static native decryptData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    sget-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    sput-boolean v1, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 272
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSys;->clean()V

    goto :goto_0
.end method

.method private static native driveSci(J)I
.end method

.method private static native driveSdk(J)I
.end method

.method public static native encryptData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getBuildTime()Ljava/lang/String;
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/huawei/sci/FileUtils;->isHasSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLogPathInWorkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLogPathInSDCard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurLogQoePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/huawei/sci/FileUtils;->isHasSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLogQoePathInWorkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLogQoePathInSDCard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getDMParamConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getInitFlag()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    return v0
.end method

.method public static native getKeepAliveTimerLen()J
.end method

.method public static native getLastErrNo()J
.end method

.method public static getLibPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogPathInSDCard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/sci/FileUtils;->getSDCardRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogPathInWorkPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogQoePathInSDCard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/sci/FileUtils;->getSDCardRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "qoelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogQoePathInWorkPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "qoelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getServerLoginStatus()I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pcCurVersion"    # Ljava/lang/String;
    .param p2, "logCfg"    # Lcom/huawei/sci/SciLogCfg;
    .param p3, "dwCompMask"    # J

    .prologue
    .line 188
    invoke-static {p0}, Lcom/huawei/sci/SciSys;->initLibPath(Landroid/content/Context;)V

    .line 190
    const-string/jumbo v0, "hw_sys"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "login"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "sci"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/huawei/sci/SciSys;->construct()V

    .line 198
    sput-object p0, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 202
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/sci/SciSys;->init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I

    move-result v0

    return v0
.end method

.method public static native init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
.end method

.method private static initLibPath(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 152
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    .line 159
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/libhw_sys.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mExistLibInLibPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mLibPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mLibPathX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCI"

    invoke-static {v1, v0}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 150
    :cond_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    goto :goto_0
.end method

.method public static native isVersionChanged()Z
.end method

.method public static native keepAlive()I
.end method

.method public static loadLib(Ljava/lang/String;)V
    .locals 2
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mExistLibInLibPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mLibPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " libName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCI"

    invoke-static {v1, v0}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-boolean v0, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 181
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native notifyNetConnect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native notifyNetDisconnect()I
.end method

.method public static native setAppOnForeGround(Z)I
.end method

.method public static native setKeepAliveEnable(Z)I
.end method

.method public static setLibPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "libPath"    # Ljava/lang/String;

    .prologue
    .line 141
    sput-object p0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static native setNotifyFilter(ILjava/lang/String;)I
.end method

.method public static native setScreenUnLock(Z)I
.end method

.method public static native setSharingSipStack(Z)I
.end method

.method public static sysCbEvnt(J)I
    .locals 6
    .param p0, "zEvntId"    # J

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v3, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    sget-object v3, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 324
    .local v1, "ret":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static sysCbEvntX(J)V
    .locals 4
    .param p0, "zEvntId"    # J

    .prologue
    .line 329
    sget-object v1, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public static native transferTime2SysTime(J[Lcom/huawei/sci/SciSys$SYS_TIME;)I
.end method

.method private static native zpandModDriveMsg()V
.end method

.method public static zpandModPostDrv()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 338
    sget-object v2, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v3, Lcom/huawei/sci/SciSys;->mZpandModDriveMsg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 340
    .local v0, "ret":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static native zpandTimerActive()V
.end method

.method public static zpandTimerDestroy()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerInit()I
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/huawei/sci/SciSys$5;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$5;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerStart(J)I
    .locals 4
    .param p0, "dwTimeLen"    # J

    .prologue
    const/4 v1, 0x0

    .line 364
    sget-object v2, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v3, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 366
    .local v0, "ret":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static zpandTimerStop()I
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    const/4 v0, 0x0

    return v0
.end method
