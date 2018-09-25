.class public Lcom/huawei/ims/ImsRadioResponse;
.super Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;
.source "ImsRadioResponse.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioResponse"


# instance fields
.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    .line 59
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 61
    return-void
.end method

.method private responseCurrentImsCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v5

    .line 508
    .local v5, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v5, :cond_4

    .line 509
    const/4 v4, 0x0

    .line 510
    .local v4, "ret":Ljava/lang/Object;
    iget v6, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v6, :cond_3

    .line 514
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 515
    .local v3, "num":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .local v1, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 517
    new-instance v0, Lcom/huawei/ims/DriverCallIms;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    invoke-direct {v0, v6}, Lcom/huawei/ims/DriverCallIms;-><init>(Lvendor/huawei/hardware/radio/V1_0/RILImsCall;)V

    .line 518
    .local v0, "dc":Lcom/huawei/ims/DriverCallIms;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 519
    const/4 v6, 0x2

    iput v6, v0, Lcom/huawei/ims/DriverCallIms;->namePresentation:I

    .line 520
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string/jumbo v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 522
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-boolean v6, v0, Lcom/huawei/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 524
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 525
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string/jumbo v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 516
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 528
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string/jumbo v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 532
    .end local v0    # "dc":Lcom/huawei/ims/DriverCallIms;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 533
    move-object v4, v1

    .line 534
    iget-object v6, v5, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v6, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 536
    .end local v1    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverCallIms;>;"
    .end local v2    # "i":I
    .end local v3    # "num":I
    .end local v4    # "ret":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6, v5, p1, v4}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 538
    :cond_4
    return-void
.end method

.method private responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 855
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v5, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v4

    .line 857
    .local v4, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v4, :cond_2

    .line 858
    const/4 v3, 0x0

    .line 859
    .local v3, "ret":Ljava/lang/Object;
    iget v5, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v5, :cond_1

    .line 860
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 861
    .local v1, "list_size":I
    new-array v2, v1, [I

    .line 862
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 863
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v0

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    move-object v3, v2

    .line 866
    iget-object v5, v4, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v5, v2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 868
    .end local v0    # "i":I
    .end local v1    # "list_size":I
    .end local v2    # "response":[I
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v5, v4, p1, v3}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 870
    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .prologue
    .line 847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v1, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 849
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/huawei/ims/ImsRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 852
    return-void
.end method

.method private responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 154
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v2, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 157
    .local v0, "response":[I
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_0

    .line 158
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 159
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    iget v3, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v3, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 160
    iget v3, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    aput v3, v0, v4

    .line 162
    iget-object v3, v2, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 164
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v2, p1, v0}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 166
    .end local v0    # "response":[I
    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 874
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v1, :cond_1

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 877
    move-object v0, p2

    .line 878
    iget-object v2, v1, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, p2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 880
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 882
    :cond_1
    return-void
.end method

.method private responseUiccAuth(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 16
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    .prologue
    .line 769
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseUiccAuth, info="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "uiccAuthRst="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v11

    .line 771
    .local v11, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v11, :cond_1

    .line 772
    const/4 v10, 0x0

    .line 773
    .local v10, "ret":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v12, :cond_0

    .line 774
    const-string/jumbo v12, "ImsRadioResponse"

    const-string/jumbo v13, "NO ERROR,start to process GbaAuth"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    .line 776
    .local v3, "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    move-object/from16 v0, p2

    iget v12, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    iput v12, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 777
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseUiccAuth, mStatus="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget v12, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    packed-switch v12, :pswitch_data_0

    .line 835
    :goto_0
    :pswitch_0
    move-object v10, v3

    .line 836
    iget-object v12, v11, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 838
    .end local v3    # "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    .end local v10    # "ret":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v0, p1

    invoke-virtual {v12, v11, v0, v10}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 840
    :cond_1
    return-void

    .line 780
    .restart local v3    # "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    .restart local v10    # "ret":Ljava/lang/Object;
    :pswitch_1
    new-instance v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    invoke-direct {v1}, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;-><init>()V

    .line 782
    .local v1, "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    new-instance v12, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v12}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 783
    move-object/from16 v0, p2

    iget-object v4, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    .line 784
    .local v4, "authChang":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    iget-object v9, v4, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->resData:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESTYPE;

    .line 785
    .local v9, "resDatas":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESTYPE;
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v13, v9, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESTYPE;->resPresent:I

    iput v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 786
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mRes.mPresent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v13, v9, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESTYPE;->res:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 790
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "res="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 791
    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    .line 792
    const/4 v15, 0x4

    .line 791
    invoke-static {v14, v15}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 790
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v12, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v12}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 795
    iget-object v8, v4, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ikData:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHIKTYPE;

    .line 796
    .local v8, "ikType":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHIKTYPE;
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v13, v8, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHIKTYPE;->ikPresent:I

    iput v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 797
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIk.mPresent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v13, v8, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHIKTYPE;->ik:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 800
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ik="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 801
    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    .line 802
    const/4 v15, 0x4

    .line 801
    invoke-static {v14, v15}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 800
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v12, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v12}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 806
    iget-object v6, v4, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ckData:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHCKTYPE;

    .line 807
    .local v6, "ckDatas":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHCKTYPE;
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v13, v6, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHCKTYPE;->ckPresent:I

    iput v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 808
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mCk.mPresent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v12, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v13, v6, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHCKTYPE;->ck:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 811
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ck="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 812
    iget-object v14, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    .line 813
    const/4 v15, 0x4

    .line 812
    invoke-static {v14, v15}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 811
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iput-object v1, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    goto/16 :goto_0

    .line 820
    .end local v1    # "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    .end local v4    # "authChang":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    .end local v6    # "ckDatas":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHCKTYPE;
    .end local v8    # "ikType":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHIKTYPE;
    .end local v9    # "resDatas":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESTYPE;
    :pswitch_2
    new-instance v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$AuthSyncfail;-><init>()V

    .line 821
    .local v2, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v12, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v12}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v12, v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 822
    move-object/from16 v0, p2

    iget-object v7, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    .line 823
    .local v7, "failType":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    iget-object v5, v7, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHAUTSTYPE;

    .line 824
    .local v5, "autsDatas":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHAUTSTYPE;
    iget-object v12, v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v13, v5, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHAUTSTYPE;->autsPresent:I

    iput v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 825
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mAuts.mPresent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v12, v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v13, v5, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHAUTSTYPE;->auts:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 827
    const-string/jumbo v12, "ImsRadioResponse"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mAuts="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v14, v14, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iput-object v2, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    goto/16 :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 487
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v1, :cond_1

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 490
    iget-object v2, v1, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v1, p1, v0}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 494
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public RspMsg(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/V1_0/RspMsgPayload;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;

    .prologue
    .line 635
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RspMsg:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sparse-switch p2, :sswitch_data_0

    .line 744
    :goto_0
    :sswitch_0
    return-void

    .line 638
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->imsDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 642
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 646
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->getLteInfoRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 659
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->acceptImsCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 663
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMPCSCFResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 667
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMDYNResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 671
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMTIMERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 675
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMSMSReponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 679
    :sswitch_9
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMPCSCFResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :sswitch_a
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMTIMERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :sswitch_b
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMDYNResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :sswitch_c
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMSMSResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :sswitch_d
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMUSERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :sswitch_e
    const-string/jumbo v0, "ImsRadioResponse"

    const-string/jumbo v1, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->sendBatteryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 711
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 715
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallConfirmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 720
    :sswitch_12
    iget-object v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getImsImpuResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsVtCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 731
    :sswitch_14
    iget v0, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->nData:I

    iget-object v1, p3, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/ImsRadioResponse;->responseHwImsLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/lang/String;)V

    goto :goto_0

    .line 737
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->switchWaitingOrHoldingAndActiveForImsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto :goto_0

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc -> :sswitch_1
        0xe3 -> :sswitch_0
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_0
        0xe7 -> :sswitch_4
        0xf6 -> :sswitch_12
        0x100 -> :sswitch_2
        0x113 -> :sswitch_10
        0x114 -> :sswitch_11
        0x136 -> :sswitch_3
        0x13c -> :sswitch_5
        0x13d -> :sswitch_6
        0x13e -> :sswitch_7
        0x13f -> :sswitch_8
        0x140 -> :sswitch_9
        0x141 -> :sswitch_a
        0x142 -> :sswitch_b
        0x143 -> :sswitch_c
        0x144 -> :sswitch_d
        0x147 -> :sswitch_f
        0x14f -> :sswitch_14
        0x150 -> :sswitch_13
        0x151 -> :sswitch_e
        0x156 -> :sswitch_15
    .end sparse-switch
.end method

.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 243
    return-void
.end method

.method public acceptImsCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 554
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 394
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 349
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 241
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processRequestAck(I)V

    .line 84
    return-void
.end method

.method public addImsConfMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 566
    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 221
    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 105
    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 103
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 138
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "conferenceResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 140
    return-void
.end method

.method public deactivateDataCallEmergencyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 899
    return-void
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 245
    return-void
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 374
    return-void
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 301
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 113
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 382
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 315
    const-string/jumbo v0, "ImsRadioResponse"

    const-string/jumbo v1, "explicitCallTransferResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 317
    return-void
.end method

.method public explicitImsCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 599
    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;

    .prologue
    .line 467
    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public getAvailableCsgIdsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, "csgNetworkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;>;"
    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;
    .param p5, "var5"    # Ljava/lang/String;
    .param p6, "var6"    # Ljava/lang/String;

    .prologue
    .line 370
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .prologue
    .line 237
    return-void
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 332
    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 390
    return-void
.end method

.method public getCellInfoListOtdoaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 284
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    .line 223
    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    return-void
.end method

.method public getCurrentImsCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentImsCallsResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 504
    return-void
.end method

.method public getDMDYNResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public getDMPCSCFResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public getDMSMSResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public getDMTIMERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public getDMUSERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/DataRegStateResult;

    .prologue
    .line 193
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;
    .param p5, "var5"    # Ljava/lang/String;

    .prologue
    .line 380
    return-void
.end method

.method public getDeviceVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "deviceVersion"    # Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;

    .prologue
    .line 474
    return-void
.end method

.method public getDsFlowInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dsFlowInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;

    .prologue
    .line 477
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 247
    return-void
.end method

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    return-void
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_0/CardStatus;

    .prologue
    .line 93
    return-void
.end method

.method public getImsImpuResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public getImsRegisterStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "regState"    # I

    .prologue
    .line 541
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 542
    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    const/4 v0, 0x2

    new-array v3, v0, [I

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    aput v0, v3, v2

    aput p3, v3, v1

    invoke-direct {p0, p1, v3}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 762
    return-void

    :cond_0
    move v0, v2

    .line 761
    goto :goto_0
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .prologue
    .line 146
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "var2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 148
    return-void
.end method

.method public getLastImsCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "ret"    # I

    .prologue
    .line 549
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 550
    return-void
.end method

.method public getLteInfoRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 603
    return-void
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    .prologue
    .line 461
    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z

    .prologue
    .line 282
    return-void
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public getPolListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "preferredplmnselector"    # Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;

    .prologue
    .line 480
    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 321
    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z

    .prologue
    .line 341
    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .prologue
    .line 449
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .prologue
    .line 187
    return-void
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 384
    return-void
.end method

.method public getSystemInfoExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sysInfo"    # Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;

    .prologue
    .line 483
    return-void
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 336
    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 399
    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .prologue
    .line 190
    return-void
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 312
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 118
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupConnectionResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 120
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 128
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupForegroundResumeBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 130
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 123
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hangupWaitingOrBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 125
    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 418
    return-void
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .prologue
    .line 217
    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p3, "var3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .prologue
    .line 412
    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .prologue
    .line 422
    return-void
.end method

.method public imsConferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 546
    return-void
.end method

.method public imsDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 89
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsDialResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 91
    return-void
.end method

.method public manualSelectionCsgIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 890
    return-void
.end method

.method public modifyImsCallConfirmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 583
    return-void
.end method

.method public modifyImsCallInitiateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 579
    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 424
    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 430
    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 428
    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 426
    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .prologue
    .line 458
    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 142
    return-void
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 388
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 758
    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .prologue
    .line 442
    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 392
    return-void
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 446
    return-void
.end method

.method public responseHwImsLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/lang/String;)V
    .locals 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "failCause"    # I
    .param p3, "failString"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v3, "ImsRadioResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHwImsLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "failCause = "

    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "failString = "

    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v2

    .line 174
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v2, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "ret":Ljava/lang/Object;
    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_0

    .line 177
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .local v0, "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object v1, v0

    .line 179
    iget-object v3, v2, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 181
    .end local v0    # "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v2, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 183
    :cond_1
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 844
    return-void
.end method

.method public sendBatteryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 633
    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 345
    return-void
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 343
    return-void
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .prologue
    .line 347
    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 469
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 203
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 205
    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 308
    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .prologue
    .line 397
    return-void
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .prologue
    .line 408
    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    return-void
.end method

.method public sendOemRilRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .prologue
    .line 211
    return-void
.end method

.method public sendScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 295
    return-void
.end method

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .prologue
    .line 208
    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 310
    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 219
    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 275
    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 463
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 303
    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 251
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 233
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 239
    return-void
.end method

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 363
    return-void
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 361
    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 330
    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 328
    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 404
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 226
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClirResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 228
    return-void
.end method

.method public setDMDYNResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 609
    return-void
.end method

.method public setDMPCSCFResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 606
    return-void
.end method

.method public setDMSMSReponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 615
    return-void
.end method

.method public setDMTIMERResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 612
    return-void
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 434
    return-void
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 444
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 249
    return-void
.end method

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 356
    return-void
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 354
    return-void
.end method

.method public setImsCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 573
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsCallWaitingResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 575
    return-void
.end method

.method public setImsClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 570
    return-void
.end method

.method public setImsMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 558
    return-void
.end method

.method public setImsVtCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 588
    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 471
    return-void
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 406
    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 326
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 278
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMuteResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 280
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 255
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 257
    return-void
.end method

.method public setPowerGradeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 86
    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 319
    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 338
    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .prologue
    .line 452
    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 200
    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 751
    return-void
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 386
    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 297
    return-void
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 334
    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 432
    return-void
.end method

.method public setupDataCallEmergencyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .prologue
    .line 903
    return-void
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .prologue
    .line 214
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 264
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 266
    return-void
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .prologue
    .line 454
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 269
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 271
    return-void
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .prologue
    .line 456
    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 99
    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 95
    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 101
    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .prologue
    .line 97
    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .prologue
    .line 108
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForImsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 594
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .prologue
    .line 133
    const-string/jumbo v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchWaitingOrHoldingAndActiveResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 135
    return-void
.end method

.method public uiccAuthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseUiccAuth(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;)V

    .line 766
    return-void
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 372
    return-void
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .prologue
    .line 299
    return-void
.end method
