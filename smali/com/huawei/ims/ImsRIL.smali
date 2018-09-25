.class public final Lcom/huawei/ims/ImsRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "ImsRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsRIL$ImsRilHandler;,
        Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRILJ_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xbb8

.field private static final LENGTH_OF_REQUEST_GETLTEINFO:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field static final MAX_RETRY_COUNT:I = 0x8

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SOCKET_NAME_IMSRIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field public static final VIDEO_RING_TONES:Ljava/lang/String; = "ims_video_ring"

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected imsRILDefaultWorkSource:Landroid/os/WorkSource;

.field final imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field protected mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private mContext:Landroid/content/Context;

.field protected mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field public mHoldingToneRegistrants:Landroid/os/RegistrantList;

.field protected mImsCSRedialRegistrations:Landroid/os/RegistrantList;

.field protected mImsDMCNRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected final mModifyCallResultRegistrants:Landroid/os/RegistrantList;

.field protected mMtStatusReportRegistrants:Landroid/os/RegistrantList;

.field final mPhoneId:Ljava/lang/Integer;

.field mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

.field volatile mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/ImsRILRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/ImsRIL;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "wakeLockType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 328
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rildi"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "rildi2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "rildi3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 601
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 299
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 300
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 301
    new-instance v2, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v2}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    .line 309
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 312
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 331
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 332
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 337
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    .line 342
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    .line 366
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    .line 367
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    .line 408
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    .line 420
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 428
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 436
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 444
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 453
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 466
    iput-object v8, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    .line 467
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2359
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 2371
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 2842
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    .line 2841
    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 2844
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    .line 2843
    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    .line 3049
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    .line 603
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 606
    iput-object p2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    .line 609
    new-instance v2, Lcom/huawei/ims/ImsRadioResponse;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioResponse;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    .line 610
    new-instance v2, Lcom/huawei/ims/ImsRadioIndication;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioIndication;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    .line 611
    new-instance v2, Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 612
    new-instance v2, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    .line 613
    new-instance v2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 613
    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 615
    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    .line 616
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 618
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 619
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "RILJ_IMS"

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 621
    const-string/jumbo v2, "RILJ_ACK_WL"

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 622
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 623
    const-string/jumbo v2, "ro.ril.wake_lock_timeout"

    .line 624
    const v3, 0xea60

    .line 623
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    .line 626
    const-string/jumbo v2, "ro.ril.wake_lock_timeout"

    const/16 v3, 0xc8

    .line 625
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    .line 627
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    .line 628
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 629
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 630
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V
    .locals 8
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "wakeLockType"    # I

    .prologue
    .line 3079
    monitor-enter p1

    .line 3080
    :try_start_0
    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to aquire wakelock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    .line 3082
    return-void

    .line 3085
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3121
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Acquiring Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 3122
    return-void

    .line 3087
    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3088
    :try_start_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3089
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3090
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 3092
    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    .line 3093
    .local v0, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3094
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 3095
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v4}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 3099
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3102
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    .line 3103
    iget v5, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v6, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    iget v7, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3102
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3105
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3106
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3107
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    .line 3124
    .end local v0    # "clientId":Ljava/lang/String;
    :goto_1
    iput p2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p1

    .line 3126
    return-void

    .line 3097
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "clientId":Ljava/lang/String;
    :cond_2
    :try_start_5
    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3087
    .end local v0    # "clientId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3079
    :catchall_1
    move-exception v2

    monitor-exit p1

    throw v2

    .line 3111
    :pswitch_1
    :try_start_7
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3112
    :try_start_8
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3113
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 3115
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3116
    .restart local v1    # "msg":Landroid/os/Message;
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3117
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v3

    goto :goto_1

    .line 3111
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRequest(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .prologue
    .line 939
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRIL;->acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V

    .line 940
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 943
    return-void

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1960
    .local p0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 1961
    .local v1, "ret":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1962
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1964
    :cond_0
    return-object v1
.end method

.method private clearRequestList(IZ)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 3194
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3195
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3197
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRILRequest;

    .line 3198
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 3199
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3200
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 3196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3202
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3204
    return-void

    .line 3194
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private clearWakeLock(I)Z
    .locals 4
    .param p1, "wakeLockType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3167
    if-nez p1, :cond_1

    .line 3168
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3169
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    monitor-exit v1

    return v2

    .line 3170
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NOTE: mWakeLockCount is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3171
    const-string/jumbo v2, "at time of clearing"

    .line 3170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3172
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3173
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3174
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 3176
    return v3

    .line 3168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3179
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3180
    :try_start_2
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    return v2

    .line 3181
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 3182
    return v3

    .line 3179
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static convertHalImsEndCause(Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I
    .locals 6
    .param p0, "imsEndCause"    # Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    .line 1968
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1969
    .local v1, "imsEndCauseResponse":[I
    iget v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;->callIndex:I

    .line 1970
    .local v0, "imsCallIndex":I
    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;->err:I

    .line 1972
    .local v2, "imsErr":I
    const-string/jumbo v3, "RILJ_IMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RILImsModifyEndCause received: callIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1974
    const-string/jumbo v5, " callErr="

    .line 1972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 1977
    const/4 v3, 0x1

    aput v2, v1, v3

    .line 1978
    return-object v1
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 3024
    if-eqz p1, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    .locals 5
    .param p1, "type"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B

    .prologue
    .line 1390
    new-instance v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;-><init>()V

    .line 1391
    .local v1, "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1392
    .local v2, "rands":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "auths":Ljava/lang/String;
    iput p1, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authType:I

    .line 1394
    iget-object v3, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;->randLen:I

    .line 1395
    iget-object v3, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;->authLen:I

    .line 1396
    iget-object v3, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;

    iput-object v2, v3, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;->rand:Ljava/lang/String;

    .line 1397
    iget-object v3, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;

    iput-object v0, v3, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHPARAMS;->auth:Ljava/lang/String;

    .line 1398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "randlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "authlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rands = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "auths = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg.authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->authType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1403
    return-object v1
.end method

.method private createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 1448
    new-instance v2, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 1449
    .local v2, "msg":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 1450
    .local v1, "datas":Ljava/lang/String;
    array-length v0, p2

    .line 1451
    .local v0, "dataLen":I
    const/4 v3, 0x0

    iput v3, v2, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->appType:I

    .line 1452
    iput p1, v2, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->fileId:I

    .line 1453
    iget-object v3, v2, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/V1_0/RILCURSMFILEPARAMS;

    iput v0, v3, Lvendor/huawei/hardware/radio/V1_0/RILCURSMFILEPARAMS;->len:I

    .line 1454
    iget-object v3, v2, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/V1_0/RILCURSMFILEPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/V1_0/RILCURSMFILEPARAMS;->data:Ljava/lang/String;

    .line 1455
    return-object v2
.end method

.method private decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3129
    monitor-enter p1

    .line 3130
    :try_start_0
    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    packed-switch v2, :pswitch_data_0

    .line 3160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logw(Ljava/lang/String;)V

    .line 3162
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 3164
    return-void

    .line 3132
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3133
    :try_start_2
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    .line 3134
    iget v5, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v6, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    .line 3135
    iget v7, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-le v7, v8, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, -0x1

    .line 3133
    :cond_0
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3136
    iget-object v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    .line 3137
    .local v0, "clientId":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3138
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_2

    .line 3139
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3140
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3143
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3146
    :cond_2
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-le v1, v8, :cond_3

    .line 3147
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3129
    .end local v0    # "clientId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1

    .line 3149
    .restart local v0    # "clientId":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3150
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3132
    .end local v0    # "clientId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3130
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 3207
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3208
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3209
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsRILRequest;

    .line 3210
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget v3, v1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 3211
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3212
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 3213
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 3214
    return-object v1

    .line 3208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_2
    monitor-exit v4

    .line 3218
    const/4 v3, 0x0

    return-object v3

    .line 3207
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;
    .locals 9
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 534
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_0

    .line 535
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    return-object v3

    .line 540
    :cond_0
    const/4 v1, 0x0

    .line 541
    .local v1, "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    const/4 v2, 0x0

    .line 546
    .local v2, "huaweiRadio1_1":Lvendor/huawei/hardware/radio/V1_1/IRadio;
    :try_start_0
    sget-object v5, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_6

    move v4, v3

    :goto_0
    aget-object v4, v5, v4

    .line 545
    invoke-static {v4}, Lvendor/huawei/hardware/radio/V1_1/IRadio;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/V1_1/IRadio;

    move-result-object v2

    .line 548
    .local v2, "huaweiRadio1_1":Lvendor/huawei/hardware/radio/V1_1/IRadio;
    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v2    # "huaweiRadio1_1":Lvendor/huawei/hardware/radio/V1_1/IRadio;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    if-nez v4, :cond_1

    .line 554
    const-string/jumbo v4, "getRadioProxy: huawei radioProxy V1.1 == null, try to get V1.0"

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    :try_start_2
    sget-object v4, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v5, :cond_7

    :goto_2
    aget-object v3, v4, v3

    .line 556
    invoke-static {v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 558
    .local v1, "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 564
    .end local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :cond_1
    :goto_3
    if-eqz v2, :cond_8

    .line 565
    :try_start_3
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/huawei/hardware/radio/V1_1/IRadio;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;)V

    .line 570
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_3

    .line 571
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    .line 572
    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 571
    invoke-interface {v3, v4, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 573
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v3, v4, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 581
    :cond_3
    :goto_5
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    if-nez v3, :cond_5

    .line 582
    if-eqz p1, :cond_4

    .line 584
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 583
    invoke-static {p1, v8, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 585
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 587
    :cond_4
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 588
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 589
    const-wide/16 v6, 0xbb8

    .line 587
    invoke-virtual {v3, v4, v6, v7}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 591
    :cond_5
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    return-object v3

    .line 546
    .local v1, "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    .local v2, "huaweiRadio1_1":Lvendor/huawei/hardware/radio/V1_1/IRadio;
    :cond_6
    :try_start_4
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    goto :goto_0

    .line 549
    .end local v2    # "huaweiRadio1_1":Lvendor/huawei/hardware/radio/V1_1/IRadio;
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRadioProxy: huaweiradioProxy got V1_1 exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :catch_1
    move-exception v0

    .line 578
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v8, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setResponseFunctions occurs exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 557
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :cond_7
    :try_start_6
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v3

    goto/16 :goto_2

    .line 559
    .end local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :catch_2
    move-exception v0

    .line 560
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRadioProxy: huaweiradioProxy got V1_0 exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    if-eqz v1, :cond_2

    .line 567
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3062
    if-eqz p1, :cond_0

    .line 3063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3066
    :cond_0
    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 531
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    .line 648
    iget v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->removeMessages(I)V

    .line 650
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 653
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .prologue
    .line 709
    sparse-switch p0, :sswitch_data_0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<unknown request> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :sswitch_0
    const-string/jumbo v0, "IMS_REGISTRATION_STATE"

    return-object v0

    .line 711
    :sswitch_1
    const-string/jumbo v0, "HW_IMS_DIAL"

    return-object v0

    .line 712
    :sswitch_2
    const-string/jumbo v0, "HW_IMS_GET_CURRENT_CALLS"

    return-object v0

    .line 714
    :sswitch_3
    const-string/jumbo v0, "HW_IMS_HANGUP"

    return-object v0

    .line 715
    :sswitch_4
    const-string/jumbo v0, "HW_IMS_HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 716
    :sswitch_5
    const-string/jumbo v0, "HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 718
    :sswitch_6
    const-string/jumbo v0, "HW_IMS_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 720
    :sswitch_7
    const-string/jumbo v0, "HW_IMS_UDUB"

    return-object v0

    .line 721
    :sswitch_8
    const-string/jumbo v0, "HW_IMS_ANSWER"

    return-object v0

    .line 722
    :sswitch_9
    const-string/jumbo v0, "HW_IMS_DTMF"

    return-object v0

    .line 723
    :sswitch_a
    const-string/jumbo v0, "HW_IMS_DTMF_START"

    return-object v0

    .line 724
    :sswitch_b
    const-string/jumbo v0, "HW_IMS_DTMF_STOP"

    return-object v0

    .line 725
    :sswitch_c
    const-string/jumbo v0, "HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 726
    :sswitch_d
    const-string/jumbo v0, "HW_IMS_SET_MUTE"

    return-object v0

    .line 727
    :sswitch_e
    const-string/jumbo v0, "HW_IMS_CONFERENCE"

    return-object v0

    .line 729
    :sswitch_f
    const-string/jumbo v0, "HW_IMS_IMPU"

    return-object v0

    .line 732
    :sswitch_10
    const-string/jumbo v0, "HW_IMS_ADD_CONFERENCE_MEMBER"

    return-object v0

    .line 735
    :sswitch_11
    const-string/jumbo v0, "HW_IMS_SET_CLIR"

    return-object v0

    .line 738
    :sswitch_12
    const-string/jumbo v0, "HW_IMS_SET_CALL_WAITING"

    return-object v0

    .line 741
    :sswitch_13
    const-string/jumbo v0, "RIL_REQUEST_HW_UICC_AUTH"

    return-object v0

    .line 742
    :sswitch_14
    const-string/jumbo v0, "RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP"

    return-object v0

    .line 743
    :sswitch_15
    const-string/jumbo v0, "RIL_REQUEST_HW_UICC_FILE_UPDATE"

    return-object v0

    .line 744
    :sswitch_16
    const-string/jumbo v0, "RIL_REQUEST_HW_GET_UICC_FILE"

    return-object v0

    .line 745
    :sswitch_17
    const-string/jumbo v0, "RIL_REQUEST_HW_UICC_KS_NAF"

    return-object v0

    .line 748
    :sswitch_18
    const-string/jumbo v0, "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG"

    return-object v0

    .line 750
    :sswitch_19
    const-string/jumbo v0, "HW_IMS_MODIFY_CALL_INITIATE"

    return-object v0

    .line 751
    :sswitch_1a
    const-string/jumbo v0, "HW_IMS_MODIFY_CALL_CONFIRM"

    return-object v0

    .line 753
    :sswitch_1b
    const-string/jumbo v0, "RIL_REQUEST_HW_RESTRAT_RILD"

    return-object v0

    .line 758
    :sswitch_1c
    const-string/jumbo v0, "HW_IMS_SET_DM_PCSCF"

    return-object v0

    .line 759
    :sswitch_1d
    const-string/jumbo v0, "HW_IMS_SET_DM_DYN"

    return-object v0

    .line 760
    :sswitch_1e
    const-string/jumbo v0, "HW_IMS_SET_DM_TIMER"

    return-object v0

    .line 761
    :sswitch_1f
    const-string/jumbo v0, "HW_IMS_SET_DM_SMS"

    return-object v0

    .line 762
    :sswitch_20
    const-string/jumbo v0, "HW_IMS_GET_DM_PCSCF"

    return-object v0

    .line 763
    :sswitch_21
    const-string/jumbo v0, "HW_IMS_GET_DM_TIMER"

    return-object v0

    .line 764
    :sswitch_22
    const-string/jumbo v0, "HW_IMS_GET_DM_DYN"

    return-object v0

    .line 765
    :sswitch_23
    const-string/jumbo v0, "HW_IMS_GET_DM_SMS"

    return-object v0

    .line 766
    :sswitch_24
    const-string/jumbo v0, "HW_IMS_GET_DM_USER"

    return-object v0

    .line 769
    :sswitch_25
    const-string/jumbo v0, "HW_SET_WIFI_EMERGENCY_AID"

    return-object v0

    .line 772
    :sswitch_26
    const-string/jumbo v0, "RIL_REQUEST_HW_IMS_BATTERY_STATUS"

    return-object v0

    .line 775
    :sswitch_27
    const-string/jumbo v0, "RIL_REQUEST_HW_SET_IMSVT_CAPABILITY"

    return-object v0

    .line 777
    :sswitch_28
    const-string/jumbo v0, "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 709
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_c
        0x10 -> :sswitch_e
        0x11 -> :sswitch_7
        0x18 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x35 -> :sswitch_d
        0x48 -> :sswitch_28
        0x70 -> :sswitch_0
        0x7d5 -> :sswitch_1b
        0x7fb -> :sswitch_1
        0x7fc -> :sswitch_2
        0x806 -> :sswitch_8
        0x815 -> :sswitch_f
        0x81c -> :sswitch_10
        0x81e -> :sswitch_11
        0x81f -> :sswitch_12
        0x821 -> :sswitch_13
        0x822 -> :sswitch_14
        0x823 -> :sswitch_15
        0x824 -> :sswitch_16
        0x825 -> :sswitch_17
        0x831 -> :sswitch_19
        0x832 -> :sswitch_1a
        0x854 -> :sswitch_18
        0x85a -> :sswitch_1c
        0x85b -> :sswitch_1d
        0x85c -> :sswitch_1e
        0x85d -> :sswitch_1f
        0x85e -> :sswitch_20
        0x85f -> :sswitch_21
        0x860 -> :sswitch_22
        0x861 -> :sswitch_23
        0x862 -> :sswitch_24
        0x863 -> :sswitch_25
        0x865 -> :sswitch_26
        0x866 -> :sswitch_27
        0x867 -> :sswitch_6
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/V1_0/IRadio;

    .line 524
    invoke-static {}, Lcom/huawei/ims/ImsRILRequest;->resetSerial()V

    .line 525
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsRIL;->clearRequestList(IZ)V

    .line 526
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .prologue
    .line 784
    sparse-switch p0, :sswitch_data_0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<unknown response> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 785
    :sswitch_0
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 786
    :sswitch_1
    const-string/jumbo v0, "UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 787
    :sswitch_2
    const-string/jumbo v0, "UNSOL_HW_IMS_CALL_RING"

    return-object v0

    .line 788
    :sswitch_3
    const-string/jumbo v0, "UNSOL_HW_IMS_RINGBACK_TONE"

    return-object v0

    .line 789
    :sswitch_4
    const-string/jumbo v0, "UNSOL_HW_IMS_VOICE_BAND_INFO"

    return-object v0

    .line 791
    :sswitch_5
    const-string/jumbo v0, "RIL_UNSOL_HW_LTE_PDCP_INFO"

    return-object v0

    .line 792
    :sswitch_6
    const-string/jumbo v0, "RIL_UNSOL_HW_LTE_RRC_INFO"

    return-object v0

    .line 795
    :sswitch_7
    const-string/jumbo v0, "UNSOL_HW_IMS_SRV_STATUS_UPDATE"

    return-object v0

    .line 798
    :sswitch_8
    const-string/jumbo v0, "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 800
    :sswitch_9
    const-string/jumbo v0, "UNSOL_HW_IMS_RESPONSE_HANDOVER"

    return-object v0

    .line 801
    :sswitch_a
    const-string/jumbo v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_IND"

    return-object v0

    .line 802
    :sswitch_b
    const-string/jumbo v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE"

    return-object v0

    .line 804
    :sswitch_c
    const-string/jumbo v0, "UNSOL_HW_IMS_MT_STATUS_REPORT"

    return-object v0

    .line 807
    :sswitch_d
    const-string/jumbo v0, "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY"

    return-object v0

    .line 811
    :sswitch_e
    const-string/jumbo v0, "RIL_UNSOL_HW_IMS_DMCN"

    return-object v0

    .line 815
    :sswitch_f
    const-string/jumbo v0, "RIL_UNSOL_HW_IMS_HOLD_TONE_IND"

    return-object v0

    .line 784
    :sswitch_data_0
    .sparse-switch
        0x40d -> :sswitch_0
        0xbc3 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbc5 -> :sswitch_3
        0xbc6 -> :sswitch_9
        0xbc7 -> :sswitch_7
        0xbca -> :sswitch_8
        0xbcb -> :sswitch_4
        0xbd5 -> :sswitch_a
        0xbd6 -> :sswitch_b
        0xbdc -> :sswitch_c
        0xbde -> :sswitch_d
        0xbe5 -> :sswitch_5
        0xbe6 -> :sswitch_6
        0xbec -> :sswitch_e
        0xbee -> :sswitch_f
    .end sparse-switch
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 658
    if-nez p2, :cond_0

    .line 659
    const-string/jumbo v9, ""

    return-object v9

    .line 664
    :cond_0
    instance-of v9, p2, [I

    if-eqz v9, :cond_2

    move-object v4, p2

    .line 665
    check-cast v4, [I

    .line 666
    .local v4, "intArray":[I
    array-length v5, v4

    .line 667
    .local v5, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "{"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .local v7, "sb":Ljava/lang/StringBuilder;
    if-lez v5, :cond_1

    .line 669
    const/4 v2, 0x0

    .line 670
    .local v2, "i":I
    const/4 v2, 0x1

    aget v9, v4, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v3, v2

    .line 671
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 672
    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v10, v4, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 675
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 701
    .end local v4    # "intArray":[I
    .end local v5    # "length":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .local v6, "s":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 677
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    instance-of v9, p2, [Ljava/lang/String;

    if-eqz v9, :cond_4

    move-object v8, p2

    .line 678
    check-cast v8, [Ljava/lang/String;

    .line 679
    .local v8, "strings":[Ljava/lang/String;
    array-length v5, v8

    .line 680
    .restart local v5    # "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "{"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    if-lez v5, :cond_3

    .line 682
    const/4 v2, 0x0

    .line 683
    .restart local v2    # "i":I
    const/4 v2, 0x1

    aget-object v9, v8, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    .line 684
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 685
    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v10, v8, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 688
    .end local v3    # "i":I
    :cond_3
    const-string/jumbo v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 690
    .end local v5    # "length":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v9, 0x7fc

    if-ne p1, v9, :cond_6

    move-object v1, p2

    .line 691
    check-cast v1, Ljava/util/ArrayList;

    .line 692
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    .local v0, "callListSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 695
    const-string/jumbo v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 697
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 699
    .end local v0    # "callListSize":I
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v2    # "i":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendAck()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1924
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1923
    const/16 v4, 0x320

    invoke-static {v4, v5, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1926
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1927
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1929
    :try_start_0
    invoke-interface {v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_0
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1938
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 1932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAck occues exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1935
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1657
    return-void
.end method

.method public acceptCall(Landroid/os/Message;I)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v4, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v5

    const-string/jumbo v6, "AP_FLOW_SUC"

    const/4 v7, 0x2

    .line 953
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 952
    const/16 v4, 0x806

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 955
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 956
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 957
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 958
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 960
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p2}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->acceptImsCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "acceptCall"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 971
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1771
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1766
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1761
    return-void
.end method

.method public addToConference(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1232
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x81c

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1237
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1238
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1239
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1240
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1245
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->addImsConfMember(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "addToConference"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2050
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1608
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1595
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1599
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2230
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2224
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1214
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1213
    const/16 v4, 0x10

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1216
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1219
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1220
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1222
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "conference"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1748
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1711
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1712
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1708
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1620
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1625
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lcom/huawei/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dial address= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v8}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 904
    const-string/jumbo v5, " clirMode= "

    .line 903
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 905
    const-string/jumbo v5, " callDetails= "

    .line 903
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 910
    const-string/jumbo v5, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v6

    const-string/jumbo v7, "AP_FLOW_SUC"

    .line 914
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x7fb

    invoke-static {v5, p4, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 916
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;-><init>()V

    .line 917
    .local v0, "dialInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    if-eqz p1, :cond_2

    .end local p1    # "address":Ljava/lang/String;
    :goto_0
    iput-object p1, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->address:Ljava/lang/String;

    .line 918
    iput p2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->clir:I

    .line 919
    if-eqz p3, :cond_0

    .line 920
    iget-object v4, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v5, p3, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    .line 921
    iget-object v4, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v5, p3, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    .line 923
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, p4}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 925
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_1

    .line 926
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 931
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v0}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->imsDial(ILvendor/huawei/hardware/radio/V1_0/RILImsDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :cond_1
    :goto_1
    return-void

    .line 917
    .end local v2    # "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    .restart local p1    # "address":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    .line 932
    .end local p1    # "address":Ljava/lang/String;
    .restart local v2    # "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "dial"

    invoke-direct {p0, v4, v1, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 877
    const-string/jumbo v3, "ImsRIL:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4

    .line 880
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mWakeLock="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 885
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 888
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 890
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRILRequest;

    .line 891
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    monitor-exit v4

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    return-void

    .line 884
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2197
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2199
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1256
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x48

    .line 1255
    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1257
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1259
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1260
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1262
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "explicitCallTransfer"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2768
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2023
    return-void
.end method

.method public getBalongSim(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2783
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2784
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2042
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2154
    return-void
.end method

.method public getCHRReportPhoneId()I
    .locals 3

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, "phoneid":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1074
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCHRReportPhoneId phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1075
    return v0

    .line 1072
    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1784
    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1786
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2181
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2182
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2132
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2133
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1018
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1017
    const/16 v4, 0x7fc

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1019
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1021
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1022
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1024
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getCurrentImsCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getCurrentCalls"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDMDYN(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2959
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2958
    const/16 v4, 0x860

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2960
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2961
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2962
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2963
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2965
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getDmDynamicPram(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getDMDYN"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDMPCSCF(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2929
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2928
    const/16 v4, 0x85e

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2930
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2931
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2932
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2933
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2935
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getDmPcscf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2940
    :cond_0
    :goto_0
    return-void

    .line 2936
    :catch_0
    move-exception v0

    .line 2937
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getDMPCSCF"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDMSMS(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2974
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2973
    const/16 v4, 0x861

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2975
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2976
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2977
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2978
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2980
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getSmsPsi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2985
    :cond_0
    :goto_0
    return-void

    .line 2981
    :catch_0
    move-exception v0

    .line 2982
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getDMSMS"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDMTIMER(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2944
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2943
    const/16 v4, 0x85f

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2945
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2946
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2947
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2948
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2950
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getDmTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    :cond_0
    :goto_0
    return-void

    .line 2951
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getDMTIMER"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDMUSER(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2989
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2988
    const/16 v4, 0x862

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2990
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2991
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2992
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2993
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2995
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getDmUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2996
    :catch_0
    move-exception v0

    .line 2997
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getDMUSER"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1616
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1677
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2150
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2137
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2825
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1637
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1641
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1629
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1633
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1575
    return-void
.end method

.method public getImsImpu(ILandroid/os/Message;)V
    .locals 5
    .param p1, "source"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1050
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x815

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1052
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1053
    const-string/jumbo v4, " "

    .line 1052
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1055
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1056
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1058
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getImsImpu(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getImsImpu"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1033
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1032
    const/16 v4, 0x70

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1034
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1036
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1037
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1039
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getImsRegistrationState"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 998
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 997
    const/16 v4, 0x867

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1001
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1004
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1005
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1008
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getLastImsCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getLastCallFailCause"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1661
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2277
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2278
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2744
    const/4 v0, 0x0

    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3029
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1665
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2108
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2019
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1681
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2282
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2283
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2104
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1649
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1744
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1669
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2115
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2116
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2239
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2240
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1673
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2096
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hangupConnection: ImsIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 978
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 977
    const/16 v4, 0xc

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 980
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 983
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 984
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 985
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 987
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "hangupConnection"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1177
    const/16 v4, 0xe

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1180
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1183
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1184
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1186
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1196
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1195
    const/16 v4, 0xd

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1198
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1200
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1201
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1202
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1204
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2733
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2815
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 2727
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2737
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2738
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1776
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1781
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2730
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;BLandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # B
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2812
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2809
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 2823
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 2820
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2057
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2058
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2062
    return-void
.end method

.method public isSupportCnap()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3223
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 3224
    const-string/jumbo v4, "carrier_config"

    .line 3223
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3225
    .local v1, "manager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_0

    .line 3226
    return v5

    .line 3229
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 3230
    .local v2, "subId":I
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3231
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-nez v0, :cond_1

    .line 3232
    return v5

    .line 3235
    :cond_1
    const-string/jumbo v3, "suppport_cnap_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public isSupportVideoRingTones()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3240
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 3241
    const-string/jumbo v4, "carrier_config"

    .line 3240
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3242
    .local v1, "manager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_0

    .line 3243
    return v5

    .line 3246
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v2

    .line 3247
    .local v2, "subId":I
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3249
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "ims_video_ring"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3250
    const-string/jumbo v3, "ims_video_ring"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 3252
    :cond_1
    return v5
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .prologue
    .line 845
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 848
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Unimplemented method. Stack trace: "

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifyCallConfirm callModify = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1113
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x832

    invoke-static {v5, p1, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1115
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1116
    const-string/jumbo v5, " "

    .line 1115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1117
    new-instance v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 1118
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    iget v4, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iput v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    .line 1119
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    .line 1120
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    .line 1121
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    .line 1122
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    .line 1123
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 1124
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 1125
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1130
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "modifyCallConfirm"

    invoke-direct {p0, v4, v0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifyCallInitiate callModify = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1087
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x831

    invoke-static {v5, p1, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1089
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1090
    const-string/jumbo v5, " "

    .line 1089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1091
    new-instance v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 1092
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    iget v4, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iput v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    .line 1093
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    .line 1094
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    .line 1095
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    .line 1096
    iget-object v4, v1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v5, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    .line 1097
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 1098
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 1099
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1104
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "modifyCallInitiate"

    invoke-direct {p0, v4, v0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1731
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1732
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2834
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2828
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2831
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2837
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .prologue
    .line 1910
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1911
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->sendAck()V

    .line 1912
    const-string/jumbo v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1916
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 3
    .param p1, "serial"    # I

    .prologue
    .line 1942
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1943
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsRILRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    monitor-exit v2

    .line 1945
    if-nez v0, :cond_0

    .line 1946
    const-string/jumbo v1, "processRequestAck: Unexpected solicited ack response! "

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1952
    :goto_0
    return-void

    .line 1942
    .end local v0    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1949
    .restart local v0    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rr.serialString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Ack < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;
    .locals 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    const/4 v5, 0x0

    .line 1840
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 1841
    .local v3, "serial":I
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1842
    .local v0, "error":I
    iget v4, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 1844
    .local v4, "type":I
    const/4 v1, 0x0

    .line 1847
    .local v1, "ret":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1848
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-nez v2, :cond_0

    .line 1849
    return-object v5

    .line 1854
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Response received for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1857
    iget v6, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v6}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1856
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1857
    const-string/jumbo v6, " Sending ack to ril.cpp"

    .line 1856
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1866
    :cond_1
    iget v5, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1872
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->releaseWakeLockIfDone()V

    .line 1873
    return-object v2
.end method

.method processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1884
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_3

    .line 1886
    iget v0, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    const/16 v1, 0x815

    if-ne v1, v0, :cond_2

    .line 1887
    const-string/jumbo v0, "RILJ_IMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1888
    const-string/jumbo v2, " "

    .line 1887
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1888
    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-direct {p0, v2, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1887
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :goto_0
    if-eqz p1, :cond_1

    .line 1902
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1905
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1907
    :cond_1
    return-void

    .line 1890
    :cond_2
    const-string/jumbo v0, "RILJ_IMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1891
    const-string/jumbo v2, " "

    .line 1890
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1891
    iget v2, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-direct {p0, v2, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1890
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1896
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1897
    const-string/jumbo v1, " error "

    .line 1896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1897
    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1899
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2078
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2079
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2036
    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2038
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2033
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1810
    return-void
.end method

.method public queryCardType(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2793
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2794
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2158
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2251
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2252
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2258
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2170
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2640
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2641
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2326
    return-void
.end method

.method public registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2857
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2858
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2859
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 438
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 440
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2591
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2666
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2697
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2687
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2581
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2707
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2708
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 349
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 351
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2487
    return-void
.end method

.method public registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 389
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 391
    return-void
.end method

.method public registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 399
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 401
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 446
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 448
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2374
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2375
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2376
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2362
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2363
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2365
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2631
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2848
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2849
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2850
    return-void
.end method

.method public registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 430
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 432
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2335
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2336
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2611
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2346
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2316
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3052
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3053
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3054
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2295
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2621
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2676
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2718
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 455
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 456
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 457
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2600
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2601
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 358
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 360
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2387
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2650
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2651
    return-void
.end method

.method public registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 370
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 372
    return-void
.end method

.method public registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 379
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 381
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 422
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 424
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2304
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2305
    return-void
.end method

.method public registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 410
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 412
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1272
    const/16 v3, 0x11

    .line 1271
    invoke-static {v3, p1}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1274
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1275
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1276
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1277
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1282
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "rejectCall"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1728
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2124
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2128
    return-void
.end method

.method public requestGetLTEInfo(IILandroid/os/Message;)V
    .locals 5
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1500
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x854

    invoke-static {v4, p3, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1502
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1503
    const-string/jumbo v4, "open="

    .line 1502
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1503
    const-string/jumbo v4, "threshold="

    .line 1502
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1505
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1506
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1508
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1517
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setVtLlteQualityRptCfg(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "requestGetLTEInfo"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestGetUiccFile(ILandroid/os/Message;)V
    .locals 5
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1459
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x824

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1461
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1462
    const-string/jumbo v4, ", fileid="

    .line 1461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1464
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1465
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1470
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->getUiccFile(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "requestGetUiccFile"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2806
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2234
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2235
    return-void
.end method

.method public requestSetImsVtCapability(IILandroid/os/Message;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "enabled"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1527
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x866

    invoke-static {v4, p3, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1529
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1530
    const-string/jumbo v4, "type="

    .line 1529
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1530
    const-string/jumbo v4, "open="

    .line 1529
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1533
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1535
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1540
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setImsvtCapability(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "requestSetImsVtCapability"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestUiccAuth([B[BLandroid/os/Message;)V
    .locals 7
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    .line 1367
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x821

    invoke-static {v5, p3, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1370
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1371
    const-string/jumbo v5, "["

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1371
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1371
    const-string/jumbo v5, "]"

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    const-string/jumbo v5, "["

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    const-string/jumbo v5, "]"

    .line 1370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 1375
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 1376
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1380
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    move-result-object v1

    .line 1382
    .local v1, "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->uiccAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    .end local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :cond_0
    :goto_0
    return-void

    .line 1383
    .restart local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "requestUiccAuth"

    invoke-direct {p0, v4, v0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestUiccFileUpdate(I[BLandroid/os/Message;)V
    .locals 6
    .param p1, "file_id"    # I
    .param p2, "data"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1428
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x823

    invoke-static {v5, p3, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1430
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1431
    const-string/jumbo v5, ", fileid="

    .line 1430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1431
    const-string/jumbo v5, "["

    .line 1430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1431
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1431
    const-string/jumbo v5, "]"

    .line 1430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 1433
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 1434
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;

    move-result-object v1

    .line 1440
    .local v1, "msg":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->updateUiccFile(ILvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    .end local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    :cond_0
    :goto_0
    return-void

    .line 1441
    .restart local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "requestUiccFileUpdate"

    invoke-direct {p0, v4, v0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestUiccGbaBootstrap([B[BLandroid/os/Message;)V
    .locals 6
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1408
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x822

    invoke-static {v5, p3, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1410
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    const-string/jumbo v5, "["

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    const-string/jumbo v5, "]"

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    const-string/jumbo v5, "["

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1411
    const-string/jumbo v5, "]"

    .line 1410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1412
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 1413
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 1414
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1418
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    move-result-object v1

    .line 1420
    .local v1, "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :try_start_0
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :cond_0
    :goto_0
    return-void

    .line 1421
    .restart local v1    # "msg":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "requestUiccGbaBootstrap"

    invoke-direct {p0, v4, v0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public requestUiccKsNaf(ILandroid/os/Message;)V
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1478
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x825

    invoke-static {v3, p2, v2}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 1480
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1481
    const-string/jumbo v3, ", fileid="

    .line 1480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1482
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 1483
    .local v0, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_0

    .line 1484
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1494
    :cond_0
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2054
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1550
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x7d5

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1552
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1554
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1555
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1556
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1561
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->restartRILD(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    :goto_0
    return-void

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "restartRild"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0

    .line 1566
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 1567
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->release()V

    goto :goto_0
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1740
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2755
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2756
    return-void
.end method

.method public sendBatteryStatus(ILandroid/os/Message;)V
    .locals 5
    .param p1, "batterySattus"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3034
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3033
    const/16 v4, 0x865

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 3035
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3036
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 3037
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 3038
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3040
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->informBatteryStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3045
    :cond_0
    :goto_0
    return-void

    .line 3041
    :catch_0
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "sendBatteryStatus"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1686
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2177
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2178
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1694
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1984
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1985
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1291
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x18

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1293
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1294
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1295
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1296
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1301
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "sendDtmf"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2086
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2087
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2091
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1704
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1699
    return-void
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1082
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1690
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2798
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2802
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2082
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2083
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2046
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1653
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .param p2, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2772
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2773
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2075
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCLIR clirmode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1792
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1791
    const/16 v4, 0x81e

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1794
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1795
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1796
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1797
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1799
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setClir"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2028
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallWaiting enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1818
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1817
    const/16 v4, 0x81f

    invoke-static {v4, p3, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1820
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1821
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1822
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1823
    if-eqz v1, :cond_0

    .line 1824
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1826
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setImsCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    :cond_0
    :goto_0
    return-void

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setCallWaiting"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2193
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2194
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2185
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2186
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2190
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2162
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2166
    return-void
.end method

.method public setDMDYN(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2884
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2883
    const/16 v4, 0x85b

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2885
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2886
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2887
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2888
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2890
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setDmDynamicPram(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2895
    :cond_0
    :goto_0
    return-void

    .line 2891
    :catch_0
    move-exception v0

    .line 2892
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setDMDYN"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2869
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2868
    const/16 v4, 0x85a

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2870
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2871
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2872
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2873
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2875
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setDmPcscf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2880
    :cond_0
    :goto_0
    return-void

    .line 2876
    :catch_0
    move-exception v0

    .line 2877
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setDMPCSCF"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setDMSMS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2914
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2913
    const/16 v4, 0x85d    # 3.0E-42f

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2915
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2916
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2917
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2918
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2920
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setDmSmsPsi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2925
    :cond_0
    :goto_0
    return-void

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setDMSMS"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2899
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 2898
    const/16 v4, 0x85c

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 2900
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2901
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 2902
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 2903
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 2905
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setDmTimer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2910
    :cond_0
    :goto_0
    return-void

    .line 2906
    :catch_0
    move-exception v0

    .line 2907
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setDMTIMER"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1989
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1990
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2661
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2263
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2264
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2269
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2270
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2145
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2141
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # Ljava/lang/String;

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2067
    return-void
.end method

.method public setInitialAttachApn(Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2761
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2762
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2787
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2788
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2111
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2112
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1349
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x35

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1351
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1352
    const-string/jumbo v4, " "

    .line 1351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1353
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1354
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1355
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1357
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setMute"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2010
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2014
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2015
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2571
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2560
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2561
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2550
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2551
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2540
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2541
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2496
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2497
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2476
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2477
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2446
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2447
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2406
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2407
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2417
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2397
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2517
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2467
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2426
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2427
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2436
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2437
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2527
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    .line 2529
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2456
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2457
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 873
    iput p1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 874
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2100
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1645
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1752
    return-void
.end method

.method public setSimCardPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "powerUp"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1995
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2119
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2120
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1756
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2174
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2245
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2246
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2000
    return-void
.end method

.method public setWifiEmergencyAid(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3004
    const-string/jumbo v4, "[Wifi-Call] setWifiEmergencyAid"

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3006
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3005
    const/16 v5, 0x863

    invoke-static {v5, p2, v4}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 3007
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3008
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 3009
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_1

    .line 3010
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3012
    :try_start_0
    const-string/jumbo v0, ""

    .line 3013
    .local v0, "data":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3014
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "att_address_id_value"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3016
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Wifi-Call] setWifiEmergencyAid data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3017
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->setWifiEmergencyAid(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3022
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3018
    :catch_0
    move-exception v1

    .line 3019
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "setWifiEmergencyAid"

    invoke-direct {p0, v4, v1, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public setupDataCall(ILcom/android/internal/telephony/dataconnection/DataProfile;ZZLandroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # I
    .param p2, "dataProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 2006
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2007
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1723
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1724
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1310
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x31

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1312
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1314
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1315
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1320
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "startDtmf"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1330
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x32

    .line 1329
    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1332
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1334
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1335
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1340
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "stopDtmf"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1611
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1612
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1579
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1587
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2213
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2214
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2204
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1583
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1591
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2219
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2208
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2209
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1603
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1735
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1736
    return-void
.end method

.method public switchBalongSim(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2778
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2779
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1140
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1139
    const/16 v4, 0xf

    invoke-static {v4, p1, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1142
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1145
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1146
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1148
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V
    .locals 5
    .param p1, "calltype"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1160
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1159
    const/16 v4, 0xf

    invoke-static {v4, p2, v3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 1161
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v4}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 1163
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/V1_0/IRadio;
    if-eqz v1, :cond_0

    .line 1164
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1166
    :try_start_0
    iget v3, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio;->switchImsWaitingOrHoldingAndActiveWithType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "switchWaitingOrHoldingAndActiveForIms"

    invoke-direct {p0, v3, v0, v2}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    goto :goto_0
.end method

.method public testingEmergencyCall()V
    .locals 0

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2750
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 2507
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2508
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2509
    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    .line 2511
    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2576
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2566
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2555
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2556
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2545
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2546
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2482
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2451
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2452
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2412
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2422
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2401
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2402
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2521
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2522
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2471
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2472
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2431
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2432
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2442
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2536
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2462
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2330
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2331
    return-void
.end method

.method public unregisterForCallModifyResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2863
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 443
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2595
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2596
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2671
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2701
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2702
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2692
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2585
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2586
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2712
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2713
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 355
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2492
    return-void
.end method

.method public unregisterForImsCSRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 395
    return-void
.end method

.method public unregisterForImsDMCN(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 404
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2381
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2370
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2636
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2854
    return-void
.end method

.method public unregisterForMtStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 435
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2341
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2615
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2616
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2350
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2351
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2320
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2321
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3058
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2300
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2625
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2626
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2681
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2723
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 460
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2605
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2606
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 364
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2392
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2655
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2656
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2646
    return-void
.end method

.method public unregisterForUnsolLTE_PDCPInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 376
    return-void
.end method

.method public unregisterForUnsolLTE_RRCInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 385
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 427
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2309
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2310
    return-void
.end method

.method public unregisterForVtFlowInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 415
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2502
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1720
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1716
    return-void
.end method
