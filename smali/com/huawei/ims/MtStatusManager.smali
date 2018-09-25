.class public Lcom/huawei/ims/MtStatusManager;
.super Ljava/lang/Object;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/MtStatusManager$1;,
        Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FAIL_CAUSE_BASE:I = 0x8000

.field public static final FAIL_CAUSE_CANCEL_CALL_NOT_FOUND:I = 0x8008

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED:I = 0x8004

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_IDLE:I = 0x8001

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_INVITED:I = 0x8002

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_RANG:I = 0x8003

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN:I = 0x8005

.field public static final FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES:I = 0x8006

.field public static final FAIL_CAUSE_MT_FAIL_CALLER_KNOWN:I = 0x8000

.field public static final FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN:I = 0x800c

.field public static final FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS:I = 0x800a

.field public static final FAIL_CAUSE_NO_RING_OR_CANCEL_CALL:I = 0x8009

.field public static final FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES:I = 0x8007

.field public static final FAIL_CAUSE_RING_WHEN_NO_SERVICE:I = 0x800b

.field public static final INCOMING_CALL_SERVICE_ABNORMAL_EVENT:I = 0x3ef

.field private static final INTENT_CALL_MONITOR_ALARM:Ljava/lang/String; = "com.android.internal.telephony.mt.monitor.timeout"

.field private static final INTENT_CALL_REMINDER_ALARM:Ljava/lang/String; = "com.android.internal.telephony.mt.reminder.timeout"

.field private static final LOG_TAG:Ljava/lang/String; = "MtStatusManager"

.field public static final MAX_MONITOR_TIME:I = 0xffff

.field private static final MAX_REMINDER_ID_VALUE:I = 0xffff

.field public static final MISSED_CALL_NON_DIALABLE_CALL_FAIL_EVENT:I = 0x3ee

.field public static final MISSED_CALL_REMINDER_EVENT:I = 0x3ea

.field public static final MISSED_CALL_REMINDER_GENERAL_EVENT:I = 0x3eb

.field public static final MISSED_CALL_RING_TIMER_OUT_HUNG_EVENT:I = 0x3ed

.field public static final MISSED_CALL_RING_TIMER_OUT_RING_EVENT:I = 0x3ec

.field private static final MT_EVENT:I = 0x2

.field private static final MT_MGR_BROADCAST_PERMISSION:Ljava/lang/String; = "com.android.huawei.permission.mt.missing.tips"

.field private static final MT_NW_FAIL_EVENT:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.huawei.ims"

.field private static final VDEBUG:Z


# instance fields
.field private anonymousCallCount:I

.field private mContext:Landroid/content/Context;

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/MtStatusManager$MtCallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMtReportIntentMonitor:Landroid/app/PendingIntent;

.field private mMtReportIntentReminder:Landroid/app/PendingIntent;

.field private mReminderId:I

.field private mReminderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/MtStatusManager$MtCallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private nm:Landroid/app/NotificationManager;

.field private owner:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/MtStatusManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleMonitorTimeOut()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/MtStatusManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleReminderTimeOut()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 6
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v2, 0x2ee0

    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 92
    const v2, 0x1f400

    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 105
    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 106
    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    .line 122
    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 432
    new-instance v2, Lcom/huawei/ims/MtStatusManager$1;

    invoke-direct {v2, p0}, Lcom/huawei/ims/MtStatusManager$1;-><init>(Lcom/huawei/ims/MtStatusManager;)V

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    .line 132
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    .line 134
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.android.huawei.permission.mt.missing.tips"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 138
    :cond_0
    iput v5, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 139
    iput v5, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    .line 142
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsServiceSub;->getConfigInterface()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 143
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsRingTimer()I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 145
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsDelayTimer()I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 148
    :cond_2
    return-void
.end method

.method private checkServiceWhenIncomingCall(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 621
    const-string/jumbo v1, "enter checkServiceWhenIncomingCall"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCheckServiceWhenIncomingCall()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 628
    :cond_0
    const-string/jumbo v1, "isCheckServiceWhenIncomingCall is false."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 629
    return-void

    .line 638
    :cond_1
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 639
    const-string/jumbo v1, "checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 640
    return-void

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    if-nez v1, :cond_3

    .line 644
    return-void

    .line 646
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 648
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_4

    .line 649
    return-void

    .line 651
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    .line 653
    .local v8, "serviceState":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v8, :cond_5

    iget-object v1, v8, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 654
    iget-object v1, v8, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 655
    const-string/jumbo v1, "checkServiceWhenIncomingCall: phone is out of service when incoming call"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    .line 657
    const/16 v6, 0x3ef

    const v7, 0x800b

    move-wide v4, v2

    .line 656
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 660
    :cond_5
    return-void
.end method

.method private decreaseAnonymousCallCount(Z)V
    .locals 2
    .param p1, "isFail"    # Z

    .prologue
    .line 669
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v0, :cond_1

    .line 670
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 676
    :goto_0
    if-eqz p1, :cond_0

    .line 677
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 679
    :cond_0
    return-void

    .line 672
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "anonymousCallCount check fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 4
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .prologue
    .line 510
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 511
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V

    .line 513
    iget-object v2, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delayMonitorFailCall: ReminderMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 524
    return-void
.end method

.method private getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawCallNumber"    # Ljava/lang/String;

    .prologue
    .line 456
    move-object v0, p1

    .line 457
    .local v0, "strResult":Ljava/lang/String;
    const-string/jumbo v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    const-string/jumbo v1, "86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getReminderId()I
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    const v1, 0xffff

    rem-int/2addr v0, v1

    return v0
.end method

.method private handleMonitorTimeOut()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 725
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v4, :cond_0

    .line 726
    const-string/jumbo v4, "INTENT_CALL_MONITOR_ALARM is null"

    invoke-direct {p0, v4}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 727
    return-void

    .line 730
    :cond_0
    iput-object v6, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 732
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 733
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 734
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 735
    .local v3, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 738
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :cond_1
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 741
    iput v5, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 744
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 745
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 748
    :cond_2
    const-string/jumbo v4, "open do-recovery"

    invoke-direct {p0, v4}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0, v5}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 752
    return-void
.end method

.method private handleReminderTimeOut()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 755
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v8, :cond_0

    .line 756
    const-string/jumbo v8, "INTENT_CALL_REMINDER_ALARM is null"

    invoke-direct {p0, v8}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 757
    return-void

    .line 760
    :cond_0
    iput-object v9, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 764
    const/4 v5, 0x0

    .line 765
    .local v5, "onlyInvitedCallCount":I
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 766
    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 767
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 768
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    .local v0, "address":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 770
    .local v7, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-static {v7}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get2(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_2

    .line 771
    add-int/lit8 v5, v5, 0x1

    .line 777
    :cond_2
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallDisplay()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 781
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "to reminder number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v12}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 782
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iput-object v8, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    .line 783
    new-instance v4, Landroid/app/Notification;

    const-string/jumbo v8, "Missed Call Reminder"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const v9, 0x108007f

    invoke-direct {v4, v9, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 784
    .local v4, "notification":Landroid/app/Notification;
    const/16 v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 785
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 787
    .local v2, "intent1":Landroid/content/Intent;
    const-string/jumbo v8, "com.huawei.ims"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 790
    .local v6, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "Missed Call Reminder   v1.1"

    invoke-virtual {v4, v8, v9, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 791
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->getReminderId()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 795
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "intent1":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :cond_3
    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->reportExceptionNoRingCall(I)V

    .line 796
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 797
    return-void
.end method

.method private increaseAnonymousCallCount()V
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 666
    return-void
.end method

.method public static final isDialable(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 802
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 806
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 807
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    const/4 v2, 0x0

    return v2

    .line 806
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isIgnoreThisCall(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    return v4

    .line 481
    :cond_1
    invoke-static {p1}, Lcom/huawei/ims/MtStatusManager;->isDialable(Ljava/lang/String;)Z

    move-result v0

    .line 482
    .local v0, "isNumberDialable":Z
    if-nez v0, :cond_2

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-dialable number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 484
    return v4

    .line 487
    :cond_2
    return v3
.end method

.method private isMonitorTimeOut()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOnlyOneMonitorCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnlyOneReminderCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 843
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 856
    const-string/jumbo v0, "MtStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 849
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string/jumbo v0, "MtStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[warning] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void
.end method

.method private reportAnonymousCallFailEvent(I)V
    .locals 8
    .param p1, "fail_cause"    # I

    .prologue
    .line 686
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 687
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Anonymous call fail reason code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 689
    const/16 v6, 0x3ee

    const v7, 0x800c

    .line 688
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 690
    return-void
.end method

.method private reportExceptionNoRingCall(I)V
    .locals 10
    .param p1, "onlyInvitedCallCount"    # I

    .prologue
    const/16 v6, 0x3ea

    const/16 v9, 0x9

    .line 693
    new-instance v8, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v8}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 695
    .local v8, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    if-lez p1, :cond_1

    .line 696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 697
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v8}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 702
    const v7, 0x8009

    .line 700
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 705
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v1, :cond_3

    .line 706
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ge v0, v1, :cond_2

    .line 707
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v8}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 712
    const v7, 0x800a

    .line 710
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 714
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V
    .locals 11
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;
    .param p2, "rc"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .prologue
    .line 542
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 543
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 544
    .local v8, "now":J
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 546
    .local v10, "strIndex":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update hang up MtCallRecord at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    check-cast p2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 549
    .restart local p2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-virtual {p2, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 552
    const/16 v6, 0x3ea

    const v7, 0x8000

    .line 551
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 568
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    const-string/jumbo v1, "received cancel when monitor timer out."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    check-cast p2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 556
    .restart local p2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-virtual {p2, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 558
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 559
    const/16 v6, 0x3ed

    .line 560
    const v7, 0x8006

    .line 558
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 562
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abnormal cancel event: cause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 565
    const/16 v6, 0x3eb

    .line 566
    const v7, 0x8008

    .line 564
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0
.end method

.method private reportExceptionWhenInvite(Ljava/lang/String;)V
    .locals 10
    .param p1, "strIndex"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3eb

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 572
    .local v8, "now":J
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 574
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get2(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid state while invite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get2(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 612
    const v7, 0x8005

    .line 610
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 616
    :goto_0
    invoke-static {v0, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-set0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 617
    return-void

    .line 576
    :pswitch_0
    const-string/jumbo v1, "duplicate invite while previous state IDLE."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 578
    invoke-static {v0, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-set1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 580
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 582
    const v7, 0x8001

    .line 580
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 585
    :pswitch_1
    const-string/jumbo v1, "duplicate invite while previous state INVITED."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 587
    invoke-static {v0, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-set1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 591
    const v7, 0x8002

    .line 589
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 594
    :pswitch_2
    const-string/jumbo v1, "duplicate invite while previous state RANG."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 598
    const v7, 0x8003

    .line 596
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 601
    :pswitch_3
    const-string/jumbo v1, "duplicate invite while previous state CANCELLED."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 605
    const v7, 0x8004

    .line 603
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportExceptionWhenRingCall(Ljava/lang/String;)V
    .locals 10
    .param p1, "strIndex"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update ring MtCallRecord at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const-string/jumbo v1, "received ring when monitor timer out."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 532
    .local v8, "now":J
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 533
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-virtual {v0, v8, v9}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setRing(J)V

    .line 535
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get1(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->-get0(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    .line 536
    const/16 v6, 0x3ec

    .line 537
    const v7, 0x8007

    .line 535
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 539
    .end local v0    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .end local v8    # "now":J
    :cond_0
    return-void
.end method

.method private startMonitorCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "strIndex":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenInvite(Ljava/lang/String;)V

    .line 504
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addInviteMsg: mMonitorMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startMonitorTimer()V

    .line 507
    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>(I)V

    .line 501
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startMonitorTimer()V
    .locals 6

    .prologue
    .line 362
    const-string/jumbo v2, "start Monitor timer."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 365
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 371
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 373
    const-string/jumbo v2, "INTENT_CALL_MONITOR_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 375
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startReminderTimer()V
    .locals 6

    .prologue
    .line 401
    const-string/jumbo v2, "start Reminder timer."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 404
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 410
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 412
    const-string/jumbo v2, "INTENT_CALL_REMINDER_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 414
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopMonitorTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    const-string/jumbo v1, "stop Monitor timer."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 380
    const-string/jumbo v1, "already stop MonitorTimer."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 385
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 389
    :cond_1
    iput-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 390
    return-void
.end method

.method private stopReminderTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string/jumbo v1, "stop Reminder timer."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 420
    const-string/jumbo v1, "already stop ReminderTimer."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 421
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 425
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    :cond_1
    iput-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 430
    return-void
.end method


# virtual methods
.method public addFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    const-string/jumbo v1, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 200
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    :cond_2
    const-string/jumbo v1, "addCancelMsg: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_3
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore call while cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 209
    iget v1, p1, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->reportAnonymousCallFailEvent(I)V

    .line 210
    return-void

    .line 214
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 217
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V

    .line 218
    return-void
.end method

.method public addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const-string/jumbo v1, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 161
    return-void

    .line 164
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 165
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_2
    const-string/jumbo v1, "addIncomingCall: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 167
    return-void

    .line 171
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 174
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->increaseAnonymousCallCount()V

    .line 176
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore call while invite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 178
    return-void

    .line 182
    :cond_4
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->startMonitorCall(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 819
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 820
    return-object v2

    .line 823
    :cond_0
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    return-object v0
.end method

.method public isNeedNotifyImsCallEnded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ne v1, v2, :cond_1

    .line 317
    :cond_0
    return v2

    .line 319
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isNeedNotifyImsCallStarted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public notifyRingCall(Ljava/lang/String;I)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    invoke-direct {p0, p2}, Lcom/huawei/ims/MtStatusManager;->checkServiceWhenIncomingCall(I)V

    .line 231
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    const-string/jumbo v3, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 235
    return-void

    .line 238
    :cond_1
    if-nez p1, :cond_2

    .line 239
    const-string/jumbo v3, "notifyRingCall: invalid number"

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 240
    return-void

    .line 248
    :cond_2
    const-string/jumbo v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    const-string/jumbo v3, "notifyRingCall address is empty when only one mt"

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, "keys":Ljava/util/Set;
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v4, v3, :cond_6

    .line 253
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 258
    .end local v1    # "keys":Ljava/util/Set;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 259
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 260
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "address":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 270
    .end local v0    # "it":Ljava/util/Iterator;
    .restart local p1    # "address":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const-string/jumbo v3, "open do-recovery"

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 278
    :cond_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 279
    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore call while ring: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 281
    return-void

    .line 254
    .restart local v1    # "keys":Ljava/util/Set;
    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .local v1, "keys":Ljava/util/Set;
    goto :goto_0

    .line 284
    .end local v1    # "keys":Ljava/util/Set;
    :cond_7
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenRingCall(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 291
    :cond_8
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MonitorMap size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneReminderCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 296
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopReminderTimer()V

    .line 298
    :cond_9
    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReminderMap size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public setIsBusy(Z)V
    .locals 2
    .param p1, "isBusy"    # Z

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/huawei/ims/MtStatusManager;->getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    .line 829
    .local v0, "imsphone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 830
    const-string/jumbo v1, "setBusy: imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 831
    return-void

    .line 834
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhone:Lcom/android/internal/telephony/imsphone/HwImsPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->setIsBusy(Z)V

    .line 835
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    const-string/jumbo v0, "MtStatusManager"

    return-object v0
.end method
