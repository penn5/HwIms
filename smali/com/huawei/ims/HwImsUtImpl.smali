.class public Lcom/huawei/ims/HwImsUtImpl;
.super Lcom/huawei/ims/ImsUtImpl;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsUtImpl$1;,
        Lcom/huawei/ims/HwImsUtImpl$2;,
        Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;,
        Lcom/huawei/ims/HwImsUtImpl$CmdState;,
        Lcom/huawei/ims/HwImsUtImpl$CmdToken;,
        Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;,
        Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;,
        Lcom/huawei/ims/HwImsUtImpl$UTData;,
        Lcom/huawei/ims/HwImsUtImpl$UtCmd;,
        Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;,
        Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;
    }
.end annotation


# static fields
.field private static final synthetic -com-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues:[I = null

.field private static final synthetic -com-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues:[I = null

.field private static final synthetic -com-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues:[I = null

.field private static final synthetic -com-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues:[I = null

.field private static final synthetic -com-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues:[I = null

.field public static final ACTION_MAPCON_SERVICE_FAILED:Ljava/lang/String; = "com.hisi.mapcon.servicefailed"

.field public static final CALL_SDK_FAILED:I = -0x1

.field public static final CALL_SDK_SUCCESSFULLY:I = 0x0

.field public static final CALL_WAITING_ACTIVE:I = 0x1

.field public static final CALL_WAITING_DEACTIVE:I = 0x0

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field public static final CFT_DATE_NUM:I = 0x2

.field public static final CF_REASON_TIME:I = 0x6

.field private static final CLEAR_TCP_GBA_PARM:I = 0x0

.field private static final CLEAR_TCP_GBA_UTCFG_PARM:I = 0x1

.field public static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final DC_ALARM_IN_MS:I = 0x2710

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CURRENT_SUB_ID:I = -0x1

.field public static final DEFAULT_NO_REPLY_TIME:I = 0x14

.field private static final DEFAULT_NO_REPLY_TIMER:I = -0x1

.field private static final EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT:I = 0x1

.field private static final EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT:I = 0x0

.field private static final EVENT_ECT_RESULT:I = 0x32

.field public static final EVENT_GET_CS_CALL_WAITING_DONE:I = 0x1b

.field public static final EVENT_QUERY_CALL_WAITING:I = 0x14

.field public static final EVENT_QUERY_CLIR:I = 0x16

.field public static final EVENT_SET_CS_CALL_WAITING_DONE:I = 0x1c

.field public static final EVENT_SYNC_CLIR_TO_IMS_DONE:I = 0x1f

.field public static final EVENT_SYNC_CW_TO_CS_DONE:I = 0x1e

.field public static final EVENT_SYNC_CW_TO_IMS_DONE:I = 0x1d

.field public static final EVENT_UPDATE_CALL_WAITING:I = 0x15

.field public static final EVENT_UPDATE_CLIR:I = 0x17

.field private static FLAG_DEFAULT_VOLTE_VALUE:I = 0x0

.field private static FLAG_IS_NOT_VOLTE:I = 0x0

.field private static FLAG_IS_VOLTE:I = 0x0

.field public static final GENERAL_TELEPHONE_NUMBER:I = 0x81

.field public static final GET_CALL_WAITING_DURATION_TIME:I = 0x5

.field public static final HANDLER_ARG_RESERVE:I = 0x0

.field public static final ILLEGAL_NUMBER:I = -0x1

.field private static final IMS_DATA_CONNECTION_KEEPALIVE_IN_MS:I = 0x7530

.field private static final IMS_DATA_CONNECTION_TIMEOUT_IN_MS:I = 0x2710

.field private static final IMS_GET_HOST_NAME_DELAY_IN_MS:I = 0x64

.field public static final INTERNATIONAL_TELEPHONE_NUMBER:I = 0x91

.field public static final ISVOWIFI_PROP_OPENED:Z

.field public static final IS_UT_USE_IMSAPN:Z

.field public static final LOCAL_CALL_WAITING_DEFAULT_VALUE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsUtImpl"

.field public static final MAPCON_APN:Ljava/lang/String; = "apn"

.field public static final MAPCON_CAUSE:Ljava/lang/String; = "cause"

.field public static final MAPCON_DOMAIN_CELLULAR_PREFER:I = 0x3

.field public static final MAPCON_DOMAIN_LTE_PREFER:I = 0x1

.field public static final MAPCON_DOMAIN_WIFI_ONLY:I = 0x0

.field public static final MAPCON_DOMAIN_WIFI_PREFER:I = 0x2

.field public static final MAPCON_PHONEID:Ljava/lang/String; = "phoneId"

.field public static final MAPCON_SERVERADDR:Ljava/lang/String; = "serverAddr"

.field public static final MAPCON_SERVICE_TYPE_MMS:I = 0x1

.field public static final MAPCON_SERVICE_TYPE_UT:I = 0x2

.field public static final MAPCON_SERVICE_TYPE_VOICE:I = 0x0

.field public static final MAPCON_TYPE:Ljava/lang/String; = "serviceType"

.field public static final MAPCON_UNKNOW_INDEX:I = 0x3

.field public static final MAX_REQUESTS_PENDING:I = 0x32

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final NOT_REGISTERED:I = 0x0

.field public static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED:I = 0x1

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED:I = 0x3

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED:I = 0x2

.field public static final PERMISSION_READ_PRECISE_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRECISE_PHONE_STATE"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_HW_OEMNAME:Ljava/lang/String;

.field public static final SERVICE_CLASS_CW_MODE:I = 0x3

.field public static final SMCOMMON_TYPE_MMS:I = 0x0

.field public static final SMCOMMON_TYPE_OTHERS:I = 0x2

.field public static final SMCOMMON_TYPE_UT:I = 0x1

.field public static final SSCONF_CB_CONDITION_ALL:I = 0x5

.field public static final SSCONF_CB_CONDITION_BAIC:I = 0x0

.field public static final SSCONF_CB_CONDITION_BAICr:I = 0x4

.field public static final SSCONF_CB_CONDITION_BAOC:I = 0x1

.field public static final SSCONF_CB_CONDITION_BAOIC:I = 0x2

.field public static final SSCONF_CB_CONDITION_BAOICxH:I = 0x3

.field public static final SSCONF_CF_REASON_CFB:I = 0x2

.field public static final SSCONF_CF_REASON_CFNL:I = 0x1

.field public static final SSCONF_CF_REASON_CFNR:I = 0x3

.field public static final SSCONF_CF_REASON_CFNRc:I = 0x4

.field public static final SSCONF_CF_REASON_CFT:I = 0x5

.field public static final SSCONF_CF_REASON_CFU:I = 0x0

.field public static final SSCONF_OP_TYPE_GET:I = 0x0

.field public static final SSCONF_OP_TYPE_PUT:I = 0x1

.field public static final SSCONF_SS_TYPE_ALL:I = 0x0

.field public static final SSCONF_SS_TYPE_BAIC:I = 0xf

.field public static final SSCONF_SS_TYPE_BAICr:I = 0x13

.field public static final SSCONF_SS_TYPE_BAOC:I = 0x10

.field public static final SSCONF_SS_TYPE_BAOIC:I = 0x11

.field public static final SSCONF_SS_TYPE_BAOICxH:I = 0x12

.field public static final SSCONF_SS_TYPE_BA_ALL:I = 0x15

.field public static final SSCONF_SS_TYPE_CDIV:I = 0x5

.field public static final SSCONF_SS_TYPE_CFA:I = 0x16

.field public static final SSCONF_SS_TYPE_CFAC:I = 0x17

.field public static final SSCONF_SS_TYPE_CFB:I = 0x9

.field public static final SSCONF_SS_TYPE_CFNL:I = 0x8

.field public static final SSCONF_SS_TYPE_CFNR:I = 0xa

.field public static final SSCONF_SS_TYPE_CFNRc:I = 0xb

.field public static final SSCONF_SS_TYPE_CFT:I = 0xc

.field public static final SSCONF_SS_TYPE_CFU:I = 0x7

.field public static final SSCONF_SS_TYPE_CW:I = 0x14

.field public static final SSCONF_SS_TYPE_ICB:I = 0xd

.field public static final SSCONF_SS_TYPE_MAX:I = 0x18

.field public static final SSCONF_SS_TYPE_NRT:I = 0x6

.field public static final SSCONF_SS_TYPE_OCB:I = 0xe

.field public static final SSCONF_SS_TYPE_OIP:I = 0x1

.field public static final SSCONF_SS_TYPE_OIR:I = 0x3

.field public static final SSCONF_SS_TYPE_TIP:I = 0x2

.field public static final SSCONF_SS_TYPE_TIR:I = 0x4

.field public static final SSCONF_SS_TYPE_UNKNOWN:I = -0x1

.field public static final SS_403_FORBIDDEN_ERROR:I = 0x193

.field public static final SS_404_NOT_FOUND_ERROR:I = 0x194

.field public static final SS_409_CONFLICT_ERROR:I = 0x199

.field public static final SS_ACTIVE:I = 0x1

.field public static final SS_DEACTIVE:I = 0x0

.field public static final SS_ERROR:I = 0x1

.field public static final SS_ERROR_FROM_BSF:I = 0x2

.field public static final SS_ERROR_FROM_NAF:I = 0x1

.field public static final SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR:I = 0x3

.field public static final SS_OK:I = 0x0

.field public static final SS_RESPONSE_CF_NUM:I = 0x1

.field public static final SS_RESPONSE_NUM:I = 0x2

.field public static final SS_SEVICE_CLASS_VOICE:I = 0x1

.field public static final SUB_EVENT_IMS_GET_IMPU_DONE:I = 0xb

.field public static final SUB_EVENT_IMS_UT_CLEAR:I = 0x7

.field public static final SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY:I = 0x5

.field public static final SUB_EVENT_IMS_UT_DC_ALARM:I = 0x29

.field public static final SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY:I = 0xc

.field public static final SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE:I = 0x2

.field public static final SUB_EVENT_IMS_UT_IMS_DC_ALARM:I = 0x2c

.field public static final SUB_EVENT_IMS_UT_INIT:I = 0x8

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED:I = 0x4

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK:I = 0x3

.field public static final SUB_EVENT_IMS_UT_SCISSCONFCB:I = 0x1

.field public static final SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM:I = 0x2e

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM:I = 0x2f

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM:I = 0x30

.field public static final SUB_EVENT_IMS_UT_TICK:I = 0x6

.field public static final SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM:I = 0x2d

.field public static final SUB_EVENT_IMS_UT_UT_ALARM:I = 0x2a

.field public static final SUB_EVENT_IMS_UT_UT_RETRY_ALARM:I = 0x2b

.field public static final SUB_EVENT_SIM_CARD_ABSENT:I = 0xa

.field public static final SUB_EVENT_SIM_RECORDS_LOADED:I = 0x9

.field private static final TEMPORARY_DC_ALARM_IN_MS:I = 0x7530

.field private static final TEMPORARY_UT_STAY_ALARM_IN_MS:I = 0x3e8

.field private static final TUNNEL_SETUP_TIMEOUT_IN_MS:I = 0x2710

.field private static final TYPE_SDK_HOST_BSF:I = 0x1

.field private static final TYPE_SDK_HOST_NAF:I = 0x0

.field private static final UT_ALARM_IN_MS:I = 0x7530

.field public static final UT_DATA_UPDATE_TIME:I = 0xa

.field public static final UT_DOMAIN_CELLULAR:I = 0x2

.field public static final UT_DOMAIN_DEFAULT:I = 0x0

.field public static final UT_DOMAIN_WIFI:I = 0x1

.field public static final UT_ID_INVALID:I = -0x1

.field public static final UT_ID_VALID:I = 0x0

.field public static final UT_INVALID:I = -0x1

.field private static mCurrentSubId:I

.field private static mRequestId:I

.field private static mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;


# instance fields
.field private MAX_UT_TUNNEL_RETRY_TIMES:I

.field private hasSetNetworkAsDefault:Z

.field private hasUtUseAPN:Z

.field private mCallWatingUtCanBeUsed:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private mHasChangedDefaultDataSub:Z

.field private mHasCheckedSIMCardByUT:Z

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field private mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

.field private mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirModeResetCWInModem:Z

.field private mIsDataReg:Z

.field private mIsSimRecordLoaded:Z

.field private mIsUtEnable:Z

.field private mIsUtForbidden:Z

.field private mIsUtSubscribed:Z

.field private mIsVowifi:Z

.field private mIsVowifiTimeOut:Z

.field private mIsWifiTunnnelUp:Z

.field private mLastSS:I

.field private mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

.field private mNetId:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNextGetCallWaitingTime:Ljava/util/Date;

.field private mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private mShowDataConnectionDialog:Z

.field private mSubId:I

.field private mUtAPNInetAddressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mUtCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtDataExpireTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mUtForbiddenDate:Ljava/util/Date;

.field private mUtRetryCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtServiceHandler:Landroid/os/Handler;

.field private mUtTunnelRetryTimes:I

.field private mbReqRoutHost:Z


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    return v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    return v0
.end method

.method static synthetic -get4(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    return v0
.end method

.method static synthetic -get5(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->values()[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1

    :catch_e
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->values()[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->-com-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    return p1
.end method

.method static synthetic -set1(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "-value"    # Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .prologue
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object p1
.end method

.method static synthetic -set2(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return p1
.end method

.method static synthetic -set3(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "-value"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set4(Lcom/huawei/ims/HwImsUtImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtApnConnection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/huawei/ims/HwImsUtImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "flag"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/HwImsUtImpl;Z)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "isVowifi"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4()I
    .locals 1

    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->getIdForRequest()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/huawei/ims/HwImsUtImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "clearAll"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->clearCTCardVolteFlag(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/huawei/ims/HwImsUtImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "iLevel"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleConnectivity(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 196
    const-string/jumbo v0, "ro.config.hw_vowifi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->ISVOWIFI_PROP_OPENED:Z

    .line 355
    const-string/jumbo v0, "ro.hw.oemName"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "ro.config.hw_ut_ims"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_UT_USE_IMSAPN:Z

    .line 581
    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 619
    sput v3, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 628
    sput v3, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 3448
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "card_volte_flag_0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "card_volte_flag_1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 3449
    sput v4, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    .line 3450
    sput v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .line 3451
    sput v3, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsServiceSub;ILcom/huawei/ims/ImsUtImpl;)V
    .locals 5
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I
    .param p3, "imsUtImpl"    # Lcom/huawei/ims/ImsUtImpl;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 654
    invoke-direct {p0}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    .line 179
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 182
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 183
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 185
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    .line 186
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    .line 360
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 365
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 522
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 523
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    .line 529
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 530
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 545
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 551
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 553
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    .line 578
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-direct {v0}, Lcom/huawei/ims/ImsUtListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 583
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 586
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    .line 590
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 591
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 593
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 595
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 599
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    .line 604
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 607
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 616
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 621
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 623
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 624
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 650
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 1887
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsUtImpl$1;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4565
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsUtImpl$2;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 6205
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6374
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 656
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 657
    const-string/jumbo v0, "HwImsUtImpl construtor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    const-string/jumbo v0, "subId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 660
    return-void

    .line 663
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 664
    if-nez p1, :cond_1

    .line 665
    const-string/jumbo v0, "mImsServiceSub is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsServiceSub;->getConfigInterface()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 670
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_2

    .line 671
    const-string/jumbo v0, "mImsConfigImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 672
    return-void

    .line 676
    :cond_2
    iput-object p3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 677
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_3

    .line 678
    const-string/jumbo v0, "mImsUtImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 679
    return-void

    .line 683
    :cond_3
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isEMUILite()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_4

    .line 685
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDK()V

    .line 687
    :cond_4
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->clearCTCardVolteFlag(Z)V

    .line 689
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtServiceThread()V

    .line 690
    return-void
.end method

.method private addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1997
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after add mUtCmdQueue size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2001
    return-void

    .line 1996
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private beginImsConnectivity(Z)I
    .locals 10
    .param p1, "isVowifi"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 4959
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 4960
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4962
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 4963
    const-string/jumbo v2, "get ConnectivityManager null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4964
    const/4 v2, 0x3

    return v2

    .line 4968
    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v7

    .line 4969
    .local v7, "slotId":I
    const/4 v1, 0x0

    .line 4970
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;

    invoke-direct {v2, p0, v9}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 4971
    if-eqz p1, :cond_1

    .line 4972
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 4973
    const/16 v5, 0x9

    .line 4972
    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 4973
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4972
    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 4974
    .local v1, "request":Landroid/net/NetworkRequest;
    const-string/jumbo v2, "handle UT data connection begin ims connectivity of vowifi"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4975
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x2f

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 4977
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 4989
    :goto_0
    return v8

    .line 4980
    .local v1, "request":Landroid/net/NetworkRequest;
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNCapabilities()I

    move-result v6

    .line 4982
    .local v6, "cap":I
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v4

    .line 4983
    .local v4, "connectionType":I
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 4984
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4983
    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 4985
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handle UT data connection begin ims connectivity of volte use connectionType"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4986
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    goto :goto_0
.end method

.method private broadcastUtIdle()V
    .locals 2

    .prologue
    .line 6335
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6336
    return-void

    .line 6339
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_1

    .line 6340
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->broadcastUtIdle(I)V

    .line 6342
    :cond_1
    return-void
.end method

.method private canUse403ForLocalCW()Z
    .locals 1

    .prologue
    .line 6289
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v0

    return v0
.end method

.method private cancelStopImsApnMessage()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 5506
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5507
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 5506
    if-eqz v0, :cond_0

    .line 5508
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5510
    :cond_0
    return-void
.end method

.method private changeDcStateWhenImsActFail()V
    .locals 4

    .prologue
    .line 5104
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5106
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 5108
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5110
    .local v1, "utDomain":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 5111
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5123
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeDcStateWhenImsActFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5126
    .end local v1    # "utDomain":I
    :cond_0
    return-void

    .line 5112
    .restart local v1    # "utDomain":I
    :cond_1
    if-nez v1, :cond_2

    .line 5113
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5114
    :cond_2
    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 5116
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5117
    :cond_3
    const/4 v2, 0x3

    if-ne v2, v1, :cond_4

    .line 5118
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5120
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeDcStateWhenImsActFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeDcStateWhenTunnelSetupFail()V
    .locals 4

    .prologue
    .line 5139
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5141
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 5145
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 5146
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5147
    return-void

    .line 5151
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5153
    .local v1, "utDomain":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_3

    .line 5154
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5165
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeDcStateWhenTunnelSetupFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5168
    .end local v1    # "utDomain":I
    :cond_2
    return-void

    .line 5155
    .restart local v1    # "utDomain":I
    :cond_3
    if-nez v1, :cond_4

    .line 5156
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5157
    :cond_4
    const/4 v2, 0x1

    if-ne v2, v1, :cond_5

    .line 5159
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5160
    :cond_5
    const/4 v2, 0x3

    if-ne v2, v1, :cond_6

    .line 5161
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5163
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeDcStateWhenTunnelSetupFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v0, 0x0

    .line 3509
    if-nez p1, :cond_0

    .line 3510
    const-string/jumbo v1, "ut cmd is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3512
    return v0

    .line 3517
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private checkNetworkAvailable(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 5514
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 5515
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z
    .locals 2
    .param p1, "ds"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .prologue
    .line 3526
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 3530
    if-nez p1, :cond_0

    .line 3531
    const-string/jumbo v0, "ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3533
    const/4 v0, 0x0

    return v0

    .line 3538
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method private checkUtForbiddenDate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5781
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v1, :cond_0

    .line 5782
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5784
    .local v0, "currDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5785
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 5786
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 5789
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_0
    return-void
.end method

.method private clearCTCardVolteFlag(Z)V
    .locals 3
    .param p1, "clearAll"    # Z

    .prologue
    .line 3473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearCTCardVolteFlag clearAll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3474
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 3475
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3476
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3480
    :goto_0
    return-void

    .line 3478
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v1, v1, v2

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private clearSharedPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4084
    const-string/jumbo v1, "enter clearSharedPreferences"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4087
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSIM(Ljava/lang/String;)V

    .line 4088
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setNafAddrFromSIM(Ljava/lang/String;)V

    .line 4089
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setBsfAddrFromSIM(Ljava/lang/String;)V

    .line 4092
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4093
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4092
    invoke-virtual {v1, v2, v5, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4094
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4095
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4094
    invoke-virtual {v1, v2, v5, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4099
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4101
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4100
    const/4 v4, 0x1

    .line 4099
    invoke-virtual {v1, v2, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 4105
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V

    .line 4109
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4111
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 4112
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4113
    const-string/jumbo v1, "ims not registered, set impu from network as null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4115
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4116
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4115
    invoke-virtual {v1, v2, v5, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4123
    :goto_0
    return-void

    .line 4118
    :cond_0
    const-string/jumbo v1, "ims is registered."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4121
    :cond_1
    const-string/jumbo v1, "imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;
    .locals 3
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .prologue
    .line 2536
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 2537
    .local v1, "sbIpAddr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2538
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2540
    :cond_0
    return-object v1
.end method

.method private domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .prologue
    .line 3546
    move-object v0, p1

    .line 3550
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3551
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3556
    :cond_0
    :goto_0
    return-object v0

    .line 3552
    :cond_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3553
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0
.end method

.method private domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .prologue
    .line 3564
    move-object v0, p1

    .line 3568
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3569
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3574
    :cond_0
    :goto_0
    return-object v0

    .line 3570
    :cond_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3571
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 7
    .param p1, "prevDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .param p2, "utType"    # I
    .param p3, "showDcDialog"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter domainSelect, prevDomain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", utType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", showDcDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3580
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isImsSsBeUsed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3581
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3584
    :cond_0
    move-object v0, p1

    .line 3586
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtForbiddenWhenVolteSwitchOff()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3587
    const-string/jumbo v4, "UtForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3590
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVolteSwitchOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3591
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3592
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_1

    .line 3593
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3599
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->checkUtForbiddenDate()V

    .line 3603
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3604
    const-string/jumbo v4, "Ut forbidden"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3606
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3607
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_2

    .line 3608
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3614
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardTypePreferToUseUT()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3615
    const-string/jumbo v4, "this card is not prefer to use UT"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3617
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3618
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_3

    .line 3619
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3623
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3624
    const-string/jumbo v4, "this card MCC MNC is not prefer to use UT"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3626
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3627
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_4

    .line 3628
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3633
    :cond_4
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSUseCsOnly(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3634
    const-string/jumbo v4, "this ut type use cs only"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3636
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3637
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_5

    .line 3638
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3643
    :cond_5
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSForbidFallbackCS(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3644
    const-string/jumbo v4, "this ut type is forbided fallback cs"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3646
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3647
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_6

    .line 3648
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3654
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3655
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    if-nez v4, :cond_8

    .line 3656
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3657
    const-string/jumbo v4, "Ut Not Use Default APN, but has no Ut APN"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3676
    :cond_7
    :goto_0
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v4, v0, :cond_d

    .line 3677
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v4

    .line 3658
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSupportedByCurrentBearer()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3659
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3660
    const-string/jumbo v4, "Ut Not Use Default APN, but current bearer not support ut"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3663
    :cond_9
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSubscribed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3664
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v4

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v4, v5, :cond_b

    .line 3665
    const/16 v4, 0x14

    if-ne p2, v4, :cond_b

    .line 3667
    :cond_a
    const-string/jumbo v4, "CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3665
    :cond_b
    const/4 v4, 0x3

    if-ne p2, v4, :cond_c

    .line 3666
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v4

    if-eq v4, v6, :cond_a

    .line 3669
    :cond_c
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3670
    const-string/jumbo v4, "Ut Not Use Default APN, but ut service not subscibed"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3683
    :cond_d
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    .line 3684
    .local v1, "isUtCanUseWifi":Z
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v3

    .line 3686
    .local v3, "isWifiConnected":Z
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseDefaultApnForWifiConnected()Z

    move-result v2

    .line 3698
    .local v2, "isUtUseDefaultApnForWifiConnected":Z
    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 3699
    const-string/jumbo v4, "wifi has connected, Ut will use wifi link"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3737
    :cond_e
    :goto_1
    return-object v0

    .line 3700
    :cond_f
    if-nez v1, :cond_12

    if-eqz v3, :cond_12

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3703
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    if-eqz v2, :cond_10

    .line 3704
    if-eqz p3, :cond_e

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 3705
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3706
    iput-boolean v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3708
    :cond_10
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p3, :cond_11

    .line 3710
    const-string/jumbo v4, "tip user to diconnect wifi"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3714
    :cond_11
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    goto :goto_1

    .line 3719
    :cond_12
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 3721
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz p3, :cond_13

    .line 3722
    const-string/jumbo v4, "Show a dialog to notice user to turn data switch on"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3725
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3727
    iput-boolean v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3731
    :cond_13
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    goto :goto_1
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v2, -0x1

    .line 3745
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3747
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    if-nez p1, :cond_0

    .line 3748
    const-string/jumbo v1, "cmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3750
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3753
    :cond_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    if-eq v2, v1, :cond_1

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-ne v2, v1, :cond_2

    .line 3754
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3757
    :cond_2
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    return-object v1
.end method

.method private endConnectivityIfNeeded(I)V
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 2408
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xcap connectivity is available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", need to release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2410
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2412
    :cond_0
    return-void
.end method

.method private endImsConnectivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4995
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4994
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4997
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string/jumbo v1, "endImsConnectivity"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5000
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 5001
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5004
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5005
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5009
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_1

    .line 5010
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5011
    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5014
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    if-eqz v1, :cond_1

    .line 5015
    const-string/jumbo v1, "clear default network for host"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5019
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 5024
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v1, :cond_2

    .line 5025
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 5029
    :cond_2
    return-void
.end method

.method private ensureRouteToHost(Ljava/net/InetAddress;)Z
    .locals 6
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    .line 5386
    if-nez p1, :cond_0

    .line 5387
    return v5

    .line 5391
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v2

    .line 5396
    .local v2, "utAPNType":I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5398
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 5399
    invoke-virtual {v0, v2, p1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v3

    .line 5398
    if-eqz v3, :cond_1

    .line 5400
    const/4 v3, 0x1

    return v3

    .line 5402
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ensureRouteToHost fail,  inetAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5403
    return v5

    .line 5405
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 5406
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ensureRouteToHost e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5407
    return v5
.end method

.method private getCallWaitingAction(Z)I
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 6085
    if-eqz p1, :cond_0

    .line 6086
    const/4 v0, 0x1

    return v0

    .line 6088
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCardMccMnc()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 3846
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 3847
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 3850
    .local v1, "simOperator":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3852
    return-object v6

    .line 3855
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3857
    const/4 v0, 0x0

    .line 3860
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v7, v3, :cond_1

    .line 3861
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3873
    .local v0, "mccMnc":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mccMnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3877
    return-object v0

    .line 3863
    .local v0, "mccMnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v8, v3, :cond_2

    .line 3864
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "mccMnc":Ljava/lang/String;
    goto :goto_0

    .line 3868
    .local v0, "mccMnc":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "mccMnc error: Get wrong MCC MNC "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3870
    return-object v6
.end method

.method private getDefaultDataSubId()I
    .locals 3

    .prologue
    .line 5355
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 5356
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5357
    return v0
.end method

.method private getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 4

    .prologue
    .line 2012
    const/4 v0, 0x0

    .line 2014
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2015
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    const-string/jumbo v1, "getFirstUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 2021
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    monitor-exit v2

    .line 2024
    return-object v0

    .line 2014
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getHostByName(Ljava/lang/String;Landroid/net/Network;)Ljava/net/InetAddress;
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x0

    .line 5363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5364
    return-object v4

    .line 5367
    :cond_0
    const/4 v1, 0x0

    .line 5371
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-eqz p2, :cond_1

    .line 5372
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5380
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHostByName inetAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5382
    return-object v1

    .line 5375
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 5376
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot get inet address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Unknown host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5377
    return-object v4
.end method

.method private getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "serviceAddr"    # Ljava/lang/String;

    .prologue
    .line 2546
    if-nez p1, :cond_0

    .line 2547
    const-string/jumbo v1, "network is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2548
    const/4 v1, 0x0

    return v1

    .line 2550
    :cond_0
    const/4 v0, 0x0

    .line 2551
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v2, p1, Landroid/net/Network;->netId:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2552
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .line 2553
    .local v0, "inetAddress":Ljava/net/InetAddress;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " InetAddress get from local map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2561
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->ensureRouteToHost(Ljava/net/InetAddress;)Z

    move-result v1

    return v1

    .line 2555
    .local v0, "inetAddress":Ljava/net/InetAddress;
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/huawei/ims/HwImsUtImpl;->getHostByName(Ljava/lang/String;Landroid/net/Network;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2556
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 2557
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " InetAddress get from host, and save in local map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getIdForRequest()I
    .locals 2

    .prologue
    .line 4388
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4390
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 4391
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4394
    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    return v0
.end method

.method private getNetworkForDefaultApn()Landroid/net/Network;
    .locals 2

    .prologue
    .line 2480
    const/4 v0, -0x1

    .line 2481
    .local v0, "type":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2483
    const/4 v0, 0x1

    .line 2486
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2487
    const/4 v0, 0x0

    .line 2490
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkForType(I)Landroid/net/Network;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2494
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v3, -0x1

    .line 2783
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNoReplyTimer()I

    move-result v1

    .line 2784
    .local v1, "time":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNeedNoReplyTimer()I

    move-result v0

    .line 2785
    .local v0, "deactNoReplyTime":I
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    if-nez v2, :cond_0

    if-eq v3, v0, :cond_0

    .line 2786
    move v1, v0

    .line 2788
    :cond_0
    if-nez v1, :cond_2

    .line 2790
    const/4 v1, -0x1

    .line 2808
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNoReplyTimer  time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2809
    return v1

    .line 2791
    :cond_2
    if-ne v3, v1, :cond_1

    .line 2793
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 2794
    if-nez v1, :cond_1

    .line 2795
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 2797
    :sswitch_0
    const/16 v1, 0x14

    .line 2798
    goto :goto_0

    .line 2801
    :sswitch_1
    const/4 v1, -0x1

    .line 2802
    goto :goto_0

    .line 2795
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method private getUtAPNCapabilities()I
    .locals 2

    .prologue
    .line 5433
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5434
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5436
    :cond_0
    const/16 v0, 0x9

    return v0

    .line 5438
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_2

    .line 5439
    const/16 v0, 0xc

    return v0

    .line 5442
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private getUtAPNConectionType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5448
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_0

    .line 5449
    const/16 v0, 0x2f

    return v0

    .line 5450
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 5451
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5452
    :cond_1
    const/16 v0, 0x2d

    return v0

    .line 5453
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_3

    .line 5454
    return v2

    .line 5456
    :cond_3
    const/16 v0, 0xb

    return v0
.end method

.method private getUtDomain()I
    .locals 5

    .prologue
    .line 5130
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 5131
    .local v1, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 5132
    .local v0, "isRoaming":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v2

    .line 5133
    .local v2, "utDomain":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUtOverWifiEnabled isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5134
    return v2
.end method

.method private handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .prologue
    .line 3118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter handle403Error, cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3120
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v3, :cond_0

    .line 3121
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3124
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 3125
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3126
    const-string/jumbo v3, "CT Card receive 403, notify HWCardManager"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3128
    :cond_2
    sget-boolean v3, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v3, :cond_3

    const v3, 0x0

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 3129
    :cond_3
    sget-boolean v3, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v3, :cond_5

    const v3, 0x0

    xor-int/lit8 v3, v3, 0x1

    .line 3128
    if-eqz v3, :cond_5

    .line 3130
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 3132
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 3134
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 3140
    :cond_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3143
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3144
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3146
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 3147
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3148
    .local v2, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_6
    monitor-exit v4

    .line 3152
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3153
    return-void

    .line 3143
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleClear(I)V
    .locals 7
    .param p1, "iLevel"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 5877
    iput v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5880
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5881
    if-ne p1, v6, :cond_0

    .line 5882
    const-string/jumbo v3, "handleClear, set mIsUtForbidden false"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5883
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 5884
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 5891
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 5893
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 5896
    iput-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 5899
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5900
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5902
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5903
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 5905
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5902
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5888
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    goto :goto_0

    .line 5908
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 5911
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v3, :cond_4

    .line 5912
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth;->clear()V

    .line 5917
    :goto_2
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 5921
    sget-boolean v3, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v3, :cond_3

    if-ne v6, p1, :cond_3

    .line 5922
    const-string/jumbo v3, "handleClear: reset current sub id to default"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5923
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 5928
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 5931
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5932
    return-void

    .line 5899
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 5914
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_4
    const-string/jumbo v3, "mGbaAuth is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleConnectivity(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleConnectivity mImsDCState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", networkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 5632
    :cond_0
    const-string/jumbo v2, "network not available"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5634
    return-void

    .line 5637
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5638
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_2

    .line 5639
    const/16 v2, 0x2f

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v2

    .line 5638
    if-eqz v2, :cond_2

    .line 5640
    const-string/jumbo v2, "handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5641
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5644
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    .line 5645
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v2

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v2, v3, :cond_3

    .line 5646
    const-string/jumbo v2, "Data has connected, but not for this sub, return"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5647
    return-void

    .line 5650
    :cond_3
    const v2, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5651
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->hasCTCardVolteFlag()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5650
    if-eqz v2, :cond_4

    .line 5651
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 5650
    if-eqz v2, :cond_4

    .line 5651
    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    const v3, 0x0

    if-ne v2, v3, :cond_4

    .line 5652
    const-string/jumbo v2, "CT main card and data is connected, querycallforward to confirm volte flag"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5653
    invoke-virtual {p0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    .line 5656
    :cond_4
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v2, v3, :cond_5

    .line 5657
    const-string/jumbo v2, "handleConnectivity: Ims connection is being established, do not use default data connection."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5658
    return-void

    .line 5663
    :cond_5
    if-eqz v0, :cond_6

    .line 5664
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_6

    .line 5665
    const-string/jumbo v2, "Data has connected, the SS can go UT interface"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5666
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 5667
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 5668
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5669
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 5670
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 5671
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5675
    .end local v1    # "network":Landroid/net/Network;
    :cond_6
    return-void
.end method

.method private handleDcTimeOut()V
    .locals 2

    .prologue
    .line 5678
    const-string/jumbo v1, "handleDcTimeOut"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5680
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5682
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5683
    const-string/jumbo v1, "[error]cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5685
    return-void

    .line 5688
    :cond_0
    const-string/jumbo v1, "handle UT data connection time out and finish data connection"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5690
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5692
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5694
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5695
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5698
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5699
    return-void
.end method

.method private handleGetCWResponseFromCs(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 1832
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1833
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1835
    .local v4, "onComplete":Landroid/os/Message;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 1836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCWResponseFromCs: ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1838
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p0, v4, v7, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1840
    return-void

    .line 1843
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, [I

    if-eqz v5, :cond_2

    .line 1844
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1847
    .local v1, "cwArray":[I
    if-nez v1, :cond_1

    .line 1848
    :try_start_0
    const-string/jumbo v5, "cwArray is null"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1850
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1852
    return-void

    .line 1855
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCBResponseFromCs, cwArray[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cwArray[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1857
    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 1859
    .local v3, "enable":Z
    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-direct {p0, v3, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    .end local v1    # "cwArray":[I
    .end local v3    # "enable":Z
    :goto_0
    return-void

    .line 1860
    .restart local v1    # "cwArray":[I
    :catch_0
    move-exception v2

    .line 1861
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCWResponseFromCs: improper result: err ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1863
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 1866
    .end local v1    # "cwArray":[I
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    const-string/jumbo v5, "ar.result is not int[]"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1868
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0
.end method

.method private handleGetCallWaitingDone(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 5939
    const/4 v0, 0x0

    .line 5941
    .local v0, "isEnable":Z
    if-eqz p1, :cond_1

    .line 5942
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v0, 0x1

    .line 5944
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get call waiting success, isEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5946
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5947
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    .line 5956
    :goto_1
    return-void

    .line 5942
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5941
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5948
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5949
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_1

    .line 5951
    :cond_3
    const-string/jumbo v2, "call waiting does not sync to modem, response to target"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5953
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v1

    .line 5954
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private handleImsConnectionFailure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6247
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6250
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6251
    const-string/jumbo v0, "handleImsConnectionFailure, set mIsUtForbidden true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6252
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6253
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 6254
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 6258
    :cond_0
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 6263
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6265
    const-string/jumbo v0, "handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6266
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 6267
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 6275
    :goto_0
    return-void

    .line 6269
    :cond_1
    const-string/jumbo v0, "handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6271
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6272
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    goto :goto_0
.end method

.method private handleImsDcTimeOut()V
    .locals 1

    .prologue
    .line 5420
    const-string/jumbo v0, "handleImsDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5422
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 5424
    return-void
.end method

.method private handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4128
    .local v0, "impu":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4129
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4128
    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4132
    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v1, v2, :cond_0

    .line 4133
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    .line 4138
    :goto_0
    return-void

    .line 4135
    :cond_0
    const-string/jumbo v1, "handleImsGetImpuDone: skip set impu to sdk because it\'s not the current sub"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    .line 1609
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage what="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1611
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1801
    :pswitch_0
    const-string/jumbo v9, "imsut not support this msg"

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1613
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/huawei/ims/HwImsUtImpl$UTData;

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    goto :goto_0

    .line 1618
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    .line 1621
    .local v5, "network":Landroid/net/Network;
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v8

    .line 1622
    .local v8, "utNafSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v4

    .line 1624
    .local v4, "nafRouteAddress":Z
    const/4 v0, 0x0

    .line 1625
    .local v0, "bsfRouteAddress":Z
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1626
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "utBsfSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v0

    .line 1634
    .end local v0    # "bsfRouteAddress":Z
    .end local v6    # "utBsfSrvAddr":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handle UT data connection ensure route to host and result is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1635
    iget-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v9, :cond_1

    .line 1636
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 1638
    :cond_1
    if-eqz v4, :cond_3

    .line 1639
    iput-boolean v11, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 1641
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1642
    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 1643
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1644
    iget-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v9, :cond_0

    .line 1645
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    goto :goto_0

    .line 1629
    .restart local v0    # "bsfRouteAddress":Z
    :cond_2
    const-string/jumbo v9, "ut not need bsf auth."

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1630
    const/4 v0, 0x1

    goto :goto_1

    .line 1648
    .end local v0    # "bsfRouteAddress":Z
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto/16 :goto_0

    .line 1654
    .end local v4    # "nafRouteAddress":Z
    .end local v5    # "network":Landroid/net/Network;
    .end local v8    # "utNafSrvAddr":Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v7

    .line 1655
    .local v7, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v7, :cond_4

    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v9, v10, :cond_4

    .line 1656
    sget-object v9, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v9, v7, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1658
    :cond_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    goto/16 :goto_0

    .line 1662
    .end local v7    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 1663
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 1666
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1668
    const-string/jumbo v9, "received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true."

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1670
    iget-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v9, :cond_5

    .line 1671
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    .line 1676
    :goto_2
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto/16 :goto_0

    .line 1673
    :cond_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    goto :goto_2

    .line 1680
    :cond_6
    const-string/jumbo v9, "handle UT data connection fall back cs for ensure route fail"

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1682
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    goto/16 :goto_0

    .line 1687
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v1

    .line 1689
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v1, :cond_7

    .line 1690
    const-string/jumbo v9, "there is no cmd in queue"

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1692
    return-void

    .line 1695
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkConnected()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1696
    const-string/jumbo v9, "The network is connected and continues to be connected."

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1697
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    goto/16 :goto_0

    .line 1701
    :cond_8
    const-string/jumbo v9, "The network is disconnected."

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    goto/16 :goto_0

    .line 1711
    :pswitch_7
    invoke-direct {p0, v11}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    goto/16 :goto_0

    .line 1715
    :pswitch_8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtInit()V

    goto/16 :goto_0

    .line 1718
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1724
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1728
    :pswitch_c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v3

    .line 1730
    .local v3, "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    const/4 v2, 0x0

    .line 1731
    .local v2, "isUtRetryCmdEmpty":Z
    iget-object v10, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1732
    :try_start_0
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "isUtRetryCmdEmpty":Z
    monitor-exit v10

    .line 1734
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1736
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    goto/16 :goto_0

    .line 1731
    .local v2, "isUtRetryCmdEmpty":Z
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 1741
    .end local v2    # "isUtRetryCmdEmpty":Z
    .end local v3    # "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCWResponseFromCs(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1744
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCWFromCs(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1747
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1750
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToCsDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1754
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1758
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1761
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1765
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1768
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1772
    :pswitch_16
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleDcTimeOut()V

    goto/16 :goto_0

    .line 1775
    :pswitch_17
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtTimeOut()V

    goto/16 :goto_0

    .line 1778
    :pswitch_18
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtRetryAlarmTimeOut()V

    goto/16 :goto_0

    .line 1781
    :pswitch_19
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsDcTimeOut()V

    goto/16 :goto_0

    .line 1784
    :pswitch_1a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTunnelSetupTimeout()V

    goto/16 :goto_0

    .line 1787
    :pswitch_1b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTearDownTunnelConnectionTimeout()V

    goto/16 :goto_0

    .line 1790
    :pswitch_1c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryDcTimeOut()V

    goto/16 :goto_0

    .line 1794
    :pswitch_1d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryUtStayTimeOut()V

    goto/16 :goto_0

    .line 1798
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->processECTCallBack(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
    .end packed-switch
.end method

.method private handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3765
    const/4 v0, 0x0

    .line 3767
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 3768
    const-string/jumbo v1, "utcmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3770
    return v4

    .line 3774
    :cond_0
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3783
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Domain select by ss is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3788
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsUtImpl$DomainSelectTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3798
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3799
    const/4 v0, 0x1

    .line 3804
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3812
    return v0

    .line 3792
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v0

    .line 3793
    if-ne v4, v0, :cond_1

    .line 3794
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    goto :goto_0

    .line 3788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 3
    .param p1, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .prologue
    .line 3067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSciSSConfCb ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3069
    if-nez p1, :cond_0

    .line 3070
    const-string/jumbo v1, "handleSciSSConfCb, UTData is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3072
    return-void

    .line 3075
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 3083
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    if-eq v1, v2, :cond_2

    .line 3084
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this Ut data is useless, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3086
    return-void

    .line 3083
    :cond_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    if-ne v1, v2, :cond_1

    .line 3090
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 3092
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 3095
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 3097
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 3112
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3115
    :goto_0
    return-void

    .line 3099
    :sswitch_0
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    goto :goto_0

    .line 3105
    :sswitch_1
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    goto :goto_0

    .line 3097
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 25
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .prologue
    .line 3192
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->setUtDataExpireTime(I)V

    .line 3194
    const-string/jumbo v3, "handle UT data connection handleSciSSConfCbSuccessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3197
    const/16 v17, 0x0

    .line 3199
    .local v17, "flag":Z
    :try_start_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    packed-switch v3, :pswitch_data_0

    .line 3428
    :pswitch_0
    const-string/jumbo v3, "not support ssType"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3430
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3431
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3445
    .end local v17    # "flag":Z
    :goto_0
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3446
    return-void

    .line 3201
    .restart local v17    # "flag":Z
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_0

    .line 3202
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3203
    .local v17, "flag":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v10

    .line 3205
    .local v10, "clipInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v10}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 3206
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3434
    .end local v10    # "clipInfo":Landroid/os/Bundle;
    .end local v17    # "flag":Z
    :catch_0
    move-exception v16

    .line 3435
    .local v16, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3437
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_0

    .line 3208
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .local v17, "flag":Z
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3209
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3438
    .end local v17    # "flag":Z
    :catch_1
    move-exception v15

    .line 3439
    .local v15, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3441
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3213
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v17    # "flag":Z
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_1

    .line 3214
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3215
    .local v17, "flag":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v13

    .line 3217
    .local v13, "colpInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v13}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 3218
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3220
    .end local v13    # "colpInfo":Landroid/os/Bundle;
    .local v17, "flag":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3221
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3225
    :pswitch_3
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_3

    .line 3226
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3228
    .local v17, "flag":Z
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaultBehavior()I

    move-result v19

    .line 3229
    .local v19, "mDefaultBehavior":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;

    move-result-object v11

    .line 3231
    .local v11, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v3, "queryClir"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 3233
    .local v12, "clirResponse":[I
    if-eqz v12, :cond_2

    array-length v3, v12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 3234
    const/4 v3, 0x1

    aget v3, v12, v3

    if-eqz v3, :cond_2

    .line 3236
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 3237
    .local v20, "onComplete":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3238
    const/16 v4, 0x1f

    .line 3237
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 3239
    .local v21, "response":Landroid/os/Message;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3240
    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3245
    .end local v20    # "onComplete":Landroid/os/Message;
    .end local v21    # "response":Landroid/os/Message;
    :goto_1
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3242
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v11}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 3248
    .end local v11    # "clirInfo":Landroid/os/Bundle;
    .end local v12    # "clirResponse":[I
    .end local v19    # "mDefaultBehavior":I
    .local v17, "flag":Z
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 3249
    .restart local v20    # "onComplete":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3250
    const/16 v4, 0x1f

    .line 3249
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 3251
    .restart local v21    # "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3253
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3257
    .end local v20    # "onComplete":Landroid/os/Message;
    .end local v21    # "response":Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_4

    .line 3258
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3259
    .local v17, "flag":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v14

    .line 3261
    .local v14, "colrInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v14}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 3262
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3264
    .end local v14    # "colrInfo":Landroid/os/Bundle;
    .local v17, "flag":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3265
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3269
    :pswitch_5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 3271
    .restart local v20    # "onComplete":Landroid/os/Message;
    if-nez v20, :cond_5

    .line 3272
    const-string/jumbo v3, "onComplete is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3275
    :cond_5
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_7

    .line 3276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get cw state, mHasCheckedSIMCardByUT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", canUse403ForLocalCW="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3277
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v3

    .line 3278
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 3277
    if-ne v3, v4, :cond_6

    .line 3278
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 3277
    if-eqz v3, :cond_6

    .line 3279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3280
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v4, v4, v5

    .line 3281
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3282
    const/4 v6, 0x1

    .line 3279
    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v17

    .line 3286
    .local v17, "flag":Z
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 3287
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3284
    .local v17, "flag":Z
    :cond_6
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallWaitingEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .local v17, "flag":Z
    goto :goto_2

    .line 3289
    .local v17, "flag":Z
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 3290
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3294
    .end local v20    # "onComplete":Landroid/os/Message;
    :pswitch_6
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_9

    .line 3295
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForwardEx(I)[Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v18

    .line 3296
    .local v18, "imsCallForwardInfo":[Lcom/android/ims/ImsCallForwardInfo;
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3297
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3299
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v4, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    .line 3304
    .end local v18    # "imsCallForwardInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :goto_3
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3301
    :cond_9
    const-string/jumbo v3, "CDIV PUT: don\'t support will handover to cs"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 3308
    :pswitch_7
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_a

    .line 3309
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3310
    .local v17, "flag":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Lcom/android/ims/ImsSsInfo;

    move-result-object v23

    .line 3312
    .local v23, "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v4, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    .line 3313
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3316
    .end local v23    # "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    .local v17, "flag":Z
    :cond_a
    const-string/jumbo v3, "OIP ICB: don\'t support this OPRATOR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3320
    :pswitch_8
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v3, :cond_b

    .line 3321
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 3322
    .local v17, "flag":Z
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Lcom/android/ims/ImsSsInfo;

    move-result-object v23

    .line 3324
    .restart local v23    # "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v4, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    .line 3325
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3328
    .end local v23    # "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    .local v17, "flag":Z
    :cond_b
    const-string/jumbo v3, "OIP OCB: don\'t support this OPRATOR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3334
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCFNRcChangeWithCFNL()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3335
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_d

    .line 3343
    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 3344
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 3342
    const/4 v3, 0x1

    .line 3345
    const/4 v6, 0x0

    .line 3346
    const/4 v7, 0x0

    .line 3347
    const/4 v8, 0x1

    .line 3348
    const/4 v9, -0x1

    .line 3342
    invoke-static/range {v3 .. v9}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v22

    .line 3349
    .local v22, "result":I
    const/16 v3, 0x8

    move-object/from16 v0, p1

    iput v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3350
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_c

    .line 3353
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3359
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    goto/16 :goto_0

    .line 3362
    .end local v22    # "result":I
    :cond_d
    const-string/jumbo v3, "CFNRc: don\'t support this OPRATOR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3364
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3373
    :cond_e
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3374
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3385
    :pswitch_b
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_10

    .line 3386
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_f

    .line 3387
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3389
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3390
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3392
    :cond_10
    const-string/jumbo v3, "CF SET: don\'t support this OPRATOR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3394
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3400
    :pswitch_c
    move-object/from16 v0, p2

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_13

    .line 3401
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v24

    .line 3402
    .local v24, "time":I
    const/4 v3, -0x1

    move/from16 v0, v24

    if-ne v3, v0, :cond_11

    .line 3404
    const-string/jumbo v3, "don\'t set the NRT when set the CFNR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 3407
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_0

    .line 3411
    :cond_11
    invoke-static/range {v24 .. v24}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNoReplyTimer(I)I

    move-result v22

    .line 3412
    .restart local v22    # "result":I
    const/4 v3, 0x6

    move-object/from16 v0, p1

    iput v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3414
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_12

    .line 3415
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallDiversionNoReplyTimer fail, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3419
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    goto/16 :goto_0

    .line 3422
    .end local v22    # "result":I
    .end local v24    # "time":I
    :cond_13
    const-string/jumbo v3, "CFNR GET: don\'t support this OPRATOR"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3424
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 3199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .prologue
    .line 3156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enter handleSciSSConfCbUndefinedError, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3158
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3162
    :cond_0
    if-nez p1, :cond_1

    .line 3163
    return-void

    .line 3166
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 3167
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3170
    :cond_3
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryMaxCounts()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3171
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3170
    if-eqz v0, :cond_4

    .line 3172
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    .line 3174
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3176
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->startUtRetryAlarm(I)V

    .line 3188
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3189
    return-void

    .line 3179
    :cond_4
    const-string/jumbo v0, "handle UT data connection fallback CS domain for ut fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3182
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3183
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 3185
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_0
.end method

.method private handleSetCWFromCs(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1873
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1874
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1876
    .local v2, "onComplete":Landroid/os/Message;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSetCWFromCs: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1879
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1885
    :goto_0
    return-void

    .line 1881
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v1

    .line 1883
    .local v1, "isEnalbe":Z
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method private handleSetCallWaitingDone(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 5959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set call waiting success, isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5961
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5962
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    .line 5970
    :goto_0
    return-void

    .line 5963
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5964
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 5966
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v0

    .line 5968
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleSimCardAbsent(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 4074
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 4077
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4080
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->clearCTCardVolteFlag(Z)V

    .line 4081
    return-void
.end method

.method private handleSimRecordsLoaded(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3947
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3948
    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3947
    invoke-virtual {v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3949
    .local v2, "oldImsi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3950
    .local v1, "newImsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->spliceMncMcc()Ljava/lang/String;

    move-result-object v3

    .line 3953
    .local v3, "spliceMncMcc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3954
    const-string/jumbo v4, "Can\'t get current imsi from sim, return"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3956
    return-void

    .line 3960
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setCurrentImsi(Ljava/lang/String;)V

    .line 3961
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSpliceMncMcc(Ljava/lang/String;)V

    .line 3963
    iput-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 3968
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->readCarrierConfig(Landroid/content/Context;)V

    .line 3972
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isCardChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3973
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearSharedPreferences()V

    .line 3976
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    .line 3978
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3976
    invoke-virtual {v4, v5, v1, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3980
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3981
    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    .line 3982
    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsConfigImpl;->getImpuFromSIM()Ljava/lang/String;

    move-result-object v6

    .line 3983
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3980
    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3987
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3988
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    .line 3993
    :cond_2
    iput-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 3995
    iput-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 3998
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    .line 4001
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCLIRModeToImsSdk()V

    .line 4004
    sget v4, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v4, v5, :cond_3

    .line 4005
    const-string/jumbo v4, "handleSimRecordsLoaded: init sdk params when mCurrentSubId == mSubId"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4006
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 4009
    :cond_3
    const v0, 0x0

    .line 4010
    .local v0, "mainSlot":I
    sget-boolean v4, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v4, v0, :cond_5

    .line 4011
    :goto_0
    const v4, 0x0

    .line 4010
    if-eqz v4, :cond_4

    .line 4011
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v4

    .line 4010
    if-eqz v4, :cond_4

    .line 4012
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/huawei/ims/HwImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    .line 4014
    :cond_4
    return-void

    .line 4010
    :cond_5
    sget-boolean v4, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method private handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6158
    .local v0, "arSyncCLIR":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6160
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 6161
    const-string/jumbo v3, "SyncCLIRModeToImsSdk FAIL"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6162
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6163
    return-void

    .line 6166
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 6167
    .local v2, "ret":Landroid/os/Bundle;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6168
    return-void
.end method

.method private handleSyncCallWaitingDone(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 6063
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6065
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    const-string/jumbo v3, "sync call waiting has finished successfully."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6068
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 6071
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 6072
    const-string/jumbo v3, "begin set call waiting to sharedpreference"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6074
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v4, v4, v5

    .line 6076
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 6074
    invoke-virtual {v3, v4, p1, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 6079
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6080
    .local v1, "onComplete":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v2

    .line 6081
    .local v2, "ret":Ljava/lang/Object;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6082
    return-void
.end method

.method private handleSyncCallWaitingToCsDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6042
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6043
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 6045
    .local v3, "onComplete":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 6046
    const-string/jumbo v4, "SyncCallWaitingToCs FAIL"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6048
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6050
    return-void

    .line 6053
    :cond_0
    const-string/jumbo v4, "sync call waiting to IMS SDK successfully"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6055
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 6057
    .local v1, "callWaitingAction":I
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 6059
    .local v2, "enable":Z
    invoke-direct {p0, v2, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6060
    return-void
.end method

.method private handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5998
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 5999
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 6001
    .local v3, "onComplete":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 6002
    const-string/jumbo v4, "SyncCallWaitingToImsSdk FAIL"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6004
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6006
    return-void

    .line 6009
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 6011
    .local v1, "callWaitingAction":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync call waiting to IMS SDK successfully, callWaitingAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6013
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 6025
    .local v2, "enable":Z
    invoke-direct {p0, v2, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6026
    return-void
.end method

.method private handleTearDownTunnelConnectionTimeout()V
    .locals 2

    .prologue
    .line 5189
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5190
    const-string/jumbo v1, "handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5191
    return-void

    .line 5193
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5194
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5196
    const-string/jumbo v1, "restart wifi tunnel lifetime alarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5197
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5198
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    .line 5199
    return-void

    .line 5202
    :cond_1
    const-string/jumbo v1, "tunnel lifetime is out, endImsConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5204
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5206
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5207
    return-void
.end method

.method private handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 2435
    if-nez p1, :cond_0

    .line 2436
    const-string/jumbo v0, "handleTempDcConnectionACT - ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2437
    return-void

    .line 2439
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processTemporarilyDcConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2440
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2441
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryDCAlarm()V

    .line 2443
    :cond_1
    return-void
.end method

.method private handleTemporaryDcTimeOut()V
    .locals 2

    .prologue
    .line 5744
    const-string/jumbo v1, "handleTemporaryDcTimeOut"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5745
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5748
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5750
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5751
    const-string/jumbo v1, "[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5753
    return-void

    .line 5756
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5758
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5760
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5761
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5764
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5765
    return-void
.end method

.method private handleTemporaryUtStayTimeOut()V
    .locals 1

    .prologue
    .line 5812
    const-string/jumbo v0, "handleTemporaryUtStayTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5814
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5816
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->broadcastUtIdle()V

    .line 5817
    return-void
.end method

.method private handleTunnelSetupTimeout()V
    .locals 2

    .prologue
    .line 5225
    const-string/jumbo v1, "handleTunnelSetupTimeout"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5227
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5228
    const-string/jumbo v1, "handleTunnelSetupTimeout - isVowifiPropOpened is false, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5229
    return-void

    .line 5232
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5234
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5235
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5237
    if-eqz v0, :cond_1

    .line 5240
    const-string/jumbo v1, "handle UT data connection tunnel setup time out, endUtOverWifiConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5241
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5242
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5243
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5245
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    .line 5246
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5248
    :cond_1
    return-void
.end method

.method private handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 9
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 2099
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2100
    const-string/jumbo v4, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2102
    if-eqz p1, :cond_0

    .line 2103
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2104
    invoke-virtual {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2107
    :cond_0
    return-void

    .line 2110
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDKForEMUILite()V

    .line 2114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cmd.dcState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2117
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsUtImpl$ImsDataConnectionStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2403
    :cond_2
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2404
    return-void

    .line 2119
    :pswitch_1
    sget-boolean v4, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v4, :cond_4

    .line 2120
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isOtherSubUtIdle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 2121
    const-string/jumbo v4, "handleUt: ut for other sub is not idle, waiting"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2122
    return-void

    .line 2124
    :cond_3
    const-string/jumbo v4, "handleUt: reset ut sdk"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2125
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->resetUtSDK()V

    .line 2131
    :cond_4
    const-string/jumbo v4, "handle UT data connection start"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2132
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2133
    const/4 v3, 0x0

    .line 2134
    .local v3, "utDomain":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2135
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_5

    .line 2136
    return-void

    .line 2138
    :cond_5
    const-string/jumbo v4, "isUtOverWifiEnabled return true."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2140
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v3

    .line 2142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVoWifiServiceDomain return utDomain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2145
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isNeedSetupWifiTunnel(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2147
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2149
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 2153
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handle UT data connection vowifi connection tunnel act domain is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2154
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2156
    invoke-virtual {p0, v6, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2157
    return-void

    .line 2167
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "utDomain":I
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 2168
    :cond_8
    const-string/jumbo v4, "Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2169
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2170
    return-void

    .line 2175
    :cond_9
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2177
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2178
    return-void

    .line 2182
    :cond_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNeedTempChangeDefaultDataSub()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2183
    const-string/jumbo v4, "handle UT data connection ut use default apn and data is connected but not for this sub"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2184
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2185
    invoke-virtual {p0, v6, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2186
    return-void

    .line 2187
    :cond_b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2188
    const-string/jumbo v4, "handle UT data connection ut use default apn and data is connected"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2189
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2190
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 2191
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2194
    .end local v1    # "network":Landroid/net/Network;
    :cond_c
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2195
    const-string/jumbo v4, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2196
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2197
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2198
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 2199
    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 2200
    return-void

    .line 2204
    :cond_d
    const-string/jumbo v4, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2205
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2206
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2207
    return-void

    .line 2214
    :pswitch_2
    const-string/jumbo v4, "case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2215
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2216
    return-void

    .line 2218
    :cond_e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2219
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2220
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto/16 :goto_0

    .line 2224
    :cond_f
    const/16 v4, 0x2d

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 2227
    const-string/jumbo v4, "handle UT data connection begin vowifi Connectivity"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2228
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 2230
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 2231
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    .line 2232
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2234
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2236
    return-void

    .line 2239
    :cond_10
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2240
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2241
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2243
    invoke-virtual {p0, v6, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2244
    return-void

    .line 2245
    :cond_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2246
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2248
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 2249
    .restart local v1    # "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2254
    .end local v1    # "network":Landroid/net/Network;
    :cond_12
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2255
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2256
    return-void

    .line 2262
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2263
    return-void

    .line 2266
    :cond_13
    const-string/jumbo v4, "handle UT data connection volte conntion after vowifi connection fail"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2268
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2269
    return-void

    .line 2272
    :cond_14
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2273
    const-string/jumbo v4, "handle UT data connection volte conntion after vowifi connection fail default apn"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2274
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 2275
    .restart local v1    # "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2276
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto/16 :goto_0

    .line 2280
    .end local v1    # "network":Landroid/net/Network;
    :cond_15
    const-string/jumbo v4, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2281
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2282
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2283
    return-void

    .line 2289
    :pswitch_4
    const-string/jumbo v4, "state IMS_DC_WIFI_PREF_IMSPDP_FAIL,startDCAlarm."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2290
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2291
    return-void

    .line 2294
    :cond_16
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2295
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2296
    return-void

    .line 2299
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v4

    if-nez v4, :cond_17

    .line 2300
    return-void

    .line 2303
    :cond_17
    const-string/jumbo v4, "ro.vowifi.wifi_only_fall_cs"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2304
    .local v2, "supportWifiOnlyFallCs":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2306
    const-string/jumbo v4, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,will fall back to cs,startDCAlarm."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2309
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2310
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2317
    :goto_1
    return-void

    .line 2313
    :cond_18
    const-string/jumbo v4, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2314
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_1

    .line 2323
    .end local v2    # "supportWifiOnlyFallCs":Ljava/lang/Boolean;
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2324
    return-void

    .line 2328
    :cond_19
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2330
    invoke-virtual {p0, v6, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2331
    return-void

    .line 2337
    :pswitch_7
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2338
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2340
    return-void

    .line 2344
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2347
    const-string/jumbo v4, "handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2349
    return-void

    .line 2353
    :pswitch_9
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2355
    const-string/jumbo v4, "state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2356
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2358
    return-void

    .line 2360
    :cond_1a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2361
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto/16 :goto_0

    .line 2364
    :cond_1b
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2365
    invoke-virtual {p0, v6, v7}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2366
    return-void

    .line 2372
    :pswitch_a
    const-string/jumbo v4, "Airplane mode is turned on, no longer trying volte ut and cs, return failure! "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2373
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2374
    return-void

    .line 2381
    :pswitch_b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processImsConnectivity()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2382
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2383
    return-void

    .line 2387
    :pswitch_c
    return-void

    .line 2392
    :pswitch_d
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2393
    invoke-virtual {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2395
    return-void

    .line 2397
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2398
    return-void

    .line 2117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
    .end packed-switch
.end method

.method private handleUtApnConnection(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6207
    if-nez p1, :cond_0

    .line 6208
    return-void

    .line 6212
    :cond_0
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v2, v3, :cond_1

    .line 6213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUtApnConnection intent not for this sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCurrentSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6214
    return-void

    .line 6218
    :cond_1
    const-string/jumbo v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6219
    .local v0, "apn":Ljava/lang/String;
    const-string/jumbo v2, "failCause"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6221
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUtApnConnection apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "xcap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 6224
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6229
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseToReleaseApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6231
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 6232
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 6237
    :cond_3
    return-void
.end method

.method private handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 20
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 2566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUtCmd enter, cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2568
    const/16 v18, 0x1

    .line 2570
    .local v18, "ret":I
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2571
    const-string/jumbo v2, "Can\'t start SS with Ut, will fallback to cs"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2573
    if-eqz p1, :cond_0

    .line 2574
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2575
    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2578
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2582
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    packed-switch v2, :pswitch_data_0

    .line 2748
    :pswitch_0
    const-string/jumbo v2, "handleUtCmd not support this cmd"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2750
    const/16 v18, 0x1

    .line 2765
    :goto_0
    if-nez v18, :cond_12

    .line 2766
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 2767
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2774
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUtCmd leave, SciSSConfHs ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2775
    const-string/jumbo v3, ", cmd.mState="

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2775
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2776
    const-string/jumbo v3, ", utType="

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2776
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2777
    const-string/jumbo v3, ", utReason="

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2777
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 2774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2779
    return v18

    .line 2584
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_2

    .line 2585
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityPresentation()I

    move-result v18

    goto :goto_0

    .line 2587
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityPresentation(Z)I

    move-result v18

    goto :goto_0

    .line 2591
    :pswitch_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_3

    .line 2592
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityPresentation()I

    move-result v18

    goto :goto_0

    .line 2594
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityPresentation(Z)I

    move-result v18

    goto :goto_0

    .line 2598
    :pswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_4

    .line 2599
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityRestriction()I

    move-result v18

    goto/16 :goto_0

    .line 2602
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2, v3}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v18

    goto/16 :goto_0

    .line 2607
    :pswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_5

    .line 2608
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityRestriction()I

    move-result v18

    goto/16 :goto_0

    .line 2610
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityRestriction(Z)I

    move-result v18

    goto/16 :goto_0

    .line 2614
    :pswitch_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_6

    .line 2615
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallWaiting()I

    move-result v18

    goto/16 :goto_0

    .line 2617
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setCallWaiting(Z)I

    move-result v18

    goto/16 :goto_0

    .line 2621
    :pswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_8

    .line 2624
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2626
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallDiversion()I

    move-result v18

    goto/16 :goto_0

    .line 2628
    :cond_7
    const/16 v18, 0x0

    .line 2630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the status of CFU querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2633
    new-instance v19, Lcom/huawei/ims/HwImsUtImpl$UTData;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2635
    .local v19, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2753
    .end local v19    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    :catch_0
    move-exception v17

    .line 2754
    .local v17, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SciSSConfHs func RuntimeException, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2756
    const/16 v18, 0x1

    .line 2757
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    goto/16 :goto_0

    .line 2638
    .end local v17    # "e":Ljava/lang/RuntimeException;
    :cond_8
    const/16 v18, 0x1

    .line 2640
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_CDIV not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2758
    :catch_1
    move-exception v16

    .line 2759
    .local v16, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SciSSConfHs func exception, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2761
    const/16 v18, 0x1

    .line 2762
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    goto/16 :goto_0

    .line 2644
    .end local v16    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_a

    .line 2647
    const/16 v2, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2649
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryIncomingCallBarring()I

    move-result v18

    goto/16 :goto_0

    .line 2651
    :cond_9
    const/16 v18, 0x0

    .line 2653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the status of ICB querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2656
    new-instance v19, Lcom/huawei/ims/HwImsUtImpl$UTData;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2658
    .restart local v19    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 2661
    .end local v19    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    :cond_a
    const/16 v18, 0x1

    .line 2663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_ICB not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2667
    :pswitch_8
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_c

    .line 2670
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2672
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOutgoingCallBarring()I

    move-result v18

    goto/16 :goto_0

    .line 2674
    :cond_b
    const/16 v18, 0x0

    .line 2676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the status of OCB querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2679
    new-instance v19, Lcom/huawei/ims/HwImsUtImpl$UTData;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2680
    .restart local v19    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 2683
    .end local v19    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    :cond_c
    const/16 v18, 0x1

    .line 2685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_OCB not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2693
    :pswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_d

    .line 2694
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v2, v3}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZ)I

    move-result v18

    goto/16 :goto_0

    .line 2696
    :cond_d
    const/16 v18, 0x1

    .line 2698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_CF not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2708
    :pswitch_a
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_10

    .line 2709
    const/4 v8, -0x1

    .line 2712
    .local v8, "time":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_f

    .line 2713
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v8

    .line 2715
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 2716
    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 2717
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 2718
    const/4 v5, 0x0

    .line 2719
    const/4 v6, 0x0

    .line 2720
    const/4 v7, 0x1

    .line 2715
    invoke-static/range {v2 .. v8}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v18

    .line 2722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setCallDiversionNew return value ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2724
    .end local v8    # "time":I
    :cond_10
    const/16 v18, 0x1

    .line 2725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_CF GET not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2729
    :pswitch_b
    move-object/from16 v0, p1

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_11

    .line 2733
    move-object/from16 v0, p1

    iget v9, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 2734
    move-object/from16 v0, p1

    iget v10, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 2735
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 2736
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    .line 2737
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    .line 2738
    const/4 v14, 0x1

    .line 2739
    const/4 v15, -0x1

    .line 2733
    invoke-static/range {v9 .. v15}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v18

    .line 2740
    const/4 v2, 0x7

    move-object/from16 v0, p1

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    goto/16 :goto_0

    .line 2742
    :cond_11
    const/16 v18, 0x1

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSCONF_SS_TYPE_CF SET not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2769
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 2770
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2771
    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 2582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private handleUtCmdQueue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2042
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2044
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_2

    .line 2046
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2047
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 2048
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 2052
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2054
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 2056
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendStopImsApnMessage()V

    .line 2060
    :cond_1
    return-void

    .line 2064
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryUtStayAlarm()V

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUtCmdQueue start,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2069
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsUtImpl$CmdStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support this cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2095
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUtCmdQueue leave,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2096
    return-void

    .line 2072
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_0

    .line 2078
    :pswitch_2
    const-string/jumbo v1, "handle UT data connection fallback CS domain"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2080
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_0

    .line 2083
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2084
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd()V

    .line 2086
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryUtStayAlarm()V

    .line 2088
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    goto :goto_0

    .line 2069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleUtInit()V
    .locals 0

    .prologue
    .line 3908
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initImsUtImpl()V

    .line 3909
    return-void
.end method

.method private handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2416
    const-string/jumbo v1, "handle UT data connection volte conntion after vowifi connection fail not default apn"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2417
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2418
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v1

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v4, :cond_0

    move v1, v2

    :goto_0
    xor-int/lit8 v1, v1, 0x1

    .line 2417
    if-eqz v1, :cond_1

    .line 2419
    const-string/jumbo v1, "handle UT data connection ut use complex apn and mobile data is connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2420
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 2421
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2422
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2423
    return v3

    .end local v0    # "network":Landroid/net/Network;
    :cond_0
    move v1, v3

    .line 2418
    goto :goto_0

    .line 2425
    :cond_1
    const-string/jumbo v1, "handle UT data connection ut use xcap apn or complex apn with mobile data not connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2426
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2427
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2429
    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2430
    return v2
.end method

.method private handleUtRetryAlarmTimeOut()V
    .locals 1

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtRetryAlarm()V

    .line 3014
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3016
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3017
    return-void
.end method

.method private handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 3884
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isEMUILite()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3886
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 3887
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 3888
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 3893
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3896
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3897
    const/4 v0, 0x0

    return v0

    .line 3899
    :cond_1
    const-string/jumbo v0, "Send UT message fail, remove last ut cmd."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3901
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeLastUtCmd()V

    .line 3904
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtTimeOut()V
    .locals 1

    .prologue
    .line 5710
    const-string/jumbo v0, "handleUtTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5711
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5713
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 5714
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5716
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 5719
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5723
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 5724
    return-void
.end method

.method private handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2816
    const/4 v2, 0x0

    .line 2818
    .local v2, "ret":I
    if-eqz p1, :cond_0

    .line 2819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleOverSS mToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", utType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", utOpType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2821
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2830
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2831
    const-string/jumbo v3, "handoverSS: Airplane mode is turned on, forbid CSFB, return failure!"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2832
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2833
    return v5

    .line 2824
    :cond_0
    const-string/jumbo v3, "handoverSS,utCmd null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2825
    return v5

    .line 2838
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCSFBForbidden(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2839
    const-string/jumbo v3, "handoverSS: forbid CSFB."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2840
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2841
    return v5

    .line 2845
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2846
    const-string/jumbo v3, "Can\'t start SS wiht CS domain."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2847
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2848
    return v5

    .line 2851
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCSBeUsed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2852
    const-string/jumbo v3, "handleOverSS cannot use CS"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2854
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2856
    return v5

    .line 2859
    :cond_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2861
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_5

    .line 2862
    const-string/jumbo v3, "handoverSS cannot get default phone"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2864
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2866
    return v5

    .line 2869
    :cond_5
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2871
    .local v1, "onComplete":Landroid/os/Message;
    iput-boolean v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2873
    const-string/jumbo v3, "set Ut disable"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2875
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I

    move-result v2

    .line 2877
    if-ne v5, v2, :cond_6

    .line 2878
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2881
    :cond_6
    iput-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2883
    const-string/jumbo v3, "set ut enable"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2885
    return v2
.end method

.method private handoverSSTick()V
    .locals 1

    .prologue
    .line 2951
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2952
    return-void
.end method

.method private handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 2955
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2956
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2957
    return-void
.end method

.method private handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I
    .locals 8
    .param p1, "defPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "ret"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2888
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsUtImpl$CmdTokenSwitchesValues()[I

    move-result-object v0

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handoverSS not support cmd.mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2944
    const/4 p4, 0x1

    .line 2947
    :goto_0
    return p4

    .line 2890
    :pswitch_0
    iget-object v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    invoke-virtual {p1, v0, v4, p3}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2893
    :pswitch_1
    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 2894
    iget-boolean v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    move-object v0, p1

    move-object v5, p3

    .line 2893
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2898
    :pswitch_2
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    .line 2901
    :pswitch_3
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0

    .line 2904
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 2911
    :pswitch_5
    iget-boolean v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v7

    .line 2912
    .local v7, "callWaitingAction":I
    iget-boolean v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 2913
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v3, v7, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2912
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0

    .line 2919
    .end local v7    # "callWaitingAction":I
    :pswitch_6
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto :goto_0

    .line 2922
    :pswitch_7
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 2929
    :pswitch_8
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 2930
    const-string/jumbo v0, "Set CFU due to time in cs domain, but abandon the time"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2932
    iput v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 2936
    :cond_0
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 2937
    iget-object v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    iget v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    move-object v0, p1

    move-object v6, p3

    .line 2936
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_0

    .line 2888
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private hasCTCardVolteFlag()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3465
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_1

    .line 3466
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v4, v4, v5

    sget v5, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 3468
    :cond_1
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v5

    aget-object v4, v4, v5

    sget v5, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 5935
    invoke-static {p1, p2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initImsUtImpl()V
    .locals 5

    .prologue
    .line 3912
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, v1, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 3915
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3920
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3928
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3929
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3930
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3933
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3935
    const-string/jumbo v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3939
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3943
    return-void
.end method

.method private initSDKServiceIpAddr(Landroid/net/Network;)V
    .locals 6
    .param p1, "netWork"    # Landroid/net/Network;

    .prologue
    const/4 v5, 0x0

    .line 2498
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v4, p1, Landroid/net/Network;->netId:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtQueryDnsIgnoreNetId()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v3, :cond_2

    .line 2500
    :cond_1
    return-void

    .line 2502
    :cond_2
    iget v3, p1, Landroid/net/Network;->netId:I

    iput v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 2505
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtGbaLifetimeBeUsed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2506
    const-string/jumbo v3, "initSDKServiceIpAddr skip sdk.reset & gba.clear"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2520
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 2522
    .local v2, "nafIpAddr":[Ljava/net/InetAddress;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 2523
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I

    .line 2525
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2526
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2527
    .local v0, "bsfIpAddr":[Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 2528
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    .end local v0    # "bsfIpAddr":[Ljava/net/InetAddress;
    .end local v2    # "nafIpAddr":[Ljava/net/InetAddress;
    :cond_4
    :goto_1
    return-void

    .line 2509
    :cond_5
    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 2513
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2515
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth;->clear()V

    goto :goto_0

    .line 2531
    :catch_0
    move-exception v1

    .line 2532
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v3, "Cannot get inet address "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initSciSSConfHs()V
    .locals 12

    .prologue
    .line 4488
    :try_start_0
    sget-object v8, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v8, :cond_0

    .line 4489
    const-string/jumbo v8, "initSciSSConfHs:: sdk has not been initialized and mSciSSConfCb is null."

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4490
    return-void

    .line 4493
    :cond_0
    sget-object v8, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-static {v8}, Lcom/huawei/sci/SciSSConfCb;->setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V

    .line 4494
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v8, :cond_1

    .line 4495
    new-instance v8, Lcom/huawei/ims/GbaAuth;

    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v10, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    iget v11, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {v8, v9, v10, v11}, Lcom/huawei/ims/GbaAuth;-><init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V

    iput-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 4497
    :cond_1
    sget-object v8, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v8}, Lcom/huawei/ims/GbaAuth;->getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/sci/SciSSConfCb;->setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V

    .line 4499
    const/4 v7, -0x1

    .line 4501
    .local v7, "ret":I
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseNodeSelector()Z

    move-result v4

    .line 4503
    .local v4, "isUseNodeSelector":Z
    invoke-static {v4}, Lcom/huawei/sci/SciSSConfHs;->isSupportNodeSelector(Z)I

    move-result v7

    .line 4504
    if-eqz v7, :cond_2

    .line 4505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportNodeSelector ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4508
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init isSupportNodeSelector="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4510
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseXcapNameSpace()Z

    move-result v6

    .line 4512
    .local v6, "isUseXcapNameSpace":Z
    invoke-static {v6}, Lcom/huawei/sci/SciSSConfHs;->setSupportXcapNamespace(Z)I

    move-result v7

    .line 4513
    if-eqz v7, :cond_3

    .line 4514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSupportXcapNamespace ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4517
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init setSupportXcapNamespace="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4519
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->getUtGbaType()I

    move-result v3

    .line 4521
    .local v3, "gbaType":I
    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->setSupportGBAType(I)I

    move-result v7

    .line 4522
    if-eqz v7, :cond_4

    .line 4523
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSupportGBAType ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4526
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init setSupportGBAType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4528
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseTmpi()Z

    move-result v5

    .line 4530
    .local v5, "isUseTmpi":Z
    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setSupportTmpi(Z)I

    move-result v7

    .line 4531
    if-eqz v7, :cond_5

    .line 4532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSupportTmpi ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4535
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init usetmpi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4537
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->getContentTypeMode()I

    move-result v0

    .line 4539
    .local v0, "contentTypeMode":I
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setContentType(I)I

    move-result v7

    .line 4540
    if-eqz v7, :cond_6

    .line 4541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setContentType ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4544
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init contentTypeMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4546
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    .line 4547
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 4548
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 4549
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 4552
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkParamsCfg()V

    .line 4555
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsXcapRootUri()I

    .line 4557
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsUserAgentExtensionalParam()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4563
    .end local v0    # "contentTypeMode":I
    .end local v3    # "gbaType":I
    .end local v4    # "isUseNodeSelector":Z
    .end local v5    # "isUseTmpi":Z
    .end local v6    # "isUseXcapNameSpace":Z
    .end local v7    # "ret":I
    :goto_0
    return-void

    .line 4560
    :catch_0
    move-exception v1

    .line 4561
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SciSSConfHs exception e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4558
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4559
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SciSSConfHs RuntimeException e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUtSDK()V
    .locals 6

    .prologue
    .line 4457
    const-string/jumbo v4, "initUtSDK enter"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4458
    new-instance v4, Lcom/huawei/sci/SciSSConfCb;

    invoke-direct {v4}, Lcom/huawei/sci/SciSSConfCb;-><init>()V

    invoke-static {v4}, Lcom/huawei/ims/HwImsUtImpl;->setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V

    .line 4460
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v4, :cond_0

    .line 4461
    const-string/jumbo v4, "instance mSciSSConfCb fail"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4463
    return-void

    .line 4467
    :cond_0
    const/4 v3, -0x1

    .line 4469
    .local v3, "ret":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtOpenHrsLog()Z

    move-result v2

    .line 4471
    .local v2, "isOpenHrsLog":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/huawei/sci/SciSSConfHs;->init(Landroid/content/Context;Z)I

    move-result v3

    .line 4473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SciSSConfHs.init ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", IS_HRS_LOG_OPEN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4480
    .end local v2    # "isOpenHrsLog":Z
    :goto_0
    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v4}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 4482
    const-string/jumbo v4, "initUtSDK leave"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4483
    return-void

    .line 4476
    :catch_0
    move-exception v0

    .line 4477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SciSSConfHs exception e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4474
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4475
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SciSSConfHs RuntimeException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUtSDKForEMUILite()V
    .locals 1

    .prologue
    .line 6382
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isEMUILite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6383
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_1

    .line 6384
    const-string/jumbo v0, "initUtSDKForEMUILite: initUtSDK and set ut params to sdk."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6385
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDK()V

    .line 6386
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 6393
    :cond_0
    :goto_0
    return-void

    .line 6387
    :cond_1
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6388
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 6389
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 6390
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2447
    const/4 v0, 0x0

    .line 2448
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2449
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2450
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAirplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2452
    :cond_0
    return v0

    .line 2449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCSFBForbidden(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v3, 0x0

    .line 6416
    if-nez p1, :cond_0

    .line 6417
    const-string/jumbo v1, "isCSFBForbidden: utCmd is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6418
    return v3

    .line 6420
    :cond_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_1

    .line 6421
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    .line 6422
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v0, v1, :cond_1

    .line 6423
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    xor-int/lit8 v1, v1, 0x1

    .line 6422
    if-eqz v1, :cond_1

    .line 6424
    const-string/jumbo v1, "use403ForLocalCW is true and querying the call waiting by ut failed, forbid CSFB!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6425
    const/4 v1, 0x1

    return v1

    .line 6428
    .end local v0    # "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    :cond_1
    return v3
.end method

.method private isCTCardAndSupportVolte()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3483
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 3484
    const v1, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v0

    :cond_0
    return v0

    .line 3486
    :cond_1
    const v2, 0x0

    const v1, 0x0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v0

    :cond_2
    return v0
.end method

.method private isCallWaitingExpire()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1443
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 1444
    return v2

    .line 1447
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1449
    .local v0, "currDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forbid call waiting request, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1451
    const-string/jumbo v2, ", mNextGetCallWaitingTime"

    .line 1450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1451
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 1450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1452
    return v3

    .line 1455
    :cond_1
    return v2
.end method

.method private isCardChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "newImsi"    # Ljava/lang/String;
    .param p2, "oldImsi"    # Ljava/lang/String;

    .prologue
    .line 4037
    const/4 v0, 0x0

    .line 4039
    .local v0, "ret":Z
    if-nez p1, :cond_1

    .line 4040
    if-nez p2, :cond_0

    .line 4041
    const/4 v0, 0x0

    .line 4049
    .end local v0    # "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Card is changed ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4051
    return v0

    .line 4043
    .restart local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4046
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .local v0, "ret":Z
    goto :goto_0
.end method

.method private isCardMccMncPreferToUseUT()Z
    .locals 2

    .prologue
    .line 3841
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getCardMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardMccMncPreferToUseUT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCardTypePreferToUseUT()Z
    .locals 3

    .prologue
    .line 3833
    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 3834
    .local v1, "subId":I
    const v2, 0x0

    if-eq v1, v2, :cond_0

    const-string v2, "gsm.sim2.type"

    const v1, -0x1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "gsm.sim1.type"

    const v1, -0x1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3837
    .local v0, "cardType":I
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCardTypePreferToUseUT(I)Z

    move-result v2

    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 4451
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 2978
    const/4 v0, 0x0

    .line 2980
    .local v0, "result":Z
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    sparse-switch v1, :sswitch_data_0

    .line 3006
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCmdGetResultFromSdkLocally="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3008
    return v0

    .line 2985
    :sswitch_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eqz v1, :cond_0

    .line 2986
    const/4 v0, 0x1

    goto :goto_0

    .line 2998
    :sswitch_1
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    .line 2999
    const/4 v0, 0x1

    goto :goto_0

    .line 2980
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method private isConfigUtForbiddenTimer()Z
    .locals 2

    .prologue
    .line 5792
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentSubChange()Z
    .locals 3

    .prologue
    .line 4055
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 4056
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current sub is changed, ret is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4057
    return v0

    .line 4055
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isDataConnection()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5571
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5572
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5573
    const-string/jumbo v0, "handle UT data connection ut can use wifi and wifi is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5574
    return v1

    .line 5579
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5580
    const-string/jumbo v0, "handle UT data connection ut can not use wifi and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5582
    return v1

    .line 5585
    :cond_1
    const-string/jumbo v0, "data is not Connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5587
    const/4 v0, 0x0

    return v0
.end method

.method private isDataSwitchOn()Z
    .locals 3

    .prologue
    .line 5623
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5625
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isDefaultConnected()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5592
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5594
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 5595
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5597
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 5599
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 5603
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v4
.end method

.method private isEnableCallWaiting(I)Z
    .locals 1
    .param p1, "callWaitingAction"    # I

    .prologue
    const/4 v0, 0x1

    .line 6093
    if-ne v0, p1, :cond_0

    .line 6094
    return v0

    .line 6096
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLocalCallWaitingEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1824
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/16 v3, 0x14

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1826
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1827
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    .line 1828
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 1827
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1826
    :cond_0
    return v1
.end method

.method private isNeedSetupWifiTunnel(I)Z
    .locals 4
    .param p1, "utDomain"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2457
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v0

    .line 2458
    .local v0, "isAirplaneModeOn":Z
    const/4 v3, 0x2

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 2459
    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v3, p1, :cond_0

    if-eq v1, p1, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isNeedTempChangeDefaultDataSub()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2463
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v1, :cond_0

    .line 2464
    return v0

    .line 2467
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2468
    return v0

    .line 2471
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2472
    return v0

    .line 2475
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5034
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5033
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5035
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 5036
    const-string/jumbo v3, "The ConnectivityManager is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5037
    return v5

    .line 5039
    :cond_0
    const/16 v2, 0x2d

    .line 5040
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v3, :cond_1

    .line 5041
    const/16 v2, 0x2f

    .line 5043
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5044
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 5045
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    return v3

    .line 5047
    :cond_2
    return v5
.end method

.method private isOtherSubUtIdle()Z
    .locals 2

    .prologue
    .line 6327
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_0

    .line 6328
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->isOtherSubUtIdle(I)Z

    move-result v0

    return v0

    .line 6331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSsUseUtInterface(I)Z
    .locals 3
    .param p1, "utType"    # I

    .prologue
    .line 2960
    const/4 v0, 0x1

    .line 2962
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 2974
    :cond_0
    :goto_0
    return v0

    .line 2966
    :pswitch_0
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2967
    const/4 v0, 0x0

    goto :goto_0

    .line 2962
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private isUtDataExpire(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6102
    const/4 v1, 0x0

    .line 6104
    .local v1, "utDataExpireTime":Ljava/util/Date;
    sparse-switch p1, :sswitch_data_0

    .line 6111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUtDataExpire unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6113
    return v4

    .line 6108
    :sswitch_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "utDataExpireTime":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .line 6116
    .local v1, "utDataExpireTime":Ljava/util/Date;
    if-nez v1, :cond_0

    .line 6117
    return v4

    .line 6120
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6122
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    .line 6123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ut data is not expire, currDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mNextUtDataUpdateTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6125
    return v5

    .line 6128
    :cond_1
    return v4

    .line 6104
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private isUtIdInvalid(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 4370
    if-gez p1, :cond_0

    .line 4371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4373
    const/4 v0, 0x1

    return v0

    .line 4375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Valid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4377
    return v2
.end method

.method private isUtNotUseDefaultAPN()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5428
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUtOverWifiEnabled()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5059
    const/4 v1, 0x1

    .line 5060
    .local v1, "UT_SWITCH_ON":I
    const/4 v0, 0x0

    .line 5061
    .local v0, "SUB0":I
    const-string/jumbo v10, "ro.config.hw_vowifi"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 5062
    .local v4, "isMapconOn":Ljava/lang/Boolean;
    const-string/jumbo v10, "ro.config.hw_vowifi_mmsut"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5064
    .local v5, "isUtOverWifiEnabled":Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 5066
    .local v8, "ret":Z
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    .line 5067
    return v11

    .line 5070
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5071
    .local v3, "context":Landroid/content/Context;
    if-nez v3, :cond_1

    .line 5072
    const-string/jumbo v10, "null == context"

    invoke-direct {p0, v10}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5073
    return v11

    .line 5076
    :cond_1
    iget v10, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3, v10}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5077
    return v11

    .line 5080
    :cond_2
    iget-object v10, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v10}, Lcom/huawei/ims/HwImsConfigImpl;->getVowifiUtSwitch()Z

    move-result v6

    .line 5084
    .local v6, "isUtSwitchOn":Z
    const-string/jumbo v10, "connectivity"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5085
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_3

    .line 5086
    const-string/jumbo v10, "null == ConnectivityManager"

    invoke-direct {p0, v10}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5087
    return v11

    .line 5090
    :cond_3
    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 5091
    .local v9, "wifiNetinfo":Landroid/net/NetworkInfo;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5092
    .local v7, "isWifiConnected":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5093
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5096
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v6

    .line 5098
    .end local v8    # "ret":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isUtOverWifiEnabled return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5099
    return v8

    .line 5096
    .restart local v8    # "ret":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private isUtOverWifiTunnelUp()Z
    .locals 2

    .prologue
    .line 5251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUtOverWifiTunnelUp, mIsWifiTunnnelUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5252
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    return v0
.end method

.method private isUtSubscribed()Z
    .locals 1

    .prologue
    .line 6240
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    return v0
.end method

.method private isUtSupportedByCurrentBearer()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6177
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBearerType()I

    move-result v2

    .line 6179
    .local v2, "utBearerType":I
    if-ne v2, v5, :cond_2

    .line 6182
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 6184
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 6185
    .local v0, "networkType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUtSupportedByCurrentBearer subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6186
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 6187
    const/16 v3, 0x13

    if-ne v0, v3, :cond_1

    .line 6188
    :cond_0
    return v5

    .line 6190
    :cond_1
    return v6

    .line 6192
    .end local v0    # "networkType":I
    .end local v1    # "subId":I
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 6194
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceSub;->getImsRegisterState()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 6195
    return v5

    .line 6197
    :cond_3
    return v6

    .line 6201
    :cond_4
    return v5
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 4439
    packed-switch p1, :pswitch_data_0

    .line 4446
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4444
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 4439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 4424
    packed-switch p1, :pswitch_data_0

    .line 4434
    const/4 v0, 0x0

    return v0

    .line 4432
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 4424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .prologue
    .line 3816
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3817
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 3819
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 3820
    const v1, 0x1

    .line 3823
    .end local v1    # "isVolteSwitchOn":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3825
    return v1
.end method

.method private isVowifiPropOpened()Z
    .locals 1

    .prologue
    .line 5053
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->ISVOWIFI_PROP_OPENED:Z

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 5608
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5610
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 5611
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5613
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 5614
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 5618
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private keepAliveImsConnectivity()V
    .locals 4

    .prologue
    .line 5318
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5319
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5320
    const-wide/16 v2, 0x7530

    .line 5318
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5321
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 6279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 6283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6284
    return-void
.end method

.method private popUtMessage(I)Landroid/os/Message;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1567
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1569
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    .line 1570
    const-string/jumbo v2, "popUtMessage imsPhone is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1572
    return-object v3

    :cond_0
    move-object v0, v1

    .line 1575
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1576
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhone:Lcom/android/internal/telephony/imsphone/HwImsPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    return-object v2
.end method

.method private processECTCallBack(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1807
    if-nez p1, :cond_0

    .line 1808
    const-string/jumbo v3, "ECTCallBack msg is null,just return"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1809
    return-void

    .line 1811
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1812
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v3, :cond_2

    .line 1813
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1814
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v3, :cond_1

    .line 1815
    const-string/jumbo v3, "get imsphone fails."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1816
    return-void

    :cond_1
    move-object v1, v2

    .line 1818
    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1819
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyECTFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1821
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private processImsConnectivity()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5262
    const/4 v0, 0x0

    .line 5264
    .local v0, "bDCReady":Z
    const/16 v2, 0x2f

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 5266
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_0

    .line 5267
    const-string/jumbo v2, "processImsConnectivity, wait for ims connecting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5269
    return v4

    .line 5272
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_2

    .line 5273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImsConnectivity, ims is connected, mbReqRoutHost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5275
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    if-eqz v2, :cond_1

    .line 5276
    const/4 v2, 0x1

    return v2

    .line 5279
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5281
    return v4

    .line 5285
    :cond_2
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v1

    .line 5287
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImsConnectivity, begin ims result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",  mImsDCState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5290
    packed-switch v1, :pswitch_data_0

    .line 5313
    :cond_3
    :goto_0
    :pswitch_0
    return v0

    .line 5292
    :pswitch_1
    const/4 v0, 0x0

    .line 5293
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_4

    .line 5294
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5295
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_0

    .line 5296
    :cond_4
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v2, v3, :cond_3

    .line 5298
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_3

    .line 5300
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5301
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_0

    .line 5305
    :pswitch_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5306
    const/4 v0, 0x0

    .line 5307
    goto :goto_0

    .line 5290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processTemporarilyDcConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processTemporarilyDcConnection, mImsDCState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5325
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_0

    .line 5326
    const-string/jumbo v0, "processTemporarilyDcConnection, wait for ims connecting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5328
    return v2

    .line 5331
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_1

    .line 5332
    const-string/jumbo v0, "processTemporarilyDcConnection, ims is connected, return true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5333
    return v2

    .line 5336
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 5338
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 5341
    const/4 v0, 0x0

    return v0
.end method

.method private queryAndSyncCLIRModeToImsSdk()V
    .locals 5

    .prologue
    .line 1230
    const-string/jumbo v2, "[UTCMD]enter queryAndSyncCLIRModeToImsSdk"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1232
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v2, :cond_0

    .line 1233
    const-string/jumbo v2, "sim card has not been loaded!"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1236
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1237
    .local v0, "domainSelect":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 1239
    .local v1, "mOIRSourceMode":I
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1240
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR()I

    .line 1242
    :cond_1
    return-void
.end method

.method private queryCLIR(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    .line 4202
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4204
    .local v3, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v6

    .line 4205
    .local v6, "mOIRSourceMode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "enter queryCLIR, mOIRSourceMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4207
    iget-object v9, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v5

    .line 4209
    .local v5, "mCLIRUtCanBeUsed":Z
    if-eqz v5, :cond_1

    if-ne v6, v12, :cond_1

    .line 4211
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRDefaultMode()I

    move-result v4

    .line 4212
    .local v4, "defaultClirMode":I
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4213
    sget-object v10, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v11, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v10, v10, v11

    .line 4214
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 4212
    invoke-virtual {v9, v10, v11, v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v2

    .line 4218
    .local v2, "clirmode":I
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 4219
    .local v0, "clirArray":[I
    const/4 v9, 0x0

    aput v2, v0, v9

    .line 4220
    const/4 v9, 0x4

    aput v9, v0, v12

    .line 4222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4223
    .local v1, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v9, "queryClir"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4225
    iget v9, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4226
    .local v7, "onComplete":Landroid/os/Message;
    if-nez v7, :cond_0

    .line 4227
    const-string/jumbo v9, "onComplete is null."

    invoke-direct {p0, v9}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4230
    :cond_0
    iget-object v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 4231
    const/16 v10, 0x1f

    .line 4230
    invoke-virtual {v9, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4232
    .local v8, "response":Landroid/os/Message;
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4234
    invoke-direct {p0, v2, v8}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4238
    .end local v0    # "clirArray":[I
    .end local v1    # "clirInfo":Landroid/os/Bundle;
    .end local v2    # "clirmode":I
    .end local v4    # "defaultClirMode":I
    .end local v7    # "onComplete":Landroid/os/Message;
    .end local v8    # "response":Landroid/os/Message;
    :goto_0
    return-void

    .line 4236
    :cond_1
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0
.end method

.method private queryCallWaiting(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 4141
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4143
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    .line 4145
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter getCallWaiting, callWaitingSource="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4147
    iget-object v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4153
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v4, :cond_0

    .line 4154
    const-string/jumbo v4, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4156
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4158
    return-void

    .line 4161
    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[error]can\'t get call waiting, the source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4195
    iget v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 4198
    :goto_0
    return-void

    .line 4163
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4166
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4169
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query cw , mHasCheckedSIMCardByUT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsUtForbidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4170
    iget-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 4169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4170
    const-string/jumbo v5, "canUse403ForLocalCW="

    .line 4169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4170
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v5

    .line 4169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4171
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 4172
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4173
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v4, :cond_2

    .line 4174
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4177
    :cond_2
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4178
    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    .line 4179
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4177
    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4183
    .local v2, "enable":Ljava/lang/Boolean;
    iget v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4185
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_3

    .line 4186
    const-string/jumbo v4, "onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4189
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4, v7, v3}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 4161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private queryUtApn()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    .line 5463
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v10

    .line 5464
    .local v10, "subId":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 5466
    .local v9, "operator":Ljava/lang/String;
    const-string/jumbo v6, "ims"

    .line 5468
    .local v6, "apnType":Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5469
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5471
    :cond_0
    const-string/jumbo v6, "xcap"

    .line 5475
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = ? AND (type like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5477
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    .line 5478
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v7, 0x0

    .line 5480
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5481
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v4, v2

    const/4 v2, 0x0

    .line 5480
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5482
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 5483
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 5484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 5489
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasUtUseAPN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5493
    if-eqz v7, :cond_3

    .line 5494
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5497
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-void

    .line 5486
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5490
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 5491
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Exception for queryUtApn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5493
    if-eqz v7, :cond_3

    .line 5494
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5492
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 5493
    if-eqz v7, :cond_5

    .line 5494
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5492
    :cond_5
    throw v0
.end method

.method private recoverDefaultDataSub()V
    .locals 4

    .prologue
    .line 5820
    const-string/jumbo v2, "recoverDefaultDataSub"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5821
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    if-nez v2, :cond_0

    .line 5822
    return-void

    .line 5825
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v1

    .line 5826
    .local v1, "defaultDataSubId":I
    const v0, 0x0

    .line 5827
    .local v0, "default4GSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverDefaultDataSub: defaultDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5828
    const-string/jumbo v3, ", default4GSlotId = "

    .line 5827
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5829
    if-eq v1, v0, :cond_1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v0, v2, :cond_1

    .line 5830
    const-string/jumbo v2, "recoverDefaultDataSub: recover default data sub to main sub"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5831
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 5832
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 5834
    :cond_1
    return-void
.end method

.method private regetIMSIFromPhone()Z
    .locals 3

    .prologue
    .line 6310
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 6311
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 6312
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 6313
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 6314
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 6315
    if-eqz v1, :cond_0

    .line 6316
    const-string/jumbo v2, "regetIMSIFromPhone"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6317
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setIMSI(Ljava/lang/String;)V

    .line 6318
    const/4 v2, 0x1

    return v2

    .line 6323
    .end local v0    # "defPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private removeLastUtCmd()V
    .locals 3

    .prologue
    .line 2028
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2029
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    const-string/jumbo v0, "removeLastUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2032
    return-void

    .line 2035
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after remove mUtCmdQueue size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2039
    return-void

    .line 2028
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeUtCmd()V
    .locals 3

    .prologue
    .line 2004
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2005
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after remove mUtCmdQueue size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2009
    return-void

    .line 2004
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 3053
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3054
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3056
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3057
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3058
    .local v1, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-ne v1, p1, :cond_0

    .line 3059
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_1
    monitor-exit v3

    .line 3064
    return-void

    .line 3053
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private resetUtSDK()V
    .locals 1

    .prologue
    .line 6295
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6296
    const-string/jumbo v0, "handleUtCmd: reset Ut SDK"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6297
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 6300
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 6302
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    .line 6303
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 6305
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6307
    :cond_0
    return-void
.end method

.method private responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 4937
    new-instance v1, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v1}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 4939
    .local v1, "info":Lcom/android/ims/ImsSsInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 4940
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 4945
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4947
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "imsSsInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4949
    return-object v0

    .line 4942
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_0
.end method

.method private responseCLCK(Ljava/lang/Boolean;)[Lcom/android/ims/ImsSsInfo;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 4855
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/ims/ImsSsInfo;

    .line 4857
    .local v0, "info":[Lcom/android/ims/ImsSsInfo;
    new-instance v1, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v1}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v1, v0, v2

    .line 4858
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 4859
    :cond_0
    aget-object v1, v0, v2

    iput v2, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 4864
    :goto_0
    return-object v0

    .line 4861
    :cond_1
    aget-object v1, v0, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_0
.end method

.method private responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 4919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseCLIP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4921
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "defaultBehavior"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 4888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "responseCLIR result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", defaultBehavior="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4890
    new-array v1, v5, [I

    .line 4892
    .local v1, "response":[I
    const/4 v2, 0x4

    aput v2, v1, v6

    .line 4893
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 4894
    :cond_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 4895
    aput v5, v1, v4

    .line 4896
    aput v4, v1, v6

    .line 4910
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4912
    .local v0, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4914
    return-object v0

    .line 4898
    .end local v0    # "clirInfo":Landroid/os/Bundle;
    :cond_1
    aput v4, v1, v4

    goto :goto_0

    .line 4901
    :cond_2
    if-ne p2, v6, :cond_3

    .line 4902
    aput v5, v1, v4

    goto :goto_0

    .line 4903
    :cond_3
    if-ne p2, v5, :cond_4

    .line 4904
    aput v6, v1, v4

    goto :goto_0

    .line 4906
    :cond_4
    aput v5, v1, v4

    goto :goto_0
.end method

.method private responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 4931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseCOLP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4933
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 4925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseCOLR, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4927
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 4868
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseInts(Ljava/lang/Boolean;I)[I

    move-result-object v0

    return-object v0
.end method

.method private responseCallForward(I)[Lcom/android/ims/ImsCallForwardInfo;
    .locals 10
    .param p1, "reason"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 4782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "responseCallForward reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4784
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v0

    .line 4786
    .local v0, "condition":I
    if-ne v8, v0, :cond_0

    .line 4787
    const-string/jumbo v5, "invalid reason"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4788
    new-array v5, v7, [Lcom/android/ims/ImsCallForwardInfo;

    return-object v5

    .line 4791
    :cond_0
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 4793
    .local v3, "result":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCallDiversionEnable result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4795
    new-array v2, v9, [Lcom/android/ims/ImsCallForwardInfo;

    .line 4797
    .local v2, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    new-instance v5, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    aput-object v5, v2, v7

    .line 4799
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 4800
    :cond_1
    aget-object v5, v2, v7

    iput v7, v5, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 4805
    :goto_0
    aget-object v5, v2, v7

    iput v0, v5, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 4806
    aget-object v5, v2, v7

    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTargetNumber(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4807
    aget-object v5, v2, v7

    iget-object v5, v5, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 4808
    const-string/jumbo v5, "responseCallForward number is null, set empty string as default"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4810
    aget-object v5, v2, v7

    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4813
    :cond_2
    aget-object v5, v2, v7

    iput v7, v5, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 4814
    const/4 v5, 0x3

    if-ne v5, p1, :cond_3

    .line 4815
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionNoReplyTimer()Ljava/lang/String;

    move-result-object v4

    .line 4816
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 4817
    aget-object v5, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 4821
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    .line 4822
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTime()[Ljava/util/Date;

    move-result-object v1

    .line 4824
    .local v1, "date":[Ljava/util/Date;
    if-eqz v1, :cond_6

    array-length v5, v1

    const/4 v6, 0x2

    if-ne v6, v5, :cond_6

    aget-object v5, v1, v7

    if-eqz v5, :cond_6

    aget-object v5, v1, v9

    if-eqz v5, :cond_6

    .line 4825
    aget-object v5, v2, v7

    aget-object v6, v1, v7

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v6

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4826
    aget-object v5, v2, v7

    aget-object v6, v1, v7

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v6

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 4827
    aget-object v5, v2, v7

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v6

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mEndHour:I

    .line 4828
    aget-object v5, v2, v7

    aget-object v6, v1, v9

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v6

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 4830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get CFT successfully, date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4831
    const-string/jumbo v6, ", mStartHour="

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4831
    aget-object v6, v2, v7

    iget v6, v6, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4832
    const-string/jumbo v6, ", mStartMinute="

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4832
    aget-object v6, v2, v7

    iget v6, v6, Lcom/android/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4833
    const-string/jumbo v6, ", mEndHour="

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4833
    aget-object v6, v2, v7

    iget v6, v6, Lcom/android/ims/ImsCallForwardInfo;->mEndHour:I

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4834
    const-string/jumbo v6, ", mEndMinute="

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4834
    aget-object v6, v2, v7

    iget v6, v6, Lcom/android/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 4830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4849
    .end local v1    # "date":[Ljava/util/Date;
    :cond_4
    :goto_1
    aget-object v5, v2, v7

    const/16 v6, 0x81

    iput v6, v5, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 4851
    return-object v2

    .line 4802
    :cond_5
    aget-object v5, v2, v7

    iput v9, v5, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto/16 :goto_0

    .line 4836
    .restart local v1    # "date":[Ljava/util/Date;
    :cond_6
    aget-object v5, v2, v7

    iput v8, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4837
    aget-object v5, v2, v7

    iput v8, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4838
    aget-object v5, v2, v7

    iput v8, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4839
    aget-object v5, v2, v7

    iput v8, v5, Lcom/android/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4841
    const-string/jumbo v5, "can\'t get the time while query CFT, deliver -1 to APP"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private responseCallForwardEx(I)[Lcom/android/ims/ImsCallForwardInfo;
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 4761
    const/4 v1, 0x0

    .line 4762
    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v0

    .line 4763
    .local v0, "condition":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsUseMultCondition()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4764
    const-string/jumbo v2, "responseCallForwardEx ,Single and complsite node query"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4765
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 4766
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v1

    .line 4772
    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    :goto_0
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 4773
    aget-object v2, v1, v3

    iput v0, v2, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 4778
    :cond_0
    :goto_1
    return-object v1

    .line 4767
    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_1
    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    .line 4768
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v1

    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    goto :goto_0

    .line 4770
    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v1

    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    goto :goto_0

    .line 4776
    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v1

    .local v1, "infos":[Lcom/android/ims/ImsCallForwardInfo;
    goto :goto_1
.end method

.method private responseFailure(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 4404
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    if-eqz v1, :cond_0

    .line 4405
    const/16 p2, 0x33f

    .line 4416
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter responseFailure, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4418
    new-instance v0, Landroid/telephony/ims/compat/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>(II)V

    .line 4420
    .local v0, "error":Landroid/telephony/ims/compat/ImsReasonInfo;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-virtual {v1, p0, p1, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/compat/ImsReasonInfo;)V

    .line 4421
    return-void
.end method

.method private responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    const/4 v2, 0x0

    .line 6434
    if-nez p1, :cond_0

    .line 6435
    const-string/jumbo v1, "responseFailureAndEndUt: cmd is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6436
    return-void

    .line 6438
    :cond_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6439
    .local v0, "onComplete":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 6440
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6442
    :cond_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6443
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6444
    return-void
.end method

.method private responseInts(Ljava/lang/Boolean;I)[I
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseInts result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4874
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4876
    .local v0, "response":[I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 4877
    :cond_0
    aput v3, v0, v3

    .line 4881
    :goto_0
    aput p2, v0, v4

    .line 4883
    return-object v0

    .line 4879
    :cond_1
    aput v4, v0, v3

    goto :goto_0
.end method

.method private saveCTCardVolteFlag(Z)V
    .locals 4
    .param p1, "isVolteCard"    # Z

    .prologue
    .line 3455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCTCardVolteFlag isVolteCard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3456
    if-eqz p1, :cond_0

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    .line 3457
    .local v0, "volteFlag":I
    :goto_0
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 3458
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3462
    :goto_1
    return-void

    .line 3456
    .end local v0    # "volteFlag":I
    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .restart local v0    # "volteFlag":I
    goto :goto_0

    .line 3460
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private sendStopImsApnMessage()V
    .locals 4

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5501
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5502
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImsDataDelayEndTime()I

    move-result v2

    int-to-long v2, v2

    .line 5500
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5503
    return-void
.end method

.method private static setCurrentSubId(I)V
    .locals 0
    .param p0, "subId"    # I

    .prologue
    .line 4061
    sput p0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 4062
    return-void
.end method

.method private setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 5345
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5346
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 5347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5348
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 5352
    :goto_0
    return-void

    .line 5350
    :cond_0
    const-string/jumbo v1, "setDefaultDataSubId failed!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setImsExtensionalParam(IZLjava/lang/String;)V
    .locals 0
    .param p1, "num"    # I
    .param p2, "isNeed"    # Z
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 4017
    if-eqz p2, :cond_0

    .end local p3    # "params":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/huawei/sci/SciSSConfHs;->setExtensionalParam(IZLjava/lang/String;)I

    .line 4018
    return-void

    .line 4017
    .restart local p3    # "params":Ljava/lang/String;
    :cond_0
    const/4 p3, 0x0

    goto :goto_0
.end method

.method private setImsUserAgentExtensionalParam()V
    .locals 4

    .prologue
    .line 4021
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4022
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4023
    .local v0, "buildVersionBuffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "HUAWEI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4024
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolCarrierBuildVersion()Z

    move-result v1

    .line 4025
    .local v1, "isNeedBuildVersion":Z
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4026
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SetImsExtensionalParam suucess:RO_HW_OEMNAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4028
    const-string/jumbo v3, ",RO_BUILD_VERSION_INCREMENTAL = "

    .line 4027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4028
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 4027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4029
    const-string/jumbo v3, ",buildVersion = "

    .line 4027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4029
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4034
    .end local v0    # "buildVersionBuffer":Ljava/lang/StringBuffer;
    .end local v1    # "isNeedBuildVersion":Z
    :goto_0
    return-void

    .line 4031
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get prop RO_HW_OEMNAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4032
    const-string/jumbo v3, ",RO_BUILD_VERSION_INCREMENTAL = "

    .line 4031
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4032
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 4031
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V
    .locals 0
    .param p0, "sciSSConfCb"    # Lcom/huawei/sci/SciSSConfCb;

    .prologue
    .line 4065
    sput-object p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 4066
    return-void
.end method

.method private setUtDataExpireTime(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 6132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter setUtDataExpireTime, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6134
    sparse-switch p1, :sswitch_data_0

    .line 6148
    :goto_0
    return-void

    .line 6138
    :sswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6140
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 6141
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expirte time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 6134
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private setUtOverWifiTunnelUpFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 5256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUtOverWifiTunnelUpFlag, flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5257
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 5258
    return-void
.end method

.method private startAlarm(II)V
    .locals 4
    .param p1, "alarm"    # I
    .param p2, "timer"    # I

    .prologue
    .line 5838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5840
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5841
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5842
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5844
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5845
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5846
    int-to-long v2, p2

    .line 5844
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5848
    :cond_1
    return-void
.end method

.method private startDCAlarm()V
    .locals 2

    .prologue
    .line 5727
    const/16 v0, 0x29

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5728
    return-void
.end method

.method private startImsDataConnectionAlarm()V
    .locals 2

    .prologue
    .line 5412
    const/16 v0, 0x2c

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5413
    return-void
.end method

.method private startTemporaryDCAlarm()V
    .locals 2

    .prologue
    .line 5735
    const/16 v0, 0x2f

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5736
    return-void
.end method

.method private startTemporaryUtStayAlarm()V
    .locals 2

    .prologue
    .line 5798
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5799
    const-string/jumbo v0, "startTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5800
    const/16 v0, 0x30

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5802
    :cond_0
    return-void
.end method

.method private startUtAlarm()V
    .locals 2

    .prologue
    .line 5702
    const/16 v0, 0x2a

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5703
    return-void
.end method

.method private startUtForbiddenAlarm()V
    .locals 4

    .prologue
    .line 5769
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    .line 5770
    .local v0, "delay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUtForbiddenAlarm: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5771
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5772
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    const v3, 0xea60

    div-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 5773
    return-void
.end method

.method private startUtRetryAlarm(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 3492
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryInterval(I)I

    move-result v0

    .line 3493
    .local v0, "utRetryInterval":I
    if-gez v0, :cond_0

    .line 3494
    return-void

    .line 3497
    :cond_0
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 3498
    return-void
.end method

.method private startUtServiceThread()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$3;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$3;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    return-void
.end method

.method private startWifiTunnelConnectionAlarm()V
    .locals 2

    .prologue
    .line 5172
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5174
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtVoWifiDelayEndTime()I

    move-result v0

    const/16 v1, 0x2e

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5177
    :cond_0
    return-void
.end method

.method private startWifiTunnelSetupAlarm()V
    .locals 2

    .prologue
    .line 5211
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5212
    const/16 v0, 0x2d

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5214
    :cond_0
    return-void
.end method

.method private stopAlarm(I)V
    .locals 2
    .param p1, "alarm"    # I

    .prologue
    .line 5851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5853
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5854
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 5853
    if-eqz v0, :cond_0

    .line 5855
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5857
    :cond_0
    return-void
.end method

.method private stopDcAlarm()V
    .locals 1

    .prologue
    .line 5731
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5732
    return-void
.end method

.method private stopImsDataConnectionAlarm()V
    .locals 1

    .prologue
    .line 5416
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5417
    return-void
.end method

.method private stopTemporaryDcAlarm()V
    .locals 1

    .prologue
    .line 5739
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5740
    return-void
.end method

.method private stopTemporaryUtStayAlarm()V
    .locals 1

    .prologue
    .line 5805
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 5806
    const-string/jumbo v0, "stopTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5807
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5809
    :cond_0
    return-void
.end method

.method private stopUtAlarm()V
    .locals 1

    .prologue
    .line 5706
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5707
    return-void
.end method

.method private stopUtForbiddenAlarm()V
    .locals 2

    .prologue
    .line 5776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopUtForbiddenAlarm: mUtForbiddenDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5778
    return-void
.end method

.method private stopUtRetryAlarm()V
    .locals 1

    .prologue
    .line 3501
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 3502
    return-void
.end method

.method private stopWifiTunnelConnectionAlarm()V
    .locals 1

    .prologue
    .line 5180
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5181
    const-string/jumbo v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5182
    return-void

    .line 5184
    :cond_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5185
    return-void
.end method

.method private stopWifiTunnelSetupAlarm()V
    .locals 1

    .prologue
    .line 5217
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVowifiPropOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5218
    const-string/jumbo v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5219
    return-void

    .line 5221
    :cond_0
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5222
    return-void
.end method

.method private syncCLIRModeToImsSdk(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->setCLIR(ILandroid/os/Message;)V

    .line 6154
    return-void
.end method

.method private syncCallWaitingToCS(ZLandroid/os/Message;)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 6032
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6034
    .local v0, "callWaitingAction":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    .line 6035
    const/4 v3, 0x0

    .line 6034
    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6038
    const/4 v1, 0x1

    return v1
.end method

.method private syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5973
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 5975
    .local v0, "callWaitingAction":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "begin sync call waiting to IMS SDK, callWaitingAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5978
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-eqz v1, :cond_0

    .line 5979
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 5981
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5979
    invoke-virtual {v1, p1, v4, v2}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V

    .line 5994
    :goto_0
    return v4

    .line 5986
    :cond_0
    const-string/jumbo v1, "don\'t sync result to IMS SDK exectly"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5988
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v6}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private transBarringFacilityToCbReason(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 4658
    const-string/jumbo v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4659
    const/4 v0, 0x1

    return v0

    .line 4660
    :cond_0
    const-string/jumbo v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4661
    const/4 v0, 0x2

    return v0

    .line 4662
    :cond_1
    const-string/jumbo v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4663
    const/4 v0, 0x3

    return v0

    .line 4664
    :cond_2
    const-string/jumbo v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4665
    const/4 v0, 0x0

    return v0

    .line 4666
    :cond_3
    const-string/jumbo v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4667
    const/4 v0, 0x4

    return v0

    .line 4668
    :cond_4
    const-string/jumbo v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4669
    const/4 v0, 0x5

    return v0

    .line 4671
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private transCFToUtReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 4676
    packed-switch p1, :pswitch_data_0

    .line 4694
    const/4 v0, -0x1

    return v0

    .line 4678
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4680
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 4682
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 4684
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 4686
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 4689
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 4691
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 4676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private transCFToUtType(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 4699
    packed-switch p1, :pswitch_data_0

    .line 4717
    const/4 v0, -0x1

    return v0

    .line 4701
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 4703
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 4705
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 4707
    :pswitch_3
    const/16 v0, 0xb

    return v0

    .line 4709
    :pswitch_4
    const/16 v0, 0xc

    return v0

    .line 4712
    :pswitch_5
    const/16 v0, 0x16

    return v0

    .line 4714
    :pswitch_6
    const/16 v0, 0x17

    return v0

    .line 4699
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private transCLIRModeToUtReason(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .prologue
    .line 4747
    packed-switch p1, :pswitch_data_0

    .line 4753
    const/4 v0, 0x1

    return v0

    .line 4749
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 4747
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private transCbTypeToFacility(I)Ljava/lang/String;
    .locals 3
    .param p1, "cbType"    # I

    .prologue
    .line 4601
    const/4 v0, 0x0

    .line 4603
    .local v0, "facility":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4624
    .end local v0    # "facility":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4605
    .restart local v0    # "facility":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "AO"

    .local v0, "facility":Ljava/lang/String;
    goto :goto_0

    .line 4608
    .local v0, "facility":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "OI"

    .local v0, "facility":Ljava/lang/String;
    goto :goto_0

    .line 4611
    .local v0, "facility":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "OX"

    .local v0, "facility":Ljava/lang/String;
    goto :goto_0

    .line 4614
    .local v0, "facility":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "AI"

    .local v0, "facility":Ljava/lang/String;
    goto :goto_0

    .line 4617
    .local v0, "facility":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "IR"

    .local v0, "facility":Ljava/lang/String;
    goto :goto_0

    .line 4603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private transCbTypeToUtTypeGet(I)I
    .locals 1
    .param p1, "cbType"    # I

    .prologue
    .line 4582
    const/4 v0, -0x1

    .line 4583
    .local v0, "utType":I
    packed-switch p1, :pswitch_data_0

    .line 4597
    :goto_0
    return v0

    .line 4587
    :pswitch_0
    const/16 v0, 0xe

    .line 4588
    goto :goto_0

    .line 4591
    :pswitch_1
    const/16 v0, 0xd

    .line 4592
    goto :goto_0

    .line 4583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transCbTypeToUtTypeSet(I)I
    .locals 3
    .param p1, "cbType"    # I

    .prologue
    .line 4628
    const/4 v0, -0x1

    .line 4630
    .local v0, "utType":I
    packed-switch p1, :pswitch_data_0

    .line 4650
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ERROR]unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4654
    :goto_0
    return v0

    .line 4632
    :pswitch_1
    const/16 v0, 0x10

    .line 4633
    goto :goto_0

    .line 4635
    :pswitch_2
    const/16 v0, 0x11

    .line 4636
    goto :goto_0

    .line 4638
    :pswitch_3
    const/16 v0, 0x12

    .line 4639
    goto :goto_0

    .line 4641
    :pswitch_4
    const/16 v0, 0xf

    .line 4642
    goto :goto_0

    .line 4644
    :pswitch_5
    const/16 v0, 0x13

    .line 4645
    goto :goto_0

    .line 4647
    :pswitch_6
    const/16 v0, 0x15

    .line 4648
    goto :goto_0

    .line 4630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private transIntToDate(II)Ljava/util/Date;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 5860
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5862
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->setHours(I)V

    .line 5863
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 5865
    return-object v0
.end method

.method private transUtToCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 4722
    packed-switch p1, :pswitch_data_0

    .line 4741
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 4724
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 4726
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 4728
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 4730
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 4732
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 4735
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 4737
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 4722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private transferCmdFromRetryQueueToUtCmdQueue()V
    .locals 6

    .prologue
    .line 3020
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3021
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3023
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transferCmdFromRetryQueueToUtCmdQueue, size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3026
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3029
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3030
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 3034
    :cond_0
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3035
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3038
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3040
    return-void

    .line 3020
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .prologue
    .line 3043
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3045
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3046
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3050
    return-void

    .line 3045
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateCLIR(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4340
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4342
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v2

    .line 4344
    .local v2, "mOIRSourceMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter updateCLIR, mOIRSourceMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4346
    iget-object v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v1

    .line 4347
    .local v1, "mCLIRUtCanBeUsed":Z
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 4348
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4349
    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v6, v6, v7

    .line 4350
    iget v7, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 4351
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 4348
    invoke-virtual {v5, v6, v7, v8}, Lcom/huawei/ims/HwImsConfigImpl;->setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4353
    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4355
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_0

    .line 4356
    const-string/jumbo v5, "onComplete is null."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4359
    :cond_0
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 4360
    const/16 v6, 0x1f

    .line 4359
    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4362
    .local v4, "response":Landroid/os/Message;
    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4366
    .end local v3    # "onComplete":Landroid/os/Message;
    .end local v4    # "response":Landroid/os/Message;
    :goto_0
    return-void

    .line 4364
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0
.end method

.method private updateCallBarringAllOption(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "action"    # Z

    .prologue
    .line 4242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter updateCallbarringAllOption, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4243
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x5

    filled-new-array {v3, v4, v5, v6, v7}, [I

    move-result-object v0

    .line 4245
    .local v0, "CallBarringAll":[I
    const/4 v2, 0x0

    .line 4247
    .local v2, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4248
    aget v3, v0, v1

    invoke-direct {p0, p1, v3, p2}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZ)I

    move-result v2

    .line 4247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4251
    :cond_0
    return v2
.end method

.method private updateCallBarringBase(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z

    .prologue
    .line 4255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter updateCallBarringBase, cbType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4256
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v3

    .line 4258
    .local v3, "type":I
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v3, v5}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 4260
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4261
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v4

    .line 4264
    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 4266
    .local v2, "facility":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v1

    .line 4268
    .local v1, "condition":I
    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 4269
    iput-boolean p3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 4270
    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 4271
    iput-object p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 4273
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4275
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v4
.end method

.method private updateCallWaiting(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, -0x1

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UTCMD]enter updateCallWaiting enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1537
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1539
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1541
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1542
    return v4

    .line 1553
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1555
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_1

    .line 1556
    const-string/jumbo v1, "invalid domain, stop updateCallWaiting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1558
    return v4

    .line 1561
    :cond_1
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1563
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method private updateCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4279
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    .line 4281
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter setCallWaiting, callWaitingSource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4283
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4285
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4291
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v3, :cond_0

    .line 4292
    const-string/jumbo v3, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4294
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4296
    return-void

    .line 4299
    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->-getcom-huawei-ims-HwImsConfigImpl$CALL_WAITING_SOURCESwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[error]can\'t set call waiting, the source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4334
    return-void

    .line 4301
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4336
    :goto_0
    return-void

    .line 4304
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4308
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update callwaiting canUse403ForLocalCW : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mIsUtForbidden : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4309
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v3, :cond_1

    .line 4310
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4313
    :cond_1
    iget v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4315
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v2, :cond_2

    .line 4316
    const-string/jumbo v3, "onComplete is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4319
    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4320
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 4321
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4322
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 4324
    :cond_4
    const-string/jumbo v3, "[error]local call waiting and not sync is not reasonable."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4326
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4327
    return-void

    .line 4299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canUseDefaultBearForWifiConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUtUseDefaultApnForWifiConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseDefaultApnForWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6451
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v1

    if-nez v1, :cond_0

    .line 6452
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    .line 6451
    if-eqz v1, :cond_0

    .line 6452
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseDefaultApnForWifiConnected()Z

    move-result v0

    .line 6451
    :cond_0
    return v0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 1289
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1290
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 762
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 764
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 765
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 766
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 767
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6401
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-eqz v0, :cond_0

    .line 6402
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6404
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 1282
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1283
    return-void
.end method

.method handleSimCardAbsent()V
    .locals 1

    .prologue
    .line 1490
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1491
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "newImsi"    # Ljava/lang/String;

    .prologue
    .line 1275
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1276
    return-void
.end method

.method isAirModeResetCWInModem()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return v0
.end method

.method public isSIMCardCheckedByUT()Z
    .locals 1

    .prologue
    .line 6371
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    return v0
.end method

.method public isSupportCFT()Z
    .locals 3

    .prologue
    .line 1151
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1152
    const/16 v1, 0xc

    .line 1153
    const/4 v2, 0x0

    .line 1151
    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method isUtEnable()Z
    .locals 1

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    return v0
.end method

.method public isUtIdle()Z
    .locals 4

    .prologue
    .line 6345
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 6346
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 6348
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6350
    .local v0, "isUtCmdQueueEmpty":Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUtIdle: isWaitingForUtStay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isUtCmdQueueEmpty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6351
    if-nez v1, :cond_2

    .end local v0    # "isUtCmdQueueEmpty":Z
    :goto_2
    return v0

    .line 6345
    :cond_0
    const/4 v1, 0x0

    .local v1, "isWaitingForUtStay":Z
    goto :goto_0

    .line 6348
    .end local v1    # "isWaitingForUtStay":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isUtCmdQueueEmpty":Z
    goto :goto_1

    .line 6351
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public processECT()V
    .locals 3

    .prologue
    .line 6365
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 6366
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->explicitCallTransfer(Landroid/os/Message;)V

    .line 6368
    :cond_0
    return-void
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "processOnTransact , code = "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 696
    const/4 v15, 0x0

    .line 698
    .local v15, "result":I
    packed-switch p1, :pswitch_data_0

    .line 753
    const/4 v1, 0x0

    return v1

    .line 701
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isSupportCFT()Z

    move-result v12

    .line 702
    .local v12, "isSupportCFT":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isSupportCFT = "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 703
    if-eqz v12, :cond_0

    const/4 v15, 0x1

    .line 705
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/4 v1, 0x1

    return v1

    .line 703
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 711
    .end local v12    # "isSupportCFT":Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtEnable()Z

    move-result v13

    .line 712
    .local v13, "isUtEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isUtEnable = "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 713
    if-eqz v13, :cond_1

    const/4 v15, 0x1

    .line 715
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v1, 0x1

    return v1

    .line 713
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 721
    .end local v13    # "isUtEnable":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 722
    .local v2, "startHour":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 723
    .local v3, "startMinute":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 724
    .local v4, "endHour":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 725
    .local v5, "endMinute":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 726
    .local v6, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 727
    .local v7, "condition":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "number":Ljava/lang/String;
    move-object/from16 v1, p0

    .line 729
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/ims/HwImsUtImpl;->updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I

    move-result v15

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "result = "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v1, 0x1

    return v1

    .line 739
    .end local v2    # "startHour":I
    .end local v3    # "startMinute":I
    .end local v4    # "endHour":I
    .end local v5    # "endMinute":I
    .end local v6    # "action":I
    .end local v7    # "condition":I
    .end local v8    # "number":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 741
    .local v11, "cbType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v1, v0, :cond_2

    const/4 v9, 0x1

    .line 742
    .local v9, "action":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 744
    .local v10, "barrList":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v9, v10}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringOption(Ljava/lang/String;IZ[Ljava/lang/String;)I

    move-result v15

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "result = "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v1, 0x1

    return v1

    .line 741
    .end local v9    # "action":Z
    .end local v10    # "barrList":[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "action":Z
    goto :goto_2

    .line 698
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method declared-synchronized queryAndSyncCallWaitingToCs()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 1197
    :try_start_0
    const-string/jumbo v0, "[UTCMD]enter queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1203
    :cond_0
    const-string/jumbo v0, "sim card has not been loaded or data has not attach"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1204
    return-void

    .line 1210
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    .line 1210
    if-eqz v0, :cond_3

    .line 1212
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    .line 1210
    if-eqz v0, :cond_3

    .line 1214
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 1226
    return-void

    .line 1218
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1219
    const-string/jumbo v0, "this card MCC MNC is not prefer to use UT, will set network mode for callwait"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x1

    .line 1221
    const/4 v2, 0x3

    .line 1222
    const/4 v3, 0x0

    .line 1220
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .locals 1

    .prologue
    .line 1246
    const-string/jumbo v0, "[UTCMD]enter queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1252
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 1253
    const-string/jumbo v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1255
    return-void

    .line 1260
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    .line 1260
    if-eqz v0, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    .line 1260
    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    .line 1266
    :cond_1
    return-void
.end method

.method public queryCLIP()I
    .locals 4

    .prologue
    .line 910
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 912
    const-string/jumbo v1, "[UTCMD]enter queryCLIP"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 914
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 915
    const/4 v2, 0x1

    .line 916
    const/4 v3, 0x0

    .line 914
    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 918
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 922
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 924
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCLIR()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 882
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 884
    const-string/jumbo v1, "[UTCMD]enter queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 886
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 888
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 893
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 895
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_1

    .line 896
    const-string/jumbo v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 897
    const/4 v1, -0x1

    return v1

    .line 900
    :cond_1
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 903
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLP()I
    .locals 4

    .prologue
    .line 952
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 954
    const-string/jumbo v1, "[UTCMD]enter queryCOLP"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 956
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 957
    const/4 v2, 0x1

    .line 958
    const/4 v3, 0x0

    .line 956
    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 960
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 964
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 966
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLR()I
    .locals 4

    .prologue
    .line 931
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 933
    const-string/jumbo v1, "[UTCMD]enter queryCOLR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 935
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 936
    const/4 v2, 0x4

    .line 937
    const/4 v3, 0x0

    .line 935
    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 939
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 943
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 945
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallBarring(I)I
    .locals 5
    .param p1, "cbType"    # I

    .prologue
    .line 782
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UTCMD]enter queryCallBarring, cbType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeGet(I)I

    move-result v2

    .line 788
    .local v2, "type":I
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 790
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3

    .line 794
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "facility":Ljava/lang/String;
    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 797
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 799
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 801
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UTCMD]enter queryCallForward, condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 812
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    const-string/jumbo v1, "Invalid condition for queryCallForward."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 815
    const/4 v1, -0x1

    return v1

    .line 818
    :cond_0
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 820
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 824
    :cond_1
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 825
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v1

    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 827
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 829
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallWaiting()I
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 836
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 838
    const-string/jumbo v2, "[UTCMD]enter queryCallWaiting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 845
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 847
    .local v1, "currDate":Ljava/util/Date;
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 848
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 852
    :cond_0
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-direct {v0, v2, v6, v5}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 854
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    return v4

    .line 866
    :cond_1
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v3, v5}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 868
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v2, v3, :cond_2

    .line 869
    const-string/jumbo v2, "invalid domain, stop queryCallWaiting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 871
    return v4

    .line 874
    :cond_2
    invoke-virtual {p0, v6, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 875
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2
.end method

.method public receiveOtherSubUtIdle()V
    .locals 2

    .prologue
    .line 6355
    const-string/jumbo v0, "receiveOtherSubUtIdle"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6357
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6359
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6361
    :cond_0
    return-void
.end method

.method responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "err"    # Lcom/android/internal/telephony/CommandException$Error;

    .prologue
    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseMessage with err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1484
    return-void
.end method

.method responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseMessage with obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1466
    if-nez p1, :cond_0

    .line 1467
    const-string/jumbo v0, "responseMessage msg is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1469
    return-void

    .line 1472
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1473
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1474
    return-void
.end method

.method sendUTMessage(I)Z
    .locals 1
    .param p1, "utEvent"    # I

    .prologue
    .line 1174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method sendUTMessage(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "utEvent"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1182
    const-string/jumbo v1, "mUtServiceHandler is null, can\'t send message via this handler."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1184
    const/4 v1, 0x0

    return v1

    .line 1187
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method setImsSdkBsfAddr()I
    .locals 7

    .prologue
    .line 1341
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "bsfAddr":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfPort()I

    move-result v1

    .line 1343
    .local v1, "bsfPort":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfUseHttps()Z

    move-result v3

    .line 1345
    .local v3, "isBsfGoHttps":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set ims sdk bsf addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bsf port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bsf use https="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1347
    const/4 v4, -0x1

    .line 1349
    .local v4, "ret":I
    if-nez v0, :cond_0

    .line 1350
    const-string/jumbo v5, "bsfAddr is null."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1351
    return v4

    .line 1355
    :cond_0
    :try_start_0
    invoke-static {v0, v1, v3}, Lcom/huawei/sci/SciSSConfHs;->setBsfAddr(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1360
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set Ims Sdk Bsf Addr , ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1362
    return v4

    .line 1356
    :catch_0
    move-exception v2

    .line 1357
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setImsSdkBsfAddr, exception e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setImsSdkImpi()I
    .locals 5

    .prologue
    .line 1316
    const/4 v2, -0x1

    .line 1317
    .local v2, "ret":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPI()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "impi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsSdkImpi impi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1321
    if-nez v1, :cond_0

    .line 1322
    const-string/jumbo v3, "impi is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1323
    return v2

    .line 1327
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setAuthUserName(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1332
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Ims Sdk Impi, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1334
    return v2

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsSdkImpi, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setImsSdkImpu()I
    .locals 5

    .prologue
    .line 1296
    const/4 v2, -0x1

    .line 1297
    .local v2, "ret":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "impu":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsSdkImpu impu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1302
    :try_start_0
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setLocalUserName(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1307
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Ims Sdk impu, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1309
    return v2

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsSdkImpu, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setImsSdkNafAddr()I
    .locals 7

    .prologue
    .line 1387
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v2

    .line 1388
    .local v2, "nafAddr":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafPort()I

    move-result v3

    .line 1389
    .local v3, "nafPort":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isUtNafUseHttps()Z

    move-result v1

    .line 1391
    .local v1, "isNafGoHttps":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set ims sdk naf addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", naf port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", naf use https="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1393
    const/4 v4, -0x1

    .line 1395
    .local v4, "ret":I
    if-nez v2, :cond_0

    .line 1396
    const-string/jumbo v5, "nafAddr is null."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1398
    return v4

    .line 1402
    :cond_0
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/huawei/sci/SciSSConfHs;->setNafAddr(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1407
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set Ims Sdk Naf Addr , ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1409
    return v4

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setImsSdkNafAddr, exception e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setImsSdkParamsCfg()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1413
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "mUtParamsCfgArray":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1417
    aget-object v5, v4, v1

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1418
    .local v3, "mUtParamsCfg":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v3, v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1419
    aget-object v5, v3, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1418
    if-eqz v5, :cond_1

    .line 1420
    :cond_0
    const-string/jumbo v5, "setParamsCfg config param not right"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1416
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1430
    .local v2, "mUtParam":I
    aget-object v5, v3, v7

    invoke-static {v2, v5}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    .line 1431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init utParamsCfg, cfgParam="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1426
    .end local v2    # "mUtParam":I
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParamsCfg Exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1434
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "mUtParamsCfg":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method setImsXcapRootUri()I
    .locals 5

    .prologue
    .line 1371
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtXcapRootUri()Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "xcapuri":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1374
    .local v1, "ret":I
    :try_start_0
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setXcapRootUri(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1378
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsXcapRootUri , ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1379
    return v1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImsXcapRootUri, exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setIsDataReg(Z)V
    .locals 1
    .param p1, "regState"    # Z

    .prologue
    monitor-enter p0

    .line 6376
    :try_start_0
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6377
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 773
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 775
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 776
    return-void
.end method

.method public updateCLIP(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1081
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UTCMD]enter updateCLIP, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1089
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1093
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1095
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1097
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1046
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UTCMD]enter updateCLIR, clirMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1050
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1052
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1053
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1057
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1058
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCLIRModeToUtReason(I)I

    move-result v1

    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1059
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCLIR, utEnable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", utReason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1064
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1066
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_2

    .line 1067
    const-string/jumbo v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1068
    const/4 v1, -0x1

    return v1

    :cond_1
    move v1, v2

    .line 1057
    goto :goto_0

    .line 1071
    :cond_2
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1074
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLP(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1128
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UTCMD]enter updateCOLP, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 1133
    const/4 v2, 0x2

    .line 1134
    const/4 v3, 0x1

    .line 1132
    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1136
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1140
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1142
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1144
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1104
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UTCMD]enter updateCOLR, presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1108
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 1109
    const/4 v4, 0x4

    .line 1108
    invoke-direct {v0, v3, v4, v1}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1112
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1116
    :cond_0
    if-nez p1, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1117
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1119
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1121
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    :cond_1
    move v1, v2

    .line 1116
    goto :goto_0
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZ[Ljava/lang/String;)I
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 973
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UTCMD]enter updateCallBarringOption, cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    const-string/jumbo v2, ", action="

    .line 975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    const-string/jumbo v2, ", barrList="

    .line 975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 978
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 980
    .local v0, "type":I
    const/16 v1, 0x15

    if-ne v1, v0, :cond_0

    .line 981
    invoke-direct {p0, p1, p3}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringAllOption(Ljava/lang/String;Z)I

    move-result v1

    return v1

    .line 984
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZ)I

    move-result v1

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 4
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .prologue
    .line 1498
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[UTCMD]enter updateCallForward, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1501
    const-string/jumbo v3, ", condition="

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1502
    const-string/jumbo v3, ", number="

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1502
    const/4 v3, 0x0

    invoke-direct {p0, p3, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1503
    const-string/jumbo v3, ", serviceClass="

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1504
    const-string/jumbo v3, ", timeSeconds="

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1507
    :cond_0
    const-string/jumbo v2, "Invalid action or condition for updateCallForward."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1509
    const/4 v2, -0x1

    return v2

    .line 1512
    :cond_1
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v1

    .line 1514
    .local v1, "type":I
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1516
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1517
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1520
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1521
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1522
    iput-object p3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1523
    iput p5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 1524
    iput p2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1525
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1526
    iput p4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 1528
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1530
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 5
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 992
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[UTCMD]enter updateCallForwardUncondTimer, startHour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 996
    const-string/jumbo v3, ", startMinute="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 997
    const-string/jumbo v3, ", endHour="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    const-string/jumbo v3, ", endMinute="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 999
    const-string/jumbo v3, ", action="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1000
    const-string/jumbo v3, ", condition="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1001
    const-string/jumbo v3, ", number="

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1001
    invoke-direct {p0, p7, v4}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1004
    if-nez p6, :cond_0

    .line 1005
    const/4 p6, 0x6

    .line 1008
    :cond_0
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v1

    .line 1010
    .local v1, "type":I
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1012
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1013
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1016
    :cond_1
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1017
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1018
    iput-object p7, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1019
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    .line 1020
    invoke-direct {p0, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    .line 1021
    iput p6, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1022
    iput p5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1024
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1026
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1028
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v1    # "type":I
    :cond_2
    const-string/jumbo v2, "Invalid condition for updateCallForwardUncondTimer."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1029
    const/4 v2, -0x1

    return v2
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    .line 1037
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1039
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Z)I

    move-result v0

    return v0
.end method
