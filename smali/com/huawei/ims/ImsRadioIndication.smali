.class public Lcom/huawei/ims/ImsRadioIndication;
.super Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;
.source "ImsRadioIndication.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioIndication"


# instance fields
.field private START_LOCAL_HOLD_TONE:I

.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    .line 63
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    .line 64
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 65
    return-void
.end method


# virtual methods
.method public UnsolMsg(IILvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    .prologue
    .line 439
    const-string/jumbo v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnsolMsg:indicationType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sparse-switch p2, :sswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 442
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCallStateChanged(I)V

    goto :goto_0

    .line 446
    :sswitch_1
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsCallRingBackTone(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 450
    :sswitch_2
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsVoiceBandInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 454
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCsRedialNotify(I)V

    goto :goto_0

    .line 458
    :sswitch_4
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLtePdcpInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 462
    :sswitch_5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLteRrcInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 466
    :sswitch_6
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsHoldToneInd(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 471
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsDMCNNotify(I)V

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x437 -> :sswitch_0
        0x439 -> :sswitch_1
        0x43f -> :sswitch_2
        0x452 -> :sswitch_3
        0x459 -> :sswitch_4
        0x45a -> :sswitch_5
        0x460 -> :sswitch_7
        0x462 -> :sswitch_6
    .end sparse-switch
.end method

.method public apDsFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "apDsFlowInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;

    .prologue
    .line 220
    return-void
.end method

.method public callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .prologue
    .line 128
    return-void
.end method

.method public callStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 75
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    .prologue
    .line 149
    return-void
.end method

.method public cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "records"    # Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    .prologue
    .line 156
    return-void
.end method

.method public cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .prologue
    .line 134
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .prologue
    .line 152
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "version"    # I

    .prologue
    .line 171
    return-void
.end method

.method public cdmaRuimSmsStorageFull(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 140
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cdmaSource"    # I

    .prologue
    .line 168
    return-void
.end method

.method public cellInfoList(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .prologue
    .line 101
    return-void
.end method

.method public dataCallListChanged(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    return-void
.end method

.method public dsFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "apDsFlowInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;

    .prologue
    .line 223
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 146
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 174
    return-void
.end method

.method public hardwareConfigChanged(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    return-void
.end method

.method public imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsModifyEndCause"    # Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 366
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbd6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 367
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2, v1}, Lcom/huawei/ims/ImsRIL;->convertHalImsEndCause(Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I

    move-result-object v0

    .line 368
    .local v0, "response":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 371
    :cond_0
    return-void
.end method

.method public imsCallModifyInd(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "imsCallModify"    # Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    .prologue
    const/4 v6, 0x0

    .line 354
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 355
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v4, 0xbd5

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 356
    new-instance v1, Lcom/huawei/ims/CallDetails;

    iget-object v3, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v3, v3, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    iget-object v4, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v4, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    invoke-direct {v1, v3, v4, v6}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 357
    .local v1, "currCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v3, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v3, v3, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    iget-object v4, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget v4, v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    invoke-direct {v2, v3, v4, v6}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 358
    .local v2, "destCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v0, Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v3, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    iget v5, p2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;III)V

    .line 359
    .local v0, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 362
    :cond_0
    return-void
.end method

.method public imsCallMtStatusInd(ILvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsCallMtStatus"    # Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 375
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 376
    new-instance v0, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/MtStatusReport;-><init>(Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;)V

    .line 377
    .local v0, "mtStatusReport":Lcom/huawei/ims/MtStatusReport;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 380
    :cond_0
    return-void
.end method

.method public imsCallRing(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 271
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc4

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 272
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 275
    :cond_0
    return-void
.end method

.method public imsCallRingBackTone(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 278
    const-string/jumbo v2, "ImsRadioIndication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imsCallRingBackTone ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 280
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 281
    .local v1, "tones":[I
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v3, 0xbc5

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 282
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 283
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 284
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 286
    .end local v0    # "playtone":Z
    :cond_0
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "playtone":Z
    goto :goto_0
.end method

.method public imsCallStateChanged(I)V
    .locals 4
    .param p1, "indicationType"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string/jumbo v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsCallStateChanged:indicationType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 263
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 264
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 267
    :cond_0
    return-void
.end method

.method public imsCsRedialNotify(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 384
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbde

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 385
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 388
    :cond_0
    return-void
.end method

.method public imsDMCNNotify(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 431
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbec

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 432
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 435
    :cond_0
    return-void
.end method

.method public imsHandoverInd(ILvendor/huawei/hardware/radio/V1_0/RILImsHandover;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "imsHandover"    # Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    new-instance v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    .end local v0    # "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    invoke-direct {v0, p2}, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;)V

    .line 292
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 293
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 296
    :cond_0
    return-void
.end method

.method public imsHoldToneInd(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 417
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 418
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v3, 0xbee

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 419
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 420
    .local v0, "info":[I
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 421
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 422
    aget v2, v0, v4

    iget v3, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 423
    .local v1, "playtone":Z
    :goto_0
    const-string/jumbo v2, "ImsRadioIndication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imsHoldToneInd playtone ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 426
    .end local v1    # "playtone":Z
    :cond_0
    return-void

    .line 422
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "playtone":Z
    goto :goto_0
.end method

.method public imsLtePdcpInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 399
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 400
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbe5

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 401
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 402
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 405
    :cond_0
    return-void
.end method

.method public imsLteRrcInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 408
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 409
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 410
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 411
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 414
    :cond_0
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 393
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 395
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 396
    return-void
.end method

.method public imsSrvStatusInd(ILvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "imsSrvStatus"    # Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v13, 0xbc7

    invoke-virtual {v12, v13}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 301
    const/4 v9, 0x0

    .line 302
    .local v9, "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    move-object/from16 v0, p2

    iget v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    .line 303
    .local v3, "info1":I
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    const/4 v12, 0x4

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v9, "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v12, 0x4

    if-ge v2, v12, :cond_2

    .line 305
    new-instance v8, Lcom/huawei/ims/ServiceStatus;

    invoke-direct {v8}, Lcom/huawei/ims/ServiceStatus;-><init>()V

    .line 306
    .local v8, "srv":Lcom/huawei/ims/ServiceStatus;
    move-object/from16 v0, p2

    iget-object v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    aget-object v12, v12, v2

    iget v12, v12, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v8, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 307
    move-object/from16 v0, p2

    iget-object v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    aget-object v12, v12, v2

    iget v12, v12, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    iput v12, v8, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 308
    move-object/from16 v0, p2

    iget-object v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    aget-object v12, v12, v2

    iget v12, v12, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    iput v12, v8, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 309
    move-object/from16 v0, p2

    iget-object v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    aget-object v12, v12, v2

    iget-object v7, v12, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    .line 310
    .local v7, "rILImsUserData":Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;
    iget v11, v7, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;->len:I

    .line 311
    .local v11, "usNum":I
    new-array v10, v11, [B

    .line 312
    .local v10, "ud":[B
    iget-object v12, v7, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;->data:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 313
    iput-object v10, v8, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 314
    const/4 v12, 0x1

    new-array v12, v12, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v12, v8, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 316
    move-object/from16 v0, p2

    iget-object v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    aget-object v5, v12, v2

    .line 317
    .local v5, "rILImsServiceStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/4 v12, 0x1

    if-ge v4, v12, :cond_1

    .line 318
    iget-object v12, v5, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    aget-object v6, v12, v4

    .line 319
    .local v6, "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;
    new-instance v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    .line 320
    .local v1, "accessTechStatus":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    iget v12, v6, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->restrictCause:I

    iput v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 321
    iget v12, v6, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->nwMode:I

    iput v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 322
    iget v12, v6, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->srvStatus:I

    iput v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 323
    iget v12, v6, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->regStatus:I

    iput v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 324
    iget-object v12, v8, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    aput-object v1, v12, v4

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 306
    .end local v1    # "accessTechStatus":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v4    # "j":I
    .end local v5    # "rILImsServiceStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    .end local v6    # "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;
    .end local v7    # "rILImsUserData":Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;
    .end local v10    # "ud":[B
    .end local v11    # "usNum":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 326
    .restart local v4    # "j":I
    .restart local v5    # "rILImsServiceStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    .restart local v7    # "rILImsUserData":Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;
    .restart local v10    # "ud":[B
    .restart local v11    # "usNum":I
    :cond_1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v4    # "j":I
    .end local v5    # "rILImsServiceStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    .end local v7    # "rILImsUserData":Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;
    .end local v8    # "srv":Lcom/huawei/ims/ServiceStatus;
    .end local v10    # "ud":[B
    .end local v11    # "usNum":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v12, v12, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v12, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v12, v12, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v13, Landroid/os/AsyncResult;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v9, v15}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v12, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 332
    :cond_3
    return-void
.end method

.method public imsSuppSrvInd(ILvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsSuppSvcNofitication"    # Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 336
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbca

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 337
    new-instance v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    invoke-direct {v0, p2}, Lcom/huawei/ims/HwImsSuppServiceNotification;-><init>(Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;)V

    .line 338
    .local v0, "notification":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 341
    :cond_0
    return-void
.end method

.method public imsVoiceBandInfo(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "bandInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 344
    const-string/jumbo v1, "ImsRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imsVoiceBandInfo ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",bandInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 346
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 347
    .local v0, "bands":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbcb

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 348
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 351
    :cond_0
    return-void
.end method

.method public imsaToVowifiMsg(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public imsaToVowifiMsg(ILjava/util/List;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "msg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public indicateRingbackTone(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "start"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "lce"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .prologue
    .line 209
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public networkStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 82
    return-void
.end method

.method public newBroadcastSms(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public newSms(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public newSmsOnSim(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "recordNumber"    # I

    .prologue
    .line 91
    return-void
.end method

.method public newSmsStatusReport(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;J)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "nitzTime"    # Ljava/lang/String;
    .param p3, "receivedTime"    # J

    .prologue
    .line 97
    return-void
.end method

.method public oemHookRaw(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ss"    # Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    .prologue
    .line 203
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ussdModeType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Landroid/hardware/radio/V1_0/PcoDataInfo;

    .prologue
    .line 213
    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .prologue
    .line 200
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "radioState"    # I

    .prologue
    .line 71
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 165
    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .prologue
    .line 143
    return-void
.end method

.method public rilConnected(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 177
    return-void
.end method

.method public simHotplugChanged(I[I)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "states"    # [I

    .prologue
    .line 68
    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "refreshResult"    # Landroid/hardware/radio/V1_0/SimRefreshResult;

    .prologue
    .line 125
    return-void
.end method

.method public simSmsStorageFull(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 122
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 131
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .prologue
    .line 190
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "alpha"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 119
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .prologue
    .line 110
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "activate"    # Z

    .prologue
    .line 187
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .prologue
    .line 107
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "rat"    # I

    .prologue
    .line 180
    return-void
.end method

.method public vsimOtaSmsReport(ILvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "vsimOtaSms"    # Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;

    .prologue
    .line 226
    return-void
.end method

.method public vtFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;)V
    .locals 12
    .param p1, "indicationType"    # I
    .param p2, "rilVtFlowInfoReport"    # Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 236
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    const-string/jumbo v4, "ImsRadioIndication"

    const-string/jumbo v5, "ro.config.vt_flow_info=false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v4, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 241
    const-string/jumbo v4, "ImsRadioIndication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currVtTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->currVtTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "currTxFlow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "currRxFlow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p2, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    invoke-static {v4, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    iget-object v6, p2, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 244
    .local v0, "currCallDataUsage":J
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getPreCallDataUsage()J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 246
    .local v2, "tempCallDataUsage":J
    const-string/jumbo v4, "ImsRadioIndication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currCallDataUsage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";tempCallDataUsage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    cmp-long v4, v2, v10

    if-lez v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v4, v4, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 255
    :goto_0
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setPreCallDataUsage(J)V

    .line 257
    return-void

    .line 249
    :cond_1
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v4, v4, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 252
    :cond_2
    const-string/jumbo v4, "ImsRadioIndication"

    const-string/jumbo v5, "video call dataUsage is not change"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
