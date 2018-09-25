.class public abstract Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_0/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2619
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 2622
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 2666
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2667
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2668
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2669
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

    .line 2641
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    .line 2642
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2643
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2644
    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 2641
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2642
    nop

    :array_0
    .array-data 1
        -0x34t
        -0x60t
        0x0t
        -0x2bt
        -0x26t
        -0xat
        -0x4dt
        -0x16t
        0x5t
        0x7at
        -0x59t
        0x2ft
        0x1at
        0x27t
        0x9t
        0x7et
        0x1ft
        0x79t
        0x15t
        0x62t
        0x1dt
        0x15t
        -0xet
        -0x24t
        0x12t
        0x13t
        0x7et
        0x15t
        -0x21t
        0x3et
        -0x31t
        -0x68t
    .end array-data

    .line 2643
    :array_1
    .array-data 1
        0x2dt
        -0x7dt
        0x3at
        -0x12t
        -0x30t
        -0x33t
        0x1dt
        0x59t
        0x43t
        0x7at
        -0x36t
        0x21t
        0xbt
        -0x1bt
        -0x70t
        -0x57t
        0x53t
        -0x31t
        0x32t
        -0x44t
        -0x4at
        0x68t
        0x3ct
        -0x2at
        0x3dt
        0x8t
        -0x69t
        0x62t
        -0x5at
        0x43t
        -0x5t
        0x49t
    .end array-data

    .line 2644
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
    .line 2627
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 2628
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2629
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioResponse"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2630
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 2627
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2635
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 2655
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 2674
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 2675
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 96
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
    .line 2703
    sparse-switch p1, :sswitch_data_0

    .line 4337
    :goto_0
    :sswitch_0
    return-void

    .line 2706
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2708
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2709
    .local v5, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2710
    new-instance v32, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct/range {v32 .. v32}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 2711
    .local v32, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2712
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    goto :goto_0

    .line 2718
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v32    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2721
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2723
    .local v72, "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2729
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2731
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2732
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2734
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2740
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2742
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2743
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2745
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2751
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2754
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2756
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2762
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2764
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2765
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2767
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2773
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2775
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2776
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2778
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2784
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2786
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2787
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 2789
    .restart local v72    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2795
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v72    # "remainingRetries":I
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2797
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2798
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2799
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v31

    .line 2800
    .local v31, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2806
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v31    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2808
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2809
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2810
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2816
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2818
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2819
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2821
    .local v53, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2827
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v53    # "imsi":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2829
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2830
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2831
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2837
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2840
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2841
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2847
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2849
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2850
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2851
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2857
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2859
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2860
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2861
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2867
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2869
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2870
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2871
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2877
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2879
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2880
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2881
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2887
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2889
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2890
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2891
    new-instance v50, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct/range {v50 .. v50}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 2892
    .local v50, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    move-object/from16 v0, v50

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2893
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    .line 2899
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v50    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2902
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2903
    new-instance v82, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v82 .. v82}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2904
    .local v82, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    move-object/from16 v0, v82

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2905
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    .line 2911
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v82    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2913
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2914
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2915
    new-instance v92, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct/range {v92 .. v92}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 2916
    .local v92, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    move-object/from16 v0, v92

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2917
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    goto/16 :goto_0

    .line 2923
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v92    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2925
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2926
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2927
    new-instance v44, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct/range {v44 .. v44}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 2928
    .local v44, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2929
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    goto/16 :goto_0

    .line 2935
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v44    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2937
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2938
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 2940
    .local v57, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v81

    .line 2941
    .local v81, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 2942
    .local v65, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v81

    move-object/from16 v3, v65

    invoke-virtual {v0, v5, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2948
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v57    # "longName":Ljava/lang/String;
    .end local v65    # "numeric":Ljava/lang/String;
    .end local v81    # "shortName":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2951
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2952
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2958
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2961
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2962
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2968
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2970
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2971
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2972
    new-instance v83, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v83 .. v83}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 2973
    .local v83, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v83

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2974
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 2980
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2982
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2983
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2984
    new-instance v83, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v83 .. v83}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 2985
    .restart local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v83

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2986
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 2992
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2994
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2995
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2996
    new-instance v45, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct/range {v45 .. v45}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 2997
    .local v45, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2998
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_0

    .line 3004
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v45    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3007
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3008
    new-instance v51, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v51 .. v51}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3009
    .local v51, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3010
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3016
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v51    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_1d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3018
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3019
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3020
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3026
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3028
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3029
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3030
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3036
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3038
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3039
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 3041
    .local v62, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    .line 3042
    .local v58, "m":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v58

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    goto/16 :goto_0

    .line 3048
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v58    # "m":I
    .end local v62    # "n":I
    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3050
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3051
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3052
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3058
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3060
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3061
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3062
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v30

    .line 3063
    .local v30, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3069
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v30    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3071
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3072
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3073
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3079
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3082
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v49

    .line 3084
    .local v49, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v80

    .line 3085
    .local v80, "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v80

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    .line 3091
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v49    # "enable":Z
    .end local v80    # "serviceClass":I
    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3093
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3094
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3095
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3101
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3104
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3105
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3111
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3114
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3115
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3121
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3124
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3125
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3131
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3133
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3134
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v73

    .line 3136
    .local v73, "response":I
    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3142
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v73    # "response":I
    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3144
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3145
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v77

    .line 3147
    .local v77, "retry":I
    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3153
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v77    # "retry":I
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3156
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3157
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3163
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3166
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v59

    .line 3168
    .local v59, "manual":Z
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3174
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v59    # "manual":Z
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3176
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3177
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3178
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3184
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3186
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3187
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3188
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3194
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3196
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3197
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3198
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v63

    .line 3199
    .local v63, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3205
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v63    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3207
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3208
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3209
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3215
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3218
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3219
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3225
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3227
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3228
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 3230
    .local v91, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3236
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v91    # "version":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3238
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3239
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3240
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3246
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3248
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3249
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3250
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3256
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3258
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3259
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v49

    .line 3261
    .restart local v49    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3267
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v49    # "enable":Z
    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3270
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v86

    .line 3272
    .local v86, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v86

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3278
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v86    # "status":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3281
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3282
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v46

    .line 3283
    .local v46, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3289
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v46    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3292
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3293
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3299
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3301
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3302
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v54

    .line 3304
    .local v54, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3310
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v54    # "index":I
    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3312
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3313
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3314
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3320
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3323
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3324
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3330
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3332
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3333
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v29

    .line 3335
    .local v29, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3341
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v29    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3343
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3344
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 3346
    .local v39, "commandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3352
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v39    # "commandResponse":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3354
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3355
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3356
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3362
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3364
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3365
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3366
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3372
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3374
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3375
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3376
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3382
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3384
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3385
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3386
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3392
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3395
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v66

    .line 3397
    .local v66, "nwType":I
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3403
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v66    # "nwType":I
    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3406
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3407
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v36

    .line 3408
    .local v36, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3414
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v36    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3417
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3418
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3424
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3426
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3427
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3428
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3434
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3437
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3438
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3444
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3446
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3447
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v89

    .line 3449
    .local v89, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3455
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v89    # "type":I
    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3457
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3458
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3459
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3465
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3467
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3468
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 3470
    .local v60, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3476
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v60    # "mode":I
    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3478
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3479
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3480
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3486
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3489
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v49

    .line 3491
    .restart local v49    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3497
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v49    # "enable":Z
    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3500
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3501
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3507
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3509
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3510
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3511
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3517
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3520
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3521
    new-instance v83, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v83 .. v83}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3522
    .restart local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v83

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3523
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3529
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3532
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3533
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3539
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3541
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3542
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3543
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v42

    .line 3544
    .local v42, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3550
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v42    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3553
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3554
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3560
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3563
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3564
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3570
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3572
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3573
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3574
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v41

    .line 3575
    .local v41, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3581
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v41    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3584
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3585
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3591
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3593
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3594
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3595
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3601
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3603
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3604
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3606
    .local v6, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3607
    .local v7, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3608
    .local v8, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3609
    .local v9, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "prl":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 3610
    invoke-virtual/range {v4 .. v10}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3616
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v6    # "mdn":Ljava/lang/String;
    .end local v7    # "hSid":Ljava/lang/String;
    .end local v8    # "hNid":Ljava/lang/String;
    .end local v9    # "min":Ljava/lang/String;
    .end local v10    # "prl":Ljava/lang/String;
    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3618
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3619
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v54

    .line 3621
    .restart local v54    # "index":I
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3627
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v54    # "index":I
    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3629
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3630
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3631
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3637
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3639
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3640
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3642
    .local v13, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3643
    .local v14, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3644
    .local v15, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "meid":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v5

    .line 3645
    invoke-virtual/range {v11 .. v16}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3651
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "imeisv":Ljava/lang/String;
    .end local v15    # "esn":Ljava/lang/String;
    .end local v16    # "meid":Ljava/lang/String;
    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3653
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3654
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3655
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3661
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3664
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 3666
    .local v84, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3672
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v84    # "smsc":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3674
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3675
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3676
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3682
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3685
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3686
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3692
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3695
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3696
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3702
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3705
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v85

    .line 3707
    .local v85, "source":I
    move-object/from16 v0, p0

    move/from16 v1, v85

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3713
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v85    # "source":I
    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3715
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3716
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 3718
    .local v74, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3724
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v74    # "response":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3727
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3728
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3734
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3737
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3738
    new-instance v51, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v51 .. v51}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3739
    .restart local v51    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3740
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3746
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v51    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3749
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v69

    .line 3751
    .local v69, "rat":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3757
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v69    # "rat":I
    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3759
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3760
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3761
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v34

    .line 3762
    .local v34, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3768
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v34    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3770
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3771
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3772
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3778
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3780
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3781
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3782
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3788
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3791
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v55

    .line 3793
    .local v55, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    .line 3794
    .local v70, "ratFamily":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v70

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    .line 3800
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v55    # "isRegistered":Z
    .end local v70    # "ratFamily":I
    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3802
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3803
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3804
    new-instance v83, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v83 .. v83}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3805
    .restart local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v83

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3806
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3812
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v83    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3815
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3816
    new-instance v75, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3817
    .local v75, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3818
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3824
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3826
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3827
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v37

    .line 3829
    .local v37, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v78

    .line 3830
    .local v78, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v78

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3836
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v37    # "channelId":I
    .end local v78    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3838
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3839
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3840
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3846
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3848
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3849
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3850
    new-instance v75, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3851
    .restart local v75    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3852
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3858
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3861
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 3863
    .local v76, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3869
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v76    # "result":Ljava/lang/String;
    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3872
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3879
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3881
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3882
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3883
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3889
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3892
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3893
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3899
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3902
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3903
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3909
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3912
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3913
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3919
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3921
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3922
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3923
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v40

    .line 3924
    .local v40, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3930
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v40    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3932
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3933
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3934
    new-instance v75, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3935
    .restart local v75    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3936
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3942
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3945
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3946
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3952
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3954
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3955
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3956
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3962
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3964
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3965
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3966
    new-instance v71, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v71 .. v71}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3967
    .local v71, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v71

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3968
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 3974
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v71    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3976
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3977
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3978
    new-instance v71, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v71 .. v71}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3979
    .restart local v71    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v71

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3980
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 3986
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v71    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3988
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3989
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3990
    new-instance v87, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v87 .. v87}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 3991
    .local v87, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3992
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    .line 3998
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v87    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4000
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4001
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4002
    new-instance v87, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v87 .. v87}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4003
    .restart local v87    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4004
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    .line 4010
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v87    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4012
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4013
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4014
    new-instance v56, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v56 .. v56}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4015
    .local v56, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4016
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    .line 4022
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v56    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4024
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4025
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4026
    new-instance v27, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4027
    .local v27, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4028
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    goto/16 :goto_0

    .line 4034
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v27    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4037
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 4039
    .local v64, "numAllowed":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 4045
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "numAllowed":I
    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4048
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v28

    .line 4050
    .local v28, "allAllowed":Z
    new-instance v33, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v33 .. v33}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4051
    .local v33, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4052
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    .line 4058
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v28    # "allAllowed":Z
    .end local v33    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4060
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4061
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4062
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4068
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4071
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4072
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4078
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4080
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4081
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4088
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v79

    .line 4091
    .local v79, "serial":I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    goto/16 :goto_0

    .line 4097
    .end local v79    # "serial":I
    :sswitch_82
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4099
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4100
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v61

    .line 4102
    .local v61, "msgId":I
    new-instance v67, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;

    invoke-direct/range {v67 .. v67}, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;-><init>()V

    .line 4103
    .local v67, "payload":Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;
    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4104
    move-object/from16 v0, p0

    move/from16 v1, v61

    move-object/from16 v2, v67

    invoke-virtual {v0, v5, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->RspMsg(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/V1_0/RspMsgPayload;)V

    goto/16 :goto_0

    .line 4110
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v61    # "msgId":I
    .end local v67    # "payload":Lvendor/huawei/hardware/radio/V1_0/RspMsgPayload;
    :sswitch_83
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4112
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4113
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    new-instance v47, Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;

    invoke-direct/range {v47 .. v47}, Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;-><init>()V

    .line 4115
    .local v47, "deviceVersion":Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;
    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4116
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;)V

    goto/16 :goto_0

    .line 4122
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v47    # "deviceVersion":Lvendor/huawei/hardware/radio/V1_0/RILDeviceVersionResponse;
    :sswitch_84
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4124
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4125
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4126
    new-instance v48, Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;

    invoke-direct/range {v48 .. v48}, Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;-><init>()V

    .line 4127
    .local v48, "dsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;
    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4128
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDsFlowInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;)V

    goto/16 :goto_0

    .line 4134
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v48    # "dsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILDsFlowInfoResponse;
    :sswitch_85
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4136
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4137
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4138
    new-instance v68, Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;

    invoke-direct/range {v68 .. v68}, Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;-><init>()V

    .line 4139
    .local v68, "preferredplmnselector":Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;
    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4140
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getPolListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;)V

    goto/16 :goto_0

    .line 4146
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v68    # "preferredplmnselector":Lvendor/huawei/hardware/radio/V1_0/RILPreferredPLMNSelector;
    :sswitch_86
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4149
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4150
    new-instance v88, Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;

    invoke-direct/range {v88 .. v88}, Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;-><init>()V

    .line 4151
    .local v88, "sysInfo":Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;
    move-object/from16 v0, v88

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getSystemInfoExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;)V

    goto/16 :goto_0

    .line 4158
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v88    # "sysInfo":Lvendor/huawei/hardware/radio/V1_0/RILRADIOSYSINFO;
    :sswitch_87
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4161
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4162
    invoke-static/range {p2 .. p2}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v52

    .line 4163
    .local v52, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentImsCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4169
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v52    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    :sswitch_88
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4172
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4173
    new-instance v90, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    invoke-direct/range {v90 .. v90}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;-><init>()V

    .line 4174
    .local v90, "uiccAuthRst":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
    move-object/from16 v0, v90

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4175
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->uiccAuthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;)V

    goto/16 :goto_0

    .line 4181
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v90    # "uiccAuthRst":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
    :sswitch_89
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4183
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4184
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4185
    invoke-static/range {p2 .. p2}, Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v43

    .line 4186
    .local v43, "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableCsgIdsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4192
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v43    # "csgInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/CsgNetworkInfo;>;"
    :sswitch_8a
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4194
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4195
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4196
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->manualSelectionCsgIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4202
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8b
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4204
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4205
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4206
    new-instance v45, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct/range {v45 .. v45}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4207
    .restart local v45    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4208
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallEmergencyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_0

    .line 4214
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v45    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_8c
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4217
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4218
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallEmergencyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4224
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8d
    const-string/jumbo v4, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4226
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4227
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4228
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v35

    .line 4229
    .local v35, "cellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListOtdoaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4235
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v35    # "cellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_8e
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4237
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v23

    .line 4238
    .local v23, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4239
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4246
    .end local v23    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8f
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4248
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4249
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4255
    :sswitch_90
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4257
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v22

    .line 4258
    .local v22, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4259
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4266
    .end local v22    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4268
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v24

    .line 4269
    .local v24, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4271
    new-instance v17, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4273
    .local v17, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 4274
    .local v26, "_hidl_vec_size":I
    const-wide/16 v94, 0x8

    move-object/from16 v0, v17

    move-wide/from16 v1, v94

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4275
    const-wide/16 v94, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v94

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4276
    new-instance v38, Landroid/os/HwBlob;

    mul-int/lit8 v4, v26, 0x20

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4277
    .local v38, "childBlob":Landroid/os/HwBlob;
    const/16 v20, 0x0

    .local v20, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 4279
    mul-int/lit8 v4, v20, 0x20

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 4280
    .local v18, "_hidl_array_offset_1":J
    const/16 v21, 0x0

    .local v21, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    .line 4281
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v21

    move-object/from16 v0, v38

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 4282
    const-wide/16 v94, 0x1

    add-long v18, v18, v94

    .line 4280
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 4277
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 4286
    .end local v18    # "_hidl_array_offset_1":J
    .end local v21    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v94, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v94

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4288
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4296
    .end local v17    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v20    # "_hidl_index_0":I
    .end local v24    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v26    # "_hidl_vec_size":I
    .end local v38    # "childBlob":Landroid/os/HwBlob;
    :sswitch_92
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4298
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 4314
    :sswitch_93
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4316
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v25

    .line 4317
    .local v25, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4318
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4325
    .end local v25    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_94
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4327
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 2703
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
        0xf43484e -> :sswitch_8e
        0xf444247 -> :sswitch_8f
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_91
        0xf494e54 -> :sswitch_92
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_93
        0xf535953 -> :sswitch_94
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 2660
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 2685
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2686
    return-object p0

    .line 2688
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
    .line 2692
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2693
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 2651
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 2679
    const/4 v0, 0x1

    return v0
.end method
