.class public abstract Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4527
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 4530
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 4574
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4575
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4576
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4577
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 4549
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    .line 4550
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4551
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4552
    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4549
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4550
    nop

    :array_0
    .array-data 1
        -0x7et
        0x39t
        -0x58t
        0x44t
        0x6bt
        -0x1t
        0x75t
        0x54t
        0x6ft
        0x4at
        -0x2dt
        -0x6ct
        0x58t
        -0xat
        -0x64t
        -0x75t
        0x23t
        0x7bt
        -0x34t
        -0x32t
        -0x6dt
        0x7et
        -0x79t
        -0x31t
        0x7et
        -0x61t
        0x12t
        -0x1ft
        -0x5dt
        0x14t
        -0x27t
        -0x66t
    .end array-data

    .line 4551
    :array_1
    .array-data 1
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
    .end array-data

    .line 4552
    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4535
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 4536
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4537
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4538
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4535
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4543
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 4563
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 4582
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 4583
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 192
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4611
    sparse-switch p1, :sswitch_data_0

    .line 7124
    :goto_0
    :sswitch_0
    return-void

    .line 4614
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v151

    .line 4617
    .local v151, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v149

    .line 4618
    .local v149, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v149

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4619
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 4626
    .end local v149    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    .end local v151    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4629
    .local v5, "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_0

    .line 4635
    .end local v5    # "serial":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4638
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v139

    .line 4639
    .local v139, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4640
    .local v47, "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4646
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v139    # "pin":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4649
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v146

    .line 4650
    .local v146, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v139

    .line 4651
    .restart local v139    # "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4652
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v139

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4658
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v139    # "pin":Ljava/lang/String;
    .end local v146    # "puk":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4661
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 4662
    .local v140, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4663
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4669
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v140    # "pin2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4672
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v147

    .line 4673
    .local v147, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 4674
    .restart local v140    # "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4675
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move-object/from16 v2, v140

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4681
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v140    # "pin2":Ljava/lang/String;
    .end local v147    # "puk2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4684
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 4685
    .local v127, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 4686
    .local v121, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4687
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v121

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4693
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v121    # "newPin":Ljava/lang/String;
    .end local v127    # "oldPin":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4696
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 4697
    .local v128, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v122

    .line 4698
    .local v122, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4699
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move-object/from16 v2, v122

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4705
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v122    # "newPin2":Ljava/lang/String;
    .end local v128    # "oldPin2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4708
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 4709
    .local v119, "netPin":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v119

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4715
    .end local v5    # "serial":I
    .end local v119    # "netPin":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4718
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_0

    .line 4724
    .end local v5    # "serial":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4727
    .restart local v5    # "serial":I
    new-instance v84, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct/range {v84 .. v84}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4728
    .local v84, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    move-object/from16 v0, v84

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4729
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_0

    .line 4735
    .end local v5    # "serial":I
    .end local v84    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4738
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4739
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4745
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4748
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v98

    .line 4749
    .local v98, "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    goto/16 :goto_0

    .line 4755
    .end local v5    # "serial":I
    .end local v98    # "gsmIndex":I
    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4758
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_0

    .line 4764
    .end local v5    # "serial":I
    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4767
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_0

    .line 4773
    .end local v5    # "serial":I
    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4776
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_0

    .line 4782
    .end local v5    # "serial":I
    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4785
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    goto/16 :goto_0

    .line 4791
    .end local v5    # "serial":I
    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4794
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_0

    .line 4800
    .end local v5    # "serial":I
    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4803
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_0

    .line 4809
    .end local v5    # "serial":I
    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4812
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_0

    .line 4818
    .end local v5    # "serial":I
    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4821
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_0

    .line 4827
    .end local v5    # "serial":I
    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4830
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_0

    .line 4836
    .end local v5    # "serial":I
    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4839
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_0

    .line 4845
    .end local v5    # "serial":I
    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4848
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v130

    .line 4849
    .local v130, "on":Z
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_0

    .line 4855
    .end local v5    # "serial":I
    .end local v130    # "on":Z
    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4857
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4858
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 4859
    .local v162, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4865
    .end local v5    # "serial":I
    .end local v162    # "s":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4868
    .restart local v5    # "serial":I
    new-instance v109, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v109 .. v109}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4869
    .local v109, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4870
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 4876
    .end local v5    # "serial":I
    .end local v109    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4879
    .restart local v5    # "serial":I
    new-instance v109, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v109 .. v109}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4880
    .restart local v109    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4881
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 4887
    .end local v5    # "serial":I
    .end local v109    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4890
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4891
    .local v6, "radioTechnology":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4892
    .local v7, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 4894
    .local v8, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4895
    .local v9, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .local v10, "isRoaming":Z
    move-object/from16 v4, p0

    .line 4896
    invoke-virtual/range {v4 .. v10}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_0

    .line 4902
    .end local v5    # "serial":I
    .end local v6    # "radioTechnology":I
    .end local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v8    # "modemCognitive":Z
    .end local v9    # "roamingAllowed":Z
    .end local v10    # "isRoaming":Z
    :sswitch_1d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4905
    .restart local v5    # "serial":I
    new-instance v99, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct/range {v99 .. v99}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4906
    .local v99, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    move-object/from16 v0, v99

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_0

    .line 4913
    .end local v5    # "serial":I
    .end local v99    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4916
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v188

    .line 4917
    .local v188, "ussd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4923
    .end local v5    # "serial":I
    .end local v188    # "ussd":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4926
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    .line 4932
    .end local v5    # "serial":I
    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4935
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    .line 4941
    .end local v5    # "serial":I
    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4944
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 4945
    .local v176, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    goto/16 :goto_0

    .line 4951
    .end local v5    # "serial":I
    .end local v176    # "status":I
    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4954
    .restart local v5    # "serial":I
    new-instance v58, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4955
    .local v58, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4956
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 4962
    .end local v5    # "serial":I
    .end local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4965
    .restart local v5    # "serial":I
    new-instance v58, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4966
    .restart local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4967
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 4973
    .end local v5    # "serial":I
    .end local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4976
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4977
    .local v15, "serviceClass":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    .line 4983
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4986
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 4987
    .local v92, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4988
    .restart local v15    # "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1, v15}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_0

    .line 4994
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    .end local v92    # "enable":Z
    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4997
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v179

    .line 4998
    .local v179, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 4999
    .local v64, "cause":I
    move-object/from16 v0, p0

    move/from16 v1, v179

    move/from16 v2, v64

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_0

    .line 5005
    .end local v5    # "serial":I
    .end local v64    # "cause":I
    .end local v179    # "success":Z
    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5008
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_0

    .line 5014
    .end local v5    # "serial":I
    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5017
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    .line 5018
    .local v31, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v155

    .line 5019
    .local v155, "reasonRadioShutDown":Z
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v155

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_0

    .line 5025
    .end local v5    # "serial":I
    .end local v31    # "cid":I
    .end local v155    # "reasonRadioShutDown":Z
    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5028
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5029
    .local v13, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5030
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5031
    .restart local v15    # "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v11, p0

    move v12, v5

    .line 5032
    invoke-virtual/range {v11 .. v16}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5038
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5041
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5042
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v20

    .line 5043
    .local v20, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5044
    .restart local v14    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5045
    .restart local v15    # "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "appId":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v18, v5

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v23, v16

    .line 5046
    invoke-virtual/range {v17 .. v23}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5052
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    .end local v20    # "lockState":Z
    :sswitch_2b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5055
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5056
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v126

    .line 5057
    .local v126, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 5058
    .local v120, "newPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v120

    invoke-virtual {v0, v5, v13, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5064
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v120    # "newPassword":Ljava/lang/String;
    .end local v126    # "oldPassword":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5067
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_0

    .line 5073
    .end local v5    # "serial":I
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5076
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_0

    .line 5082
    .end local v5    # "serial":I
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5085
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v131

    .line 5086
    .local v131, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5092
    .end local v5    # "serial":I
    .end local v131    # "operatorNumeric":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5095
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_0

    .line 5101
    .end local v5    # "serial":I
    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5104
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 5105
    .restart local v162    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5111
    .end local v5    # "serial":I
    .end local v162    # "s":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5114
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    .line 5120
    .end local v5    # "serial":I
    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5123
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_0

    .line 5129
    .end local v5    # "serial":I
    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5132
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v98

    .line 5133
    .restart local v98    # "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_0

    .line 5139
    .end local v5    # "serial":I
    .end local v98    # "gsmIndex":I
    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5142
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 5143
    .restart local v92    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_0

    .line 5149
    .end local v5    # "serial":I
    .end local v92    # "enable":Z
    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5152
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    goto/16 :goto_0

    .line 5158
    .end local v5    # "serial":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5161
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    .line 5167
    .end local v5    # "serial":I
    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5170
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_0

    .line 5176
    .end local v5    # "serial":I
    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5179
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 5180
    .restart local v92    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_0

    .line 5186
    .end local v5    # "serial":I
    .end local v92    # "enable":Z
    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5189
    .restart local v5    # "serial":I
    new-instance v171, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct/range {v171 .. v171}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 5190
    .local v171, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    move-object/from16 v0, v171

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5191
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_0

    .line 5197
    .end local v5    # "serial":I
    .end local v171    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5200
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v101

    .line 5201
    .local v101, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_0

    .line 5207
    .end local v5    # "serial":I
    .end local v101    # "index":I
    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5210
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v112

    .line 5211
    .local v112, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_0

    .line 5217
    .end local v5    # "serial":I
    .end local v112    # "mode":I
    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5220
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_0

    .line 5226
    .end local v5    # "serial":I
    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5229
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v72

    .line 5230
    .local v72, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5236
    .end local v5    # "serial":I
    .end local v72    # "command":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5239
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 5240
    .local v73, "commandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5246
    .end local v5    # "serial":I
    .end local v73    # "commandResponse":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5249
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v44

    .line 5250
    .local v44, "accept":Z
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_0

    .line 5256
    .end local v5    # "serial":I
    .end local v44    # "accept":Z
    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5259
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_0

    .line 5265
    .end local v5    # "serial":I
    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5268
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v124

    .line 5269
    .local v124, "nwType":I
    move-object/from16 v0, p0

    move/from16 v1, v124

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_0

    .line 5275
    .end local v5    # "serial":I
    .end local v124    # "nwType":I
    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5278
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 5284
    .end local v5    # "serial":I
    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5287
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_0

    .line 5293
    .end local v5    # "serial":I
    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5296
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 5297
    .restart local v92    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_0

    .line 5303
    .end local v5    # "serial":I
    .end local v92    # "enable":Z
    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5306
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v66

    .line 5307
    .local v66, "cdmaSub":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_0

    .line 5313
    .end local v5    # "serial":I
    .end local v66    # "cdmaSub":I
    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5316
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v183

    .line 5317
    .local v183, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v183

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_0

    .line 5323
    .end local v5    # "serial":I
    .end local v183    # "type":I
    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5326
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_0

    .line 5332
    .end local v5    # "serial":I
    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5335
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v112

    .line 5336
    .restart local v112    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_0

    .line 5342
    .end local v5    # "serial":I
    .end local v112    # "mode":I
    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5345
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_0

    .line 5351
    .end local v5    # "serial":I
    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5354
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 5355
    .restart local v92    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_0

    .line 5361
    .end local v5    # "serial":I
    .end local v92    # "enable":Z
    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5364
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_0

    .line 5370
    .end local v5    # "serial":I
    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5373
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 5374
    .local v94, "featureCode":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5380
    .end local v5    # "serial":I
    .end local v94    # "featureCode":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5383
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 5384
    .local v87, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v129

    .line 5385
    .local v129, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v125

    .line 5386
    .local v125, "off":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v129

    move/from16 v3, v125

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 5392
    .end local v5    # "serial":I
    .end local v87    # "dtmf":Ljava/lang/String;
    .end local v125    # "off":I
    .end local v129    # "on":I
    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5395
    .restart local v5    # "serial":I
    new-instance v168, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v168 .. v168}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5396
    .local v168, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v0, v168

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5397
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    .line 5403
    .end local v5    # "serial":I
    .end local v168    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5406
    .restart local v5    # "serial":I
    new-instance v169, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct/range {v169 .. v169}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5407
    .local v169, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    move-object/from16 v0, v169

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5408
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_0

    .line 5414
    .end local v5    # "serial":I
    .end local v169    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5417
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_0

    .line 5423
    .end local v5    # "serial":I
    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5426
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v75

    .line 5427
    .local v75, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5433
    .end local v5    # "serial":I
    .end local v75    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5436
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v46

    .line 5437
    .local v46, "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 5443
    .end local v5    # "serial":I
    .end local v46    # "activate":Z
    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5446
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_0

    .line 5452
    .end local v5    # "serial":I
    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5455
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v74

    .line 5456
    .local v74, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5462
    .end local v5    # "serial":I
    .end local v74    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5465
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v46

    .line 5466
    .restart local v46    # "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 5472
    .end local v5    # "serial":I
    .end local v46    # "activate":Z
    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5475
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_0

    .line 5481
    .end local v5    # "serial":I
    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5484
    .restart local v5    # "serial":I
    new-instance v65, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct/range {v65 .. v65}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5485
    .local v65, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_0

    .line 5492
    .end local v5    # "serial":I
    .end local v65    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5495
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v101

    .line 5496
    .restart local v101    # "index":I
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_0

    .line 5502
    .end local v5    # "serial":I
    .end local v101    # "index":I
    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5505
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_0

    .line 5511
    .end local v5    # "serial":I
    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5514
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 5520
    .end local v5    # "serial":I
    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5523
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_0

    .line 5529
    .end local v5    # "serial":I
    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5532
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v172

    .line 5533
    .local v172, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5539
    .end local v5    # "serial":I
    .end local v172    # "smsc":Ljava/lang/String;
    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5542
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v56

    .line 5543
    .local v56, "available":Z
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_0

    .line 5549
    .end local v5    # "serial":I
    .end local v56    # "available":Z
    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5552
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_0

    .line 5558
    .end local v5    # "serial":I
    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5561
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_0

    .line 5567
    .end local v5    # "serial":I
    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5570
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 5571
    .local v67, "challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5577
    .end local v5    # "serial":I
    .end local v67    # "challenge":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5580
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v179

    .line 5581
    .restart local v179    # "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 5582
    .local v45, "ackPdu":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v179

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 5588
    .end local v5    # "serial":I
    .end local v45    # "ackPdu":Ljava/lang/String;
    .end local v179    # "success":Z
    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5591
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 5592
    .local v76, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5598
    .end local v5    # "serial":I
    .end local v76    # "contents":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5601
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_0

    .line 5607
    .end local v5    # "serial":I
    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5610
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_0

    .line 5616
    .end local v5    # "serial":I
    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5619
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v153

    .line 5620
    .local v153, "rate":I
    move-object/from16 v0, p0

    move/from16 v1, v153

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_0

    .line 5626
    .end local v5    # "serial":I
    .end local v153    # "rate":I
    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5629
    .restart local v5    # "serial":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5630
    .restart local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 5632
    .restart local v8    # "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5633
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8, v10}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_0

    .line 5639
    .end local v5    # "serial":I
    .end local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v8    # "modemCognitive":Z
    .end local v10    # "isRoaming":Z
    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5642
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_0

    .line 5648
    .end local v5    # "serial":I
    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5651
    .restart local v5    # "serial":I
    new-instance v110, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct/range {v110 .. v110}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5652
    .local v110, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5653
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_0

    .line 5659
    .end local v5    # "serial":I
    .end local v110    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5662
    .restart local v5    # "serial":I
    new-instance v111, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v111 .. v111}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5663
    .local v111, "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v111

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5664
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 5670
    .end local v5    # "serial":I
    .end local v111    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5673
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 5674
    .restart local v47    # "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v133

    .line 5675
    .local v133, "p2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v133

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 5681
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v133    # "p2":I
    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5684
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v68

    .line 5685
    .local v68, "channelId":I
    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_0

    .line 5691
    .end local v5    # "serial":I
    .end local v68    # "channelId":I
    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5694
    .restart local v5    # "serial":I
    new-instance v111, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v111 .. v111}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5695
    .restart local v111    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v111

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5696
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 5702
    .end local v5    # "serial":I
    .end local v111    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5705
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v107

    .line 5706
    .local v107, "itemId":I
    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_0

    .line 5712
    .end local v5    # "serial":I
    .end local v107    # "itemId":I
    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5715
    .restart local v5    # "serial":I
    new-instance v106, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct/range {v106 .. v106}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5716
    .local v106, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    move-object/from16 v0, v106

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5717
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_0

    .line 5723
    .end local v5    # "serial":I
    .end local v106    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5726
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v144

    .line 5727
    .local v144, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5733
    .end local v5    # "serial":I
    .end local v144    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5736
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v159

    .line 5737
    .local v159, "resetType":I
    move-object/from16 v0, p0

    move/from16 v1, v159

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_0

    .line 5743
    .end local v5    # "serial":I
    .end local v159    # "resetType":I
    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5746
    .restart local v5    # "serial":I
    new-instance v185, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct/range {v185 .. v185}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5747
    .local v185, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    move-object/from16 v0, v185

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5748
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_0

    .line 5754
    .end local v5    # "serial":I
    .end local v185    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5757
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v49

    .line 5758
    .local v49, "allow":Z
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_0

    .line 5764
    .end local v5    # "serial":I
    .end local v49    # "allow":Z
    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5767
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_0

    .line 5773
    .end local v5    # "serial":I
    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5776
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v54

    .line 5777
    .local v54, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 5778
    .local v55, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 5779
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5785
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v54    # "authContext":I
    .end local v55    # "authData":Ljava/lang/String;
    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5788
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v145

    .line 5789
    .local v145, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5790
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v5, v1, v10}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 5796
    .end local v5    # "serial":I
    .end local v10    # "isRoaming":Z
    .end local v145    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5799
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_0

    .line 5805
    .end local v5    # "serial":I
    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5808
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_0

    .line 5814
    .end local v5    # "serial":I
    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5817
    .restart local v5    # "serial":I
    new-instance v154, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v154 .. v154}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5818
    .local v154, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v154

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5819
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 5825
    .end local v5    # "serial":I
    .end local v154    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5828
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v156

    .line 5829
    .local v156, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v148

    .line 5830
    .local v148, "pullMode":Z
    move-object/from16 v0, p0

    move/from16 v1, v156

    move/from16 v2, v148

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_0

    .line 5836
    .end local v5    # "serial":I
    .end local v148    # "pullMode":Z
    .end local v156    # "reportInterval":I
    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5839
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_0

    .line 5845
    .end local v5    # "serial":I
    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5848
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_0

    .line 5854
    .end local v5    # "serial":I
    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5857
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_0

    .line 5863
    .end local v5    # "serial":I
    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5866
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v48

    .line 5867
    .local v48, "allAllowed":Z
    new-instance v63, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5868
    .local v63, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5869
    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v63

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    .line 5875
    .end local v5    # "serial":I
    .end local v48    # "allAllowed":Z
    .end local v63    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5878
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_0

    .line 5884
    .end local v5    # "serial":I
    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5887
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v82

    .line 5888
    .local v82, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v175

    .line 5889
    .local v175, "state":Z
    move-object/from16 v0, p0

    move/from16 v1, v82

    move/from16 v2, v175

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_0

    .line 5895
    .end local v5    # "serial":I
    .end local v82    # "deviceStateType":I
    .end local v175    # "state":Z
    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5898
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v105

    .line 5899
    .local v105, "indicationFilter":I
    move-object/from16 v0, p0

    move/from16 v1, v105

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_0

    .line 5905
    .end local v5    # "serial":I
    .end local v105    # "indicationFilter":I
    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5908
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v141

    .line 5909
    .local v141, "powerUp":Z
    move-object/from16 v0, p0

    move/from16 v1, v141

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_0

    .line 5915
    .end local v5    # "serial":I
    .end local v141    # "powerUp":Z
    :sswitch_82
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5917
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_0

    .line 5923
    :sswitch_83
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;

    move-result-object v152

    .line 5926
    .local v152, "radioResponse":Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;

    move-result-object v150

    .line 5927
    .local v150, "radioIndication":Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v150

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;)V

    .line 5928
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 5935
    .end local v150    # "radioIndication":Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
    .end local v152    # "radioResponse":Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
    :sswitch_84
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5938
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 5939
    .local v143, "powergrade":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setPowerGrade(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5945
    .end local v5    # "serial":I
    .end local v143    # "powergrade":Ljava/lang/String;
    :sswitch_85
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5948
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSimHotplugState(I)V

    goto/16 :goto_0

    .line 5954
    .end local v5    # "serial":I
    :sswitch_86
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5957
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCardType(I)V

    goto/16 :goto_0

    .line 5963
    .end local v5    # "serial":I
    :sswitch_87
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5966
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaGsmImsi(I)V

    goto/16 :goto_0

    .line 5972
    .end local v5    # "serial":I
    :sswitch_88
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5975
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->restartRILD(I)V

    goto/16 :goto_0

    .line 5981
    .end local v5    # "serial":I
    :sswitch_89
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5984
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSimATR(I)V

    goto/16 :goto_0

    .line 5990
    .end local v5    # "serial":I
    :sswitch_8a
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5993
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getIccid(I)V

    goto/16 :goto_0

    .line 5999
    .end local v5    # "serial":I
    :sswitch_8b
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6002
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v113

    .line 6003
    .local v113, "modem1ToSlot":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v114

    .line 6004
    .local v114, "modem2ToSlot":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v115

    .line 6005
    .local v115, "modem3ToSlot":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    move/from16 v2, v114

    move/from16 v3, v115

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setSimSlot(IIII)V

    goto/16 :goto_0

    .line 6011
    .end local v5    # "serial":I
    .end local v113    # "modem1ToSlot":I
    .end local v114    # "modem2ToSlot":I
    .end local v115    # "modem3ToSlot":I
    :sswitch_8c
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6014
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSimSlot(I)V

    goto/16 :goto_0

    .line 6020
    .end local v5    # "serial":I
    :sswitch_8d
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6023
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v116

    .line 6024
    .local v116, "modemId":I
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setCdmaModeSide(II)V

    goto/16 :goto_0

    .line 6030
    .end local v5    # "serial":I
    .end local v116    # "modemId":I
    :sswitch_8e
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6033
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaModeSide(I)V

    goto/16 :goto_0

    .line 6039
    .end local v5    # "serial":I
    :sswitch_8f
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6042
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v112

    .line 6043
    .restart local v112    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setActiveModemMode(II)V

    goto/16 :goto_0

    .line 6049
    .end local v5    # "serial":I
    .end local v112    # "mode":I
    :sswitch_90
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6052
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 6053
    .restart local v47    # "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 6054
    .local v134, "p2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v134

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->openChannelWithP2(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6060
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v134    # "p2":Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6063
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getEccNum(I)V

    goto/16 :goto_0

    .line 6069
    .end local v5    # "serial":I
    :sswitch_92
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6072
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 6073
    .local v90, "ecclist_withcard":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 6074
    .local v89, "ecclist_nocard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v89

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6080
    .end local v5    # "serial":I
    .end local v89    # "ecclist_nocard":Ljava/lang/String;
    .end local v90    # "ecclist_withcard":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6083
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v174

    .line 6084
    .local v174, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v174

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setVoicecallBackGroundState(II)V

    goto/16 :goto_0

    .line 6090
    .end local v5    # "serial":I
    .end local v174    # "state":I
    :sswitch_94
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6093
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getVoicecallBackGroundState(I)V

    goto/16 :goto_0

    .line 6099
    .end local v5    # "serial":I
    :sswitch_95
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6102
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 6103
    .restart local v176    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setVoicePreferStatus(II)V

    goto/16 :goto_0

    .line 6109
    .end local v5    # "serial":I
    .end local v176    # "status":I
    :sswitch_96
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6112
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getVoicePreferStatus(I)V

    goto/16 :goto_0

    .line 6118
    .end local v5    # "serial":I
    :sswitch_97
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6121
    .restart local v5    # "serial":I
    new-instance v85, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;

    invoke-direct/range {v85 .. v85}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;-><init>()V

    .line 6122
    .local v85, "dialInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    move-object/from16 v0, v85

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6123
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->imsDial(ILvendor/huawei/hardware/radio/V1_0/RILImsDial;)V

    goto/16 :goto_0

    .line 6129
    .end local v5    # "serial":I
    .end local v85    # "dialInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    :sswitch_98
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6132
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCurrentImsCalls(I)V

    goto/16 :goto_0

    .line 6138
    .end local v5    # "serial":I
    :sswitch_99
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6141
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 6142
    .local v60, "callType":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->acceptImsCall(II)V

    goto/16 :goto_0

    .line 6148
    .end local v5    # "serial":I
    .end local v60    # "callType":I
    :sswitch_9a
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6151
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v100

    .line 6152
    .local v100, "impuIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getImsImpu(II)V

    goto/16 :goto_0

    .line 6158
    .end local v5    # "serial":I
    .end local v100    # "impuIndex":I
    :sswitch_9b
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6161
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 6162
    .restart local v162    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->addImsConfMember(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6168
    .end local v5    # "serial":I
    .end local v162    # "s":Ljava/lang/String;
    :sswitch_9c
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6171
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 6172
    .restart local v92    # "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 6173
    .restart local v15    # "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v5, v1, v15}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setImsCallWaiting(IZI)V

    goto/16 :goto_0

    .line 6179
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    .end local v92    # "enable":Z
    :sswitch_9d
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6182
    .restart local v5    # "serial":I
    new-instance v59, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct/range {v59 .. v59}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 6183
    .local v59, "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6184
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V

    goto/16 :goto_0

    .line 6190
    .end local v5    # "serial":I
    .end local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    :sswitch_9e
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6193
    .restart local v5    # "serial":I
    new-instance v59, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct/range {v59 .. v59}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 6194
    .restart local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6195
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V

    goto/16 :goto_0

    .line 6201
    .end local v5    # "serial":I
    .end local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    :sswitch_9f
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6204
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 6205
    .restart local v176    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setImsSwitch(II)V

    goto/16 :goto_0

    .line 6211
    .end local v5    # "serial":I
    .end local v176    # "status":I
    :sswitch_a0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6214
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getImsSwitch(I)V

    goto/16 :goto_0

    .line 6220
    .end local v5    # "serial":I
    :sswitch_a1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6223
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 6224
    .local v57, "callIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 6225
    .restart local v64    # "cause":I
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v64

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->rejectCallWithReason(III)V

    goto/16 :goto_0

    .line 6231
    .end local v5    # "serial":I
    .end local v57    # "callIndex":I
    .end local v64    # "cause":I
    :sswitch_a2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6234
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getChannelInfo(I)V

    goto/16 :goto_0

    .line 6240
    .end local v5    # "serial":I
    :sswitch_a3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6243
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v80

    .line 6244
    .local v80, "detachFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->dataConnectionDeatch(II)V

    goto/16 :goto_0

    .line 6250
    .end local v5    # "serial":I
    .end local v80    # "detachFlag":I
    :sswitch_a4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6253
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v53

    .line 6254
    .local v53, "attachFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->dataConnectionAttach(II)V

    goto/16 :goto_0

    .line 6260
    .end local v5    # "serial":I
    .end local v53    # "attachFlag":I
    :sswitch_a5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6263
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v118

    .line 6264
    .local v118, "msgFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setLongMessage(II)V

    goto/16 :goto_0

    .line 6270
    .end local v5    # "serial":I
    .end local v118    # "msgFlag":I
    :sswitch_a6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6273
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->resetAllConnections(I)V

    goto/16 :goto_0

    .line 6279
    .end local v5    # "serial":I
    :sswitch_a7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6282
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v189

    .line 6283
    .local v189, "version":I
    move-object/from16 v0, p0

    move/from16 v1, v189

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setLteReleaseVersion(II)V

    goto/16 :goto_0

    .line 6289
    .end local v5    # "serial":I
    .end local v189    # "version":I
    :sswitch_a8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6292
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLteReleaseVersion(I)V

    goto/16 :goto_0

    .line 6298
    .end local v5    # "serial":I
    :sswitch_a9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6301
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v86

    .line 6302
    .local v86, "domain":I
    move-object/from16 v0, p0

    move/from16 v1, v86

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setImsDomain(II)V

    goto/16 :goto_0

    .line 6308
    .end local v5    # "serial":I
    .end local v86    # "domain":I
    :sswitch_aa
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6311
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getImsDomain(I)V

    goto/16 :goto_0

    .line 6317
    .end local v5    # "serial":I
    :sswitch_ab
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6320
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v117

    .line 6321
    .local v117, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->vowifiToImsaMsg(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 6327
    .end local v5    # "serial":I
    .end local v117    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_ac
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6330
    .restart local v5    # "serial":I
    new-instance v184, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    invoke-direct/range {v184 .. v184}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;-><init>()V

    .line 6331
    .local v184, "uiccAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    move-object/from16 v0, v184

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6332
    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->uiccAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V

    goto/16 :goto_0

    .line 6338
    .end local v5    # "serial":I
    .end local v184    # "uiccAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :sswitch_ad
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6341
    .restart local v5    # "serial":I
    new-instance v97, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    invoke-direct/range {v97 .. v97}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;-><init>()V

    .line 6342
    .local v97, "gbaParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    move-object/from16 v0, v97

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6343
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V

    goto/16 :goto_0

    .line 6349
    .end local v5    # "serial":I
    .end local v97    # "gbaParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :sswitch_ae
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6352
    .restart local v5    # "serial":I
    new-instance v187, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;

    invoke-direct/range {v187 .. v187}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 6353
    .local v187, "uiccUpdateParam":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6354
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->updateUiccFile(ILvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;)V

    goto/16 :goto_0

    .line 6360
    .end local v5    # "serial":I
    .end local v187    # "uiccUpdateParam":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    :sswitch_af
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6363
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v186

    .line 6364
    .local v186, "uiccType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v96

    .line 6365
    .local v96, "fileId":I
    move-object/from16 v0, p0

    move/from16 v1, v186

    move/from16 v2, v96

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getUiccFile(III)V

    goto/16 :goto_0

    .line 6371
    .end local v5    # "serial":I
    .end local v96    # "fileId":I
    .end local v186    # "uiccType":I
    :sswitch_b0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6374
    .restart local v5    # "serial":I
    new-instance v108, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;

    invoke-direct/range {v108 .. v108}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;-><init>()V

    .line 6375
    .local v108, "ksNafAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;
    move-object/from16 v0, v108

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6376
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->uiccKsNafAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;)V

    goto/16 :goto_0

    .line 6382
    .end local v5    # "serial":I
    .end local v108    # "ksNafAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;
    :sswitch_b1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6385
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v93

    .line 6386
    .local v93, "enabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v181

    .line 6387
    .local v181, "threshHold":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    move/from16 v2, v181

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setVtLlteQualityRptCfg(III)V

    goto/16 :goto_0

    .line 6393
    .end local v5    # "serial":I
    .end local v93    # "enabled":I
    .end local v181    # "threshHold":I
    :sswitch_b2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6396
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->clearDsFlowInfo(I)V

    goto/16 :goto_0

    .line 6402
    .end local v5    # "serial":I
    :sswitch_b3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6405
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLocationInfo(I)V

    goto/16 :goto_0

    .line 6411
    .end local v5    # "serial":I
    :sswitch_b4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6414
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 6415
    .local v142, "power_grade":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setWifiPowerGrade(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6421
    .end local v5    # "serial":I
    .end local v142    # "power_grade":Ljava/lang/String;
    :sswitch_b5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6424
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v81

    .line 6425
    .local v81, "device":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 6426
    .local v177, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v157

    .line 6427
    .local v157, "reserve":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v177

    move-object/from16 v3, v157

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->impactAntDevstate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6433
    .end local v5    # "serial":I
    .end local v81    # "device":Ljava/lang/String;
    .end local v157    # "reserve":Ljava/lang/String;
    .end local v177    # "status":Ljava/lang/String;
    :sswitch_b6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6436
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 6437
    .local v52, "at_rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v173

    .line 6438
    .local v173, "srv_domain":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v173

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setNetworkRatAndSrvDomain(III)V

    goto/16 :goto_0

    .line 6444
    .end local v5    # "serial":I
    .end local v52    # "at_rat":I
    .end local v173    # "srv_domain":I
    :sswitch_b7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6447
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v101

    .line 6448
    .restart local v101    # "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v91

    .line 6449
    .local v91, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v164

    .line 6450
    .local v164, "slot":I
    move-object/from16 v0, p0

    move/from16 v1, v101

    move/from16 v2, v91

    move/from16 v3, v164

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setVsimSimState(IIII)V

    goto/16 :goto_0

    .line 6456
    .end local v5    # "serial":I
    .end local v91    # "enable":I
    .end local v101    # "index":I
    .end local v164    # "slot":I
    :sswitch_b8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6459
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getVsimSimState(I)V

    goto/16 :goto_0

    .line 6465
    .end local v5    # "serial":I
    :sswitch_b9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6468
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSystemInfoEx(I)V

    goto/16 :goto_0

    .line 6474
    .end local v5    # "serial":I
    :sswitch_ba
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6477
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getPlmnInfo(I)V

    goto/16 :goto_0

    .line 6483
    .end local v5    # "serial":I
    :sswitch_bb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6486
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getPolCapability(I)V

    goto/16 :goto_0

    .line 6492
    .end local v5    # "serial":I
    :sswitch_bc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6495
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getPolList(I)V

    goto/16 :goto_0

    .line 6501
    .end local v5    # "serial":I
    :sswitch_bd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6504
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v102

    .line 6505
    .local v102, "index":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 6506
    .local v132, "opern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 6507
    .local v51, "arg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move-object/from16 v2, v132

    move-object/from16 v3, v51

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setPolEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6513
    .end local v5    # "serial":I
    .end local v51    # "arg":Ljava/lang/String;
    .end local v102    # "index":Ljava/lang/String;
    .end local v132    # "opern":Ljava/lang/String;
    :sswitch_be
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6516
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 6517
    .local v135, "p_lte_freq":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v135

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setIsmcoex(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6523
    .end local v5    # "serial":I
    .end local v135    # "p_lte_freq":Ljava/lang/String;
    :sswitch_bf
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6526
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getRatCombinePrio(I)V

    goto/16 :goto_0

    .line 6532
    .end local v5    # "serial":I
    :sswitch_c0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6535
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDsFlowInfo(I)V

    goto/16 :goto_0

    .line 6541
    .end local v5    # "serial":I
    :sswitch_c1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6544
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDeviceVersion(I)V

    goto/16 :goto_0

    .line 6550
    .end local v5    # "serial":I
    :sswitch_c2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6553
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v165

    .line 6554
    .local v165, "slot1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v166

    .line 6555
    .local v166, "slot2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v167

    .line 6556
    .local v167, "slot3":I
    move-object/from16 v0, p0

    move/from16 v1, v165

    move/from16 v2, v166

    move/from16 v3, v167

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setSciChgCfg(IIII)V

    goto/16 :goto_0

    .line 6562
    .end local v5    # "serial":I
    .end local v165    # "slot1":I
    .end local v166    # "slot2":I
    .end local v167    # "slot3":I
    :sswitch_c3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6565
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->vsimCheckCard(I)V

    goto/16 :goto_0

    .line 6571
    .end local v5    # "serial":I
    :sswitch_c4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6574
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v103

    .line 6575
    .local v103, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v104

    .line 6576
    .local v104, "index2":I
    move-object/from16 v0, p0

    move/from16 v1, v103

    move/from16 v2, v104

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDsFlowNvWriteConfigPara(III)V

    goto/16 :goto_0

    .line 6582
    .end local v5    # "serial":I
    .end local v103    # "index1":I
    .end local v104    # "index2":I
    :sswitch_c5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6585
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v103

    .line 6586
    .restart local v103    # "index1":I
    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setUeOperationMode(II)V

    goto/16 :goto_0

    .line 6592
    .end local v5    # "serial":I
    .end local v103    # "index1":I
    :sswitch_c6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6595
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->vsimPower(I)V

    goto/16 :goto_0

    .line 6601
    .end local v5    # "serial":I
    :sswitch_c7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6604
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->queryServiceCellBand(I)V

    goto/16 :goto_0

    .line 6610
    .end local v5    # "serial":I
    :sswitch_c8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6613
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v79

    .line 6614
    .local v79, "date":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v178

    .line 6615
    .local v178, "strtime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v191

    .line 6616
    .local v191, "zone":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v178

    move-object/from16 v3, v191

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6622
    .end local v5    # "serial":I
    .end local v79    # "date":Ljava/lang/String;
    .end local v178    # "strtime":Ljava/lang/String;
    .end local v191    # "zone":Ljava/lang/String;
    :sswitch_c9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6625
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->vsimBasebandVersion(I)V

    goto/16 :goto_0

    .line 6631
    .end local v5    # "serial":I
    :sswitch_ca
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6634
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLwclash(I)V

    goto/16 :goto_0

    .line 6640
    .end local v5    # "serial":I
    :sswitch_cb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6643
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v138

    .line 6644
    .local v138, "pcscf":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDmPcscf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6650
    .end local v5    # "serial":I
    .end local v138    # "pcscf":Ljava/lang/String;
    :sswitch_cc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6653
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 6654
    .local v88, "dyPram":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDmDynamicPram(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6660
    .end local v5    # "serial":I
    .end local v88    # "dyPram":Ljava/lang/String;
    :sswitch_cd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6663
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 6664
    .local v182, "timer":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDmTimer(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6670
    .end local v5    # "serial":I
    .end local v182    # "timer":Ljava/lang/String;
    :sswitch_ce
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6673
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 6674
    .local v170, "smsPsi":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setDmSmsPsi(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6680
    .end local v5    # "serial":I
    .end local v170    # "smsPsi":Ljava/lang/String;
    :sswitch_cf
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6683
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 6684
    .local v123, "nickName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setNickName(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6690
    .end local v5    # "serial":I
    .end local v123    # "nickName":Ljava/lang/String;
    :sswitch_d0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6693
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDmPcscf(I)V

    goto/16 :goto_0

    .line 6699
    .end local v5    # "serial":I
    :sswitch_d1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6702
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDmDynamicPram(I)V

    goto/16 :goto_0

    .line 6708
    .end local v5    # "serial":I
    :sswitch_d2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6711
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDmTimer(I)V

    goto/16 :goto_0

    .line 6717
    .end local v5    # "serial":I
    :sswitch_d3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6720
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getSmsPsi(I)V

    goto/16 :goto_0

    .line 6726
    .end local v5    # "serial":I
    :sswitch_d4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6729
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getNickName(I)V

    goto/16 :goto_0

    .line 6735
    .end local v5    # "serial":I
    :sswitch_d5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6738
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDmUser(I)V

    goto/16 :goto_0

    .line 6744
    .end local v5    # "serial":I
    :sswitch_d6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6747
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->imsRegister(I)V

    goto/16 :goto_0

    .line 6753
    .end local v5    # "serial":I
    :sswitch_d7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6756
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 6757
    .restart local v176    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->informBatteryStatus(II)V

    goto/16 :goto_0

    .line 6763
    .end local v5    # "serial":I
    .end local v176    # "status":I
    :sswitch_d8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6766
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 6767
    .local v23, "enable_rpt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v24

    .line 6768
    .local v24, "threshold":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v25

    .line 6769
    .local v25, "total_threshold":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    .local v26, "oper":I
    move-object/from16 v21, p0

    move/from16 v22, v5

    .line 6770
    invoke-virtual/range {v21 .. v26}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setApDsFlowReportConfig(IIIII)V

    goto/16 :goto_0

    .line 6776
    .end local v5    # "serial":I
    .end local v23    # "enable_rpt":I
    .end local v24    # "threshold":I
    .end local v25    # "total_threshold":I
    .end local v26    # "oper":I
    :sswitch_d9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6779
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v136

    .line 6780
    .local v136, "paratype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v137

    .line 6781
    .local v137, "pathtype":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->notifyCellularCommParaReady(III)V

    goto/16 :goto_0

    .line 6787
    .end local v5    # "serial":I
    .end local v136    # "paratype":I
    .end local v137    # "pathtype":I
    :sswitch_da
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6790
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    .line 6791
    .local v29, "infoType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 6792
    .local v30, "lac":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    .line 6793
    .restart local v31    # "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    .line 6794
    .local v32, "radiotech":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, "plmn":Ljava/lang/String;
    move-object/from16 v27, p0

    move/from16 v28, v5

    .line 6795
    invoke-virtual/range {v27 .. v33}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendPseudocellCellInfo(IIIIILjava/lang/String;)V

    goto/16 :goto_0

    .line 6801
    .end local v5    # "serial":I
    .end local v29    # "infoType":I
    .end local v30    # "lac":I
    .end local v31    # "cid":I
    .end local v32    # "radiotech":I
    .end local v33    # "plmn":Ljava/lang/String;
    :sswitch_db
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6804
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v136

    .line 6805
    .restart local v136    # "paratype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v137

    .line 6806
    .restart local v137    # "pathtype":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->notifyCellularCloudParaReady(III)V

    goto/16 :goto_0

    .line 6812
    .end local v5    # "serial":I
    .end local v136    # "paratype":I
    .end local v137    # "pathtype":I
    :sswitch_dc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6815
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getHwSignalStrength(I)V

    goto/16 :goto_0

    .line 6821
    .end local v5    # "serial":I
    :sswitch_dd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6824
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getAvailableCsgIds(I)V

    goto/16 :goto_0

    .line 6830
    .end local v5    # "serial":I
    :sswitch_de
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6833
    .restart local v5    # "serial":I
    new-instance v77, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;

    invoke-direct/range {v77 .. v77}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;-><init>()V

    .line 6834
    .local v77, "csgInfo":Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;
    move-object/from16 v0, v77

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6835
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->manualSelectionCsgId(ILvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;)V

    goto/16 :goto_0

    .line 6841
    .end local v5    # "serial":I
    .end local v77    # "csgInfo":Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;
    :sswitch_df
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6844
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLastImsCallFailCause(I)V

    goto/16 :goto_0

    .line 6850
    .end local v5    # "serial":I
    :sswitch_e0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6853
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 6854
    .local v62, "capabilityType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v61

    .line 6855
    .local v61, "capabilitySwitch":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v61

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setImsvtCapability(III)V

    goto/16 :goto_0

    .line 6861
    .end local v5    # "serial":I
    .end local v61    # "capabilitySwitch":I
    .end local v62    # "capabilityType":I
    :sswitch_e1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6864
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v190

    .line 6865
    .local v190, "wifiAid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v190

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setWifiEmergencyAid(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6871
    .end local v5    # "serial":I
    .end local v190    # "wifiAid":Ljava/lang/String;
    :sswitch_e2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6874
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    .line 6875
    .local v70, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 6876
    .local v158, "reserved":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v70

    move-object/from16 v2, v158

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->sendLaaCmd(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 6882
    .end local v5    # "serial":I
    .end local v70    # "cmd":I
    .end local v158    # "reserved":Ljava/lang/String;
    :sswitch_e3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6885
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v95

    .line 6886
    .local v95, "field":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 6887
    .local v78, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v95

    move-object/from16 v2, v78

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->simlockNwDataWrite(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 6893
    .end local v5    # "serial":I
    .end local v78    # "data":Ljava/lang/String;
    .end local v95    # "field":I
    :sswitch_e4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6896
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 6897
    .restart local v158    # "reserved":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getLaaDetailedState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6903
    .end local v5    # "serial":I
    .end local v158    # "reserved":Ljava/lang/String;
    :sswitch_e5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6906
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 6907
    .restart local v176    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->notifyCModemStatus(II)V

    goto/16 :goto_0

    .line 6913
    .end local v5    # "serial":I
    .end local v176    # "status":I
    :sswitch_e6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6916
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setupDataCallEmergency(I)V

    goto/16 :goto_0

    .line 6922
    .end local v5    # "serial":I
    :sswitch_e7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6925
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCallEmergency(I)V

    goto/16 :goto_0

    .line 6931
    .end local v5    # "serial":I
    :sswitch_e8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6934
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCellInfoListOtdoa(I)V

    goto/16 :goto_0

    .line 6940
    .end local v5    # "serial":I
    :sswitch_e9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6943
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 6944
    .restart local v60    # "callType":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->switchImsWaitingOrHoldingAndActiveWithType(II)V

    goto/16 :goto_0

    .line 6950
    .end local v5    # "serial":I
    .end local v60    # "callType":I
    :sswitch_ea
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6953
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    .line 6954
    .local v71, "combineMode":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setRatCombinePrio(II)V

    goto/16 :goto_0

    .line 6960
    .end local v5    # "serial":I
    .end local v71    # "combineMode":I
    :sswitch_eb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6963
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v160

    .line 6964
    .local v160, "rfChannel":I
    move-object/from16 v0, p0

    move/from16 v1, v160

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setHwRFChannelSwitch(II)V

    goto/16 :goto_0

    .line 6970
    .end local v5    # "serial":I
    .end local v160    # "rfChannel":I
    :sswitch_ec
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6973
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v130

    .line 6974
    .restart local v130    # "on":Z
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setRiseCdmaCutoffFreq(IZ)V

    goto/16 :goto_0

    .line 6980
    .end local v5    # "serial":I
    .end local v130    # "on":Z
    :sswitch_ed
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6983
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v50

    .line 6984
    .local v50, "apn":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v83

    .line 6985
    .local v83, "dh":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v163

    .line 6986
    .local v163, "sim":I
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v83

    move/from16 v3, v163

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setVsimTEEDataReady(IIII)V

    goto/16 :goto_0

    .line 6992
    .end local v5    # "serial":I
    .end local v50    # "apn":I
    .end local v83    # "dh":I
    .end local v163    # "sim":I
    :sswitch_ee
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6995
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getCdmaChrInfo(I)V

    goto/16 :goto_0

    .line 7001
    .end local v5    # "serial":I
    :sswitch_ef
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 7004
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v112

    .line 7005
    .restart local v112    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->testVoiceLoopback(II)V

    goto/16 :goto_0

    .line 7011
    .end local v5    # "serial":I
    .end local v112    # "mode":I
    :sswitch_f0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 7014
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v180

    .line 7015
    .local v180, "tetherConnectStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v161

    .line 7016
    .local v161, "rmnetName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v180

    move-object/from16 v2, v161

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->informModemTetherStatusToChangeGRO(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 7022
    .end local v5    # "serial":I
    .end local v161    # "rmnetName":Ljava/lang/String;
    .end local v180    # "tetherConnectStatus":I
    :sswitch_f1
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7024
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v40

    .line 7025
    .local v40, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7026
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7033
    .end local v40    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_f2
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7035
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7042
    :sswitch_f3
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7044
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v39

    .line 7045
    .local v39, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7046
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7053
    .end local v39    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_f4
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7055
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v41

    .line 7056
    .local v41, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7058
    new-instance v36, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7060
    .local v36, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 7061
    .local v43, "_hidl_vec_size":I
    const-wide/16 v18, 0x8

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 7062
    const-wide/16 v18, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7063
    new-instance v69, Landroid/os/HwBlob;

    mul-int/lit8 v4, v43, 0x20

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7064
    .local v69, "childBlob":Landroid/os/HwBlob;
    const/16 v37, 0x0

    .local v37, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_1

    .line 7066
    mul-int/lit8 v4, v37, 0x20

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 7067
    .local v34, "_hidl_array_offset_1":J
    const/16 v38, 0x0

    .local v38, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v38

    if-ge v0, v4, :cond_0

    .line 7068
    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v38

    move-object/from16 v0, v69

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 7069
    const-wide/16 v18, 0x1

    add-long v34, v34, v18

    .line 7067
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 7064
    :cond_0
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 7073
    .end local v34    # "_hidl_array_offset_1":J
    .end local v38    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7075
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7083
    .end local v36    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v37    # "_hidl_index_0":I
    .end local v41    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v43    # "_hidl_vec_size":I
    .end local v69    # "childBlob":Landroid/os/HwBlob;
    :sswitch_f5
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7085
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 7101
    :sswitch_f6
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7103
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v42

    .line 7104
    .local v42, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7105
    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7112
    .end local v42    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_f7
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7114
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 4611
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0xd9 -> :sswitch_d9
        0xda -> :sswitch_da
        0xdb -> :sswitch_db
        0xdc -> :sswitch_dc
        0xdd -> :sswitch_dd
        0xde -> :sswitch_de
        0xdf -> :sswitch_df
        0xe0 -> :sswitch_e0
        0xe1 -> :sswitch_e1
        0xe2 -> :sswitch_e2
        0xe3 -> :sswitch_e3
        0xe4 -> :sswitch_e4
        0xe5 -> :sswitch_e5
        0xe6 -> :sswitch_e6
        0xe7 -> :sswitch_e7
        0xe8 -> :sswitch_e8
        0xe9 -> :sswitch_e9
        0xea -> :sswitch_ea
        0xeb -> :sswitch_eb
        0xec -> :sswitch_ec
        0xed -> :sswitch_ed
        0xee -> :sswitch_ee
        0xef -> :sswitch_ef
        0xf0 -> :sswitch_f0
        0xf43484e -> :sswitch_f1
        0xf444247 -> :sswitch_f2
        0xf445343 -> :sswitch_f3
        0xf485348 -> :sswitch_f4
        0xf494e54 -> :sswitch_f5
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_f6
        0xf535953 -> :sswitch_f7
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 4568
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 4593
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    return-object p0

    .line 4596
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4600
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4601
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 4559
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .prologue
    .line 4587
    const/4 v0, 0x1

    return v0
.end method
