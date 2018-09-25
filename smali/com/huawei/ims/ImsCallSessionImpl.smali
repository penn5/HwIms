.class public Lcom/huawei/ims/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final synthetic -com-huawei-ims-DriverCallIms$StateSwitchesValues:[I = null

.field private static final CALL_COMPLETED_ELSEWHERE:Ljava/lang/String; = "Call completed elsewhere"

.field private static final CODE_HOLD_FOR_IMS:I = 0x7d1

.field private static final CODE_RESUME_FOR_IMS:I = 0x7d2

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.ims.ImsCallSessionImpl"

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CLOSE_SESSION:I = 0xc

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x10

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_MUTE:I = 0xd

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESTART_RILD:I = 0xf

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RIL_RECOVERY:I = 0xe

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field private static final IMS_HANDOVER_STATE_COMPLETE_FAIL:I = 0x2

.field private static final IMS_HANDOVER_STATE_COMPLETE_SUCCESS:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionImpl"

.field private static final MAX_END_CALL_DURATION:I = 0x88b8

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3


# instance fields
.field private isMtCall:Z

.field private mAcceptPending:Z

.field private mCallId:I

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mDc:Lcom/huawei/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lcom/huawei/ims/ImsCallModification;

.field private mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

.field protected mIsConfInProgress:Z

.field private mIsVtGloballyAllowed:Z

.field private mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mTracker:Lcom/huawei/ims/ImsServiceClassTracker;


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    return-object v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic -get3(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic -get6(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceClassTracker;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method private static synthetic -getcom-huawei-ims-DriverCallIms$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/ImsCallSessionImpl;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/ImsCallSessionImpl;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/ims/DriverCallIms$State;->values()[Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/huawei/ims/ImsCallSessionImpl;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/huawei/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic -set2(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->initCallLists()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionMerged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p3, "senderRxr"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lcom/huawei/ims/ImsServiceClassTracker;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 107
    iput-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 108
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 112
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 114
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 116
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 117
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 118
    iput v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 122
    new-instance v0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 128
    iput v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 133
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 140
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 143
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 147
    iput-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 148
    iput-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 150
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 172
    iput-object p3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 173
    invoke-virtual {p0, p2}, Lcom/huawei/ims/ImsCallSessionImpl;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 174
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 175
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 179
    iput-object p5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 181
    new-instance v0, Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsCallModification;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 184
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 186
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 190
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 192
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverCallIms;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V
    .locals 5
    .param p1, "call"    # Lcom/huawei/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lcom/huawei/ims/ImsRIL;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lcom/huawei/ims/ImsServiceClassTracker;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 107
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 108
    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 112
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, v3, v4}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 114
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, v3, v4}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 116
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 117
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 118
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 122
    new-instance v0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 128
    iput v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 133
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 140
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 143
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 147
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 148
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 150
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 198
    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 200
    new-instance v0, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lcom/huawei/ims/DriverCallIms;-><init>(Lcom/huawei/ims/DriverCallIms;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget v0, v0, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 205
    iput-object p4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    .line 206
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 209
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 211
    new-instance v0, Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsCallModification;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 214
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 216
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    .line 222
    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .prologue
    .line 2081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2082
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 2083
    :cond_0
    return-void

    .line 2086
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanRilRecovery()V
    .locals 2

    .prologue
    .line 1723
    const-string/jumbo v0, "cleanRilRecovery"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1725
    return-void
.end method

.method private doClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 934
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "doClose!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v3, :cond_3

    .line 941
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 943
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 948
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 949
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 950
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 951
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 952
    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 953
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 954
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 955
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 956
    iput v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 960
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 961
    iput-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 966
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 968
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 969
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 972
    :cond_3
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "doClose end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1287
    if-nez p1, :cond_0

    .line 1288
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return-void

    .line 1291
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 1301
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v4, v4, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1302
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v4, v4, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1303
    const/4 v1, 0x0

    .line 1304
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1305
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1307
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v4, v4, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 1308
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v4, v4, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 1309
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v4, v4, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "keyAndValue":[Ljava/lang/String;
    aget-object v4, v2, v7

    if-eqz v4, :cond_2

    .line 1316
    aget-object v4, v2, v7

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1317
    aget-object v4, v2, v7

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1318
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    aget-object v1, v3, v8

    .line 1331
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CallDetails Extra key= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    const-string/jumbo v6, " value= "

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    aget-object v6, v2, v8

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    aget-object v5, v2, v8

    invoke-virtual {v4, v1, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v7

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1323
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Bad extra string from lower layers!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1327
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is null in CallDetails Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void

    .line 1337
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private extractProfileExtrasIntoCallDetails(Lcom/android/ims/ImsCallProfile;Lcom/huawei/ims/CallDetails;)V
    .locals 11
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "details"    # Lcom/huawei/ims/CallDetails;

    .prologue
    .line 1543
    iget-object v8, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v9, "OemCallExtras"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1544
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 1545
    const/4 v1, 0x0

    .line 1546
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 1547
    .local v3, "extras":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1548
    .local v4, "i":I
    const/4 v7, 0x0

    .line 1551
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v1    # "extraString":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .local v6, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1552
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    const-string/jumbo v7, ""

    .line 1554
    .local v7, "value":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "extraString":Ljava/lang/String;
    move-object v2, v1

    .line 1556
    .local v2, "extraStringForOutput":Ljava/lang/String;
    const-string/jumbo v8, "numbermarkinfo_number"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1557
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1558
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1560
    :cond_0
    const-string/jumbo v8, "ImsCallSessionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Packing extra string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    aput-object v1, v3, v4

    .line 1562
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1553
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extraStringForOutput":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1564
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v3}, Lcom/huawei/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 1568
    .end local v3    # "extras":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 1566
    :cond_3
    const-string/jumbo v8, "ImsCallSessionImpl"

    const-string/jumbo v9, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getRestrictCause(I[Lcom/huawei/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lcom/huawei/ims/ServiceStatus;

    .prologue
    const/4 v3, 0x0

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "cause":I
    if-eqz p2, :cond_0

    .line 384
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p2, v2

    .line 385
    .local v1, "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/huawei/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_1

    iget-object v5, v1, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_1

    .line 386
    iget-object v5, v1, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 387
    iget-object v2, v1, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    aget-object v2, v2, v3

    iget v0, v2, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 392
    .end local v1    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_0
    return v0

    .line 384
    .restart local v1    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initCallLists()V
    .locals 2

    .prologue
    .line 1979
    const-string/jumbo v1, "initCallLists"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    .local v0, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1983
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1985
    :cond_0
    return-void
.end method

.method private isHandleHandoveSuccess(I)Z
    .locals 1
    .param p1, "hoType"    # I

    .prologue
    const/4 v0, 0x1

    .line 673
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImsCallSessionAlive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 927
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 928
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 929
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    if-eqz v1, :cond_0

    .line 930
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 927
    :cond_0
    return v0
.end method

.method private isSessionValid()Z
    .locals 3

    .prologue
    .line 915
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 916
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 917
    const-string/jumbo v1, "ImsCallSessionImpl"

    const-string/jumbo v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    return v0

    .line 915
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isValid":Z
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2073
    const-string/jumbo v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2077
    const-string/jumbo v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, "audioQuality":I
    if-nez p0, :cond_0

    .line 1347
    const/4 v1, 0x0

    return v1

    .line 1349
    :cond_0
    const-string/jumbo v1, "QCELP13K"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    const/4 v0, 0x3

    .line 1384
    :goto_0
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return v0

    .line 1349
    :cond_1
    const-string/jumbo v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1354
    const/4 v0, 0x4

    .line 1355
    goto :goto_0

    .line 1349
    :cond_2
    const-string/jumbo v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1357
    const/4 v0, 0x5

    .line 1358
    goto :goto_0

    .line 1349
    :cond_3
    const-string/jumbo v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1360
    const/4 v0, 0x6

    .line 1361
    goto :goto_0

    .line 1349
    :cond_4
    const-string/jumbo v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1363
    const/4 v0, 0x7

    .line 1364
    goto :goto_0

    .line 1349
    :cond_5
    const-string/jumbo v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1366
    const/4 v0, 0x1

    .line 1367
    goto :goto_0

    .line 1349
    :cond_6
    const-string/jumbo v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1369
    const/4 v0, 0x2

    .line 1370
    goto :goto_0

    .line 1349
    :cond_7
    const-string/jumbo v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1372
    const/16 v0, 0x8

    .line 1373
    goto :goto_0

    .line 1349
    :cond_8
    const-string/jumbo v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1375
    const/16 v0, 0x9

    .line 1376
    goto :goto_0

    .line 1349
    :cond_9
    const-string/jumbo v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1378
    const/16 v0, 0xa

    .line 1379
    goto :goto_0

    .line 1381
    :cond_a
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 4
    .param p1, "callType"    # I

    .prologue
    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1415
    :pswitch_0
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported callType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :goto_0
    return v0

    .line 1397
    :pswitch_1
    const/16 v0, 0xa

    .line 1398
    goto :goto_0

    .line 1400
    :pswitch_2
    const/4 v0, 0x0

    .line 1401
    goto :goto_0

    .line 1403
    :pswitch_3
    const/4 v0, 0x3

    .line 1404
    goto :goto_0

    .line 1406
    :pswitch_4
    const/4 v0, 0x1

    .line 1407
    goto :goto_0

    .line 1409
    :pswitch_5
    const/4 v0, 0x2

    .line 1410
    goto :goto_0

    .line 1412
    :pswitch_6
    const/4 v0, 0x4

    .line 1413
    goto :goto_0

    .line 1395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private notifyCallSessionHold(Z)V
    .locals 4
    .param p1, "mtHold"    # Z

    .prologue
    .line 312
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 314
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 318
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 319
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 320
    .local v1, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionMerged()V
    .locals 4

    .prologue
    .line 351
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 353
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 357
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 358
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 359
    .local v1, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionMerged()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionResumed(Z)V
    .locals 4
    .param p1, "mtResume"    # Z

    .prologue
    .line 325
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 327
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 331
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 332
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 333
    .local v1, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionStarted()V
    .locals 4

    .prologue
    .line 338
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 340
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 344
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 345
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 346
    .local v1, "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "listener":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifySessionClosed()V
    .locals 4

    .prologue
    .line 289
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 291
    .local v2, "mListenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 292
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 293
    .local v1, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 4

    .prologue
    .line 280
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 282
    .local v2, "mListenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 283
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 284
    .local v1, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V
    .locals 5
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v4, 0x4

    .line 580
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    new-instance v1, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 582
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 583
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, v2, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 584
    const-string/jumbo v3, "Codec"

    .line 583
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 585
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v4, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 591
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v4, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 593
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v0, v0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    new-instance v1, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 595
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 596
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v0, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v4, :cond_3

    .line 597
    const/4 v0, 0x3

    .line 598
    :goto_1
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, v2, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 595
    invoke-direct {p0, v0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getRestrictCause(I[Lcom/huawei/ims/ServiceStatus;)I

    move-result v0

    iput v0, v1, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 601
    :cond_1
    return-void

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 597
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private transHandoverErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method private triggerRilRecoveryDelayed()V
    .locals 4

    .prologue
    const/16 v2, 0xe

    .line 1711
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1712
    const-string/jumbo v0, "Call Session terminated. Don\'t trigger ril recovery."

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1713
    return-void

    .line 1716
    :cond_0
    const-string/jumbo v0, "triggerRilRecoveryDelayed"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1720
    :cond_1
    return-void
.end method

.method private updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1426
    if-nez p1, :cond_0

    .line 1427
    const-string/jumbo v0, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1428
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v0, :cond_1

    .line 1432
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v1, "oi"

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v1, "cna"

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v1, "oir"

    .line 1438
    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1437
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1439
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v1, "cnap"

    .line 1440
    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1439
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1442
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v1, "remote_vt_capability"

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1445
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    packed-switch v0, :pswitch_data_0

    .line 1481
    :goto_0
    :pswitch_0
    return-void

    .line 1447
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v4, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1448
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v3, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1452
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v5, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1453
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v3, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1457
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1458
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1459
    const/4 v1, 0x3

    .line 1458
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1462
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1463
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v5, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1467
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1468
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v4, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1473
    :pswitch_6
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1474
    const/4 v1, 0x0

    .line 1473
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 1445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalDc(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 403
    new-instance v1, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lcom/huawei/ims/DriverCallIms;-><init>(Lcom/huawei/ims/DriverCallIms;)V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 404
    const/4 v0, 0x1

    .line 408
    .end local v0    # "hasChanged":Z
    :goto_0
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocalDc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v0

    .line 406
    .restart local v0    # "hasChanged":Z
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/DriverCallIms;->update(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v0

    .local v0, "hasChanged":Z
    goto :goto_0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1615
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1617
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    if-eqz v0, :cond_1

    .line 1620
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "this call is being accepted..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void

    .line 1623
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 1627
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1628
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 1627
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->acceptCall(Landroid/os/Message;I)V

    .line 1629
    return-void
.end method

.method public final addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 230
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 232
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    if-nez p1, :cond_1

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 982
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 984
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Close!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 988
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .prologue
    .line 1637
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1639
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1640
    :cond_0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 1836
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1838
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1840
    :cond_0
    return-void
.end method

.method public getCall()Lcom/huawei/ims/DriverCallIms;
    .locals 1

    .prologue
    .line 1103
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1105
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    return-object v0
.end method

.method public getCallDetails()Lcom/huawei/ims/CallDetails;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1967
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1969
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v0, :cond_0

    .line 1970
    return-object v1

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    return-object v0
.end method

.method public getCallDomain()I
    .locals 2

    .prologue
    .line 1136
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1138
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    return v1

    .line 1140
    :cond_0
    const/4 v0, 0x3

    .line 1141
    .local v0, "callDomain":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 1144
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 999
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1037
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 2

    .prologue
    .line 1153
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1155
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1157
    :cond_0
    const/4 v0, 0x0

    .line 1158
    .local v0, "callSubstate":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 1161
    :cond_1
    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1179
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverCallState()Lcom/huawei/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 1184
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1186
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method

.method public getImsCallModification()Lcom/huawei/ims/ImsCallModification;
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 367
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 274
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 3

    .prologue
    .line 1122
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1124
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    return v1

    .line 1126
    :cond_0
    const/16 v0, 0xa

    .line 1127
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-eqz v1, :cond_2

    .line 1128
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v1, v1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 1132
    :cond_1
    :goto_0
    return v0

    .line 1129
    :cond_2
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1130
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v1, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    goto :goto_0
.end method

.method getInternalState()Lcom/huawei/ims/DriverCallIms$State;
    .locals 3

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v1

    .line 1112
    :cond_0
    const/4 v0, 0x0

    .line 1113
    .local v0, "state":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_2

    .line 1114
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 1118
    .end local v0    # "state":Lcom/huawei/ims/DriverCallIms$State;
    :cond_1
    :goto_0
    return-object v0

    .line 1115
    .restart local v0    # "state":Lcom/huawei/ims/DriverCallIms$State;
    :cond_2
    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1116
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    .local v0, "state":Lcom/huawei/ims/DriverCallIms$State;
    goto :goto_0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1048
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1050
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1009
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1011
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1012
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    :cond_1
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1074
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1076
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 1080
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1083
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "ImsCallSessionImpl"

    const-string/jumbo v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 1061
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1063
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1096
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1098
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1099
    :cond_0
    iget v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1920
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1922
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 1923
    :cond_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 1927
    :cond_1
    return-object v1
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 641
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hoType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    const-string/jumbo v3, " targetTech: "

    .line 641
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 647
    .local v0, "reasonInfo":Landroid/telephony/ims/compat/ImsReasonInfo;
    new-instance v0, Landroid/telephony/ims/compat/ImsReasonInfo;

    .end local v0    # "reasonInfo":Landroid/telephony/ims/compat/ImsReasonInfo;
    invoke-direct {p0, p6}, Lcom/huawei/ims/ImsCallSessionImpl;->transHandoverErrorCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p7}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 648
    .local v0, "reasonInfo":Landroid/telephony/ims/compat/ImsReasonInfo;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v1, :cond_1

    .line 649
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isHandleHandoveSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p0, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/compat/ImsReasonInfo;)V

    .line 660
    :cond_1
    :goto_0
    return-void

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p0, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/compat/ImsReasonInfo;)V

    goto :goto_0
.end method

.method public handleOnHoldTone(Z)V
    .locals 3
    .param p1, "startOnHoldLocalTone"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHoldTone: startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v0, :cond_1

    return-void

    .line 2042
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2043
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2044
    const-string/jumbo v0, "onHoldTone: current call state is not active or holding, ignore"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2045
    return-void

    .line 2048
    :cond_2
    if-eqz p1, :cond_4

    .line 2049
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2050
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 2055
    :cond_3
    :goto_0
    return-void

    .line 2051
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v0, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2053
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1688
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1690
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1692
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupForegroundResumeBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1694
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1695
    return-void
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1699
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1701
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1703
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupWaitingOrBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1705
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1706
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1022
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1024
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0}, Lcom/huawei/ims/CallDetails;->hasMediaIdValid()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1736
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1738
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1740
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "hold requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1742
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 1851
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1853
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1855
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1856
    return-void
.end method

.method protected invokeCallResume(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 575
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "invokeCallResume"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 577
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1662
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1664
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1665
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isConfInProgress()Z
    .locals 1

    .prologue
    .line 1488
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1490
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1491
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 1213
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1215
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1217
    :cond_0
    const/4 v0, 0x0

    .line 1218
    .local v0, "isInCall":Z
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->-getcom-huawei-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v2, v2, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1232
    :goto_0
    :pswitch_0
    return v0

    .line 1225
    :pswitch_1
    const/4 v0, 0x1

    .line 1226
    goto :goto_0

    .line 1218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isMT()Z
    .locals 1

    .prologue
    .line 2090
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->isMtCall:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1197
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1199
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1201
    return v1

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1165
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1167
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    :cond_1
    return v0
.end method

.method public merge()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1798
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1800
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1802
    :cond_1
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1810
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 1811
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->conference(Landroid/os/Message;)V

    .line 1812
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 1
    .param p1, "confInfoBytes"    # [B

    .prologue
    .line 1945
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1947
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1948
    :cond_0
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 623
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 625
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TTY mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_1
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyUnsolCallModify(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 298
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 300
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 304
    .local v2, "mListenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 305
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .line 306
    .local v1, "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v1, p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "l":Lcom/huawei/ims/ImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1768
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1770
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImsCallSessionImpl onTransact code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, "callType":I
    packed-switch p1, :pswitch_data_0

    .line 1784
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImsCallSessionImpl can not support the code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1774
    :pswitch_0
    const-string/jumbo v1, "com.huawei.ims.ImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1776
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    goto :goto_0

    .line 1779
    :pswitch_1
    const-string/jumbo v1, "com.huawei.ims.ImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1781
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    goto :goto_0

    .line 1772
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reject(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 1650
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1652
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1654
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1657
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1659
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 253
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 255
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    if-nez p1, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 3
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 1867
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1869
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1870
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1871
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    return-void
.end method

.method public reportNewConferenceCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 1272
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1274
    if-eqz p1, :cond_0

    .line 1275
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 1277
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 1279
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 1277
    invoke-virtual {v0, p0, p1, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1284
    :goto_0
    return-void

    .line 1281
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    .line 1282
    const-string/jumbo v1, "Null confCallSession! Not calling callSessionMergeStarted"

    .line 1281
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1753
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1755
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1757
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "resume requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1759
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1884
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1886
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->sendDtmf(CLandroid/os/Message;)V

    .line 1889
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1938
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1940
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1942
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 1244
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1246
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 1248
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1257
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1259
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setMute(ZLandroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public setNewSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 1498
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1500
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1505
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v5, 0x1

    .line 1518
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1520
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1522
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iput v4, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1523
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v4, p2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput-object v4, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1525
    iput v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 1526
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1530
    const-string/jumbo v3, "oir"

    invoke-virtual {p2, v3}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 1531
    .local v0, "clir":I
    const/4 v2, 0x3

    .line 1532
    .local v2, "domain":I
    new-instance v1, Lcom/huawei/ims/CallDetails;

    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    .line 1534
    const/4 v4, 0x0

    .line 1532
    invoke-direct {v1, v3, v2, v4}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1535
    .local v1, "details":Lcom/huawei/ims/CallDetails;
    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Lcom/android/ims/ImsCallProfile;Lcom/huawei/ims/CallDetails;)V

    .line 1537
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1538
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1537
    invoke-virtual {v3, p1, v0, v1, v4}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V

    .line 1539
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1583
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1586
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 1589
    :cond_1
    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1590
    iput v7, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 1591
    aget-object v3, p1, v6

    iput-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1595
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1596
    .local v1, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "isConferenceUri"

    .line 1597
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1596
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    invoke-static {v1}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    .line 1600
    .local v2, "mMoExtras":[Ljava/lang/String;
    new-instance v0, Lcom/huawei/ims/CallDetails;

    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    .line 1601
    const/4 v4, 0x3

    .line 1600
    invoke-direct {v0, v3, v4, v2}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1602
    .local v0, "details":Lcom/huawei/ims/CallDetails;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    aget-object v4, p1, v6

    .line 1603
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1602
    invoke-virtual {v3, v4, v6, v0, v5}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/CallDetails;Landroid/os/Message;)V

    .line 1604
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1900
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1902
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->startDtmf(CLandroid/os/Message;)V

    .line 1904
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1911
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1913
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->stopDtmf(Landroid/os/Message;)V

    .line 1915
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 1675
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1677
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1679
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "terminate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1682
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1684
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2067
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2069
    invoke-super {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2060
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    .line 2062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1823
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1825
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1826
    :cond_0
    return-void
.end method

.method public updateCall(Lcom/huawei/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string/jumbo v4, "updateCall, dcUpdate is null"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 419
    return-void

    .line 421
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 424
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCall for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    .line 430
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 434
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_2

    .line 435
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_2

    .line 436
    iput-boolean v7, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mAcceptPending:Z

    .line 440
    :cond_2
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v4, p1}, Lcom/huawei/ims/ImsCallModification;->update(Lcom/huawei/ims/DriverCallIms;)V

    .line 442
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->-getcom-huawei-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v5}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 565
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateLocalDc(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v1

    .line 566
    .local v1, "hasChanged":Z
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_14

    const/4 v2, 0x1

    .line 567
    .local v2, "isCallNotEnded":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call details updated. currentCallDetails= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v5, v5, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    const-string/jumbo v5, " to newCallDetails= "

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 570
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 572
    :cond_4
    return-void

    .line 428
    .end local v0    # "areStatesSame":Z
    .end local v1    # "hasChanged":Z
    .end local v2    # "isCallNotEnded":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "areStatesSame":Z
    goto :goto_0

    .line 444
    :pswitch_0
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v4, :cond_6

    .line 446
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Phantom call!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput v8, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 448
    iget v4, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 449
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_1

    .line 450
    :cond_6
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 451
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_9

    .line 454
    :cond_7
    iput v8, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 455
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v5, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 457
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 459
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 460
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionStarted()V

    .line 463
    :cond_8
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 452
    :cond_9
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 453
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 466
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_a

    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_b

    .line 467
    :cond_a
    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 466
    if-eqz v4, :cond_d

    .line 468
    :cond_b
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Call being resumed."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iput-boolean v7, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 471
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 472
    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 475
    :cond_c
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 478
    :cond_d
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v4, v4, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v5, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    if-eq v4, v5, :cond_e

    .line 479
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "call type changes, from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v6, v6, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v6, v6, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    iget-object v6, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v6, v6, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 485
    :cond_e
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Call resumed skipped, conf status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 490
    :pswitch_1
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_3

    .line 492
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Call being held."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v4, :cond_3

    .line 495
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 496
    invoke-direct {p0, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 499
    :cond_f
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 504
    :pswitch_2
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v4, :cond_3

    .line 505
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "MO Dialing call!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget v4, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 507
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 508
    new-instance v5, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v5}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 507
    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_1

    .line 513
    :pswitch_3
    const/4 v4, 0x2

    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 514
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-nez v4, :cond_10

    .line 515
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "MO Alerting call!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget v4, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    goto/16 :goto_1

    .line 521
    :cond_10
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v4, v4, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_3

    .line 523
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    .line 524
    new-instance v3, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 525
    .local v3, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-eqz v4, :cond_11

    .line 526
    iput v7, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 528
    :cond_11
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v4, p0, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_1

    .line 534
    .end local v3    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lcom/huawei/ims/DriverCallIms;)V

    goto/16 :goto_1

    .line 539
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->cleanRilRecovery()V

    .line 542
    const/16 v4, 0x8

    iput v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 544
    iget v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v4, :cond_13

    .line 545
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 559
    :cond_12
    :goto_3
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceClassTracker;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsServiceClassTracker;->onNotifyCallResumed()V

    .line 561
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_1

    .line 548
    :cond_13
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v4, :cond_12

    .line 549
    iget-object v4, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 550
    new-instance v5, Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v6, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v5, v6, v7}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>(II)V

    .line 549
    invoke-virtual {v4, p0, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/compat/ImsReasonInfo;)V

    goto :goto_3

    .line 566
    .restart local v1    # "hasChanged":Z
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "isCallNotEnded":Z
    goto/16 :goto_2

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public updateConfSession(Lcom/huawei/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 604
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 606
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 611
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mState:I

    .line 612
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget v0, v0, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallId:I

    .line 614
    :cond_1
    return-void
.end method

.method updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;Z)V
    .locals 3
    .param p1, "suppSvcNotification"    # Lcom/android/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1999
    const-string/jumbo v1, " startOnHoldLocalTone = "

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2001
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2005
    :cond_0
    iget v0, p1, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 2033
    :cond_1
    :goto_0
    return-void

    .line 2007
    :cond_2
    iget v0, p1, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    if-ne v0, v2, :cond_1

    .line 2009
    iget v0, p1, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    packed-switch v0, :pswitch_data_0

    .line 2027
    const-string/jumbo v0, "Non-Hold/Resume supp svc code received."

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2011
    :pswitch_0
    const-string/jumbo v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2013
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2014
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 2016
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_0

    .line 2019
    :pswitch_1
    const-string/jumbo v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2020
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2021
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 2024
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_0

    .line 2009
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateVtGlobalCapability(Z)V
    .locals 2
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 1951
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionImpl;->checkAccessPermission()V

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1954
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1956
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_1

    .line 1957
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 1958
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    iget-object v0, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverCallIms;)V

    .line 1960
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1963
    :cond_1
    return-void
.end method
