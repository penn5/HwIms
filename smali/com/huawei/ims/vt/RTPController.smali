.class public Lcom/huawei/ims/vt/RTPController;
.super Ljava/lang/Object;
.source "RTPController.java"


# static fields
.field public static final RTP_DIRECTION_AUDIO:I = 0x0

.field public static final RTP_DIRECTION_BIDIRECTIONAL:I = 0x3

.field public static final RTP_DIRECTION_RECEIVE_ONLY:I = 0x2

.field public static final RTP_DIRECTION_SEND_ONLY:I = 0x1

.field public static final RTP_DIRECTION_UNDEFINED:I = -0x1

.field public static final RTP_OPERATOR_FAILED:I = -0x1

.field public static final RTP_OPERATOR_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RTPController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallTypeToDirection(I)I
    .locals 3
    .param p0, "callType"    # I

    .prologue
    .line 90
    const/4 v0, -0x1

    .line 91
    .local v0, "direction":I
    packed-switch p0, :pswitch_data_0

    .line 105
    const-string/jumbo v1, "RTPController"

    const-string/jumbo v2, "callType is illegal when convertCallTypeToDirection!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v0

    .line 93
    :pswitch_0
    const/4 v0, 0x0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x1

    .line 97
    goto :goto_0

    .line 99
    :pswitch_2
    const/4 v0, 0x2

    .line 100
    goto :goto_0

    .line 102
    :pswitch_3
    const/4 v0, 0x3

    .line 103
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isInvalidDirection(I)Z
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "ret":Z
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :pswitch_0
    return v0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static modifyRTPStreamDirection(II)I
    .locals 5
    .param p0, "oldDirection"    # I
    .param p1, "newDirection"    # I

    .prologue
    .line 62
    invoke-static {p0}, Lcom/huawei/ims/vt/RTPController;->isInvalidDirection(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->isInvalidDirection(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    const-string/jumbo v2, "RTPController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pauseOrResumeRTPStream direction is invalid, oldDirection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newDirection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, -0x1

    return v2

    .line 67
    :cond_1
    sub-int v0, p1, p0

    .line 68
    .local v0, "change":I
    const/4 v1, -0x1

    .line 70
    .local v1, "result":I
    if-nez v0, :cond_2

    .line 71
    const-string/jumbo v2, "RTPController"

    const-string/jumbo v3, "direction didn\'t change, just return"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v1

    .line 75
    :cond_2
    if-gez v0, :cond_3

    .line 77
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->pauseImsRTPStream(I)I

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 80
    :cond_3
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeImsRTPStream(I)I

    move-result v1

    goto :goto_0
.end method

.method public static pauseRTPStream(I)I
    .locals 3
    .param p0, "direction"    # I

    .prologue
    .line 37
    invoke-static {p0}, Lcom/huawei/ims/vt/RTPController;->isInvalidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "RTPController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseRTPStream direction is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, -0x1

    return v0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->pauseImsRTPStream(I)I

    move-result v0

    return v0
.end method

.method public static resumeRTPStream(I)I
    .locals 3
    .param p0, "direction"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lcom/huawei/ims/vt/RTPController;->isInvalidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "RTPController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeRTPStream direction is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, -0x1

    return v0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeImsRTPStream(I)I

    move-result v0

    return v0
.end method
