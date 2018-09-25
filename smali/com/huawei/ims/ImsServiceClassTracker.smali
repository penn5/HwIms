.class public Lcom/huawei/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Lcom/huawei/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-huawei-ims-DriverCallIms$StateSwitchesValues:[I = null

.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static final DEFAULT_INCOMING_CALL_SIZE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceClassTracker"

.field private static currentMaxServiceId:I


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mContext:Landroid/content/Context;

.field public mIncomingCallIntent:Landroid/app/PendingIntent;

.field private mIsVtSupportedGlobally:Z

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I

.field private mServiceId:I


# direct methods
.method private static synthetic -getcom-huawei-ims-DriverCallIms$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/huawei/ims/ImsServiceClassTracker;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/ImsServiceClassTracker;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

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
    sput-object v0, Lcom/huawei/ims/ImsServiceClassTracker;->-com-huawei-ims-DriverCallIms$StateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    .line 46
    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "ci"    # Lcom/huawei/ims/ImsRIL;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 97
    iput p1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 98
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 99
    iput-object p3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 100
    invoke-static {}, Lcom/huawei/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceId:I

    .line 101
    iput-object p4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 102
    iput-object p5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 107
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    .line 108
    .local v0, "cameraController":Lcom/huawei/ims/vt/CameraController;
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->addListener(Lcom/huawei/ims/ICallListListener;)V

    .line 112
    :cond_0
    return-void
.end method

.method private convertDriverStateToInt(Lcom/huawei/ims/DriverCallIms$State;)I
    .locals 3
    .param p1, "state"    # Lcom/huawei/ims/DriverCallIms$State;

    .prologue
    const/4 v2, 0x5

    .line 173
    invoke-static {}, Lcom/huawei/ims/ImsServiceClassTracker;->-getcom-huawei-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "illegal call state in convertDriverStateToInt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 191
    return v2

    .line 175
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 177
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 179
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 181
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 183
    :pswitch_4
    return v2

    .line 185
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 187
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private createIncomingCallIntent(Ljava/lang/String;ZZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverCallIms$State;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "android:imsServiceId"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string/jumbo v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "codeaurora.unknownCallState"

    invoke-direct {p0, p4}, Lcom/huawei/ims/ImsServiceClassTracker;->convertDriverStateToInt(Lcom/huawei/ims/DriverCallIms$State;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return v0
.end method

.method private endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 431
    if-eqz p1, :cond_2

    .line 432
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Lcom/huawei/ims/DriverCallIms;

    invoke-direct {v0}, Lcom/huawei/ims/DriverCallIms;-><init>()V

    .line 435
    .local v0, "dc_end":Lcom/huawei/ims/DriverCallIms;
    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 436
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 438
    iget-object v2, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    if-nez v2, :cond_0

    .line 439
    new-instance v2, Lcom/huawei/ims/CallDetails;

    invoke-direct {v2}, Lcom/huawei/ims/CallDetails;-><init>()V

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 442
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call_type  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 446
    .local v1, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_1

    .line 447
    const-string/jumbo v2, "oi"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 448
    const-string/jumbo v2, "cna"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 449
    const-string/jumbo v2, "oir"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 450
    const-string/jumbo v2, "cnap"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 453
    :cond_1
    invoke-virtual {p1, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 455
    .end local v0    # "dc_end":Lcom/huawei/ims/DriverCallIms;
    .end local v1    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_2
    return-void
.end method

.method private getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 5

    .prologue
    .line 476
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 477
    if-eqz v3, :cond_1

    .line 479
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 481
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 482
    return-object v0

    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v4

    .line 486
    const/4 v3, 0x0

    return-object v3

    .line 476
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private hasIncomingCall(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 418
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/DriverCallIms;

    .line 419
    .local v0, "dc":Lcom/huawei/ims/DriverCallIms;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v2, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_0

    .line 420
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "has incoming call"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v4

    .line 425
    .end local v0    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_0
    return v3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 898
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 902
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method

.method private notifyCallAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 861
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 863
    .local v2, "mCallListListenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 864
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ICallListListener;

    .line 865
    .local v1, "listener":Lcom/huawei/ims/ICallListListener;
    invoke-interface {v1, p1}, Lcom/huawei/ims/ICallListListener;->onCallSessionAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v1    # "listener":Lcom/huawei/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 877
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 879
    .local v2, "mCallListListenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 880
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ICallListListener;

    .line 881
    .local v1, "listener":Lcom/huawei/ims/ICallListListener;
    invoke-interface {v1, p1}, Lcom/huawei/ims/ICallListListener;->onCallSessionRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "listener":Lcom/huawei/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private processDialingAndIncomingConflict(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 403
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->hasIncomingCall(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 405
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 406
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 407
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 408
    .local v1, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found incoming call when dialing, end dialing call, session = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 414
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void

    .line 404
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 870
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 873
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 874
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 6
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 626
    new-instance v0, Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallSessionImpl;-><init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V

    .line 627
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 628
    iget-boolean v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 629
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 632
    return-object v0

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .prologue
    .line 710
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 711
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 712
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 713
    .local v2, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getMediaId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v4

    .line 714
    return-object v2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_1
    monitor-exit v4

    .line 718
    const/4 v3, 0x0

    return-object v3

    .line 710
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v2

    .line 645
    return-object v0

    .line 642
    .end local v0    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getCallSessionByState(Lcom/huawei/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
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
    .line 689
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v3, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v3

    .line 691
    :cond_0
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 692
    :try_start_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 693
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 694
    .local v2, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 695
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 691
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v5

    .line 701
    return-object v3
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 19
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
    .line 213
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v11, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v10, 0x0

    .line 219
    .local v10, "dcListSize":I
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 222
    :cond_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_11

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/ims/DriverCallIms;

    .line 228
    .local v9, "dc":Lcom/huawei/ims/DriverCallIms;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 231
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 230
    if-eqz v2, :cond_3

    .line 232
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 233
    .local v18, "s":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_1

    .line 236
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found match dialing call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v8, 0x0

    .line 239
    .local v8, "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v6, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v8, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v8, "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :try_start_2
    monitor-exit v5

    .line 242
    if-eqz v8, :cond_2

    .line 243
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v5, "Ims dial exception, end phantom call first."

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 247
    :cond_2
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v2, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 250
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 229
    .end local v8    # "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 239
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .restart local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_3
    monitor-exit v4

    .line 255
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 256
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v5, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .local v3, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v4

    .line 258
    if-eqz v3, :cond_7

    .line 262
    invoke-virtual {v3, v9}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 339
    :cond_5
    :goto_2
    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_6

    .line 340
    iget v2, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 255
    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    .line 264
    .restart local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_7
    const/4 v14, 0x0

    .line 265
    .local v14, "isUnknown":Z
    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_6

    .line 270
    new-instance v3, Lcom/huawei/ims/ImsCallSessionImpl;

    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v3, v9, v2, v4, v0}, Lcom/huawei/ims/ImsCallSessionImpl;-><init>(Lcom/huawei/ims/DriverCallIms;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceClassTracker;)V

    .line 271
    .restart local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->addListener(Lcom/huawei/ims/ImsCallSessionImpl$Listener;)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v3, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 273
    iget-boolean v2, v9, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_b

    .line 275
    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_8

    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v4, :cond_a

    .line 278
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v2, :cond_9

    .line 279
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v2

    const-string/jumbo v4, "HwIms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v5

    const-string/jumbo v6, "ImsServiceClassTracker"

    const/4 v7, 0x1

    invoke-interface {v2, v4, v5, v7, v6}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 283
    :cond_9
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v4, "MT Call creating a new call session"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v4, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    iget-object v6, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v7, v9, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V

    .line 334
    :cond_a
    :goto_3
    if-eqz v14, :cond_5

    .line 335
    iget v4, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    iget-object v6, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v7, v9, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 287
    :cond_b
    iget-boolean v2, v9, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_e

    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v4, :cond_e

    .line 288
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v4, "Conference Call creating a new call session"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v14, 0x1

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 293
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 292
    if-eqz v2, :cond_d

    .line 294
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 295
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 296
    .local v17, "oldSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 297
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set New Session as Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->setNewSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 299
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/huawei/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 301
    const/4 v14, 0x0

    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v17    # "oldSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_d
    monitor-exit v4

    .line 306
    iget v2, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 307
    invoke-virtual {v3, v9}, Lcom/huawei/ims/ImsCallSessionImpl;->updateConfSession(Lcom/huawei/ims/DriverCallIms;)V

    .line 308
    if-eqz v14, :cond_a

    .line 309
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v4, "Phantom conference call Scenario"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 291
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_3
    move-exception v2

    monitor-exit v4

    throw v2

    .line 311
    :cond_e
    iget-object v2, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v4, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_a

    .line 312
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MO phantom Call Scenario. State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 316
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 317
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 318
    .restart local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    iget v2, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 319
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v4

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 322
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v5, v9, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v3, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .restart local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v4

    .line 324
    if-eqz v3, :cond_f

    .line 325
    invoke-virtual {v3, v9}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 328
    :cond_f
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v4, "MO phantom Call matched."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 315
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_4
    move-exception v2

    monitor-exit v4

    throw v2

    .line 321
    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .restart local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_5
    move-exception v2

    monitor-exit v4

    throw v2

    .line 330
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    .restart local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 348
    .end local v3    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v9    # "dc":Lcom/huawei/ims/DriverCallIms;
    .end local v14    # "isUnknown":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_14

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 350
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 351
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 350
    if-eqz v2, :cond_13

    .line 352
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 355
    .restart local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found match end call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v8, 0x0

    .line 358
    .local v8, "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 359
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v8, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .local v8, "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :try_start_a
    monitor-exit v5

    .line 361
    if-eqz v8, :cond_12

    .line 362
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v5, "Ims dial exception, end current call first."

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 365
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 367
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_4

    .line 349
    .end local v8    # "current_callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_6
    move-exception v2

    monitor-exit v4

    throw v2

    .line 358
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .restart local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_7
    move-exception v2

    :try_start_b
    monitor-exit v5

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .end local v18    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_13
    monitor-exit v4

    .line 374
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceClassTracker;->processDialingAndIncomingConflict(Ljava/util/ArrayList;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 378
    :try_start_c
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCalls ,mCallList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_15
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 379
    if-eqz v2, :cond_16

    .line 381
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 382
    .restart local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    const-string/jumbo v5, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dcMap.get(e.getValue().getCallId() =  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 385
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v5, "end call handle"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->endCallSession(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 394
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 395
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_5

    .line 377
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_8
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_16
    monitor-exit v4

    .line 399
    return-void
.end method

.method public handleHandover(Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;)V
    .locals 12
    .param p1, "handover"    # Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    .line 793
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "in handleHandover"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    invoke-direct {v10}, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;-><init>()V

    .line 795
    .local v10, "response":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    iput v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 796
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    iput v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 797
    iget v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    iput v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 798
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iput-object v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 799
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 801
    const-string/jumbo v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 802
    const-string/jumbo v3, " tarTech: "

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 802
    iget v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 802
    const-string/jumbo v3, " extraType: "

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 802
    iget v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 803
    const-string/jumbo v3, " ErrorCode: "

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 803
    iget-object v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v11

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 806
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 805
    if-eqz v1, :cond_1

    .line 807
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 808
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 809
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 810
    iget v1, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    iget v2, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 811
    iget v3, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    iget v4, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    iget-object v5, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    .line 812
    iget-object v6, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iget-object v7, v10, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 810
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 804
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 814
    .restart local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "No more call sessions found"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v11

    .line 818
    return-void
.end method

.method public handleModifyCallRequest(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 4
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 563
    if-eqz p1, :cond_1

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v2

    .line 568
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallModification;->onReceivedModifyCall(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 576
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :goto_0
    return-void

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 571
    .restart local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_0
    const-string/jumbo v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_1
    const-string/jumbo v1, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleModifyCallResult([I)V
    .locals 6
    .param p1, "modifyResult"    # [I

    .prologue
    const/4 v5, 0x1

    .line 580
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 581
    :cond_0
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "invalid params when handleModifyCallResult"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 585
    :cond_1
    const/4 v0, 0x0

    .line 586
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 587
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    monitor-exit v3

    .line 590
    if-nez v0, :cond_2

    .line 591
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "handleModifyCallResult error: callsession is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 586
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 595
    .restart local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    .line 596
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "handleModifyCallResult error: callsession State.INVALID"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void

    .line 601
    :cond_3
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 603
    .local v1, "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    aget v2, p1, v5

    if-eqz v2, :cond_5

    .line 604
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "modify failed!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 614
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v2

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleModifyCallResult(I)V

    .line 615
    return-void

    .line 607
    :cond_5
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 608
    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v2, v1, :cond_6

    .line 609
    sget-object v2, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v1, :cond_4

    .line 610
    :cond_6
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "ims video ring tones, clear pendingModify!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    goto :goto_0
.end method

.method public handleOnHoldTone(Z)V
    .locals 7
    .param p1, "startOnHoldLocalTone"    # Z

    .prologue
    .line 767
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleOnHoldTone startOnHoldLocalTone= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v1, 0x0

    .line 770
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 771
    return-void

    .line 774
    :cond_0
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 775
    :try_start_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 776
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 775
    if-eqz v4, :cond_2

    .line 777
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 778
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 779
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 780
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->handleOnHoldTone(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_2
    monitor-exit v5

    .line 785
    if-nez v1, :cond_3

    .line 786
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No call session found for number: "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3
    return-void

    .line 774
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V
    .locals 10
    .param p1, "info"    # Lcom/huawei/ims/HwImsSuppServiceNotification;

    .prologue
    const/4 v9, 0x1

    .line 730
    const-string/jumbo v6, "ImsServiceClassTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSuppSvcUnsol callId= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v7

    .line 732
    :try_start_0
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v8, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 736
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    new-instance v5, Lcom/android/ims/ImsSuppServiceNotification;

    invoke-direct {v5}, Lcom/android/ims/ImsSuppServiceNotification;-><init>()V

    .line 737
    .local v5, "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    invoke-virtual {p1, v5}, Lcom/huawei/ims/HwImsSuppServiceNotification;->setData(Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 738
    if-nez v0, :cond_1

    iget v6, v5, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    if-ne v6, v9, :cond_1

    .line 739
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 740
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    .line 739
    if-eqz v6, :cond_1

    .line 741
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 742
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 743
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 749
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    .restart local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_1
    if-eqz v0, :cond_2

    .line 750
    const/4 v4, 0x0

    .line 752
    .local v4, "startOnHoldLocalTone":Z
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    iget-object v6, v5, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v2, v8

    .line 753
    .local v2, "history":[Ljava/lang/String;
    iput-object v2, v5, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 755
    const-string/jumbo v6, "ImsServiceClassTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 756
    const-string/jumbo v9, " startOnHoldLocalTone = "

    .line 755
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v0, v5, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "history":[Ljava/lang/String;
    .end local v4    # "startOnHoldLocalTone":Z
    :goto_0
    monitor-exit v7

    .line 762
    return-void

    .line 759
    :cond_2
    :try_start_1
    const-string/jumbo v6, "ImsServiceClassTracker"

    const-string/jumbo v8, "No call session found for number: "

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 731
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v5    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 661
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 663
    :try_start_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 662
    if-eqz v4, :cond_1

    .line 664
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 665
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 666
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 667
    .local v1, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v5

    .line 673
    if-nez v1, :cond_2

    .line 674
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No Active call session found for TTY mode change"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    return-void

    .line 661
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .prologue
    .line 546
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .prologue
    .line 551
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 555
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 9
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 495
    const-string/jumbo v5, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClosed for session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 498
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v6

    .line 500
    :try_start_0
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 499
    if-eqz v5, :cond_2

    .line 501
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 502
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    const-string/jumbo v5, "ImsServiceClassTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "List is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " session is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 505
    const-string/jumbo v5, "ImsServiceClassTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing session on close "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v7, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v5, v7, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverCallIms;

    move-result-object v0

    .line 510
    .local v0, "dc_end":Lcom/huawei/ims/DriverCallIms;
    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v5, v0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "call_type  = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v7, v7, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1, v0}, Lcom/huawei/ims/ImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverCallIms;)V

    .line 515
    .end local v0    # "dc_end":Lcom/huawei/ims/DriverCallIms;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 516
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 498
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    monitor-exit v6

    .line 522
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;>;"
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 523
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 524
    :try_start_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 525
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 524
    if-eqz v5, :cond_5

    .line 526
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 527
    .local v4, "s":Lcom/huawei/ims/ImsCallSessionImpl;
    if-ne v4, p1, :cond_4

    .line 529
    const-string/jumbo v5, "ImsServiceClassTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing session on close "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 531
    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceClassTracker;->notifyCallRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 523
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v4    # "s":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_5
    monitor-exit v6

    .line 536
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/ImsCallSessionImpl;>;"
    :cond_6
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 491
    return-void
.end method

.method public onNotifyCallResumed()V
    .locals 3

    .prologue
    .line 459
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "onNotifyCallResumed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceClassTracker;->getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 461
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lcom/huawei/ims/ImsCallSessionImpl;->invokeCallResume(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V

    .line 464
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 465
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 540
    return-void
.end method

.method removeListener(Lcom/huawei/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ICallListListener;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendIncomingCallIntent(Lcom/huawei/ims/ImsCallSessionImpl;IZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)V
    .locals 9
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverCallIms$State;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 888
    :try_start_0
    iget-object v7, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 889
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsServiceClassTracker;->createIncomingCallIntent(Ljava/lang/String;ZZLcom/huawei/ims/DriverCallIms$State;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 888
    const/16 v1, 0x65

    invoke-virtual {v7, v8, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 891
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v6

    .line 893
    .local v6, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incoming Call intent Canceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setConfInProgress(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 468
    const-string/jumbo v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfInProgress value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceClassTracker;->getMptySession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 470
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 471
    iput-boolean p1, v0, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 473
    :cond_0
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 5
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVtCapability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 199
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 200
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 203
    .local v2, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "session":Lcom/huawei/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 206
    return-void
.end method
