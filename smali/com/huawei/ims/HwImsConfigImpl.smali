.class public Lcom/huawei/ims/HwImsConfigImpl;
.super Lcom/huawei/ims/ImsConfigImpl;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsConfigImpl$1;,
        Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;,
        Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;
    }
.end annotation


# static fields
.field private static final synthetic -com-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues:[I = null

.field public static final CALL_WAITING_FROM_CS:I = 0x1

.field public static final CALL_WAITING_FROM_LOCAL:I = 0x2

.field public static final CALL_WAITING_FROM_UT:I = 0x0

.field public static final CALL_WAITING_FROM_UT_AND_NOT_SYNC_TO_CS_OR_IMS_SDK:I = 0x0

.field public static final CALL_WAITING_MODE_PROP_KEY:Ljava/lang/String; = "persist.ims.cwlocalset"

.field public static final CALL_WAITING_MODE_XML_KEY:Ljava/lang/String; = "callWaitingMode"

.field public static final CALL_WAITING_SOURCE_MASK:I = 0xc

.field public static final CALL_WAITING_SOURCE_OFFSET:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_CS_MASK:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_IMS_SDK_MASK:I = 0x1

.field public static final CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardMccMncPreferToUseUT"

.field public static final CARD_TYPE_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardTypePreferToUseUT"

.field public static final CARRIER_BUILD_VERSION_BOOL:Ljava/lang/String; = "carrier_build_version_bool"

.field public static final CARRIER_SUPPORT_VOLTE:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final CFNRC_CHANGE_WITH_CFNL_XML_KEY:Ljava/lang/String; = "CFNRcChangeWithCFNL"

.field public static final CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY:Ljava/lang/String; = "checkServiceWhenIncomingCall"

.field public static final CONFIG_NOT_INITIALIZED:I = -0x1e240

.field public static final CONTENT_TYPE_MODE_AUTO:I = 0x0

.field public static final CONTENT_TYPE_MODE_FIXED:I = 0x1

.field public static final CONTENT_TYPE_MODE_XML_KEY:Ljava/lang/String; = "ContentTypeMode"

.field public static final DC_FAIL_CAUSE_RELEASE_APN_XML_KEY:Ljava/lang/String; = "dcFailCauseToReleaseApn"

.field public static final DC_FAIL_CAUSE_XML_KEY:Ljava/lang/String; = "dcFailCauseForNonVolteSim"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_UT_GBA_LIFETIME_BE_USED:Z = false

.field private static final DEFAULT_UT_VOWIFI_DELAY_END_TIME:I = 0xea60

.field public static final FEATURE_LOWPER_HANG_UP:Z

.field public static final FEATURE_VOLTE_DYN:Z

.field public static final FILE_PATH:Ljava/lang/String; = "/xml/hw_ims_config.xml"

.field public static final HANG_UP_WHEN_LOST_NET:Ljava/lang/String; = "hangUpWhenLostNet"

.field static final IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

.field static final IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

.field private static final IMS_DATA_DELAY_END_IN_MS:I = 0x3e8

.field public static final IMS_DATA_DELAY_END_XML_KEY:Ljava/lang/String; = "utImsDataDelayEndTime"

.field public static final IMS_SS_BE_USED_XML_KEY:Ljava/lang/String; = "imsSsBeUsed"

.field public static final IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY:Ljava/lang/String; = "ImsStateFollowVoiceDomain"

.field private static final IS_ATT_WF:Z

.field private static final IS_VOWIFI_ON:Z

.field public static final KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL:Ljava/lang/String; = "keep_vowifi_feature_under_emergencycall"

.field static final LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

.field static final LOCAL_OIR_KEY:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsConfigImpl"

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field public static final MCCMNC_MAX_LTH:I = 0x6

.field public static final MCC_LTH:I = 0x3

.field public static final MISSED_CALL_DISPLAY_XML_KEY:Ljava/lang/String; = "missedCallDisplay"

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT:I = 0x1f400

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsDelayTimer"

.field public static final MISSED_CALL_TIPS_DELAY_XML_KEY:Ljava/lang/String; = "missedCallTipsDelay"

.field public static final MISSED_CALL_TIPS_RING_TIMER_DEFAULT:I = 0x2ee0

.field public static final MISSED_CALL_TIPS_RING_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsRingTimer"

.field public static final MISSED_CALL_TIPS_XML_KEY:Ljava/lang/String; = "missedCallTips"

.field public static final NULL_STRING_VALUE:Ljava/lang/String; = ""

.field public static final OIR_SOURCE_FROM_LOCAL:I = 0x1

.field public static final OIR_SOURCE_FROM_UT:I = 0x0

.field private static final OPTA:Ljava/lang/String;

.field private static final OPTB:Ljava/lang/String;

.field public static final PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "preferToUseUT"

.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final SEPARATOR_TAG:Ljava/lang/String; = ","

.field public static final SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDeactDefaultNoReplyTimer"

.field public static final SET_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDefaultNoReplyTimer"

.field static final SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

.field static final SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

.field static final SIM_IMSI_KEY:[Ljava/lang/String;

.field public static final SS_NOT_SUPPORT_MMI_CODE_XML_KEY:Ljava/lang/String; = "ssNotSupportMMICode"

.field public static final SS_TYPE_FORBID_FALLBACK_CS_XML_KEY:Ljava/lang/String; = "ssTypeForbidFallbackCS"

.field public static final SS_TYPE_USE_CS_ONLY_PROP_KEY:Ljava/lang/String; = "persist.ut.ssTypeUseCsOnly"

.field public static final SS_TYPE_USE_CS_ONLY_XML_KEY:Ljava/lang/String; = "ssTypeUseCsOnly"

.field public static final STRING_NOT_INITIALIZED:Ljava/lang/String; = "SNIT"

.field public static final TRUE_VALUE:Ljava/lang/String; = "true"

.field public static final USE_403_FOR_LOCAL_CW:Ljava/lang/String; = "use_403_for_local_cw"

.field public static final UT_BEARER_DEFAULT:I = 0x0

.field public static final UT_BEARER_IMS:I = 0x2

.field public static final UT_BEARER_LTE:I = 0x1

.field public static final UT_BEARER_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.bearType"

.field public static final UT_BEARER_TYPE_XML_KEY:Ljava/lang/String; = "utBearType"

.field public static final UT_BSF_AUTH_BE_USED_XML_KEY:Ljava/lang/String; = "utBsfAuthBeUsed"

.field public static final UT_BSF_PORT_DEFAULT:I = 0x1f90

.field public static final UT_BSF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfport"

.field public static final UT_BSF_PORT_XML_KEY:Ljava/lang/String; = "utBsfPort"

.field public static final UT_BSF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfsrvaddr"

.field public static final UT_BSF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utBsfSrvAddr"

.field public static final UT_BSF_USE_HTTPS:Z

.field public static final UT_BSF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfusehttps"

.field public static final UT_BSF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utBsfUsehttps"

.field public static final UT_CAN_USE_WIFI_XML_KEY:Ljava/lang/String; = "utCanUseWifi"

.field public static final UT_CS_BE_USED:Z

.field public static final UT_CS_BE_USED_PROP_KEY:Ljava/lang/String; = "persist.ut.csbeused"

.field public static final UT_CS_BE_USED_XML_KEY:Ljava/lang/String; = "utCSBeUsed"

.field public static final UT_FORBIDDEN_TIME_XML_KEY:Ljava/lang/String; = "utForbiddenTimer"

.field public static final UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF:Ljava/lang/String; = "utForbiddenWhenVolteSwitchOff"

.field public static final UT_FORBIDDEN_WVSO_PROP_KEY:Ljava/lang/String; = "persist.ut.forbiddenWVSO"

.field public static final UT_GBA_ME_TYPE:I = 0x0

.field public static final UT_GBA_TYPE:I

.field public static final UT_GBA_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.gbatype"

.field public static final UT_GBA_TYPE_XML_KEY:Ljava/lang/String; = "utGbaType"

.field public static final UT_HRS_LOG:Z

.field public static final UT_HRS_LOG_PROP_KEY:Ljava/lang/String; = "persist.ut.hrslog"

.field public static final UT_HRS_LOG_XML_KEY:Ljava/lang/String; = "utHrsLog"

.field public static final UT_IMPI:Ljava/lang/String;

.field public static final UT_IMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.authusername"

.field public static final UT_IMPI_XML_KEY:Ljava/lang/String; = "utIMPI"

.field public static final UT_IMPU:Ljava/lang/String;

.field public static final UT_IMPU_PROP_KEY:Ljava/lang/String; = "persist.ut.localusername"

.field public static final UT_IMPU_XML_KEY:Ljava/lang/String; = "utIMPU"

.field public static final UT_KSNAF_USE_BASE64:Z

.field public static final UT_KSNAF_USE_BASE64_PROP_KEY:Ljava/lang/String; = "persist.ut.ksnafbase64"

.field public static final UT_KSNAF_USE_BASE64_XML_KEY:Ljava/lang/String; = "utKsnafUseBase64"

.field public static final UT_NAF_PORT_DEFAULT:I = 0x50

.field public static final UT_NAF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.nafport"

.field public static final UT_NAF_PORT_XML_KEY:Ljava/lang/String; = "utNafPort"

.field public static final UT_NAF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.nafsrvaddr"

.field public static final UT_NAF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utNafSrvAddr"

.field public static final UT_NAF_USE_HTTPS:Z

.field public static final UT_NAF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.usehttps"

.field public static final UT_NAF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utNafUseHttps"

.field public static final UT_OIR_DEFAULT_MODE_XML_KEY:Ljava/lang/String; = "utOIRDefaultMode"

.field public static final UT_OIR_SOURCE_MODE_XML_KEY:Ljava/lang/String; = "utOIRSourceMode"

.field public static final UT_PARAMS_CFG_LENGTH:I = 0x2

.field public static final UT_PARAMS_CONFIG_XML_KEY:Ljava/lang/String; = "utParamsCfg"

.field private static final UT_PARAMS_KEY_GBA_LIFETIME_BE_USED:I = 0x13

.field private static final UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED:I = 0x1

.field public static final UT_PREFER_TO_USE_UT_PROP_KEY:Ljava/lang/String; = "persist.ut.preferToUseUT"

.field public static final UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY:Ljava/lang/String; = "utQueryDnsIgnoreNetId"

.field public static final UT_RETRY_INTERVAL_XML_KEY:Ljava/lang/String; = "utRetryInterval"

.field public static final UT_USE_APN_XML_KEY:Ljava/lang/String; = "utUseApn"

.field public static final UT_USE_DEFAULT_APN_FOR_WIFI_CONNECTED_XML_KEY:Ljava/lang/String; = "utUseDefaultApnForWifiConnected"

.field public static final UT_USE_DEFAULT_DATA_APN:I = 0x0

.field public static final UT_USE_IMS_APN:I = 0x2

.field public static final UT_USE_MULTI_CF:Ljava/lang/String; = "utUseMultiCF"

.field public static final UT_USE_NODE_SELECTOR:Z

.field public static final UT_USE_NODE_SELECTOR_PROP_KEY:Ljava/lang/String; = "persist.ut.usenodeselector"

.field public static final UT_USE_NODE_SELECTOR_XML_KEY:Ljava/lang/String; = "utUseNodeSelector"

.field public static final UT_USE_TMPI:Z

.field public static final UT_USE_TMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.usetmpi"

.field public static final UT_USE_TMPI_XML_KEY:Ljava/lang/String; = "utUseTmpi"

.field public static final UT_USE_UT_COMPLEX_APN:I = 0x3

.field public static final UT_USE_UT_RESERVED_APN:I = 0x1

.field public static final UT_USE_XCAP_NAMESPACE:Z

.field public static final UT_USE_XCAP_NAMESPACE_PROP_KEY:Ljava/lang/String; = "persist.ut.usexcapnamespace"

.field public static final UT_USE_XCAP_NAMESPACE_XML_KEY:Ljava/lang/String; = "utUseXcapNamespace"

.field public static final UT_VOWIFI_DELAY_END_TIME_XML_KEY:Ljava/lang/String; = "utVoWifiDelayEndTime"

.field public static final UT_XCAP_ROOT_URI_PROP_KEY:Ljava/lang/String; = "persist.ut.xcapRootUri"

.field public static final UT_XCAP_ROOT_XML_KEY:Ljava/lang/String; = "utXcapRootUri"

.field public static final UT_X_3GPP_INTEND_ID:Ljava/lang/String;

.field public static final UT_X_3GPP_INTEND_ID_PROP_KEY:Ljava/lang/String; = "persist.ut.x3gppintendid"

.field public static final UT_X_3GPP_INTEND_ID_XML_KEY:Ljava/lang/String; = "utX3gppIntendId"

.field private static final VIDEOCALL_TYPE:I = 0x0

.field public static final VOWIFI_UT_SWITCH_XML_KEY:Ljava/lang/String; = "vowifi_ut_switch"

.field public static final isATT:Z


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBsfAddrFromSim:Ljava/lang/String;

.field private mBuildVersionCarrier:Z

.field private mCFNRcChangeWithCFNL:Z

.field private mCallWaitingMode:I

.field private mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field private mCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mCardTypePreferToUseUT:[I

.field private mCarrierSupportVolte:Z

.field private mCheckServiceWhenIncomingCall:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mContentTypeMode:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIMSI:Ljava/lang/String;

.field private mDcFailCause:[Ljava/lang/String;

.field private mDcFailCauseToReleaseApn:[Ljava/lang/String;

.field private mDcFailCode:[I

.field private mDcFailCodeToReleaseApn:[I

.field private mDefBuildVersionCarrier:Z

.field private mDefCFNRcChangeWithCFNL:Z

.field private mDefCallWaitingMode:I

.field private mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mDefCardTypePreferToUseUT:[I

.field private mDefCheckServiceWhenIncomingCall:Z

.field private mDefContentTypeMode:I

.field private mDefDcFailCode:[I

.field private mDefDefaultNeedNoReplyTimer:I

.field private mDefDefaultNoReplyTimer:I

.field private mDefEmergencyUnderWifi:Z

.field private mDefHangUpWhenLostNet:Z

.field private mDefImsSsBeUsed:Z

.field private mDefImsStateFollowVoiceDomain:Z

.field private mDefMissedCallDisplay:Z

.field private mDefMissedCallTips:Z

.field private mDefMissedCallTipsDelay:Z

.field private mDefMissedCallTipsDelayTimer:I

.field private mDefMissedCallTipsRingTimer:I

.field private mDefNotSupportMMICode:[Ljava/lang/String;

.field private mDefPreferToUseUt:Z

.field private mDefSSForbidFallbackCS:[I

.field private mDefSSTypeUseCsOnly:[I

.field private mDefUse403ForLocalCW:Z

.field private mDefUseMultCondition:Z

.field private mDefUtBearerType:I

.field private mDefUtBsfAuthBeUsed:Z

.field private mDefUtBsfPort:I

.field private mDefUtBsfSrvAddr:Ljava/lang/String;

.field private mDefUtBsfUseHttps:Z

.field private mDefUtCSBeUsed:Z

.field private mDefUtCanUseWifi:Z

.field private mDefUtForbiddenWhenVolteSwitchOff:Z

.field private mDefUtGbaType:I

.field private mDefUtHrsLog:Z

.field private mDefUtIMPI:Ljava/lang/String;

.field private mDefUtIMPU:Ljava/lang/String;

.field private mDefUtImsDataDelayEndTime:I

.field private mDefUtKsnafUseBase64:Z

.field private mDefUtNafPort:I

.field private mDefUtNafSrvAddr:Ljava/lang/String;

.field private mDefUtNafUseHttps:Z

.field private mDefUtOIRDefaultMode:I

.field private mDefUtOIRSourceMode:I

.field private mDefUtParamsCfg:[Ljava/lang/String;

.field private mDefUtQueryDnsIgnoreNetId:Z

.field private mDefUtRetryInterval:[I

.field private mDefUtUseApn:I

.field private mDefUtUseDefaultApnForWifiConnected:Z

.field private mDefUtUseNodeSelector:Z

.field private mDefUtUseTmpi:Z

.field private mDefUtUseXcapNamespace:Z

.field private mDefUtVoWifiDelayEndTime:I

.field private mDefUtX3gppIntendId:Ljava/lang/String;

.field private mDefUtXcapRootUri:Ljava/lang/String;

.field private mDefaultNeedNoReplyTimer:I

.field private mDefaultNoReplyTimer:I

.field private mDefaultUtForbiddenTimer:I

.field private mDefaultVowifiUtSwitch:Z

.field private mHangUpWhenLostNet:Z

.field private mImpiFromSim:Ljava/lang/String;

.field private mImsSsBeUsed:Z

.field private mImsStateFollowVoiceDomain:Z

.field private mIsCallWaitingSyncToCs:Z

.field private mIsCallWaitingSyncToImsSdk:Z

.field private mIsEmergencyUnderWifi:Z

.field private mIsUseMultCondition:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMissedCallDisplay:Z

.field private mMissedCallTips:Z

.field private mMissedCallTipsDelay:Z

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mNotSupportMMICode:[Ljava/lang/String;

.field private mPreferToUseUt:Z

.field private mSSForbidFallbackCS:[I

.field private mSSTypeUseCsOnly:[I

.field private mSpValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpliceMncMcc:Ljava/lang/String;

.field private mSubId:I

.field private mUse403ForLocalCW:Z

.field private mUtBearerType:I

.field private mUtBsfAuthBeUsed:Z

.field private mUtBsfPort:I

.field private mUtBsfSrvAddr:Ljava/lang/String;

.field private mUtBsfUseHttps:Z

.field private mUtCSBeUsed:Z

.field private mUtCanUseWifi:Z

.field private mUtForbiddenTimer:I

.field private mUtForbiddenWhenVolteSwitchOff:Z

.field private mUtGbaLifetimeBeUsed:Z

.field private mUtGbaType:I

.field private mUtHrsLog:Z

.field private mUtIMPI:Ljava/lang/String;

.field private mUtIMPU:Ljava/lang/String;

.field private mUtImsDataDelayEndTime:I

.field private mUtKsnafUseBase64:Z

.field private mUtNafPort:I

.field private mUtNafSrvAddr:Ljava/lang/String;

.field private mUtNafUseHttps:Z

.field private mUtOIRDefaultMode:I

.field private mUtOIRSourceMode:I

.field private mUtParamsCfg:[Ljava/lang/String;

.field private mUtQueryDnsIgnoreNetId:Z

.field private mUtRetryInterval:[I

.field private mUtUseApn:I

.field private mUtUseDefaultApnForWifiConnected:Z

.field private mUtUseNodeSelector:Z

.field private mUtUseTmpi:Z

.field private mUtUseXcapNamespace:Z

.field private mUtVoWifiDelayEndTime:I

.field private mUtX3gppIntendId:Ljava/lang/String;

.field private mUtXcapRootUri:Ljava/lang/String;

.field private mVowifiUtSwitch:Z

.field private mXcapRootURIFromSim:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/HwImsConfigImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method private static synthetic -getcom-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->-com-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->-com-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->values()[Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->-com-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues:[I

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

.method static synthetic -set0(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "-value"    # Lcom/hisi/mapcon/IMapconService;

    .prologue
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/HwImsConfigImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsConfigImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "sim_imsi_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "sim_imsi_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "impu_from_network_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "impu_from_network_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "impu_from_sim_imsi_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "impu_from_sim_imsi_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "local_call_waiting_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "local_call_waiting_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "local_OIR_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "local_OIR_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    .line 99
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_key"

    aput-object v3, v0, v1

    const-string/jumbo v3, "profile_key2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_param"

    aput-object v3, v0, v1

    const-string/jumbo v3, "profile_param2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "07"

    const-string/jumbo v3, "ro.config.hw_opta"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "840"

    const-string/jumbo v3, "ro.config.hw_optb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :goto_0
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    .line 357
    const-string/jumbo v0, "persist.ut.csbeused"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z

    .line 358
    const-string/jumbo v0, "persist.ut.hrslog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z

    .line 359
    const-string/jumbo v0, "persist.ut.usehttps"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z

    .line 360
    const-string/jumbo v0, "persist.ut.bsfusehttps"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z

    .line 362
    const-string/jumbo v0, "persist.ut.usenodeselector"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z

    .line 364
    const-string/jumbo v0, "persist.ut.usexcapnamespace"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z

    .line 365
    const-string/jumbo v0, "persist.ut.ksnafbase64"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z

    .line 366
    const-string/jumbo v0, "persist.ut.gbatype"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    .line 367
    const-string/jumbo v0, "persist.ut.usetmpi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z

    .line 369
    const-string/jumbo v0, "persist.ut.x3gppintendid"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "persist.ut.localusername"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    .line 371
    const-string/jumbo v0, "persist.ut.authusername"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "ro.config.hw_att_wificall"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    .line 535
    const-string/jumbo v0, "ro.config.hw_volte_dyn"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    .line 540
    const-string/jumbo v0, "ro.config.hw_opta"

    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->OPTA:Ljava/lang/String;

    .line 541
    const-string/jumbo v0, "ro.config.hw_optb"

    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->OPTB:Ljava/lang/String;

    .line 542
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->OPTB:Ljava/lang/String;

    const-string/jumbo v3, "410"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->OPTA:Ljava/lang/String;

    const-string/jumbo v3, "627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->OPTA:Ljava/lang/String;

    const-string/jumbo v2, "710"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_LOWPER_HANG_UP:Z

    .line 545
    const-string/jumbo v0, "ro.config.hw_vowifi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_ON:Z

    .line 68
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 542
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsServiceSub;I)V
    .locals 8
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I

    .prologue
    const/16 v7, 0x50

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 582
    invoke-direct {p0}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    .line 405
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    .line 406
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    .line 407
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    .line 409
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    .line 411
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    .line 412
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 413
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    .line 414
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    .line 415
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    .line 416
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    .line 417
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    .line 418
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    .line 420
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    .line 422
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    .line 425
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    .line 427
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 428
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    .line 429
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    .line 430
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    .line 431
    iput v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    iput v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    .line 432
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    .line 433
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    .line 434
    const/16 v2, 0x1f90

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    const/16 v2, 0x1f90

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    .line 435
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    .line 436
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    .line 437
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    .line 438
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    .line 439
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    .line 440
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    .line 441
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    .line 442
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    .line 443
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    .line 444
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    .line 445
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    .line 446
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    .line 447
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    .line 448
    const/16 v2, 0x2ee0

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 449
    const/16 v2, 0x2ee0

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    .line 450
    const v2, 0x1f400

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 451
    const v2, 0x1f400

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    .line 452
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    .line 454
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    .line 457
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    .line 460
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    .line 463
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    .line 466
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    .line 469
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 470
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    .line 474
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    .line 478
    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    .line 482
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    .line 483
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 487
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 488
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    .line 492
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 493
    const v2, 0xea60

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 494
    const v2, 0xea60

    iput v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    .line 498
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseDefaultApnForWifiConnected:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseDefaultApnForWifiConnected:Z

    .line 502
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    .line 506
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    .line 509
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    .line 510
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    .line 511
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    .line 512
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 513
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    .line 515
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    .line 518
    iput v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    iput v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    .line 523
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 524
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 525
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 526
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    .line 527
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    .line 530
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 531
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 532
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 549
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    .line 552
    iput v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 561
    iput-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 568
    new-instance v2, Lcom/huawei/ims/HwImsConfigImpl$1;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsConfigImpl$1;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 583
    iput p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 584
    const-string/jumbo v2, "HwImsConfigImpl construtor"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 586
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    const-string/jumbo v2, "subId is invalid"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 588
    return-void

    .line 590
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    if-nez v2, :cond_2

    .line 591
    :cond_1
    const-string/jumbo v2, "imsServiceSub or imsRIL is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 592
    return-void

    .line 594
    :cond_2
    iget-object v2, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3

    .line 595
    const-string/jumbo v2, "context is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 596
    return-void

    .line 598
    :cond_3
    iget-object v2, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    .line 600
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->init(Landroid/content/Context;)V

    .line 601
    iget-object v2, p1, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 605
    const-string/jumbo v2, "ro.config.hw_vowifi"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 606
    .local v1, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.hisi.vowifi.started"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.hisi.permission.VOWIFI_SPECIAL"

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 615
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    return-void
.end method

.method private bindMapconService()V
    .locals 6

    .prologue
    .line 2495
    const-string/jumbo v3, "ro.config.hw_vowifi"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2497
    .local v1, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2498
    new-instance v2, Lcom/huawei/ims/HwImsConfigImpl$2;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsConfigImpl$2;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 2511
    .local v2, "mConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.hisi.mapcon"

    const-string/jumbo v5, "com.hisi.mapcon.MapconService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2512
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v2, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2514
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "mConnection":Landroid/content/ServiceConnection;
    :cond_0
    return-void
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "spValueEncrypt"    # Ljava/lang/String;
    .param p2, "sKey"    # Ljava/lang/String;
    .param p3, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1859
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1860
    :cond_0
    const-string/jumbo v0, "value or key is not exist"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1862
    return-object v1

    .line 1867
    :cond_1
    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1870
    if-nez p2, :cond_2

    .line 1871
    return-object v1

    .line 1875
    :cond_2
    invoke-static {p2, p3}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1878
    if-nez p3, :cond_3

    .line 1879
    return-object v1

    .line 1883
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/huawei/ims/AESEncrypter;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "spValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 1805
    if-nez p1, :cond_0

    .line 1806
    const-string/jumbo v4, "spValue is null, do not encrypt"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1808
    return-object v6

    .line 1811
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1813
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1816
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1817
    .local v1, "sKey":Ljava/lang/String;
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1820
    .local v2, "sParam":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1821
    :cond_1
    const-string/jumbo v4, "create AES key"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1824
    invoke-static {v7}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 1825
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 1829
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    invoke-static {v1, v7}, Lcom/huawei/ims/EncryptUtils;->encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1830
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    invoke-static {v1, v2}, Lcom/huawei/ims/EncryptUtils;->encodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1832
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1853
    :cond_2
    invoke-static {p1, v1, v2}, Lcom/huawei/ims/AESEncrypter;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1836
    :cond_3
    invoke-static {v1, v7}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1839
    if-nez v1, :cond_4

    .line 1840
    return-object v6

    .line 1844
    :cond_4
    invoke-static {v1, v2}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1847
    if-nez v2, :cond_2

    .line 1848
    return-object v6
.end method

.method private getDcFailCause([I)[Ljava/lang/String;
    .locals 10
    .param p1, "codes"    # [I

    .prologue
    const/4 v6, 0x0

    .line 1020
    const/4 v2, 0x0

    .line 1021
    .local v2, "failCauses":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v7, p1

    if-eqz v7, :cond_0

    .line 1022
    array-length v5, p1

    .line 1023
    .local v5, "size":I
    new-array v2, v5, [Ljava/lang/String;

    .line 1024
    .local v2, "failCauses":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1025
    .local v0, "cause":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1026
    .local v3, "i":I
    array-length v7, p1

    move v4, v3

    .end local v0    # "cause":Ljava/lang/String;
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget v1, p1, v6

    .line 1027
    .local v1, "code":I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "cause":Ljava/lang/String;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-object v0, v2, v4

    .line 1029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initDcFailCause code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cause : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1026
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1032
    .end local v0    # "cause":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v2    # "failCauses":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_0
    return-object v2
.end method

.method private getParamFromUtParamsCfg(I)I
    .locals 11
    .param p1, "key"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1588
    const/4 v2, 0x0

    .line 1589
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v6

    .line 1590
    .local v6, "utParamsCfgArray":[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 1592
    aget-object v7, v6, v1

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1593
    .local v5, "utParamsCfg":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v5, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1594
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1593
    if-eqz v7, :cond_2

    .line 1595
    :cond_0
    const-string/jumbo v7, "getParamFromUtParamsCfg : config param not right"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1591
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1601
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1602
    .local v3, "utParam0":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1607
    .local v4, "utParam1":I
    if-ne p1, v3, :cond_1

    .line 1608
    move v2, v4

    .line 1613
    .end local v1    # "i":I
    .end local v3    # "utParam0":I
    .end local v4    # "utParam1":I
    .end local v5    # "utParamsCfg":[Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getParamFromUtParamsCfg: key ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1614
    return v2

    .line 1603
    .restart local v1    # "i":I
    .restart local v5    # "utParamsCfg":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "getParamFromUtParamsCfg : NumberFormatException "

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getRootUriFromSim()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2391
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    return-object v1

    .line 2395
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2396
    const-string/jumbo v0, "xcap.ims."

    .line 2398
    .local v0, "sRootURI":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 2401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRootURI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2403
    return-object v0

    .line 2407
    .end local v0    # "sRootURI":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "getRootURI error: Get wrong MCC MNC "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2409
    return-object v2
.end method

.method private final declared-synchronized handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1936
    if-nez p2, :cond_0

    monitor-exit p0

    .line 1937
    return-void

    .line 1941
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1948
    return-void

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1943
    :catch_1
    move-exception v1

    .line 1944
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeException, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1950
    :try_start_0
    const-string/jumbo v0, "utCSBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1980
    return-void

    .line 1953
    :cond_1
    :try_start_1
    const-string/jumbo v0, "CFNRcChangeWithCFNL"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1954
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1956
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ImsStateFollowVoiceDomain"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1957
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    goto :goto_0

    .line 1959
    :cond_3
    const-string/jumbo v0, "utHrsLog"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1960
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    goto :goto_0

    .line 1962
    :cond_4
    const-string/jumbo v0, "utNafUseHttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1963
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    goto :goto_0

    .line 1965
    :cond_5
    const-string/jumbo v0, "utBsfUsehttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1966
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    goto :goto_0

    .line 1968
    :cond_6
    const-string/jumbo v0, "utUseNodeSelector"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1969
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    goto/16 :goto_0

    .line 1971
    :cond_7
    const-string/jumbo v0, "utUseXcapNamespace"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1972
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    goto/16 :goto_0

    .line 1974
    :cond_8
    const-string/jumbo v0, "utKsnafUseBase64"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1975
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    goto/16 :goto_0

    .line 1977
    :cond_9
    const-string/jumbo v0, "utUseTmpi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private final declared-synchronized handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1982
    :try_start_0
    const-string/jumbo v0, "missedCallTips"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1983
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2022
    return-void

    .line 1985
    :cond_1
    :try_start_1
    const-string/jumbo v0, "missedCallDisplay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1986
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1988
    :cond_2
    :try_start_2
    const-string/jumbo v0, "missedCallTipsDelay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1989
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    goto :goto_0

    .line 1991
    :cond_3
    const-string/jumbo v0, "checkServiceWhenIncomingCall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1992
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    goto :goto_0

    .line 1994
    :cond_4
    const-string/jumbo v0, "utForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1995
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    goto :goto_0

    .line 1997
    :cond_5
    const-string/jumbo v0, "imsSsBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1998
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    goto :goto_0

    .line 2000
    :cond_6
    const-string/jumbo v0, "hangUpWhenLostNet"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2001
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    goto/16 :goto_0

    .line 2004
    :cond_7
    const-string/jumbo v0, "utCanUseWifi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2005
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    goto/16 :goto_0

    .line 2009
    :cond_8
    const-string/jumbo v0, "utBsfAuthBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2010
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    goto/16 :goto_0

    .line 2013
    :cond_9
    const-string/jumbo v0, "utUseDefaultApnForWifiConnected"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2014
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseDefaultApnForWifiConnected:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseDefaultApnForWifiConnected:Z

    goto/16 :goto_0

    .line 2018
    :cond_a
    const-string/jumbo v0, "utQueryDnsIgnoreNetId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2019
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private final declared-synchronized handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2028
    if-nez p2, :cond_0

    monitor-exit p0

    .line 2029
    return-void

    .line 2033
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2040
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2035
    :catch_1
    move-exception v1

    .line 2036
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeException, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2042
    :try_start_0
    const-string/jumbo v0, "setDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2043
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2065
    return-void

    .line 2045
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ContentTypeMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2046
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2048
    :cond_2
    :try_start_2
    const-string/jumbo v0, "callWaitingMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2049
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    goto :goto_0

    .line 2051
    :cond_3
    const-string/jumbo v0, "utNafPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2052
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    goto :goto_0

    .line 2054
    :cond_4
    const-string/jumbo v0, "utBsfPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2055
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    goto :goto_0

    .line 2057
    :cond_5
    const-string/jumbo v0, "utGbaType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2058
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    goto :goto_0

    .line 2061
    :cond_6
    const-string/jumbo v0, "utBearType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2067
    :try_start_0
    const-string/jumbo v0, "missedCallTipsRingTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2104
    return-void

    .line 2070
    :cond_0
    :try_start_1
    const-string/jumbo v0, "missedCallTipsDelayTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2073
    :cond_1
    :try_start_2
    const-string/jumbo v0, "utUseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2074
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    goto :goto_0

    .line 2077
    :cond_2
    const-string/jumbo v0, "utOIRSourceMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2078
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    goto :goto_0

    .line 2082
    :cond_3
    const-string/jumbo v0, "utOIRDefaultMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2083
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    goto :goto_0

    .line 2087
    :cond_4
    const-string/jumbo v0, "utImsDataDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2088
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    goto :goto_0

    .line 2092
    :cond_5
    const-string/jumbo v0, "setDeactDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2093
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    goto :goto_0

    .line 2097
    :cond_6
    const-string/jumbo v0, "utVoWifiDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2098
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    goto/16 :goto_0

    .line 2102
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private final declared-synchronized handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2110
    if-nez p2, :cond_0

    monitor-exit p0

    .line 2111
    return-void

    .line 2115
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2123
    return-void

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2118
    :catch_1
    move-exception v1

    .line 2119
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeException, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2126
    :try_start_0
    const-string/jumbo v0, "cardTypePreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2127
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2147
    return-void

    .line 2129
    :cond_1
    :try_start_1
    const-string/jumbo v0, "cardMccMncPreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2130
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2132
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ssTypeForbidFallbackCS"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2133
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    goto :goto_0

    .line 2135
    :cond_3
    const-string/jumbo v0, "ssNotSupportMMICode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2136
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    goto :goto_0

    .line 2138
    :cond_4
    const-string/jumbo v0, "ssTypeUseCsOnly"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2139
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    goto :goto_0

    .line 2141
    :cond_5
    const-string/jumbo v0, "utNafSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2142
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    goto :goto_0

    .line 2144
    :cond_6
    const-string/jumbo v0, "utBsfSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2149
    :try_start_0
    const-string/jumbo v0, "utX3gppIntendId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2150
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2182
    return-void

    .line 2152
    :cond_1
    :try_start_1
    const-string/jumbo v0, "utIMPU"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2153
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2155
    :cond_2
    :try_start_2
    const-string/jumbo v0, "utIMPI"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2156
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    goto :goto_0

    .line 2158
    :cond_3
    const-string/jumbo v0, "utRetryInterval"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2159
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    goto :goto_0

    .line 2162
    :cond_4
    const-string/jumbo v0, "utParamsCfg"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2163
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    goto :goto_0

    .line 2167
    :cond_5
    const-string/jumbo v0, "utXcapRootUri"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2168
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    goto :goto_0

    .line 2172
    :cond_6
    const-string/jumbo v0, "dcFailCauseForNonVolteSim"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2173
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    goto :goto_0

    .line 2177
    :cond_7
    const-string/jumbo v0, "dcFailCauseToReleaseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 2179
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 2441
    invoke-static {p0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1735
    const-string/jumbo v7, "init enter"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1737
    const/4 v2, 0x0

    .line 1738
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1739
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 1740
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 1743
    .local v1, "file":Ljava/io/File;
    :try_start_0
    const-string/jumbo v7, "/xml/hw_ims_config.xml"

    const/4 v8, 0x0

    .line 1745
    .local v1, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "File \'/xml/hw_ims_config.xml\' does not exist and will never exist! MWAHAHAHA"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1757
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1760
    if-eqz v2, :cond_0

    .line 1761
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1762
    const/4 v2, 0x0

    .line 1765
    :cond_0
    if-eqz v4, :cond_1

    const-class v7, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 1766
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1767
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .line 1774
    :cond_1
    :goto_2
    if-nez v5, :cond_3

    .line 1775
    const-string/jumbo v7, "ImsConfig load from R.xml.hw_ims_config"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1777
    const/4 v6, 0x0

    .line 1781
    .local v6, "xmlParser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f020000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 1782
    .local v6, "xmlParser":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_2

    .line 1783
    invoke-direct {p0, p1, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1789
    :cond_2
    if-eqz v6, :cond_3

    .line 1790
    .end local v6    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :goto_3
    const/4 v6, 0x0

    .line 1796
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1801
    :goto_4
    const-string/jumbo v7, "init finish"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1802
    return-void

    .line 1748
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_5
    const-string/jumbo v7, "get file successfully"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1751
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1752
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1753
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v7, "UTF-8"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1754
    invoke-direct {p0, p1, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1755
    const/4 v5, 0x1

    .line 1760
    if-eqz v3, :cond_7

    .line 1761
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1762
    const/4 v2, 0x0

    .line 1765
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_5
    if-eqz v4, :cond_1

    :try_start_8
    const-class v7, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 1766
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1769
    :catch_1
    move-exception v0

    .line 1770
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1769
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 1770
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1758
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1760
    :goto_7
    if-eqz v2, :cond_4

    .line 1761
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1762
    const/4 v2, 0x0

    .line 1765
    :cond_4
    if-eqz v4, :cond_5

    const-class v8, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 1766
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1767
    const/4 v4, 0x0

    .line 1758
    :cond_5
    :goto_8
    throw v7

    .line 1769
    :catch_3
    move-exception v0

    .line 1770
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 1786
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1787
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load R.xml.hw_ims_config caught e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1789
    if-eqz v6, :cond_3

    goto/16 :goto_3

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 1789
    if-eqz v6, :cond_6

    .line 1790
    const/4 v6, 0x0

    .line 1788
    :cond_6
    throw v7

    .line 1797
    :catch_5
    move-exception v0

    .line 1798
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "can\'t resolve call waiting mode, e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1758
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_7

    .line 1756
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1769
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_7
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto/16 :goto_5
.end method

.method private isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propType"    # Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .prologue
    .line 2413
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2415
    .local v1, "keyLength":I
    const/16 v3, 0x1f

    if-ge v3, v1, :cond_0

    .line 2416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the prop name length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2418
    const/4 v3, 0x0

    return v3

    .line 2421
    :cond_0
    const/4 v0, 0x0

    .line 2423
    .local v0, "hasConfigInProp":Z
    invoke-static {}, Lcom/huawei/ims/HwImsConfigImpl;->-getcom-huawei-ims-HwImsConfigImpl$CONFIG_TYPESwitchesValues()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2433
    const-string/jumbo v3, "can\'t recognise this prop type"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2437
    :cond_1
    :goto_0
    return v0

    .line 2427
    :pswitch_0
    const-string/jumbo v3, ""

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, "propValue":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2429
    const/4 v0, 0x1

    goto :goto_0

    .line 2423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isContainInIMSConfig([II)Z
    .locals 4
    .param p1, "imsConfig"    # [I
    .param p2, "serviceValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2238
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 2239
    :cond_0
    const-string/jumbo v1, "ims config is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2241
    return v3

    .line 2244
    :cond_1
    const/4 v0, 0x0

    .local v0, "number":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2245
    aget v1, p1, v0

    if-ne p2, v1, :cond_2

    .line 2246
    const-string/jumbo v1, "Current SS type or card type is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2248
    return v3

    .line 2244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2252
    :cond_3
    return v2
.end method

.method private isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "imsConfig"    # [Ljava/lang/String;
    .param p2, "serviceValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2256
    if-nez p1, :cond_0

    .line 2257
    const-string/jumbo v1, "ims config is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2259
    return v3

    .line 2262
    :cond_0
    const/4 v0, 0x0

    .local v0, "number":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 2263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2265
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 2266
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2267
    const-string/jumbo v1, "serviceValue is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2269
    return v3

    .line 2262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2274
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cfgTag"    # Ljava/lang/String;
    .param p2, "xmlTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1889
    .local v0, "cfgLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1890
    return v4

    .line 1893
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1894
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1895
    return v4

    .line 1893
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1899
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 2187
    :try_start_0
    const-string/jumbo v6, "ims_config"

    invoke-direct {p0, p2, v6}, Lcom/huawei/ims/HwImsConfigImpl;->startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2190
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2191
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2193
    .local v3, "tag":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2223
    instance-of v6, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_1

    move-object v6, p2

    .line 2224
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2227
    :cond_1
    instance-of v6, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_2

    .line 2229
    :try_start_1
    check-cast p2, Lorg/kxml2/io/KXmlParser;

    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2235
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2197
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 2198
    .local v2, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2199
    .local v5, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2201
    .local v4, "text":Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 2202
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 2205
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "name"

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2206
    const-string/jumbo v6, "bool"

    invoke-direct {p0, v6, v3}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2208
    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2218
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2219
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RuntimeException e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2223
    instance-of v6, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 2224
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2227
    :cond_5
    instance-of v6, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_2

    .line 2229
    :try_start_4
    check-cast p2, Lorg/kxml2/io/KXmlParser;

    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2230
    :catch_1
    move-exception v0

    .line 2231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_5
    const-string/jumbo v6, "int"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2211
    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2220
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2221
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2223
    instance-of v6, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_7

    move-object v6, p2

    .line 2224
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2227
    :cond_7
    instance-of v6, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_2

    .line 2229
    :try_start_7
    check-cast p2, Lorg/kxml2/io/KXmlParser;

    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 2230
    :catch_3
    move-exception v0

    .line 2231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_8
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2214
    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2222
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v7, v6

    .line 2223
    instance-of v6, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_9

    move-object v6, p2

    .line 2224
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2227
    :cond_9
    instance-of v6, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v6, :cond_a

    .line 2229
    :try_start_9
    check-cast p2, Lorg/kxml2/io/KXmlParser;

    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p2}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 2222
    :cond_a
    :goto_2
    throw v7

    .line 2230
    .restart local v3    # "tag":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 2231
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2230
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "tag":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 2231
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

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

    .line 2451
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    return-void
.end method

.method private final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1924
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1925
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1928
    :cond_1
    return-void
.end method

.method private readBoolCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1680
    if-nez p1, :cond_0

    .line 1681
    return-void

    .line 1684
    :cond_0
    const-string/jumbo v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    .line 1685
    const-string/jumbo v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    .line 1686
    const-string/jumbo v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    .line 1687
    const-string/jumbo v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    .line 1688
    const-string/jumbo v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    .line 1689
    const-string/jumbo v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    .line 1690
    const-string/jumbo v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    .line 1691
    const-string/jumbo v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    .line 1692
    const-string/jumbo v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_8
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    .line 1693
    const-string/jumbo v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_9
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    .line 1694
    const-string/jumbo v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    .line 1695
    const-string/jumbo v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    .line 1696
    const-string/jumbo v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    .line 1697
    const-string/jumbo v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    .line 1698
    const-string/jumbo v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_e
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    .line 1699
    const-string/jumbo v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_f
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    .line 1701
    const-string/jumbo v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    .line 1703
    const-string/jumbo v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_11
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    .line 1705
    const-string/jumbo v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    .line 1707
    const-string/jumbo v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_13
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    .line 1710
    const-string/jumbo v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    .line 1712
    const-string/jumbo v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_15
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    .line 1713
    const-string/jumbo v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_16
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    .line 1714
    const-string/jumbo v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_17
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 1715
    const-string/jumbo v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_18
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    .line 1717
    const-string/jumbo v0, "utUseDefaultApnForWifiConnected"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "utUseDefaultApnForWifiConnected"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_19
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseDefaultApnForWifiConnected:Z

    .line 1720
    const-string/jumbo v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1721
    const-string/jumbo v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1720
    :goto_1a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    .line 1724
    const-string/jumbo v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    .line 1726
    return-void

    .line 1684
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    goto/16 :goto_0

    .line 1685
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    goto/16 :goto_1

    .line 1686
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    goto/16 :goto_2

    .line 1687
    :cond_4
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    goto/16 :goto_3

    .line 1688
    :cond_5
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    goto/16 :goto_4

    .line 1689
    :cond_6
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    goto/16 :goto_5

    .line 1690
    :cond_7
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    goto/16 :goto_6

    .line 1691
    :cond_8
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    goto/16 :goto_7

    .line 1692
    :cond_9
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    goto/16 :goto_8

    .line 1693
    :cond_a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    goto/16 :goto_9

    .line 1694
    :cond_b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    goto/16 :goto_a

    .line 1695
    :cond_c
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    goto/16 :goto_b

    .line 1696
    :cond_d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    goto/16 :goto_c

    .line 1697
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    goto/16 :goto_d

    .line 1698
    :cond_f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    goto/16 :goto_e

    .line 1699
    :cond_10
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    goto/16 :goto_f

    .line 1701
    :cond_11
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    goto/16 :goto_10

    .line 1703
    :cond_12
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    goto/16 :goto_11

    .line 1705
    :cond_13
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    goto/16 :goto_12

    .line 1707
    :cond_14
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    goto/16 :goto_13

    .line 1710
    :cond_15
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    goto/16 :goto_14

    .line 1712
    :cond_16
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    goto/16 :goto_15

    .line 1713
    :cond_17
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    goto/16 :goto_16

    .line 1714
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 1715
    :cond_19
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    goto/16 :goto_18

    .line 1717
    :cond_1a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseDefaultApnForWifiConnected:Z

    goto/16 :goto_19

    .line 1721
    :cond_1b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    goto :goto_1a

    .line 1724
    :cond_1c
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    goto :goto_1b
.end method

.method private readIntCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1640
    return-void

    .line 1643
    :cond_0
    const-string/jumbo v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 1644
    const-string/jumbo v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 1645
    const-string/jumbo v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 1646
    const-string/jumbo v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 1647
    const-string/jumbo v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 1648
    const-string/jumbo v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 1650
    const-string/jumbo v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 1654
    const-string/jumbo v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_7
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 1657
    const-string/jumbo v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_8
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 1658
    const-string/jumbo v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_9
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 1659
    const-string/jumbo v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 1661
    const-string/jumbo v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_b
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    .line 1664
    const-string/jumbo v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_c
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 1667
    const-string/jumbo v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_d
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 1671
    const-string/jumbo v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1672
    const-string/jumbo v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1671
    :goto_e
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 1675
    const-string/jumbo v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_f
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    .line 1677
    return-void

    .line 1643
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    goto/16 :goto_0

    .line 1644
    :cond_2
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    goto/16 :goto_1

    .line 1645
    :cond_3
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    goto/16 :goto_2

    .line 1646
    :cond_4
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    goto/16 :goto_3

    .line 1647
    :cond_5
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    goto/16 :goto_4

    .line 1648
    :cond_6
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    goto/16 :goto_5

    .line 1650
    :cond_7
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    goto/16 :goto_6

    .line 1654
    :cond_8
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    goto/16 :goto_7

    .line 1657
    :cond_9
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    goto/16 :goto_8

    .line 1658
    :cond_a
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    goto/16 :goto_9

    .line 1659
    :cond_b
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    goto/16 :goto_a

    .line 1661
    :cond_c
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    goto :goto_b

    .line 1664
    :cond_d
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    goto :goto_c

    .line 1667
    :cond_e
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    goto :goto_d

    .line 1672
    :cond_f
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    goto :goto_e

    .line 1675
    :cond_10
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    goto :goto_f
.end method

.method private readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1624
    if-nez p1, :cond_0

    .line 1625
    return-void

    .line 1628
    :cond_0
    const-string/jumbo v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 1629
    const-string/jumbo v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 1630
    const-string/jumbo v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 1631
    const-string/jumbo v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    .line 1632
    const-string/jumbo v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    .line 1634
    const-string/jumbo v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 1636
    return-void

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    goto :goto_0

    .line 1629
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    goto :goto_1

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    goto :goto_2

    .line 1631
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    goto :goto_3

    .line 1632
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    goto :goto_4

    .line 1634
    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    goto :goto_5
.end method

.method private resolveCallWaitingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2352
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingMode()I

    move-result v0

    .line 2354
    .local v0, "callWaitingMode":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 2355
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 2360
    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 2361
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 2366
    :goto_1
    and-int/lit8 v2, v0, 0xc

    shr-int/lit8 v1, v2, 0x2

    .line 2368
    .local v1, "callWaitingSource":I
    packed-switch v1, :pswitch_data_0

    .line 2379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call waiting source is not exist, source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2383
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveCallWaitingMode finished, callWaitingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2384
    const-string/jumbo v3, ", mIsCallWaitingSyncToImsSdk="

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2384
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2385
    const-string/jumbo v3, ", mIsCallWaitingSyncToCs="

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2385
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2386
    const-string/jumbo v3, ", mCallWaitingSource="

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2386
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2387
    return-void

    .line 2357
    .end local v1    # "callWaitingSource":I
    :cond_0
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    goto :goto_0

    .line 2363
    :cond_1
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    goto :goto_1

    .line 2370
    .restart local v1    # "callWaitingSource":I
    :pswitch_0
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    goto :goto_2

    .line 2373
    :pswitch_1
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    goto :goto_2

    .line 2376
    :pswitch_2
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    goto :goto_2

    .line 2368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setVoWifiStatus(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 2540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoWifiStatus value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2541
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_ON:Z

    if-nez v2, :cond_0

    .line 2542
    return-void

    .line 2544
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v2, :cond_1

    .line 2545
    const-string/jumbo v2, "mMapconService is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2546
    return-void

    .line 2550
    :cond_1
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v1

    .line 2554
    .local v1, "phoneId":I
    packed-switch p1, :pswitch_data_0

    .line 2585
    :cond_2
    :goto_0
    return-void

    .line 2556
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v1}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    .line 2557
    const-string/jumbo v2, "set vowifi on successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2559
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2560
    const-string/jumbo v2, "HwImsConfigImpl"

    const-string/jumbo v3, "Wifi-Call HwImsConfigImpl set vowifi on successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "set vowifi status failed"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2568
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v1}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    .line 2569
    const-string/jumbo v2, "set vowifi off successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2571
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2572
    const-string/jumbo v2, "HwImsConfigImpl"

    const-string/jumbo v3, "Wifi-Call HwImsConfigImpl set vowifi off successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1906
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    .line 1907
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1911
    :cond_1
    if-eq v0, v2, :cond_2

    .line 1912
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 1916
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1917
    const-string/jumbo v3, ", expected "

    .line 1916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1919
    :cond_4
    return-void
.end method

.method private stringToIntArray(Ljava/lang/String;)[I
    .locals 7
    .param p1, "stringText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2278
    if-nez p1, :cond_0

    .line 2279
    const-string/jumbo v4, "stringText is null. "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2281
    new-array v4, v6, [I

    return-object v4

    .line 2285
    :cond_0
    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2287
    .local v2, "stringReplaceSpace":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2288
    const-string/jumbo v4, "stringText is null after replace space. "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2290
    new-array v4, v6, [I

    return-object v4

    .line 2293
    :cond_1
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2295
    .local v3, "stringTextArray":[Ljava/lang/String;
    array-length v4, v3

    if-nez v4, :cond_2

    .line 2296
    const-string/jumbo v4, "stringTextArray length is 0 after replace space."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2298
    new-array v4, v6, [I

    return-object v4

    .line 2301
    :cond_2
    array-length v4, v3

    new-array v1, v4, [I

    .line 2303
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 2304
    const-string/jumbo v4, ""

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2305
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v0

    .line 2307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intArray[i] =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2309
    :cond_3
    const v4, -0x1e240

    aput v4, v1, v0

    goto :goto_1

    .line 2313
    :cond_4
    return-object v1
.end method

.method private stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "stringText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2317
    if-nez p1, :cond_0

    .line 2318
    const-string/jumbo v3, "stringText is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2320
    new-array v3, v5, [Ljava/lang/String;

    return-object v3

    .line 2324
    :cond_0
    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2326
    .local v2, "stringReplaceSpace":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2327
    const-string/jumbo v3, "stringText is null after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2329
    new-array v3, v5, [Ljava/lang/String;

    return-object v3

    .line 2332
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2334
    .local v1, "stringArray":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_2

    .line 2335
    const-string/jumbo v3, "stringArray length is 0 after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2337
    new-array v3, v5, [Ljava/lang/String;

    return-object v3

    .line 2340
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 2341
    const-string/jumbo v3, ""

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2342
    const-string/jumbo v3, "SNIT"

    aput-object v3, v1, v0

    .line 2345
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stringArray[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2348
    :cond_4
    return-object v1
.end method


# virtual methods
.method public getBoolCarrierBuildVersion()Z
    .locals 1

    .prologue
    .line 2588
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    return v0
.end method

.method declared-synchronized getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    .prologue
    monitor-enter p0

    .line 1494
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1496
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getBsfAddrFromSIM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1338
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1342
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1343
    const-string/jumbo v0, "bsf."

    .line 1345
    .local v0, "sBsf":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBsf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1350
    return-object v0

    .line 1354
    .end local v0    # "sBsf":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "getBsfAddrFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1356
    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCallWaitingMode()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 825
    :try_start_0
    const-string/jumbo v1, "persist.ims.cwlocalset"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "callWaitingMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallWaitingMode, callWaitingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 828
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    .line 828
    return v1

    .line 829
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "callWaitingMode":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    .prologue
    monitor-enter p0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getContentTypeMode()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 811
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDefaultNeedNoReplyTimer()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 803
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDefaultNoReplyTimer()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 795
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getImpiFromSIM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1320
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@ims."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "sImpi":Ljava/lang/String;
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sImpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1327
    return-object v0

    .line 1331
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1333
    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getImpuFromSIM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1298
    :try_start_0
    const-string/jumbo v0, "sip:"

    .line 1300
    .local v0, "sIMPU":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@ims."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "assemble IMPU from SIM, sIMPU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1305
    return-object v0

    .line 1309
    :cond_0
    :try_start_1
    const-string/jumbo v1, "getSimIMPU error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1311
    return-object v2

    .end local v0    # "sIMPU":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # I

    .prologue
    monitor-enter p0

    .line 1510
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1512
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getIsEmergencyUnderWifi()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 721
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIsUseMultCondition()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 717
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMissedCallTipsDelayTimer()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1212
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMissedCallTipsRingTimer()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1208
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOIRDefaultMode()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1388
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOIRSourceMode()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1379
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 1428
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enter getSharedPreferences, spKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1431
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1437
    .local v4, "valueInMap":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1438
    const-string/jumbo v6, "value is already stored in map."

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1440
    return-object v4

    .line 1443
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1447
    .local v2, "sp":Landroid/content/SharedPreferences;
    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v6, v6, v7

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "sKey":Ljava/lang/String;
    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v6, v6, v7

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "sParam":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-interface {v2, p1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "spValueEncrypt":Ljava/lang/String;
    invoke-direct {p0, v3, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1455
    .local v5, "valueInSp":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1457
    return-object v5

    .end local v0    # "sKey":Ljava/lang/String;
    .end local v1    # "sParam":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "spValueEncrypt":Ljava/lang/String;
    .end local v4    # "valueInMap":Ljava/lang/String;
    .end local v5    # "valueInSp":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method declared-synchronized getSimOperator()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1288
    :try_start_0
    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v0

    .line 1291
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1292
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    monitor-exit p0

    return-object v2

    .end local v0    # "phoneId":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getUtBearerType()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 1011
    :try_start_0
    const-string/jumbo v1, "persist.ut.bearType"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "utBearerType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUtBearerType, utBearerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "utBearerType":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getUtBsfPort()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 961
    :try_start_0
    const-string/jumbo v1, "persist.ut.bsfport"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "utBsfPort":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUtBsfPort, utBsfPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 964
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "utBsfPort":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getUtBsfSrvAddr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 913
    :try_start_0
    const-string/jumbo v2, "persist.ut.bsfsrvaddr"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "utBsfSrvAddr":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use bsf addr from prop, bsf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 918
    return-object v1

    .line 921
    :cond_0
    :try_start_1
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use bsf addr from xml, bsf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 927
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getBsfAddrFromSIM()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "bsfAddr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use bsf addr from sim, bsf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 932
    return-object v0

    .line 935
    :cond_2
    :try_start_3
    const-string/jumbo v2, "pick bsf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 937
    return-object v4

    .end local v0    # "bsfAddr":Ljava/lang/String;
    .end local v1    # "utBsfSrvAddr":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getUtForbiddenTimer()I
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    return v0
.end method

.method declared-synchronized getUtGbaType()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 1003
    :try_start_0
    const-string/jumbo v0, "persist.ut.gbatype"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtIMPI()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1126
    :try_start_0
    const-string/jumbo v1, "persist.ut.authusername"

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impi from prop, impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1129
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1132
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impi from xml, impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1139
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "impi from sim already exist, impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1141
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1143
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1146
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "begin to assemble impi from imsi, mSpliceMncMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@ims."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "sImpi":Ljava/lang/String;
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after assemble, impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1155
    return-object v0

    .line 1159
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string/jumbo v1, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1161
    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1083
    :try_start_0
    const-string/jumbo v1, "persist.ut.localusername"

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impu from prop, impu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1086
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1089
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impu from xml, impu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1095
    :cond_1
    const/4 v0, 0x0

    .line 1098
    .local v0, "impu":Ljava/lang/String;
    :try_start_2
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "impu":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impu from network, impu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1104
    return-object v0

    .line 1108
    :cond_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_3

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use impu from imsi, impu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1114
    return-object v0

    .line 1117
    :cond_3
    :try_start_4
    const-string/jumbo v1, "pick impu fail."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1119
    return-object v3

    .end local v0    # "impu":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1075
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtImsDataDelayEndTime()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1394
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtNafPort()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 895
    :try_start_0
    const-string/jumbo v1, "persist.ut.nafport"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "utNafPort":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUtNafPort, utNafPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "utNafPort":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getUtNafSrvAddr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 864
    :try_start_0
    const-string/jumbo v2, "persist.ut.nafsrvaddr"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "utNafSrvAddr":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use naf addr from prop, naf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 869
    return-object v1

    .line 872
    :cond_0
    :try_start_1
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use naf addr from xml, naf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 878
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getRootUriFromSim()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "nafAddr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use naf addr from sim, naf addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 883
    return-object v0

    .line 886
    :cond_2
    :try_start_3
    const-string/jumbo v2, "pick naf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 888
    return-object v4

    .end local v0    # "nafAddr":Ljava/lang/String;
    .end local v1    # "utNafSrvAddr":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getUtParamsCfg()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtRetryInterval(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, -0x1

    monitor-enter p0

    .line 1179
    if-gez p1, :cond_0

    monitor-exit p0

    .line 1180
    return v1

    .line 1183
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p1, :cond_2

    :cond_1
    monitor-exit p0

    .line 1184
    return v1

    .line 1187
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    aget v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtRetryMaxCounts()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1168
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1169
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1171
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtUseApn()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 661
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtVoWifiDelayEndTime()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1404
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtX3gppIntendId()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1066
    :try_start_0
    const-string/jumbo v0, "persist.ut.x3gppintendid"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1066
    return-object v0

    .line 1067
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtXcapRootUri()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    .line 950
    :try_start_0
    const-string/jumbo v1, "persist.ut.xcapRootUri"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "utXcapRootUri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUtXcapRootUri, utXcapRootUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 953
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "utXcapRootUri":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "utXcapRootUri":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "utXcapRootUri":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getVowifiUtSwitch()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 946
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCFNRcChangeWithCFNL()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 788
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToCs()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 843
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToImsSdk()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 836
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 699
    :try_start_0
    const-string/jumbo v1, "persist.ut.preferToUseUT"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "preferToUseUt":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 705
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-eqz v1, :cond_1

    .line 706
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 710
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    array-length v1, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 711
    :cond_2
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 710
    :cond_3
    if-eqz p1, :cond_2

    .line 714
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "preferToUseUt":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isCardTypePreferToUseUT(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    monitor-enter p0

    .line 681
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCardTypePreferToUseUT, Card type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 684
    :cond_0
    const-string/jumbo v0, "mCardTypePreferToUseUT is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 689
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCarrierSupportVolte()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 668
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCheckServiceWhenIncomingCall()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1216
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1037
    :cond_0
    const-string/jumbo v0, "mDcFailCause is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1038
    return v1

    .line 1041
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isDcFailCauseToReleaseApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    const-string/jumbo v0, "isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1049
    return v1

    .line 1052
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isHangUpWhenLostNet()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1361
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isIMPUConfigured()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 1228
    :try_start_0
    const-string/jumbo v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1229
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1231
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isImsSsBeUsed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 643
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isImsStateFollowVoiceDomain()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 818
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallDisplay()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1200
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTips()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1192
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTipsDelay()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1204
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTipsInternal()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1196
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSSForbidFallbackCS(I)Z
    .locals 3
    .param p1, "ssType"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 772
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSSForbidFallbackCS, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 775
    :cond_0
    const-string/jumbo v0, "mSSForbidFallbackCS is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 777
    return v2

    .line 780
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSSUseCsOnly(I)Z
    .locals 4
    .param p1, "ssType"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 729
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSSUseCsOnly, ss type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v1, "persist.ut.ssTypeUseCsOnly"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "SSTypeUseCsOnly":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSSUseCsOnly, SSTypeUseCsOnly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 734
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 734
    :goto_0
    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 737
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    array-length v1, v1

    if-nez v1, :cond_2

    .line 738
    :cond_0
    const-string/jumbo v1, "mSSTypeUseCsOnly is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 740
    return v3

    .line 735
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    goto :goto_0

    .line 743
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "SSTypeUseCsOnly":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "MMIcode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 750
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MMI code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 753
    :cond_0
    const-string/jumbo v0, "mNotSupportMMICode is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 755
    return v2

    .line 758
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUse403ForLocalCW()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 665
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtBsfAuthBeUsed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1373
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtBsfUseHttps()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 971
    :try_start_0
    const-string/jumbo v0, "persist.ut.bsfusehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 971
    return v0

    .line 972
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtCSBeUsed()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 765
    :try_start_0
    const-string/jumbo v0, "persist.ut.csbeused"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtCanUseWifi()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 672
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtForbiddenWhenVolteSwitchOff()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 650
    :try_start_0
    const-string/jumbo v1, "persist.ut.forbiddenWVSO"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "utForbiddenWhenVolteSwitchOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 653
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    .line 653
    return v1

    .line 654
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isUtGbaLifetimeBeUsed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1400
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtKsnafEncodedByBase64()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 995
    :try_start_0
    const-string/jumbo v0, "persist.ut.ksnafbase64"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 995
    return v0

    .line 996
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtNafUseHttps()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 905
    :try_start_0
    const-string/jumbo v0, "persist.ut.usehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 905
    return v0

    .line 906
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtOpenHrsLog()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 857
    :try_start_0
    const-string/jumbo v0, "persist.ut.hrslog"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtQueryDnsIgnoreNetId()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1416
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseDefaultApnForWifiConnected()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1410
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseDefaultApnForWifiConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseNodeSelector()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 979
    :try_start_0
    const-string/jumbo v0, "persist.ut.usenodeselector"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 979
    return v0

    .line 980
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseTmpi()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 1059
    :try_start_0
    const-string/jumbo v0, "persist.ut.usetmpi"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseXcapNameSpace()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 987
    :try_start_0
    const-string/jumbo v0, "persist.ut.usexcapnamespace"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 987
    return v0

    .line 988
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processOnTransact , code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 622
    packed-switch p1, :pswitch_data_0

    .line 637
    const/4 v3, 0x0

    return v3

    .line 625
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "mmiCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 627
    .local v2, "result":I
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUnSupportMMICode(Ljava/lang/String;)Z

    move-result v0

    .line 629
    .local v0, "isUnSupportMMICode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUnSupportMMICode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 630
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 632
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v3, 0x1

    return v3

    .line 630
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized readCarrierConfig(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    .line 1534
    :try_start_0
    sget-boolean v7, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    monitor-exit p0

    return-void

    .line 1536
    :cond_0
    :try_start_1
    const-string/jumbo v7, "readCarrierConfig begin"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1538
    const-string/jumbo v7, "carrier_config"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1537
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1541
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    iget v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v7}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v4

    .line 1543
    .local v4, "subId":I
    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1545
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->readBoolCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1546
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->readIntCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1547
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    :try_start_2
    const-string/jumbo v7, "cardTypePreferToUseUT"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "cardTypePreferToUseUT"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v7

    :goto_0
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    .line 1551
    const-string/jumbo v7, "ssTypeForbidFallbackCS"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "ssTypeForbidFallbackCS"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    .line 1552
    const-string/jumbo v7, "ssTypeUseCsOnly"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "ssTypeUseCsOnly"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v7

    :goto_2
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 1553
    const-string/jumbo v7, "utRetryInterval"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "utRetryInterval"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v7

    :goto_3
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 1556
    const-string/jumbo v7, "cardMccMncPreferToUseUT"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "cardMccMncPreferToUseUT"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :goto_4
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 1557
    const-string/jumbo v7, "ssNotSupportMMICode"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "ssNotSupportMMICode"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :goto_5
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    .line 1559
    const-string/jumbo v7, "utParamsCfg"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "utParamsCfg"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :goto_6
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 1562
    const-string/jumbo v7, "dcFailCauseForNonVolteSim"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "dcFailCauseForNonVolteSim"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v7

    :goto_7
    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 1563
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 1566
    const-string/jumbo v7, "dcFailCauseToReleaseApn"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v6, "dcFailCauseToReleaseApn"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v6

    :cond_1
    iput-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 1567
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1577
    :goto_8
    :try_start_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V

    .line 1580
    const/16 v6, 0x13

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v6

    if-ne v6, v5, :cond_a

    :goto_9
    iput-boolean v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 1582
    const-string/jumbo v5, "readCarrierConfig end"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1583
    return-void

    .line 1550
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    goto/16 :goto_0

    .line 1551
    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    goto/16 :goto_1

    .line 1552
    :cond_4
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    goto/16 :goto_2

    .line 1553
    :cond_5
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    goto/16 :goto_3

    .line 1556
    :cond_6
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    goto/16 :goto_4

    .line 1557
    :cond_7
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    goto :goto_5

    .line 1559
    :cond_8
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    goto :goto_6

    .line 1562
    :cond_9
    iget-object v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 1571
    :catch_0
    move-exception v2

    .line 1572
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "subId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1569
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v4    # "subId":I
    :catch_1
    move-exception v3

    .line 1570
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RuntimeException, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 1580
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_a
    const/4 v5, 0x0

    goto :goto_9
.end method

.method public removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2593
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2594
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2595
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2597
    return-void
.end method

.method declared-synchronized setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 1500
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1502
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1504
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1506
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "bsfAddr"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1248
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1249
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1236
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1237
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureValue feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2520
    packed-switch p1, :pswitch_data_0

    .line 2537
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2525
    :pswitch_1
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    if-eqz v0, :cond_0

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVTStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    goto :goto_0

    .line 2532
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsConfigImpl;->setVoWifiStatus(I)V

    goto :goto_0

    .line 2520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized setIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1224
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1225
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setImpiFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1244
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1245
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 1516
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1518
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1520
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1522
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "nsfAddr"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1252
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1253
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProvisionedValue(II)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 2461
    const-string/jumbo v3, "ro.config.hw_vowifi"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2463
    .local v1, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2464
    return v5

    .line 2467
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v3, :cond_1

    .line 2468
    const-string/jumbo v3, "setProvisionedValue,mMapconService is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2469
    const/4 v3, -0x1

    return v3

    .line 2473
    :cond_1
    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 2476
    .local v2, "phoneId":I
    const/16 v3, 0x1a

    if-ne v3, p1, :cond_3

    .line 2478
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set VOICE_OVER_WIFI_ROAMING,value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2479
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v3, v2}, Lcom/hisi/mapcon/IMapconService;->notifyRoaming(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    :cond_2
    :goto_0
    return v5

    .line 2480
    :catch_0
    move-exception v0

    .line 2481
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "set VOICE_OVER_WIFI_ROAMING failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2483
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/16 v3, 0x1b

    if-ne v3, p1, :cond_2

    .line 2485
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set VOICE_OVER_WIFI_MODE,value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2486
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v3, v2, p2}, Lcom/hisi/mapcon/IMapconService;->setDomain(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2487
    :catch_1
    move-exception v0

    .line 2488
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "set VOICE_OVER_WIFI_MODE failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 1467
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter setSharedPreferences, spKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1470
    iget-object v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1476
    .local v3, "valueInMap":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1477
    const-string/jumbo v4, "value is not changed, need not to store in SP again."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1479
    return-void

    .line 1482
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1485
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1487
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsConfigImpl;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, "spValueEncrypt":Ljava/lang/String;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1491
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spValueEncrypt":Ljava/lang/String;
    .end local v3    # "valueInMap":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized setSpliceMncMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1240
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1241
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized spliceMncMcc()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    monitor-enter p0

    .line 1256
    const/4 v1, 0x0

    .line 1258
    .local v1, "spMncMcc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "simOperator":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simOperator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mnc0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, "spMncMcc":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spMCCMNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1278
    return-object v1

    .line 1266
    .local v1, "spMncMcc":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "spMncMcc":Ljava/lang/String;
    goto :goto_0

    .line 1269
    .local v1, "spMncMcc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "spliceMncMcc error: Get wrong MCC MNC"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1271
    return-object v4

    .line 1281
    :cond_2
    :try_start_2
    const-string/jumbo v2, "spliceMncMcc error: Cannot get sim MCC MNC "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1283
    return-object v4

    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v1    # "spMncMcc":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
