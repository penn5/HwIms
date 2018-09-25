.class public Lcom/huawei/ims/ImsServiceSub;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceSub$1;,
        Lcom/huawei/ims/ImsServiceSub$2;,
        Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DMPROVIDER_TO_IMS:Ljava/lang/String; = "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

.field private static final ACTION_IMS_TO_DMPROVIDER:Ljava/lang/String; = "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

.field private static final AT_DMCN:I = 0xa

.field private static final AUDIO_QUALITY_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.AUDIO_QUALITY_GET"

.field private static final BATTERY_CLOSE_LEVEL:I = 0x2

.field private static final BATTERY_LOWER_LEVEL:I = 0x5

.field private static final BATTERY_STATUS_CLOSE:I = 0x2

.field private static final BATTERY_STATUS_NORMAL:I = 0x0

.field private static final BATTERY_STATUS_REJECT:I = 0x1

.field private static final BINARY:I = 0x2

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final CSVT_INDEX:I = 0x3

.field private static final DMPROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.dm"

.field private static final DMRECEIVER_CLASS:Ljava/lang/String; = "com.android.providers.dm.DmReceiver"

.field private static final DM_IMS_CMD_FAIL:I = -0x1

.field private static final DM_IMS_CMD_OK:I = 0x1

.field private static final DM_IMS_DATA:Ljava/lang/String; = "data"

.field private static final DM_IMS_GET_AT_DMDYN:I = 0x7

.field private static final DM_IMS_GET_AT_DMPCSCF:I = 0x5

.field private static final DM_IMS_GET_AT_DMSMS:I = 0x8

.field private static final DM_IMS_GET_AT_DMTIMER:I = 0x6

.field private static final DM_IMS_GET_AT_DMUSER:I = 0x9

.field private static final DM_IMS_RET:Ljava/lang/String; = "ret"

.field private static final DM_IMS_SET_AT_DMDYN:I = 0x2

.field private static final DM_IMS_SET_AT_DMPCSCF:I = 0x1

.field private static final DM_IMS_SET_AT_DMSMS:I = 0x4

.field private static final DM_IMS_SET_AT_DMTIMER:I = 0x3

.field private static final DM_IMS_TYPE:Ljava/lang/String; = "type"

.field private static final DM_INVALID_CMD_TYPE:I = -0x1

.field private static final DM_SYNC_RETRY_INTERVAL:I = 0x7d0

.field private static final DM_SYNC_RETRY_MAX_TIMES:I = 0x5

.field private static final EVENT_CALL_MODIFY:I = 0xd

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x1

.field protected static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x3ef

.field private static final EVENT_GET_CURRENT_CALLS:I = 0x7

.field private static final EVENT_GET_SRV_STATUS:I = 0x5

.field private static final EVENT_HANDOVER_STATE_CHANGED:I = 0xc

.field private static final EVENT_ICC_CHANGED:I = 0x10

.field protected static final EVENT_IMS_CS_REDIAL:I = 0x3f1

.field private static final EVENT_IMS_DMCN:I = 0x3f8

.field private static final EVENT_IMS_GET_DM_PARAMETER_DONE:I = 0x3f7

.field protected static final EVENT_IMS_GET_IMPU_DONE:I = 0x11

.field protected static final EVENT_IMS_ONHOLD_TONE:I = 0x44c

.field protected static final EVENT_IMS_RADIO_ON:I = 0x44d

.field private static final EVENT_IMS_REG_FAIL_DELAY:I = 0x12

.field private static final EVENT_IMS_SET_DM_PARAMETER_DONE:I = 0x3f6

.field private static final EVENT_IMS_SET_VT_CAPABILITY:I = 0x13

.field private static final EVENT_IMS_STATE_CHANGED:I = 0x2

.field private static final EVENT_IMS_STATE_DONE:I = 0x3

.field protected static final EVENT_MODIFY_RESULT:I = 0x3eb

.field protected static final EVENT_MT_NEW_RING_REPORT:I = 0x3ee

.field protected static final EVENT_MT_STATUS_REPORT:I = 0x3ed

.field private static final EVENT_MWI:I = 0xe

.field private static final EVENT_REFRESH_CONF_INFO:I = 0xb

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x3f0

.field private static final EVENT_SEND_BATTERY_STATUS:I = 0x3fa

.field private static final EVENT_SET_IMS_STATE:I = 0x9

.field private static final EVENT_SET_SRV_STATUS:I = 0x6

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0xf

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x3f2

.field private static final EVENT_SRV_STATUS_UPDATE:I = 0x4

.field private static final EVENT_SUPP_SRV_UPDATE:I = 0x8

.field private static final EVENT_TTY_STATE_CHANGED:I = 0xa

.field private static final EVENT_UNSOl_LTE_PDCP_INFO:I = 0x3f4

.field private static final EVENT_UNSOl_LTE_RRC_INFO:I = 0x3f5

.field private static final EVENT_UNSOl_SPEECH_INFO:I = 0x3f3

.field private static final EVENT_VOWIFI_SOS_PENDING_TIMEOUT:I = 0x3fc

.field private static FLAG_IS_VOLTE:I = 0x0

.field private static final HW_VOLTE_ON:Z

.field private static final IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

.field private static final IMS_REG_FAIL_DELAY_TIMER_LENGTH:I = 0x11170

.field private static final IMS_SERVICE_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

.field private static final IMS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

.field private static final IMS_SERVICE_VOWIFI_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

.field private static final IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

.field private static final IMS_STATE:Ljava/lang/String; = "state"

.field private static final IMS_STATE_CHANGE_SUBID:Ljava/lang/String; = "subId"

.field private static final IMS_STATE_REGISTERED:Ljava/lang/String; = "REGISTERED"

.field private static final IMS_STATE_UNREGISTERED:Ljava/lang/String; = "UNREGISTERED"

.field private static final INVALID_VALUE_KEY:I = -0x1

.field public static final IS_AMR_WB_SHOW_HD:Z

.field private static final IS_VOWIFI:Ljava/lang/String; = "vowifi_state"

.field private static final KEY_SUPPORT_HOLD_TONE_BOOL:Ljava/lang/String; = "support_hold_tone_bool"

.field private static final LAST_CALL_TYPE_CS:I = 0x0

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LAST_CALL_TYPE_VOLTE:I = 0x1

.field private static final LAST_CALL_TYPE_VOWIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final LTE_PDCP_INFO_CURBUFFPKTNUM:I = 0x1

.field private static final LTE_PDCP_INFO_CURBUFFTIME:I = 0x0

.field private static final LTE_PDCP_INFO_MACULTHRPUT:I = 0x2

.field private static final LTE_PDCP_INFO_MAXBUFFTIME:I = 0x3

.field private static final LTE_RRC_INFO_BLER:I = 0x3

.field private static final LTE_RRC_INFO_RSRP:I = 0x0

.field private static final LTE_RRC_INFO_RSRQ:I = 0x1

.field private static final LTE_RRC_INFO_RSSI:I = 0x2

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field private static final MAX_FEATURES_SUPPORTED:I = 0x3

.field private static final NON_CHARGED_STATUS:I = 0x0

.field private static final NOT_REGISTERED:I = 0x0

.field private static final OPERATOR_CUSTOMER_WB_SHOW_HD:Ljava/lang/String; = "wb_show_hd"

.field private static final RCS_GLOBAL_RECEIVER_CLASS:Ljava/lang/String; = "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

.field private static final RCS_SERVICE_PACKAGE:Ljava/lang/String; = "com.huawei.rcsserviceapplication"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final REGISTRATION_UNKNOWN:I = 0x3

.field private static final SERVICE_TYPE_MAX:I = 0x5

.field private static final SIP_IMPU_SOURCE:I = 0x0

.field private static final SPEECH_CODEC_NB:I = 0x1

.field private static final SPEECH_CODEC_WB:I = 0x2

.field private static final SPEECH_EVS_NB:I = 0x3

.field private static final SPEECH_EVS_SWB:I = 0x5

.field private static final SPEECH_EVS_WB:I = 0x4

.field private static final SPEECH_INFO_CODEC_NB:Ljava/lang/String; = "Codec=AMR_NB"

.field private static final SPEECH_INFO_CODEC_WB:Ljava/lang/String; = "Codec=AMR_WB"

.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final VOWIFI_SOS_PENDING_TIMEOUT:I = 0x7530

.field private static final VT_FLOW_INFO_REPORT:I = 0x9c41

.field private static mFirstReg:Z

.field private static final mSupportAdjustSpeechCodec:Z


# instance fields
.field private DBG:Z

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field protected mCi:Lcom/huawei/ims/ImsRIL;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBatteryStatus:I

.field mDisabledFeatures:[I

.field private mDmSyncRetryCount:I

.field private mEmergencyUnderWifi:Z

.field mEnabledFeatures:[I

.field protected mHandler:Landroid/os/Handler;

.field public mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

.field private mImsRegisterState:I

.field private mImsStateBindRat:I

.field private mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCallType:I

.field private mMainSlotChange:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

.field private mNewBatteryStatus:I

.field protected mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceIdTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

.field private mSpeechInfoCodec:[Ljava/lang/String;

.field protected mSub:I

.field private mTrackerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/ims/ImsServiceSub;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->DBG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    return v0
.end method

.method static synthetic -get11(Lcom/huawei/ims/ImsServiceSub;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic -get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    return v0
.end method

.method static synthetic -get14(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    return-object v0
.end method

.method static synthetic -get15(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/huawei/ims/ImsServiceSub;->FLAG_IS_VOLTE:I

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->HW_VOLTE_ON:Z

    return v0
.end method

.method static synthetic -get4(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    return v0
.end method

.method static synthetic -get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic -get8(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return v0
.end method

.method static synthetic -get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method static synthetic -set0(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    return p1
.end method

.method static synthetic -set1(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/huawei/ims/ImsServiceSub;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    return p0
.end method

.method static synthetic -set4(Lcom/huawei/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return p1
.end method

.method static synthetic -set5(Lcom/huawei/ims/ImsServiceSub;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    return p1
.end method

.method static synthetic -set6(Lcom/huawei/ims/ImsServiceSub;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "-value"    # Lcom/hisi/mapcon/IMapconService;

    .prologue
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->isVolteSwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/ImsServiceSub;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->optimizeImsRegisterState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->moveSharePreferenceToDE()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->notifyImsState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->onUpdateIccAvailability()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/huawei/ims/ImsServiceSub;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->processDMBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/huawei/ims/ImsServiceSub;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->sendBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->setImsRegisterState(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "speechCodec"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->setSpeechCodec(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->setVTCapabilityToModem()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/ImsServiceSub;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getImsStateBindRat()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/huawei/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/huawei/ims/ImsServiceSub;[I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "modifyResult"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->handleModifyCallResult([I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsServiceSub;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    sput-boolean v3, Lcom/huawei/ims/ImsServiceSub;->mFirstReg:Z

    .line 328
    const v0, 0x0

    .line 327
    sput-boolean v0, Lcom/huawei/ims/ImsServiceSub;->mSupportAdjustSpeechCodec:Z

    .line 332
    const-string/jumbo v0, "ro.config.hw_volte_on"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsServiceSub;->HW_VOLTE_ON:Z

    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "card_volte_flag_0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "card_volte_flag_1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/ImsServiceSub;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 343
    sput v3, Lcom/huawei/ims/ImsServiceSub;->FLAG_IS_VOLTE:I

    .line 415
    const-string/jumbo v0, "ro.config.amr_wb_show_hd"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsServiceSub;->IS_AMR_WB_SHOW_HD:Z

    .line 134
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 10
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v5, p0, Lcom/huawei/ims/ImsServiceSub;->DBG:Z

    .line 137
    iput-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 140
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 139
    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    .line 143
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 142
    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    .line 148
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 161
    iput-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 162
    iput-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 164
    iput-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    .line 204
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    .line 262
    iput v6, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 263
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 271
    new-array v4, v9, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 312
    iput-boolean v5, p0, Lcom/huawei/ims/ImsServiceSub;->mEmergencyUnderWifi:Z

    .line 314
    iput v5, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    .line 318
    iput v5, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    .line 323
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    .line 345
    iput v6, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    .line 358
    iput-boolean v5, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    .line 408
    iput v5, p0, Lcom/huawei/ims/ImsServiceSub;->mDmSyncRetryCount:I

    .line 554
    new-instance v4, Lcom/huawei/ims/ImsServiceSub$1;

    invoke-direct {v4, p0}, Lcom/huawei/ims/ImsServiceSub$1;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v4, Lcom/huawei/ims/ImsServiceSub$2;

    invoke-direct {v4, p0}, Lcom/huawei/ims/ImsServiceSub$2;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    iput v6, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    .line 653
    iput v6, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    .line 422
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    .line 423
    const-string/jumbo v4, "ImsServiceSub Constructor"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 424
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 425
    new-instance v4, Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/huawei/ims/ImsRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 426
    new-instance v4, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v4, p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 429
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const v6, 0x9c41

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->getInstance()Lcom/huawei/ims/ImsConfigImpl;

    move-result-object v4

    iget v5, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsConfigImpl;->getConfigInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 440
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->getInstance()Lcom/huawei/ims/ImsUtImpl;

    move-result-object v4

    iget v5, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsUtImpl;->getUtInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 443
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->registerBootCompleted()V

    .line 444
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v7}, Lcom/huawei/ims/ImsRIL;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    new-instance v4, Lcom/huawei/ims/ImsEcbmImpl;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v4, v5}, Lcom/huawei/ims/ImsEcbmImpl;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

    .line 450
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 453
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ed

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 459
    new-instance v4, Lcom/huawei/ims/MtStatusManager;

    invoke-direct {v4, p0}, Lcom/huawei/ims/MtStatusManager;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    iput-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    .line 461
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ee

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 465
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f1

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 469
    sget-boolean v4, Lcom/huawei/ims/ImsServiceSub;->mSupportAdjustSpeechCodec:Z

    if-eqz v4, :cond_1

    .line 470
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f3

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 474
    :cond_1
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f5

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 478
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isHwVoWiFiEnabledByPlatform()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    :cond_2
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 489
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x44c

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->initServiceStatus()V

    .line 495
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 496
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    .line 499
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 500
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x44d

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->onUpdateIccAvailability()V

    .line 508
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 510
    .local v3, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v3    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 518
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    sget-boolean v4, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-eqz v4, :cond_4

    .line 523
    const-string/jumbo v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    :cond_4
    sget-boolean v4, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_LOWPER_HANG_UP:Z

    if-eqz v4, :cond_5

    .line 528
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    :cond_5
    const-string/jumbo v4, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "ro.config.hw_support_omadm"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 541
    .local v0, "DMFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

    invoke-virtual {p2, v4, v0, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 544
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3f8

    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/ImsRIL;->registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 549
    .end local v0    # "DMFilter":Landroid/content/IntentFilter;
    :cond_6
    const-string/jumbo v4, "ImsServiceSub init done"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 551
    return-void

    .line 511
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UiccController getInstance Exception e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 271
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 877
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsServiceSub$3;-><init>(Lcom/huawei/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 888
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 889
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 890
    return-void
.end method

.method private getEnhancedVideoFeature()I
    .locals 8

    .prologue
    .line 2672
    const/4 v5, -0x1

    .line 2673
    .local v5, "valueKeyConfig":I
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "carrier_config"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 2674
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    const v4, 0x0

    .line 2675
    .local v4, "subId":I
    if-eqz v1, :cond_0

    .line 2676
    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2677
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 2678
    const-string/jumbo v6, "carrierconfig_enhanced_video_feature"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2679
    .local v2, "mValueKeyConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2681
    const/4 v6, 0x2

    :try_start_0
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2688
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "mValueKeyConfig":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVTCapabilityToModem valueKeyConfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2689
    return v5

    .line 2682
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v2    # "mValueKeyConfig":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2683
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    return v5
.end method

.method private getImsStateBindRat()I
    .locals 1

    .prologue
    .line 2226
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    return v0
.end method

.method private handleCSVTCalls(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1039
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 1040
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1041
    const-string/jumbo v1, "Call for non-registered service class CSVT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    .line 943
    const-string/jumbo v7, ">handleCalls"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 948
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 949
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 961
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v5, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    if-eqz v0, :cond_5

    .line 967
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 968
    .local v1, "callListSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 969
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/DriverCallIms;

    .line 970
    .local v3, "dc":Lcom/huawei/ims/DriverCallIms;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleCalls: dc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 972
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v7, v7, v9

    if-eqz v7, :cond_0

    .line 973
    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v7, v7, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update dc calldetails extras  use mSpeechInfoCodec[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 975
    new-instance v6, Lcom/huawei/ims/CallDetails;

    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-direct {v6, v7}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    .line 976
    .local v6, "newCdetails":Lcom/huawei/ims/CallDetails;
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v7, v6, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 977
    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v7, v6}, Lcom/huawei/ims/CallDetails;->update(Lcom/huawei/ims/CallDetails;)Z

    .line 983
    .end local v6    # "newCdetails":Lcom/huawei/ims/CallDetails;
    :cond_0
    :goto_2
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v7, :cond_4

    .line 984
    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v7, v7, Lcom/huawei/ims/CallDetails;->call_domain:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 985
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 950
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v1    # "callListSize":I
    .end local v2    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v3    # "dc":Lcom/huawei/ims/DriverCallIms;
    .end local v4    # "i":I
    .end local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_1
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    goto/16 :goto_0

    .line 957
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_2
    const-string/jumbo v7, "else???"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 958
    return-void

    .line 979
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .restart local v1    # "callListSize":I
    .restart local v2    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .restart local v3    # "dc":Lcom/huawei/ims/DriverCallIms;
    .restart local v4    # "i":I
    .restart local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    :cond_3
    iget-object v7, v3, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v8, v7, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    goto :goto_2

    .line 987
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 992
    .end local v1    # "callListSize":I
    .end local v3    # "dc":Lcom/huawei/ims/DriverCallIms;
    .end local v4    # "i":I
    :cond_5
    invoke-direct {p0, v5, v2}, Lcom/huawei/ims/ImsServiceSub;->setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 993
    invoke-direct {p0, v5, v2}, Lcom/huawei/ims/ImsServiceSub;->handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 994
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->handleCSVTCalls(Ljava/util/ArrayList;)V

    .line 995
    return-void
.end method

.method private handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1016
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 1024
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1025
    const-string/jumbo v1, "Call for non-registered service class MMTEL"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1030
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1032
    :cond_2
    const-string/jumbo v1, "CS Call, ignore handle"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 3
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCallModifyRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1115
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 1121
    :goto_0
    return-void

    .line 1118
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleModifyCallResult([I)V
    .locals 3
    .param p1, "modifyResult"    # [I

    .prologue
    .line 1125
    const-string/jumbo v1, "handleModifyCallResult"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1129
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->handleModifyCallResult([I)V

    .line 1135
    :goto_0
    return-void

    .line 1132
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initServiceStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 703
    new-array v3, v6, [Lcom/huawei/ims/ServiceStatus;

    iput-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 705
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    new-instance v4, Lcom/huawei/ims/ServiceStatus;

    invoke-direct {v4}, Lcom/huawei/ims/ServiceStatus;-><init>()V

    aput-object v4, v3, v1

    .line 710
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 711
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceStatus:[Lcom/huawei/ims/ServiceStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v5

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_0
    const-string/jumbo v3, "ro.config.hw_vowifi"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 715
    .local v2, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->bindMapconService()V

    .line 718
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.hisi.vowifi.started"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "com.hisi.permission.VOWIFI_SPECIAL"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 727
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 916
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 917
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 918
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 917
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 916
    :cond_0
    return v0
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 925
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 927
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 928
    const v1, 0x1

    .line 930
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

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 932
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImsServiceSub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImsServiceSub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    return-void
.end method

.method private moveSharePreferenceToDE()V
    .locals 3

    .prologue
    .line 2608
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2609
    .local v1, "sharedPreferenceName":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/ims/SharePreferenceUtil;->isNOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2610
    const-string/jumbo v2, "moveSharePreferenceToDE"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2611
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 2612
    .local v0, "deviceContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/huawei/ims/SharePreferenceUtil;->moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2613
    const-string/jumbo v2, "Failed to move shared preference"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2616
    .end local v0    # "deviceContext":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private notifyImsState(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 681
    const-string/jumbo v3, "REGISTERED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    const/4 v3, 0x1

    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    .line 687
    :goto_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v3, v3, v4

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 689
    .local v1, "isVowifi":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notify IMS state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isVowifi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 690
    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 691
    .local v2, "mSubId":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "imsStateIntent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string/jumbo v3, "vowifi_state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 694
    const-string/jumbo v3, "subId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 698
    return-void

    .line 684
    .end local v0    # "imsStateIntent":Landroid/content/Intent;
    .end local v1    # "isVowifi":Z
    .end local v2    # "mSubId":I
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/huawei/ims/ImsServiceSub;->mImsStateBindRat:I

    goto :goto_0

    .line 687
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isVowifi":Z
    goto :goto_1
.end method

.method private onUpdateIccAvailability()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2262
    const-string/jumbo v7, "enter onUpdateIccAvailability"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2265
    const/4 v6, 0x0

    .line 2268
    .local v6, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2276
    .local v6, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-nez v6, :cond_0

    .line 2277
    const-string/jumbo v7, "uiccController is null"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2278
    return-void

    .line 2269
    .local v6, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :catch_0
    move-exception v0

    .line 2270
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UiccController getInstance Exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2272
    return-void

    .line 2284
    .end local v0    # "e":Ljava/lang/Exception;
    .local v6, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_0
    iget v7, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v7}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v5

    .line 2286
    .local v5, "phoneId":I
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2287
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 2292
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2293
    .local v3, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 2294
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eq v3, v1, :cond_2

    .line 2295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "New Card State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Old Card State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2297
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2298
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v7, :cond_2

    .line 2299
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v7, v1, :cond_2

    .line 2300
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->handleSimCardAbsent()V

    .line 2305
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2306
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2308
    .local v4, "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v4, v2, :cond_7

    .line 2309
    const-string/jumbo v7, "oldUiccApplication != newUiccApplication"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2310
    if-eqz v4, :cond_4

    .line 2311
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2312
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->unregisterForSimRecordEvents()V

    .line 2315
    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2320
    :cond_4
    if-eqz v2, :cond_5

    .line 2321
    const-string/jumbo v7, "main slot changed, handle clear."

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2322
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/ims/ImsServiceSub;->mMainSlotChange:Z

    .line 2323
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->handleSimCardAbsent()V

    .line 2328
    :cond_5
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2331
    if-eqz v2, :cond_6

    .line 2332
    const-string/jumbo v7, "New Uicc application found"

    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2333
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2334
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->registerForSimRecordEvents()V

    .line 2338
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->updatePhoneBaseEvent()V

    .line 2341
    :cond_7
    return-void
.end method

.method private optimizeImsRegisterState()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 2559
    const/4 v1, 0x1

    .line 2561
    .local v1, "optimize":Z
    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2562
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isHwVoWiFiEnabledByPlatform()Z

    move-result v0

    .line 2563
    .local v0, "isVoWiFiEnabled":Z
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v3, v3, v5

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 2564
    .local v2, "voWiFiRegistered":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 2565
    const/4 v1, 0x0

    .line 2571
    .end local v0    # "isVoWiFiEnabled":Z
    .end local v2    # "voWiFiRegistered":Z
    :cond_0
    :goto_1
    return v1

    .line 2563
    .restart local v0    # "isVoWiFiEnabled":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "voWiFiRegistered":Z
    goto :goto_0

    .line 2568
    .end local v0    # "isVoWiFiEnabled":Z
    .end local v2    # "voWiFiRegistered":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private processDMBroadcast(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3f6

    const/16 v4, 0x3f7

    const/4 v3, -0x1

    .line 2620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processDMBroadcast: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2622
    packed-switch p1, :pswitch_data_0

    .line 2651
    const-string/jumbo v0, "processDMBroadcast: invalid type! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2654
    :goto_0
    return-void

    .line 2624
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/huawei/ims/ImsRIL;->setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2627
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/huawei/ims/ImsRIL;->setDMDYN(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2630
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/huawei/ims/ImsRIL;->setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2633
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/huawei/ims/ImsRIL;->setDMSMS(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2636
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMPCSCF(Landroid/os/Message;)V

    goto :goto_0

    .line 2639
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMTIMER(Landroid/os/Message;)V

    goto :goto_0

    .line 2642
    :pswitch_6
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMDYN(Landroid/os/Message;)V

    goto :goto_0

    .line 2645
    :pswitch_7
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMSMS(Landroid/os/Message;)V

    goto :goto_0

    .line 2648
    :pswitch_8
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMUSER(Landroid/os/Message;)V

    goto :goto_0

    .line 2622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private registerBootCompleted()V
    .locals 3

    .prologue
    .line 2599
    const-string/jumbo v1, "registerBootCompleted"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2601
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2602
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2605
    :cond_0
    return-void
.end method

.method private registerForSimRecordEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2380
    const-string/jumbo v1, "enter registerForSimRecordEvents"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2381
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2383
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2384
    const-string/jumbo v1, "registerForSimRecordEvents  is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2385
    return-void

    .line 2388
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2389
    return-void
.end method

.method private sendBatteryStatus(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 656
    const-string/jumbo v2, "level"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, "level":I
    const-string/jumbo v2, "plugged"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 659
    .local v1, "plugType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "real battery level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PlugType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 662
    if-eqz v1, :cond_1

    .line 663
    iput v4, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    .line 672
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "new status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 673
    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCurrentBatteryStatus:I

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    if-eq v2, v3, :cond_0

    .line 674
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsRIL;->sendBatteryStatus(ILandroid/os/Message;)V

    .line 676
    :cond_0
    return-void

    .line 664
    :cond_1
    if-gt v0, v5, :cond_2

    .line 665
    iput v5, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0

    .line 666
    :cond_2
    const/4 v2, 0x5

    if-gt v0, v2, :cond_3

    .line 667
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0

    .line 669
    :cond_3
    iput v4, p0, Lcom/huawei/ims/ImsServiceSub;->mNewBatteryStatus:I

    goto :goto_0
.end method

.method private setImsRegisterState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2216
    iput p1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    .line 2217
    return-void
.end method

.method private setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v1, 0x0

    .line 998
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 999
    const-string/jumbo v0, "impossible to be here, pls check"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    .line 1009
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1002
    iput v1, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1004
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    goto :goto_0

    .line 1006
    :cond_2
    const-string/jumbo v0, "there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSpeechCodec(I)V
    .locals 4
    .param p1, "speechCodec"    # I

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2696
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2697
    :cond_0
    return-void

    .line 2699
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wb_show_hd"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2700
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.huawei.intent.action.SPEECH_CODEC_WB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2701
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2702
    const-string/jumbo v3, "speechCodecWb"

    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2703
    const-string/jumbo v2, "subscription"

    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2704
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.huawei.ims.permission.AUDIO_QUALITY_GET"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2705
    return-void

    .line 2702
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setVTCapabilityToModem()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2658
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getEnhancedVideoFeature()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 2659
    const-string/jumbo v2, "setVTCapabilityOrVTCallWaitingCapabilityToModem: invalid value key  return!"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2660
    return-void

    .line 2662
    :cond_0
    const-string/jumbo v2, "setVTCapabilityToModem"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2664
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub;->getEnhancedVideoFeature()I

    move-result v2

    and-int/lit8 v1, v2, 0xc

    .line 2665
    .local v1, "videoCWCapability":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2667
    .local v0, "isSupportCWCapability":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVTCapabilityToModem isSupportCWCapability"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2668
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 2669
    return-void

    .line 2665
    .end local v0    # "isSupportCWCapability":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSupportCWCapability":Z
    goto :goto_0

    .line 2668
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 2392
    const-string/jumbo v1, "enter unregisterForSimRecordEvents"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2393
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2395
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2396
    return-void

    .line 2399
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2400
    return-void
.end method

.method private updatePhoneBaseEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2504
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2505
    .local v0, "newPhoneBase":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 2507
    .local v1, "oldPhoneBase":Lcom/android/internal/telephony/Phone;
    if-eq v0, v1, :cond_3

    .line 2508
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2510
    if-eqz v1, :cond_1

    .line 2513
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2516
    const-string/jumbo v2, "Unregister listening message of data reg state from old phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2517
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 2521
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 2524
    iget-object v2, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 2528
    :cond_1
    if-eqz v0, :cond_3

    .line 2531
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2534
    const-string/jumbo v2, "register listening message of data reg state from new phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2536
    const/16 v4, 0x3ef

    .line 2535
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2540
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2541
    const/16 v4, 0x3f0

    .line 2540
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2545
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f2

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2549
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1088
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->addListener(Lcom/huawei/ims/ICallListListener;)V

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bindMapconService()V
    .locals 6

    .prologue
    .line 2576
    const-string/jumbo v3, "ro.config.hw_vowifi"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2578
    .local v1, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2580
    new-instance v2, Lcom/huawei/ims/ImsServiceSub$4;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsServiceSub$4;-><init>(Lcom/huawei/ims/ImsServiceSub;)V

    .line 2592
    .local v2, "mConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.hisi.mapcon"

    const-string/jumbo v5, "com.hisi.mapcon.MapconService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2593
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v2, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2595
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "mConnection":Landroid/content/ServiceConnection;
    :cond_0
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 777
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 778
    const-string/jumbo v2, " Invalid service ID - cannot create profile"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 785
    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-object v0

    .line 782
    .restart local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    goto :goto_0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 799
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid service Id - cannot create Call Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 804
    .end local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 802
    .restart local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/huawei/ims/ImsServiceClassTracker;->createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1069
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1070
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 3
    .param p1, "state"    # Lcom/huawei/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1060
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2346
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 2347
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    return-object v1

    .line 2349
    :cond_0
    const-string/jumbo v1, "can\'t get uiccCard"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2350
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v1
.end method

.method public getConfigInterface()Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 2457
    iget v3, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 2462
    .local v2, "slotId":I
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2464
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultPhone phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    return-object v1

    .line 2467
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2471
    const/4 v3, 0x0

    return-object v3
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsEcbmImpl:Lcom/huawei/ims/ImsEcbmImpl;

    return-object v0
.end method

.method getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2443
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2445
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    .line 2446
    return-object v2

    .line 2449
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2451
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getImsPhone imsPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2452
    return-object v0
.end method

.method public getImsRegisterState()I
    .locals 1

    .prologue
    .line 2220
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsRegisterState:I

    return v0
.end method

.method public getLastCallType()I
    .locals 1

    .prologue
    .line 2554
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mLastCallType:I

    return v0
.end method

.method public getPendingSession(ILjava/lang/String;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 816
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid service Id - cannot get pending session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 821
    .end local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 819
    .restart local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/huawei/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v7, 0x3

    .line 742
    const/4 v6, 0x0

    .line 744
    .local v6, "serviceId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 745
    if-eq p1, v7, :cond_0

    .line 746
    const/4 v6, -0x2

    .line 760
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceId returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 764
    return v6

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 749
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 750
    new-instance v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .end local v0    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsServiceClassTracker;-><init>(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    .line 751
    .restart local v0    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :goto_1
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 758
    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v6

    goto :goto_0

    .line 754
    :cond_1
    iput-object p2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 755
    iput-object p3, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    goto :goto_1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2434
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2435
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2356
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2358
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 2359
    return-object v1

    .line 2362
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    return-object v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2242
    const-string/jumbo v2, "enter UiccCardApplication"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2243
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    .line 2246
    .local v1, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/huawei/ims/HwImsService;

    if-eqz v2, :cond_0

    .line 2248
    iget v2, p0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 2250
    .local v0, "phoneId":I
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    return-object v2

    .line 2253
    .end local v0    # "phoneId":I
    :cond_0
    const-string/jumbo v2, "mContext is not a HwImsService!"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2257
    const-string/jumbo v2, "getUiccCardApplication fail"

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2258
    const/4 v2, 0x0

    return-object v2
.end method

.method public getUtInterface()Lcom/huawei/ims/HwImsUtImpl;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method public handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2403
    const-string/jumbo v1, "enter handleImsGetImpuDone"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2404
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2406
    .local v0, "arImpu":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2407
    const-string/jumbo v1, "get impu OK, set impu to ims sdk. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2410
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_0

    .line 2411
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Ljava/lang/String;)V

    .line 2416
    :cond_0
    return-void
.end method

.method public handleSimCardAbsent()V
    .locals 1

    .prologue
    .line 2368
    const-string/jumbo v0, "enter handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent()V

    .line 2375
    :cond_0
    return-void
.end method

.method public handleSimRecordsLoaded()V
    .locals 2

    .prologue
    .line 2419
    const-string/jumbo v1, "enter handleSimRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceSub;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2424
    .local v0, "newImsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_0

    .line 2425
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Ljava/lang/String;)V

    .line 2429
    :cond_0
    const-string/jumbo v1, "leave handleSimRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    .line 2431
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 830
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1103
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->removeListener(Lcom/huawei/ims/ICallListListener;)V

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 856
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 857
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    iput-object p2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    goto :goto_0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 826
    return-void
.end method

.method public turnOffIms()V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public turnOnIms()V
    .locals 0

    .prologue
    .line 899
    return-void
.end method
