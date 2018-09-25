.class public Lcom/huawei/ims/DriverCallIms;
.super Lcom/android/internal/telephony/DriverCall;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/DriverCallIms$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"


# instance fields
.field public callDetails:Lcom/huawei/ims/CallDetails;

.field public callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

.field public peerVideoSupport:I

.field public state:Lcom/huawei/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 86
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0}, Lcom/huawei/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 66
    new-instance v0, Lcom/huawei/ims/CallDetails;

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-direct {v0, v1}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 67
    new-instance v0, Landroid/telephony/ims/compat/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    .line 68
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 69
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 70
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 71
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 72
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 73
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 74
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->als:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 75
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 76
    iget-boolean v0, p1, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 77
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 78
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 79
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 81
    iget v0, p1, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 83
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/V1_0/RILImsCall;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Lcom/huawei/ims/CallDetails;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-direct {v0, v3}, Lcom/huawei/ims/CallDetails;-><init>(Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;)V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 45
    new-instance v0, Landroid/telephony/ims/compat/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    .line 46
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 47
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 48
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    .line 49
    iget-object v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 50
    iget-byte v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 51
    iget-byte v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 52
    iget-byte v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 53
    iget-byte v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    .line 54
    iget-byte v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 56
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    .line 55
    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 57
    iget-object v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 59
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    .line 58
    invoke-static {v0}, Lcom/huawei/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 60
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 63
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 50
    goto :goto_0

    :cond_2
    move v0, v2

    .line 51
    goto :goto_1

    :cond_3
    move v0, v1

    .line 53
    goto :goto_2

    :cond_4
    move v2, v1

    .line 54
    goto :goto_3
.end method

.method private isChanged(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 3
    .param p1, "update"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_0

    .line 142
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_0
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    iget v2, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_1

    .line 146
    iget v1, p1, Lcom/huawei/ims/DriverCallIms;->index:I

    iput v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    .line 147
    const/4 v0, 0x1

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 152
    :goto_0
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_2
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_3

    .line 156
    iget-boolean v1, p1, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_3
    iget-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_4

    .line 160
    iget-boolean v1, p1, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    .line 161
    const/4 v0, 0x1

    .line 163
    :cond_4
    return v0

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public static stateFromCall(I)Lcom/huawei/ims/DriverCallIms$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 106
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 94
    :pswitch_1
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 96
    :pswitch_2
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 98
    :pswitch_3
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 100
    :pswitch_4
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 102
    :pswitch_5
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 104
    :pswitch_6
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    return-object v0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "conf"

    .line 167
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mt"

    .line 167
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->als:I

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoice:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "voc"

    .line 167
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    iget-boolean v0, p0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "evp"

    .line 167
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "peerVideoSupport="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->peerVideoSupport:I

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string/jumbo v1, ",cli="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->numberPresentation:I

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    iget v1, p0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "Call Details ="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string/jumbo v1, ","

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const-string/jumbo v0, "norm"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "mo"

    goto/16 :goto_1

    .line 169
    :cond_2
    const-string/jumbo v0, "nonvoc"

    goto :goto_2

    .line 170
    :cond_3
    const-string/jumbo v0, "noevp"

    goto :goto_3
.end method

.method public update(Lcom/huawei/ims/DriverCallIms;)Z
    .locals 5
    .param p1, "update"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/DriverCallIms;->isChanged(Lcom/huawei/ims/DriverCallIms;)Z

    move-result v0

    .line 116
    .local v0, "hasChanged":Z
    iget-object v1, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    if-nez v1, :cond_3

    .line 118
    new-instance v1, Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mCode:I

    .line 119
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraCode:I

    .line 120
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 118
    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/compat/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    .line 133
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/CallDetails;->update(Lcom/huawei/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 134
    const/4 v0, 0x1

    .line 136
    .end local v0    # "hasChanged":Z
    :cond_2
    return v0

    .line 122
    .restart local v0    # "hasChanged":Z
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/compat/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mCode:I

    if-eq v1, v2, :cond_4

    .line 123
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mCode:I

    iput v2, v1, Landroid/telephony/ims/compat/ImsReasonInfo;->mCode:I

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraCode:I

    if-eq v1, v2, :cond_5

    .line 126
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraCode:I

    iput v2, v1, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraCode:I

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/compat/ImsReasonInfo;

    iget-object v2, v2, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iput-object v2, v1, Landroid/telephony/ims/compat/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_0
.end method
