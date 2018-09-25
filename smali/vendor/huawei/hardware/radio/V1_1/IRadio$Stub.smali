.class public abstract Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_1/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_1/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4440
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 4443
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 4489
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4490
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4491
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4492
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

    .line 4463
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    .line 4464
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4465
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4466
    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4467
    new-array v2, v4, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 4463
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4464
    nop

    :array_0
    .array-data 1
        0x6bt
        -0x3bt
        0x55t
        0x43t
        -0x5at
        0x4at
        0x36t
        0x54t
        0x5bt
        0x76t
        -0x66t
        -0xct
        0x50t
        0x1t
        -0x60t
        -0x15t
        0x6ct
        -0x3at
        0x52t
        0x6at
        0x6ct
        0x6t
        0x18t
        0x21t
        0x2ct
        0x47t
        -0x27t
        -0x31t
        0x3et
        -0x6et
        0xat
        -0x1ft
    .end array-data

    .line 4465
    :array_1
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

    .line 4466
    :array_2
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

    .line 4467
    :array_3
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
    .line 4448
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 4449
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.1::IRadio"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4450
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadio"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4451
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4452
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 4448
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4457
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.1::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 4478
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 4497
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 4498
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 195
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
    .line 4526
    sparse-switch p1, :sswitch_data_0

    .line 7108
    :goto_0
    :sswitch_0
    return-void

    .line 4529
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v152

    .line 4532
    .local v152, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v150

    .line 4533
    .local v150, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v150

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4534
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 4541
    .end local v150    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    .end local v152    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4544
    .local v5, "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_0

    .line 4550
    .end local v5    # "serial":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4553
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 4554
    .local v140, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4555
    .local v47, "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4561
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v140    # "pin":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4564
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v147

    .line 4565
    .local v147, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 4566
    .restart local v140    # "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4567
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move-object/from16 v2, v140

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4573
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v140    # "pin":Ljava/lang/String;
    .end local v147    # "puk":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4576
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 4577
    .local v141, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4578
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4584
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v141    # "pin2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4586
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4587
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v148

    .line 4588
    .local v148, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 4589
    .restart local v141    # "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4590
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    move-object/from16 v2, v141

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4596
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v141    # "pin2":Ljava/lang/String;
    .end local v148    # "puk2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4599
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 4600
    .local v128, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v122

    .line 4601
    .local v122, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4602
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move-object/from16 v2, v122

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4608
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v122    # "newPin":Ljava/lang/String;
    .end local v128    # "oldPin":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4611
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 4612
    .local v129, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 4613
    .local v123, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4614
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v123

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4620
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v123    # "newPin2":Ljava/lang/String;
    .end local v129    # "oldPin2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4623
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 4624
    .local v120, "netPin":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4630
    .end local v5    # "serial":I
    .end local v120    # "netPin":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4633
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_0

    .line 4639
    .end local v5    # "serial":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4642
    .restart local v5    # "serial":I
    new-instance v85, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct/range {v85 .. v85}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4643
    .local v85, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    move-object/from16 v0, v85

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4644
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_0

    .line 4650
    .end local v5    # "serial":I
    .end local v85    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4653
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 4654
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4660
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4663
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v99

    .line 4664
    .local v99, "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->hangup(II)V

    goto/16 :goto_0

    .line 4670
    .end local v5    # "serial":I
    .end local v99    # "gsmIndex":I
    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4673
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_0

    .line 4679
    .end local v5    # "serial":I
    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4682
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_0

    .line 4688
    .end local v5    # "serial":I
    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4691
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_0

    .line 4697
    .end local v5    # "serial":I
    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4700
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->conference(I)V

    goto/16 :goto_0

    .line 4706
    .end local v5    # "serial":I
    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4709
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_0

    .line 4715
    .end local v5    # "serial":I
    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4718
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_0

    .line 4724
    .end local v5    # "serial":I
    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4727
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_0

    .line 4733
    .end local v5    # "serial":I
    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4736
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_0

    .line 4742
    .end local v5    # "serial":I
    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4745
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_0

    .line 4751
    .end local v5    # "serial":I
    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4754
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_0

    .line 4760
    .end local v5    # "serial":I
    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4763
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v131

    .line 4764
    .local v131, "on":Z
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_0

    .line 4770
    .end local v5    # "serial":I
    .end local v131    # "on":Z
    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4773
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 4774
    .local v164, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4780
    .end local v5    # "serial":I
    .end local v164    # "s":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4783
    .restart local v5    # "serial":I
    new-instance v110, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v110 .. v110}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4784
    .local v110, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 4791
    .end local v5    # "serial":I
    .end local v110    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4794
    .restart local v5    # "serial":I
    new-instance v110, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v110 .. v110}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4795
    .restart local v110    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 4802
    .end local v5    # "serial":I
    .end local v110    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4805
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4806
    .local v6, "radioTechnology":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4807
    .local v7, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 4809
    .local v8, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4810
    .local v9, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .local v10, "isRoaming":Z
    move-object/from16 v4, p0

    .line 4811
    invoke-virtual/range {v4 .. v10}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_0

    .line 4817
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

    .line 4819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4820
    .restart local v5    # "serial":I
    new-instance v100, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct/range {v100 .. v100}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4821
    .local v100, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    move-object/from16 v0, v100

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4822
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_0

    .line 4828
    .end local v5    # "serial":I
    .end local v100    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4831
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v191

    .line 4832
    .local v191, "ussd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v191

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4838
    .end local v5    # "serial":I
    .end local v191    # "ussd":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4841
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    .line 4847
    .end local v5    # "serial":I
    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4850
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    .line 4856
    .end local v5    # "serial":I
    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4859
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v178

    .line 4860
    .local v178, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setClir(II)V

    goto/16 :goto_0

    .line 4866
    .end local v5    # "serial":I
    .end local v178    # "status":I
    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4869
    .restart local v5    # "serial":I
    new-instance v58, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4870
    .local v58, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4871
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 4877
    .end local v5    # "serial":I
    .end local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4880
    .restart local v5    # "serial":I
    new-instance v58, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4881
    .restart local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4882
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 4888
    .end local v5    # "serial":I
    .end local v58    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4891
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4892
    .local v15, "serviceClass":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    .line 4898
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4901
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 4902
    .local v93, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4903
    .restart local v15    # "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v15}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_0

    .line 4909
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    .end local v93    # "enable":Z
    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4912
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v181

    .line 4913
    .local v181, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 4914
    .local v64, "cause":I
    move-object/from16 v0, p0

    move/from16 v1, v181

    move/from16 v2, v64

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_0

    .line 4920
    .end local v5    # "serial":I
    .end local v64    # "cause":I
    .end local v181    # "success":Z
    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4923
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_0

    .line 4929
    .end local v5    # "serial":I
    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4932
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    .line 4933
    .local v31, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v157

    .line 4934
    .local v157, "reasonRadioShutDown":Z
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v157

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_0

    .line 4940
    .end local v5    # "serial":I
    .end local v31    # "cid":I
    .end local v157    # "reasonRadioShutDown":Z
    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4943
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4944
    .local v13, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4945
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4946
    .restart local v15    # "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v11, p0

    move v12, v5

    .line 4947
    invoke-virtual/range {v11 .. v16}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4953
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4956
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4957
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v20

    .line 4958
    .local v20, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4959
    .restart local v14    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4960
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

    .line 4961
    invoke-virtual/range {v17 .. v23}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4967
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

    .line 4969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4970
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4971
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 4972
    .local v127, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 4973
    .local v121, "newPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v121

    invoke-virtual {v0, v5, v13, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4979
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v121    # "newPassword":Ljava/lang/String;
    .end local v127    # "oldPassword":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4982
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_0

    .line 4988
    .end local v5    # "serial":I
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4991
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_0

    .line 4997
    .end local v5    # "serial":I
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5000
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 5001
    .local v132, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5007
    .end local v5    # "serial":I
    .end local v132    # "operatorNumeric":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5010
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_0

    .line 5016
    .end local v5    # "serial":I
    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5019
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 5020
    .restart local v164    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5026
    .end local v5    # "serial":I
    .end local v164    # "s":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5029
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    .line 5035
    .end local v5    # "serial":I
    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5038
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_0

    .line 5044
    .end local v5    # "serial":I
    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5047
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v99

    .line 5048
    .restart local v99    # "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_0

    .line 5054
    .end local v5    # "serial":I
    .end local v99    # "gsmIndex":I
    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5057
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 5058
    .restart local v93    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_0

    .line 5064
    .end local v5    # "serial":I
    .end local v93    # "enable":Z
    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5067
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getMute(I)V

    goto/16 :goto_0

    .line 5073
    .end local v5    # "serial":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5076
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    .line 5082
    .end local v5    # "serial":I
    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5085
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_0

    .line 5091
    .end local v5    # "serial":I
    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5094
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 5095
    .restart local v93    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_0

    .line 5101
    .end local v5    # "serial":I
    .end local v93    # "enable":Z
    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5104
    .restart local v5    # "serial":I
    new-instance v173, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct/range {v173 .. v173}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 5105
    .local v173, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    move-object/from16 v0, v173

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_0

    .line 5112
    .end local v5    # "serial":I
    .end local v173    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5115
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v102

    .line 5116
    .local v102, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_0

    .line 5122
    .end local v5    # "serial":I
    .end local v102    # "index":I
    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5125
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v113

    .line 5126
    .local v113, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_0

    .line 5132
    .end local v5    # "serial":I
    .end local v113    # "mode":I
    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5135
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_0

    .line 5141
    .end local v5    # "serial":I
    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5144
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v72

    .line 5145
    .local v72, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5151
    .end local v5    # "serial":I
    .end local v72    # "command":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5154
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 5155
    .local v73, "commandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5161
    .end local v5    # "serial":I
    .end local v73    # "commandResponse":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5164
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v44

    .line 5165
    .local v44, "accept":Z
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_0

    .line 5171
    .end local v5    # "serial":I
    .end local v44    # "accept":Z
    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5174
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_0

    .line 5180
    .end local v5    # "serial":I
    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5183
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v125

    .line 5184
    .local v125, "nwType":I
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_0

    .line 5190
    .end local v5    # "serial":I
    .end local v125    # "nwType":I
    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5193
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 5199
    .end local v5    # "serial":I
    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5202
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_0

    .line 5208
    .end local v5    # "serial":I
    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5211
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 5212
    .restart local v93    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_0

    .line 5218
    .end local v5    # "serial":I
    .end local v93    # "enable":Z
    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5221
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v66

    .line 5222
    .local v66, "cdmaSub":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_0

    .line 5228
    .end local v5    # "serial":I
    .end local v66    # "cdmaSub":I
    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5231
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v186

    .line 5232
    .local v186, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v186

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_0

    .line 5238
    .end local v5    # "serial":I
    .end local v186    # "type":I
    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5241
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_0

    .line 5247
    .end local v5    # "serial":I
    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5250
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v113

    .line 5251
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_0

    .line 5257
    .end local v5    # "serial":I
    .end local v113    # "mode":I
    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5260
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_0

    .line 5266
    .end local v5    # "serial":I
    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5269
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 5270
    .restart local v93    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_0

    .line 5276
    .end local v5    # "serial":I
    .end local v93    # "enable":Z
    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5279
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_0

    .line 5285
    .end local v5    # "serial":I
    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5288
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 5289
    .local v95, "featureCode":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5295
    .end local v5    # "serial":I
    .end local v95    # "featureCode":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5298
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 5299
    .local v88, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v130

    .line 5300
    .local v130, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v126

    .line 5301
    .local v126, "off":I
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move/from16 v2, v130

    move/from16 v3, v126

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 5307
    .end local v5    # "serial":I
    .end local v88    # "dtmf":Ljava/lang/String;
    .end local v126    # "off":I
    .end local v130    # "on":I
    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5310
    .restart local v5    # "serial":I
    new-instance v170, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v170 .. v170}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5311
    .local v170, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v0, v170

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5312
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    .line 5318
    .end local v5    # "serial":I
    .end local v170    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5321
    .restart local v5    # "serial":I
    new-instance v171, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct/range {v171 .. v171}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5322
    .local v171, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    move-object/from16 v0, v171

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5323
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_0

    .line 5329
    .end local v5    # "serial":I
    .end local v171    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5332
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_0

    .line 5338
    .end local v5    # "serial":I
    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5341
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v75

    .line 5342
    .local v75, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5348
    .end local v5    # "serial":I
    .end local v75    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5351
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v46

    .line 5352
    .local v46, "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 5358
    .end local v5    # "serial":I
    .end local v46    # "activate":Z
    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5361
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_0

    .line 5367
    .end local v5    # "serial":I
    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5370
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v74

    .line 5371
    .local v74, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5377
    .end local v5    # "serial":I
    .end local v74    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5380
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v46

    .line 5381
    .restart local v46    # "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 5387
    .end local v5    # "serial":I
    .end local v46    # "activate":Z
    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5390
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_0

    .line 5396
    .end local v5    # "serial":I
    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5399
    .restart local v5    # "serial":I
    new-instance v65, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct/range {v65 .. v65}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5400
    .local v65, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5401
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_0

    .line 5407
    .end local v5    # "serial":I
    .end local v65    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5410
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v102

    .line 5411
    .restart local v102    # "index":I
    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_0

    .line 5417
    .end local v5    # "serial":I
    .end local v102    # "index":I
    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5420
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_0

    .line 5426
    .end local v5    # "serial":I
    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5429
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 5435
    .end local v5    # "serial":I
    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5438
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_0

    .line 5444
    .end local v5    # "serial":I
    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5447
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 5448
    .local v174, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5454
    .end local v5    # "serial":I
    .end local v174    # "smsc":Ljava/lang/String;
    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5457
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v56

    .line 5458
    .local v56, "available":Z
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_0

    .line 5464
    .end local v5    # "serial":I
    .end local v56    # "available":Z
    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5467
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_0

    .line 5473
    .end local v5    # "serial":I
    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5476
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_0

    .line 5482
    .end local v5    # "serial":I
    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5485
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 5486
    .local v67, "challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5492
    .end local v5    # "serial":I
    .end local v67    # "challenge":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5495
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v181

    .line 5496
    .restart local v181    # "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 5497
    .local v45, "ackPdu":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v181

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 5503
    .end local v5    # "serial":I
    .end local v45    # "ackPdu":Ljava/lang/String;
    .end local v181    # "success":Z
    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5506
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 5507
    .local v76, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5513
    .end local v5    # "serial":I
    .end local v76    # "contents":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5516
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_0

    .line 5522
    .end local v5    # "serial":I
    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5525
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_0

    .line 5531
    .end local v5    # "serial":I
    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5534
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v154

    .line 5535
    .local v154, "rate":I
    move-object/from16 v0, p0

    move/from16 v1, v154

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_0

    .line 5541
    .end local v5    # "serial":I
    .end local v154    # "rate":I
    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5544
    .restart local v5    # "serial":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5545
    .restart local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 5547
    .restart local v8    # "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5548
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8, v10}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_0

    .line 5554
    .end local v5    # "serial":I
    .end local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v8    # "modemCognitive":Z
    .end local v10    # "isRoaming":Z
    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5556
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5557
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_0

    .line 5563
    .end local v5    # "serial":I
    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5566
    .restart local v5    # "serial":I
    new-instance v111, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct/range {v111 .. v111}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5567
    .local v111, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move-object/from16 v0, v111

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5568
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_0

    .line 5574
    .end local v5    # "serial":I
    .end local v111    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5577
    .restart local v5    # "serial":I
    new-instance v112, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v112 .. v112}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5578
    .local v112, "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v112

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5579
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 5585
    .end local v5    # "serial":I
    .end local v112    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5588
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 5589
    .restart local v47    # "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v134

    .line 5590
    .local v134, "p2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v134

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 5596
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v134    # "p2":I
    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5599
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v68

    .line 5600
    .local v68, "channelId":I
    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_0

    .line 5606
    .end local v5    # "serial":I
    .end local v68    # "channelId":I
    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5609
    .restart local v5    # "serial":I
    new-instance v112, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v112 .. v112}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5610
    .restart local v112    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v112

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5611
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 5617
    .end local v5    # "serial":I
    .end local v112    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5620
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v108

    .line 5621
    .local v108, "itemId":I
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_0

    .line 5627
    .end local v5    # "serial":I
    .end local v108    # "itemId":I
    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5630
    .restart local v5    # "serial":I
    new-instance v107, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct/range {v107 .. v107}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5631
    .local v107, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    move-object/from16 v0, v107

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5632
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_0

    .line 5638
    .end local v5    # "serial":I
    .end local v107    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5641
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v145

    .line 5642
    .local v145, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5648
    .end local v5    # "serial":I
    .end local v145    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5651
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v161

    .line 5652
    .local v161, "resetType":I
    move-object/from16 v0, p0

    move/from16 v1, v161

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_0

    .line 5658
    .end local v5    # "serial":I
    .end local v161    # "resetType":I
    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5661
    .restart local v5    # "serial":I
    new-instance v188, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct/range {v188 .. v188}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5662
    .local v188, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    move-object/from16 v0, v188

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5663
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_0

    .line 5669
    .end local v5    # "serial":I
    .end local v188    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5672
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v49

    .line 5673
    .local v49, "allow":Z
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_0

    .line 5679
    .end local v5    # "serial":I
    .end local v49    # "allow":Z
    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5682
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_0

    .line 5688
    .end local v5    # "serial":I
    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5691
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v54

    .line 5692
    .local v54, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 5693
    .local v55, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 5694
    .restart local v47    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, v47

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5700
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v54    # "authContext":I
    .end local v55    # "authData":Ljava/lang/String;
    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5703
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v146

    .line 5704
    .local v146, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5705
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v5, v1, v10}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 5711
    .end local v5    # "serial":I
    .end local v10    # "isRoaming":Z
    .end local v146    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5714
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_0

    .line 5720
    .end local v5    # "serial":I
    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5723
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_0

    .line 5729
    .end local v5    # "serial":I
    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5732
    .restart local v5    # "serial":I
    new-instance v155, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v155 .. v155}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5733
    .local v155, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v155

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5734
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 5740
    .end local v5    # "serial":I
    .end local v155    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5743
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v158

    .line 5744
    .local v158, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v149

    .line 5745
    .local v149, "pullMode":Z
    move-object/from16 v0, p0

    move/from16 v1, v158

    move/from16 v2, v149

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_0

    .line 5751
    .end local v5    # "serial":I
    .end local v149    # "pullMode":Z
    .end local v158    # "reportInterval":I
    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5754
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_0

    .line 5760
    .end local v5    # "serial":I
    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5763
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_0

    .line 5769
    .end local v5    # "serial":I
    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5772
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_0

    .line 5778
    .end local v5    # "serial":I
    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5781
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v48

    .line 5782
    .local v48, "allAllowed":Z
    new-instance v63, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5783
    .local v63, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5784
    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v63

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    .line 5790
    .end local v5    # "serial":I
    .end local v48    # "allAllowed":Z
    .end local v63    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5793
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_0

    .line 5799
    .end local v5    # "serial":I
    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5802
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v83

    .line 5803
    .local v83, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v177

    .line 5804
    .local v177, "state":Z
    move-object/from16 v0, p0

    move/from16 v1, v83

    move/from16 v2, v177

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_0

    .line 5810
    .end local v5    # "serial":I
    .end local v83    # "deviceStateType":I
    .end local v177    # "state":Z
    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5813
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v106

    .line 5814
    .local v106, "indicationFilter":I
    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_0

    .line 5820
    .end local v5    # "serial":I
    .end local v106    # "indicationFilter":I
    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5823
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v142

    .line 5824
    .local v142, "powerUp":Z
    move-object/from16 v0, p0

    move/from16 v1, v142

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_0

    .line 5830
    .end local v5    # "serial":I
    .end local v142    # "powerUp":Z
    :sswitch_82
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5832
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_0

    .line 5838
    :sswitch_83
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;

    move-result-object v153

    .line 5841
    .local v153, "radioResponse":Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;

    move-result-object v151

    .line 5842
    .local v151, "radioIndication":Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    move-object/from16 v2, v151

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;)V

    .line 5843
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 5850
    .end local v151    # "radioIndication":Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
    .end local v153    # "radioResponse":Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
    :sswitch_84
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5853
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v144

    .line 5854
    .local v144, "powergrade":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setPowerGrade(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5860
    .end local v5    # "serial":I
    .end local v144    # "powergrade":Ljava/lang/String;
    :sswitch_85
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5863
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSimHotplugState(I)V

    goto/16 :goto_0

    .line 5869
    .end local v5    # "serial":I
    :sswitch_86
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5872
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCardType(I)V

    goto/16 :goto_0

    .line 5878
    .end local v5    # "serial":I
    :sswitch_87
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5881
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaGsmImsi(I)V

    goto/16 :goto_0

    .line 5887
    .end local v5    # "serial":I
    :sswitch_88
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5890
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->restartRILD(I)V

    goto/16 :goto_0

    .line 5896
    .end local v5    # "serial":I
    :sswitch_89
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5899
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSimATR(I)V

    goto/16 :goto_0

    .line 5905
    .end local v5    # "serial":I
    :sswitch_8a
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5908
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getIccid(I)V

    goto/16 :goto_0

    .line 5914
    .end local v5    # "serial":I
    :sswitch_8b
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5917
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v114

    .line 5918
    .local v114, "modem1ToSlot":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v115

    .line 5919
    .local v115, "modem2ToSlot":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v116

    .line 5920
    .local v116, "modem3ToSlot":I
    move-object/from16 v0, p0

    move/from16 v1, v114

    move/from16 v2, v115

    move/from16 v3, v116

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setSimSlot(IIII)V

    goto/16 :goto_0

    .line 5926
    .end local v5    # "serial":I
    .end local v114    # "modem1ToSlot":I
    .end local v115    # "modem2ToSlot":I
    .end local v116    # "modem3ToSlot":I
    :sswitch_8c
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5929
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSimSlot(I)V

    goto/16 :goto_0

    .line 5935
    .end local v5    # "serial":I
    :sswitch_8d
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5938
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v117

    .line 5939
    .local v117, "modemId":I
    move-object/from16 v0, p0

    move/from16 v1, v117

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setCdmaModeSide(II)V

    goto/16 :goto_0

    .line 5945
    .end local v5    # "serial":I
    .end local v117    # "modemId":I
    :sswitch_8e
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5948
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaModeSide(I)V

    goto/16 :goto_0

    .line 5954
    .end local v5    # "serial":I
    :sswitch_8f
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5957
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v113

    .line 5958
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setActiveModemMode(II)V

    goto/16 :goto_0

    .line 5964
    .end local v5    # "serial":I
    .end local v113    # "mode":I
    :sswitch_90
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5967
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 5968
    .restart local v47    # "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v135

    .line 5969
    .local v135, "p2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v135

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->openChannelWithP2(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5975
    .end local v5    # "serial":I
    .end local v47    # "aid":Ljava/lang/String;
    .end local v135    # "p2":Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5978
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getEccNum(I)V

    goto/16 :goto_0

    .line 5984
    .end local v5    # "serial":I
    :sswitch_92
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5987
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 5988
    .local v91, "ecclist_withcard":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 5989
    .local v90, "ecclist_nocard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v90

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5995
    .end local v5    # "serial":I
    .end local v90    # "ecclist_nocard":Ljava/lang/String;
    .end local v91    # "ecclist_withcard":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5998
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v176

    .line 5999
    .local v176, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v176

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setVoicecallBackGroundState(II)V

    goto/16 :goto_0

    .line 6005
    .end local v5    # "serial":I
    .end local v176    # "state":I
    :sswitch_94
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6008
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVoicecallBackGroundState(I)V

    goto/16 :goto_0

    .line 6014
    .end local v5    # "serial":I
    :sswitch_95
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6017
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v178

    .line 6018
    .restart local v178    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setVoicePreferStatus(II)V

    goto/16 :goto_0

    .line 6024
    .end local v5    # "serial":I
    .end local v178    # "status":I
    :sswitch_96
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6027
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVoicePreferStatus(I)V

    goto/16 :goto_0

    .line 6033
    .end local v5    # "serial":I
    :sswitch_97
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6035
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6036
    .restart local v5    # "serial":I
    new-instance v86, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;

    invoke-direct/range {v86 .. v86}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;-><init>()V

    .line 6037
    .local v86, "dialInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    move-object/from16 v0, v86

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6038
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->imsDial(ILvendor/huawei/hardware/radio/V1_0/RILImsDial;)V

    goto/16 :goto_0

    .line 6044
    .end local v5    # "serial":I
    .end local v86    # "dialInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsDial;
    :sswitch_98
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6047
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCurrentImsCalls(I)V

    goto/16 :goto_0

    .line 6053
    .end local v5    # "serial":I
    :sswitch_99
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6056
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 6057
    .local v60, "callType":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->acceptImsCall(II)V

    goto/16 :goto_0

    .line 6063
    .end local v5    # "serial":I
    .end local v60    # "callType":I
    :sswitch_9a
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6066
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v101

    .line 6067
    .local v101, "impuIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getImsImpu(II)V

    goto/16 :goto_0

    .line 6073
    .end local v5    # "serial":I
    .end local v101    # "impuIndex":I
    :sswitch_9b
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6076
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 6077
    .restart local v164    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->addImsConfMember(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6083
    .end local v5    # "serial":I
    .end local v164    # "s":Ljava/lang/String;
    :sswitch_9c
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6086
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v93

    .line 6087
    .restart local v93    # "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 6088
    .restart local v15    # "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1, v15}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setImsCallWaiting(IZI)V

    goto/16 :goto_0

    .line 6094
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    .end local v93    # "enable":Z
    :sswitch_9d
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6097
    .restart local v5    # "serial":I
    new-instance v59, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct/range {v59 .. v59}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 6098
    .local v59, "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6099
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V

    goto/16 :goto_0

    .line 6105
    .end local v5    # "serial":I
    .end local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    :sswitch_9e
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6108
    .restart local v5    # "serial":I
    new-instance v59, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct/range {v59 .. v59}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 6109
    .restart local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6110
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V

    goto/16 :goto_0

    .line 6116
    .end local v5    # "serial":I
    .end local v59    # "callModifyInfo":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    :sswitch_9f
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6119
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v178

    .line 6120
    .restart local v178    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setImsSwitch(II)V

    goto/16 :goto_0

    .line 6126
    .end local v5    # "serial":I
    .end local v178    # "status":I
    :sswitch_a0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6129
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getImsSwitch(I)V

    goto/16 :goto_0

    .line 6135
    .end local v5    # "serial":I
    :sswitch_a1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6138
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 6139
    .local v57, "callIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 6140
    .restart local v64    # "cause":I
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v64

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->rejectCallWithReason(III)V

    goto/16 :goto_0

    .line 6146
    .end local v5    # "serial":I
    .end local v57    # "callIndex":I
    .end local v64    # "cause":I
    :sswitch_a2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6149
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getChannelInfo(I)V

    goto/16 :goto_0

    .line 6155
    .end local v5    # "serial":I
    :sswitch_a3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6158
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v80

    .line 6159
    .local v80, "detachFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->dataConnectionDeatch(II)V

    goto/16 :goto_0

    .line 6165
    .end local v5    # "serial":I
    .end local v80    # "detachFlag":I
    :sswitch_a4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6168
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v53

    .line 6169
    .local v53, "attachFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->dataConnectionAttach(II)V

    goto/16 :goto_0

    .line 6175
    .end local v5    # "serial":I
    .end local v53    # "attachFlag":I
    :sswitch_a5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6178
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v119

    .line 6179
    .local v119, "msgFlag":I
    move-object/from16 v0, p0

    move/from16 v1, v119

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setLongMessage(II)V

    goto/16 :goto_0

    .line 6185
    .end local v5    # "serial":I
    .end local v119    # "msgFlag":I
    :sswitch_a6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6188
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->resetAllConnections(I)V

    goto/16 :goto_0

    .line 6194
    .end local v5    # "serial":I
    :sswitch_a7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6197
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v192

    .line 6198
    .local v192, "version":I
    move-object/from16 v0, p0

    move/from16 v1, v192

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setLteReleaseVersion(II)V

    goto/16 :goto_0

    .line 6204
    .end local v5    # "serial":I
    .end local v192    # "version":I
    :sswitch_a8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6207
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLteReleaseVersion(I)V

    goto/16 :goto_0

    .line 6213
    .end local v5    # "serial":I
    :sswitch_a9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6216
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v87

    .line 6217
    .local v87, "domain":I
    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setImsDomain(II)V

    goto/16 :goto_0

    .line 6223
    .end local v5    # "serial":I
    .end local v87    # "domain":I
    :sswitch_aa
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6226
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getImsDomain(I)V

    goto/16 :goto_0

    .line 6232
    .end local v5    # "serial":I
    :sswitch_ab
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6235
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v118

    .line 6236
    .local v118, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->vowifiToImsaMsg(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 6242
    .end local v5    # "serial":I
    .end local v118    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_ac
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6245
    .restart local v5    # "serial":I
    new-instance v187, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    invoke-direct/range {v187 .. v187}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;-><init>()V

    .line 6246
    .local v187, "uiccAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6247
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->uiccAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V

    goto/16 :goto_0

    .line 6253
    .end local v5    # "serial":I
    .end local v187    # "uiccAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :sswitch_ad
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6256
    .restart local v5    # "serial":I
    new-instance v98, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;

    invoke-direct/range {v98 .. v98}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;-><init>()V

    .line 6257
    .local v98, "gbaParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    move-object/from16 v0, v98

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6258
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;)V

    goto/16 :goto_0

    .line 6264
    .end local v5    # "serial":I
    .end local v98    # "gbaParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTH;
    :sswitch_ae
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6267
    .restart local v5    # "serial":I
    new-instance v190, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;

    invoke-direct/range {v190 .. v190}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 6268
    .local v190, "uiccUpdateParam":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    move-object/from16 v0, v190

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6269
    move-object/from16 v0, p0

    move-object/from16 v1, v190

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->updateUiccFile(ILvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;)V

    goto/16 :goto_0

    .line 6275
    .end local v5    # "serial":I
    .end local v190    # "uiccUpdateParam":Lvendor/huawei/hardware/radio/V1_0/RILCURSMUPDATEFILE;
    :sswitch_af
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6278
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v189

    .line 6279
    .local v189, "uiccType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v97

    .line 6280
    .local v97, "fileId":I
    move-object/from16 v0, p0

    move/from16 v1, v189

    move/from16 v2, v97

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getUiccFile(III)V

    goto/16 :goto_0

    .line 6286
    .end local v5    # "serial":I
    .end local v97    # "fileId":I
    .end local v189    # "uiccType":I
    :sswitch_b0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6289
    .restart local v5    # "serial":I
    new-instance v109, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;

    invoke-direct/range {v109 .. v109}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;-><init>()V

    .line 6290
    .local v109, "ksNafAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;
    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6291
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->uiccKsNafAuth(ILvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;)V

    goto/16 :goto_0

    .line 6297
    .end local v5    # "serial":I
    .end local v109    # "ksNafAuthParam":Lvendor/huawei/hardware/radio/V1_0/RILUICCKSNAFAUTH;
    :sswitch_b1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6300
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v94

    .line 6301
    .local v94, "enabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v184

    .line 6302
    .local v184, "threshHold":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    move/from16 v2, v184

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setVtLlteQualityRptCfg(III)V

    goto/16 :goto_0

    .line 6308
    .end local v5    # "serial":I
    .end local v94    # "enabled":I
    .end local v184    # "threshHold":I
    :sswitch_b2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6311
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->clearDsFlowInfo(I)V

    goto/16 :goto_0

    .line 6317
    .end local v5    # "serial":I
    :sswitch_b3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6320
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLocationInfo(I)V

    goto/16 :goto_0

    .line 6326
    .end local v5    # "serial":I
    :sswitch_b4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6329
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 6330
    .local v143, "power_grade":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setWifiPowerGrade(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6336
    .end local v5    # "serial":I
    .end local v143    # "power_grade":Ljava/lang/String;
    :sswitch_b5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6339
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v82

    .line 6340
    .local v82, "device":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v179

    .line 6341
    .local v179, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v159

    .line 6342
    .local v159, "reserve":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v179

    move-object/from16 v3, v159

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->impactAntDevstate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6348
    .end local v5    # "serial":I
    .end local v82    # "device":Ljava/lang/String;
    .end local v159    # "reserve":Ljava/lang/String;
    .end local v179    # "status":Ljava/lang/String;
    :sswitch_b6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6351
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 6352
    .local v52, "at_rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v175

    .line 6353
    .local v175, "srv_domain":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v175

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setNetworkRatAndSrvDomain(III)V

    goto/16 :goto_0

    .line 6359
    .end local v5    # "serial":I
    .end local v52    # "at_rat":I
    .end local v175    # "srv_domain":I
    :sswitch_b7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6362
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v102

    .line 6363
    .restart local v102    # "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v92

    .line 6364
    .local v92, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v166

    .line 6365
    .local v166, "slot":I
    move-object/from16 v0, p0

    move/from16 v1, v102

    move/from16 v2, v92

    move/from16 v3, v166

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setVsimSimState(IIII)V

    goto/16 :goto_0

    .line 6371
    .end local v5    # "serial":I
    .end local v92    # "enable":I
    .end local v102    # "index":I
    .end local v166    # "slot":I
    :sswitch_b8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6374
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVsimSimState(I)V

    goto/16 :goto_0

    .line 6380
    .end local v5    # "serial":I
    :sswitch_b9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6383
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSystemInfoEx(I)V

    goto/16 :goto_0

    .line 6389
    .end local v5    # "serial":I
    :sswitch_ba
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6392
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getPlmnInfo(I)V

    goto/16 :goto_0

    .line 6398
    .end local v5    # "serial":I
    :sswitch_bb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6401
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getPolCapability(I)V

    goto/16 :goto_0

    .line 6407
    .end local v5    # "serial":I
    :sswitch_bc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6410
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getPolList(I)V

    goto/16 :goto_0

    .line 6416
    .end local v5    # "serial":I
    :sswitch_bd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6419
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 6420
    .local v103, "index":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 6421
    .local v133, "opern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 6422
    .local v51, "arg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move-object/from16 v2, v133

    move-object/from16 v3, v51

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setPolEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6428
    .end local v5    # "serial":I
    .end local v51    # "arg":Ljava/lang/String;
    .end local v103    # "index":Ljava/lang/String;
    .end local v133    # "opern":Ljava/lang/String;
    :sswitch_be
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6431
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v136

    .line 6432
    .local v136, "p_lte_freq":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setIsmcoex(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6438
    .end local v5    # "serial":I
    .end local v136    # "p_lte_freq":Ljava/lang/String;
    :sswitch_bf
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6441
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getRatCombinePrio(I)V

    goto/16 :goto_0

    .line 6447
    .end local v5    # "serial":I
    :sswitch_c0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6450
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDsFlowInfo(I)V

    goto/16 :goto_0

    .line 6456
    .end local v5    # "serial":I
    :sswitch_c1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6459
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDeviceVersion(I)V

    goto/16 :goto_0

    .line 6465
    .end local v5    # "serial":I
    :sswitch_c2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6468
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v167

    .line 6469
    .local v167, "slot1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v168

    .line 6470
    .local v168, "slot2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v169

    .line 6471
    .local v169, "slot3":I
    move-object/from16 v0, p0

    move/from16 v1, v167

    move/from16 v2, v168

    move/from16 v3, v169

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setSciChgCfg(IIII)V

    goto/16 :goto_0

    .line 6477
    .end local v5    # "serial":I
    .end local v167    # "slot1":I
    .end local v168    # "slot2":I
    .end local v169    # "slot3":I
    :sswitch_c3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6480
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->vsimCheckCard(I)V

    goto/16 :goto_0

    .line 6486
    .end local v5    # "serial":I
    :sswitch_c4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6489
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v104

    .line 6490
    .local v104, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v105

    .line 6491
    .local v105, "index2":I
    move-object/from16 v0, p0

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDsFlowNvWriteConfigPara(III)V

    goto/16 :goto_0

    .line 6497
    .end local v5    # "serial":I
    .end local v104    # "index1":I
    .end local v105    # "index2":I
    :sswitch_c5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6500
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v104

    .line 6501
    .restart local v104    # "index1":I
    move-object/from16 v0, p0

    move/from16 v1, v104

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setUeOperationMode(II)V

    goto/16 :goto_0

    .line 6507
    .end local v5    # "serial":I
    .end local v104    # "index1":I
    :sswitch_c6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6510
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->vsimPower(I)V

    goto/16 :goto_0

    .line 6516
    .end local v5    # "serial":I
    :sswitch_c7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6519
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->queryServiceCellBand(I)V

    goto/16 :goto_0

    .line 6525
    .end local v5    # "serial":I
    :sswitch_c8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6528
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v79

    .line 6529
    .local v79, "date":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v180

    .line 6530
    .local v180, "strtime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v194

    .line 6531
    .local v194, "zone":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v180

    move-object/from16 v3, v194

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6537
    .end local v5    # "serial":I
    .end local v79    # "date":Ljava/lang/String;
    .end local v180    # "strtime":Ljava/lang/String;
    .end local v194    # "zone":Ljava/lang/String;
    :sswitch_c9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6540
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->vsimBasebandVersion(I)V

    goto/16 :goto_0

    .line 6546
    .end local v5    # "serial":I
    :sswitch_ca
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6549
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLwclash(I)V

    goto/16 :goto_0

    .line 6555
    .end local v5    # "serial":I
    :sswitch_cb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6558
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v139

    .line 6559
    .local v139, "pcscf":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDmPcscf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6565
    .end local v5    # "serial":I
    .end local v139    # "pcscf":Ljava/lang/String;
    :sswitch_cc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6567
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6568
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 6569
    .local v89, "dyPram":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDmDynamicPram(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6575
    .end local v5    # "serial":I
    .end local v89    # "dyPram":Ljava/lang/String;
    :sswitch_cd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6578
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v185

    .line 6579
    .local v185, "timer":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDmTimer(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6585
    .end local v5    # "serial":I
    .end local v185    # "timer":Ljava/lang/String;
    :sswitch_ce
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6588
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v172

    .line 6589
    .local v172, "smsPsi":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDmSmsPsi(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6595
    .end local v5    # "serial":I
    .end local v172    # "smsPsi":Ljava/lang/String;
    :sswitch_cf
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6598
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v124

    .line 6599
    .local v124, "nickName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setNickName(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6605
    .end local v5    # "serial":I
    .end local v124    # "nickName":Ljava/lang/String;
    :sswitch_d0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6608
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDmPcscf(I)V

    goto/16 :goto_0

    .line 6614
    .end local v5    # "serial":I
    :sswitch_d1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6617
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDmDynamicPram(I)V

    goto/16 :goto_0

    .line 6623
    .end local v5    # "serial":I
    :sswitch_d2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6626
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDmTimer(I)V

    goto/16 :goto_0

    .line 6632
    .end local v5    # "serial":I
    :sswitch_d3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6635
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getSmsPsi(I)V

    goto/16 :goto_0

    .line 6641
    .end local v5    # "serial":I
    :sswitch_d4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6644
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getNickName(I)V

    goto/16 :goto_0

    .line 6650
    .end local v5    # "serial":I
    :sswitch_d5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6653
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDmUser(I)V

    goto/16 :goto_0

    .line 6659
    .end local v5    # "serial":I
    :sswitch_d6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6662
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->imsRegister(I)V

    goto/16 :goto_0

    .line 6668
    .end local v5    # "serial":I
    :sswitch_d7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6671
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v178

    .line 6672
    .restart local v178    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->informBatteryStatus(II)V

    goto/16 :goto_0

    .line 6678
    .end local v5    # "serial":I
    .end local v178    # "status":I
    :sswitch_d8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6681
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 6682
    .local v23, "enable_rpt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v24

    .line 6683
    .local v24, "threshold":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v25

    .line 6684
    .local v25, "total_threshold":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    .local v26, "oper":I
    move-object/from16 v21, p0

    move/from16 v22, v5

    .line 6685
    invoke-virtual/range {v21 .. v26}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setApDsFlowReportConfig(IIIII)V

    goto/16 :goto_0

    .line 6691
    .end local v5    # "serial":I
    .end local v23    # "enable_rpt":I
    .end local v24    # "threshold":I
    .end local v25    # "total_threshold":I
    .end local v26    # "oper":I
    :sswitch_d9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6694
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v137

    .line 6695
    .local v137, "paratype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v138

    .line 6696
    .local v138, "pathtype":I
    move-object/from16 v0, p0

    move/from16 v1, v137

    move/from16 v2, v138

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->notifyCellularCommParaReady(III)V

    goto/16 :goto_0

    .line 6702
    .end local v5    # "serial":I
    .end local v137    # "paratype":I
    .end local v138    # "pathtype":I
    :sswitch_da
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6705
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    .line 6706
    .local v29, "infoType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    .line 6707
    .local v30, "lac":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    .line 6708
    .restart local v31    # "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    .line 6709
    .local v32, "radiotech":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, "plmn":Ljava/lang/String;
    move-object/from16 v27, p0

    move/from16 v28, v5

    .line 6710
    invoke-virtual/range {v27 .. v33}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendPseudocellCellInfo(IIIIILjava/lang/String;)V

    goto/16 :goto_0

    .line 6716
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

    .line 6718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6719
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v137

    .line 6720
    .restart local v137    # "paratype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v138

    .line 6721
    .restart local v138    # "pathtype":I
    move-object/from16 v0, p0

    move/from16 v1, v137

    move/from16 v2, v138

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->notifyCellularCloudParaReady(III)V

    goto/16 :goto_0

    .line 6727
    .end local v5    # "serial":I
    .end local v137    # "paratype":I
    .end local v138    # "pathtype":I
    :sswitch_dc
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6730
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getHwSignalStrength(I)V

    goto/16 :goto_0

    .line 6736
    .end local v5    # "serial":I
    :sswitch_dd
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6739
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getAvailableCsgIds(I)V

    goto/16 :goto_0

    .line 6745
    .end local v5    # "serial":I
    :sswitch_de
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6748
    .restart local v5    # "serial":I
    new-instance v77, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;

    invoke-direct/range {v77 .. v77}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;-><init>()V

    .line 6749
    .local v77, "csgInfo":Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;
    move-object/from16 v0, v77

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6750
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->manualSelectionCsgId(ILvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;)V

    goto/16 :goto_0

    .line 6756
    .end local v5    # "serial":I
    .end local v77    # "csgInfo":Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;
    :sswitch_df
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6759
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLastImsCallFailCause(I)V

    goto/16 :goto_0

    .line 6765
    .end local v5    # "serial":I
    :sswitch_e0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6768
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 6769
    .local v62, "capabilityType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v61

    .line 6770
    .local v61, "capabilitySwitch":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v61

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setImsvtCapability(III)V

    goto/16 :goto_0

    .line 6776
    .end local v5    # "serial":I
    .end local v61    # "capabilitySwitch":I
    .end local v62    # "capabilityType":I
    :sswitch_e1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6779
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v193

    .line 6780
    .local v193, "wifiAid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v193

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setWifiEmergencyAid(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6786
    .end local v5    # "serial":I
    .end local v193    # "wifiAid":Ljava/lang/String;
    :sswitch_e2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6789
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    .line 6790
    .local v70, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v160

    .line 6791
    .local v160, "reserved":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v70

    move-object/from16 v2, v160

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->sendLaaCmd(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 6797
    .end local v5    # "serial":I
    .end local v70    # "cmd":I
    .end local v160    # "reserved":Ljava/lang/String;
    :sswitch_e3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6800
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v96

    .line 6801
    .local v96, "field":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 6802
    .local v78, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v96

    move-object/from16 v2, v78

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->simlockNwDataWrite(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 6808
    .end local v5    # "serial":I
    .end local v78    # "data":Ljava/lang/String;
    .end local v96    # "field":I
    :sswitch_e4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6811
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v160

    .line 6812
    .restart local v160    # "reserved":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getLaaDetailedState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 6818
    .end local v5    # "serial":I
    .end local v160    # "reserved":Ljava/lang/String;
    :sswitch_e5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6821
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v178

    .line 6822
    .restart local v178    # "status":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->notifyCModemStatus(II)V

    goto/16 :goto_0

    .line 6828
    .end local v5    # "serial":I
    .end local v178    # "status":I
    :sswitch_e6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6831
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setupDataCallEmergency(I)V

    goto/16 :goto_0

    .line 6837
    .end local v5    # "serial":I
    :sswitch_e7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6840
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->deactivateDataCallEmergency(I)V

    goto/16 :goto_0

    .line 6846
    .end local v5    # "serial":I
    :sswitch_e8
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6849
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCellInfoListOtdoa(I)V

    goto/16 :goto_0

    .line 6855
    .end local v5    # "serial":I
    :sswitch_e9
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6857
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6858
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 6859
    .restart local v60    # "callType":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->switchImsWaitingOrHoldingAndActiveWithType(II)V

    goto/16 :goto_0

    .line 6865
    .end local v5    # "serial":I
    .end local v60    # "callType":I
    :sswitch_ea
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6868
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    .line 6869
    .local v71, "combineMode":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setRatCombinePrio(II)V

    goto/16 :goto_0

    .line 6875
    .end local v5    # "serial":I
    .end local v71    # "combineMode":I
    :sswitch_eb
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6878
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v162

    .line 6879
    .local v162, "rfChannel":I
    move-object/from16 v0, p0

    move/from16 v1, v162

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setHwRFChannelSwitch(II)V

    goto/16 :goto_0

    .line 6885
    .end local v5    # "serial":I
    .end local v162    # "rfChannel":I
    :sswitch_ec
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6887
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6888
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v131

    .line 6889
    .restart local v131    # "on":Z
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setRiseCdmaCutoffFreq(IZ)V

    goto/16 :goto_0

    .line 6895
    .end local v5    # "serial":I
    .end local v131    # "on":Z
    :sswitch_ed
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6898
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v50

    .line 6899
    .local v50, "apn":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v84

    .line 6900
    .local v84, "dh":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v165

    .line 6901
    .local v165, "sim":I
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v84

    move/from16 v3, v165

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setVsimTEEDataReady(IIII)V

    goto/16 :goto_0

    .line 6907
    .end local v5    # "serial":I
    .end local v50    # "apn":I
    .end local v84    # "dh":I
    .end local v165    # "sim":I
    :sswitch_ee
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6910
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getCdmaChrInfo(I)V

    goto/16 :goto_0

    .line 6916
    .end local v5    # "serial":I
    :sswitch_ef
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6919
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v113

    .line 6920
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->testVoiceLoopback(II)V

    goto/16 :goto_0

    .line 6926
    .end local v5    # "serial":I
    .end local v113    # "mode":I
    :sswitch_f0
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6929
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v183

    .line 6930
    .local v183, "tetherConnectStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v163

    .line 6931
    .local v163, "rmnetName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v183

    move-object/from16 v2, v163

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->informModemTetherStatusToChangeGRO(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 6937
    .end local v5    # "serial":I
    .end local v163    # "rmnetName":Ljava/lang/String;
    .end local v183    # "tetherConnectStatus":I
    :sswitch_f1
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6940
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v156

    .line 6941
    .local v156, "rcsCapability":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v81

    .line 6942
    .local v81, "devConfig":I
    move-object/from16 v0, p0

    move/from16 v1, v156

    move/from16 v2, v81

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setDmRcsConfig(III)V

    goto/16 :goto_0

    .line 6948
    .end local v5    # "serial":I
    .end local v81    # "devConfig":I
    .end local v156    # "rcsCapability":I
    :sswitch_f2
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6951
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v182

    .line 6952
    .local v182, "switchState":I
    move-object/from16 v0, p0

    move/from16 v1, v182

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setRcsSwitch(II)V

    goto/16 :goto_0

    .line 6958
    .end local v5    # "serial":I
    .end local v182    # "switchState":I
    :sswitch_f3
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6961
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getRcsSwitchState(I)V

    goto/16 :goto_0

    .line 6967
    .end local v5    # "serial":I
    :sswitch_f4
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6970
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVolteImpi(I)V

    goto/16 :goto_0

    .line 6976
    .end local v5    # "serial":I
    :sswitch_f5
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6979
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getVolteDomain(I)V

    goto/16 :goto_0

    .line 6985
    .end local v5    # "serial":I
    :sswitch_f6
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6988
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 6989
    .restart local v57    # "callIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->cancelImsVideoCall(II)V

    goto/16 :goto_0

    .line 6995
    .end local v5    # "serial":I
    .end local v57    # "callIndex":I
    :sswitch_f7
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.1::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6998
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 6999
    .restart local v120    # "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v186

    .line 7000
    .restart local v186    # "type":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v186

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 7006
    .end local v5    # "serial":I
    .end local v120    # "netPin":Ljava/lang/String;
    .end local v186    # "type":I
    :sswitch_f8
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7008
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v40

    .line 7009
    .local v40, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7010
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7017
    .end local v40    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_f9
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7019
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7026
    :sswitch_fa
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7028
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v39

    .line 7029
    .local v39, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7030
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7037
    .end local v39    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_fb
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7039
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v41

    .line 7040
    .local v41, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7042
    new-instance v36, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7044
    .local v36, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 7045
    .local v43, "_hidl_vec_size":I
    const-wide/16 v18, 0x8

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 7046
    const-wide/16 v18, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7047
    new-instance v69, Landroid/os/HwBlob;

    mul-int/lit8 v4, v43, 0x20

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7048
    .local v69, "childBlob":Landroid/os/HwBlob;
    const/16 v37, 0x0

    .local v37, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_1

    .line 7050
    mul-int/lit8 v4, v37, 0x20

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 7051
    .local v34, "_hidl_array_offset_1":J
    const/16 v38, 0x0

    .local v38, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v38

    if-ge v0, v4, :cond_0

    .line 7052
    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v38

    move-object/from16 v0, v69

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 7053
    const-wide/16 v18, 0x1

    add-long v34, v34, v18

    .line 7051
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 7048
    :cond_0
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 7057
    .end local v34    # "_hidl_array_offset_1":J
    .end local v38    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7059
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7067
    .end local v36    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v37    # "_hidl_index_0":I
    .end local v41    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v43    # "_hidl_vec_size":I
    .end local v69    # "childBlob":Landroid/os/HwBlob;
    :sswitch_fc
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7069
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 7085
    :sswitch_fd
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7087
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v42

    .line 7088
    .local v42, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7089
    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 7096
    .end local v42    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_fe
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7098
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 4526
    nop

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
        0xf1 -> :sswitch_f1
        0xf2 -> :sswitch_f2
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f4
        0xf5 -> :sswitch_f5
        0xf6 -> :sswitch_f6
        0xf7 -> :sswitch_f7
        0xf43484e -> :sswitch_f8
        0xf444247 -> :sswitch_f9
        0xf445343 -> :sswitch_fa
        0xf485348 -> :sswitch_fb
        0xf494e54 -> :sswitch_fc
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_fd
        0xf535953 -> :sswitch_fe
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 4483
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 4508
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4509
    return-object p0

    .line 4511
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
    .line 4515
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4516
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 4474
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 4502
    const/4 v0, 0x1

    return v0
.end method
