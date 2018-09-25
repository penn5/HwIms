.class public abstract Landroid/hardware/radio/V1_0/ISapCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISapCallback.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/ISapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/ISapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 461
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 503
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 504
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 505
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 506
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

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 480
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 481
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 479
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 480
    nop

    :array_0
    .array-data 1
        -0x2ft
        -0x7dt
        -0x1ct
        0x6t
        -0x11t
        0x8t
        -0x69t
        -0x21t
        0x21t
        0x17t
        -0x57t
        -0x23t
        -0x1dt
        -0x7ct
        -0x18t
        -0x1at
        -0x16t
        0x4ft
        -0x5at
        -0x55t
        0x1ct
        0x7ft
        0x6ft
        0x28t
        -0x1at
        0x5bt
        -0x79t
        0x1t
        0x12t
        0x18t
        -0x37t
        -0x16t
    .end array-data

    .line 481
    :array_1
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
    .line 466
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 467
    const-string/jumbo v2, "android.hardware.radio@1.0::ISapCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 468
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 466
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    const-string/jumbo v0, "android.hardware.radio@1.0::ISapCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 511
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 512
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 27
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
    .line 540
    sparse-switch p1, :sswitch_data_0

    .line 757
    :goto_0
    :sswitch_0
    return-void

    .line 543
    :sswitch_1
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 546
    .local v23, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v21

    .line 547
    .local v21, "sapConnectRsp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 548
    .local v19, "maxMsgSize":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->connectResponse(III)V

    goto :goto_0

    .line 554
    .end local v19    # "maxMsgSize":I
    .end local v21    # "sapConnectRsp":I
    .end local v23    # "token":I
    :sswitch_2
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 557
    .restart local v23    # "token":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->disconnectResponse(I)V

    goto :goto_0

    .line 563
    .end local v23    # "token":I
    :sswitch_3
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 566
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 567
    .local v18, "disconnectType":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->disconnectIndication(II)V

    goto :goto_0

    .line 573
    .end local v18    # "disconnectType":I
    .end local v23    # "token":I
    :sswitch_4
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 576
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 577
    .local v20, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 578
    .local v14, "apduRsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v14}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->apduResponse(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 584
    .end local v14    # "apduRsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_5
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 587
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 588
    .restart local v20    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 589
    .local v15, "atr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v15}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->transferAtrResponse(IILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 595
    .end local v15    # "atr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_6
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 598
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 599
    .restart local v20    # "resultCode":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->powerResponse(II)V

    goto/16 :goto_0

    .line 605
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_7
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 608
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 609
    .restart local v20    # "resultCode":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->resetSimResponse(II)V

    goto/16 :goto_0

    .line 615
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_8
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 618
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 619
    .local v22, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->statusIndication(II)V

    goto/16 :goto_0

    .line 625
    .end local v22    # "status":I
    .end local v23    # "token":I
    :sswitch_9
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 628
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 629
    .restart local v20    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 630
    .local v16, "cardReaderStatus":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->transferCardReaderStatusResponse(III)V

    goto/16 :goto_0

    .line 636
    .end local v16    # "cardReaderStatus":I
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_a
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 639
    .restart local v23    # "token":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->errorResponse(I)V

    goto/16 :goto_0

    .line 645
    .end local v23    # "token":I
    :sswitch_b
    const-string/jumbo v24, "android.hardware.radio@1.0::ISapCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    .line 648
    .restart local v23    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 649
    .restart local v20    # "resultCode":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->transferProtocolResponse(II)V

    goto/16 :goto_0

    .line 655
    .end local v20    # "resultCode":I
    .end local v23    # "token":I
    :sswitch_c
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    .line 658
    .local v10, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 659
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 666
    .end local v10    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 675
    :sswitch_e
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 686
    .end local v9    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    .line 689
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    new-instance v6, Landroid/os/HwBlob;

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 693
    .local v6, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 694
    .local v13, "_hidl_vec_size":I
    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 695
    const-wide/16 v24, 0xc

    const/16 v26, 0x0

    move-wide/from16 v0, v24

    move/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 696
    new-instance v17, Landroid/os/HwBlob;

    mul-int/lit8 v24, v13, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 697
    .local v17, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_1
    if-ge v7, v13, :cond_1

    .line 699
    mul-int/lit8 v24, v7, 0x20

    move/from16 v0, v24

    int-to-long v4, v0

    .line 700
    .local v4, "_hidl_array_offset_1":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_1_0":I
    :goto_2
    const/16 v24, 0x20

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    .line 701
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    aget-byte v24, v24, v8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 702
    const-wide/16 v24, 0x1

    add-long v4, v4, v24

    .line 700
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 697
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 706
    .end local v4    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 708
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 716
    .end local v6    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "_hidl_vec_size":I
    .end local v17    # "childBlob":Landroid/os/HwBlob;
    :sswitch_10
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 734
    :sswitch_11
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    .line 737
    .local v12, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 745
    .end local v12    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_12
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 540
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
        0xf43484e -> :sswitch_c
        0xf444247 -> :sswitch_d
        0xf445343 -> :sswitch_e
        0xf485348 -> :sswitch_f
        0xf494e54 -> :sswitch_10
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_11
        0xf535953 -> :sswitch_12
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v0, "android.hardware.radio@1.0::ISapCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    return-object p0

    .line 525
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
    .line 529
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/ISapCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 516
    const/4 v0, 0x1

    return v0
.end method
