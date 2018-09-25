.class public abstract Landroid/hardware/radio/V1_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2649
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 2652
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 2694
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2695
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2696
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2697
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

    .line 2670
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 2671
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2672
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2670
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2671
    nop

    :array_0
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

    .line 2672
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
    .line 2657
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2658
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioResponse"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2659
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2657
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2664
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 2683
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 2702
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 2703
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 86
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
    .line 2731
    sparse-switch p1, :sswitch_data_0

    .line 4227
    :goto_0
    :sswitch_0
    return-void

    .line 2734
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2736
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2737
    .local v5, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2738
    new-instance v32, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct/range {v32 .. v32}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 2739
    .local v32, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2740
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    goto :goto_0

    .line 2746
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v32    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2748
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2749
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2751
    .local v64, "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2757
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2759
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2760
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2762
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2768
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2770
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2771
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2773
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    .line 2779
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2782
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2784
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2790
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2792
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2793
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2795
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2801
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2804
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2806
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2812
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2814
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2815
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 2817
    .restart local v64    # "remainingRetries":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 2823
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v64    # "remainingRetries":I
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2826
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2827
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v31

    .line 2828
    .local v31, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2834
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v31    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2836
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2837
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2838
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2844
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2846
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2847
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 2849
    .local v48, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2855
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v48    # "imsi":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2857
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2858
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2859
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2865
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2868
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2869
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2875
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2877
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2878
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2879
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2885
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2887
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2888
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2889
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2895
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2897
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2898
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2899
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2905
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2907
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2908
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2909
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2915
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2917
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2918
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2919
    new-instance v46, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct/range {v46 .. v46}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 2920
    .local v46, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2921
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    .line 2927
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v46    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2930
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2931
    new-instance v74, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v74 .. v74}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2932
    .local v74, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    move-object/from16 v0, v74

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2933
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    .line 2939
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v74    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2941
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2942
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2943
    new-instance v82, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct/range {v82 .. v82}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 2944
    .local v82, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    move-object/from16 v0, v82

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2945
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    goto/16 :goto_0

    .line 2951
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v82    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2953
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2954
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2955
    new-instance v42, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct/range {v42 .. v42}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 2956
    .local v42, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2957
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    goto/16 :goto_0

    .line 2963
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v42    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2965
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2966
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 2968
    .local v52, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2969
    .local v73, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 2970
    .local v59, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v73

    move-object/from16 v3, v59

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2976
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v52    # "longName":Ljava/lang/String;
    .end local v59    # "numeric":Ljava/lang/String;
    .end local v73    # "shortName":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2978
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2979
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2980
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2986
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2989
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2990
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 2996
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2998
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2999
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3000
    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3001
    .local v75, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3002
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3008
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3010
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3011
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3012
    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3013
    .restart local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3014
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3020
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3023
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3024
    new-instance v43, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3025
    .local v43, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3026
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_0

    .line 3032
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v43    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3035
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3036
    new-instance v47, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3037
    .local v47, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3038
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3044
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v47    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_1d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3047
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3048
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3054
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3057
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3058
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3064
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3067
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    .line 3069
    .local v56, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v53

    .line 3070
    .local v53, "m":I
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    goto/16 :goto_0

    .line 3076
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v53    # "m":I
    .end local v56    # "n":I
    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3079
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3080
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3086
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3088
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3089
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3090
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v30

    .line 3091
    .local v30, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3097
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v30    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3100
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3101
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3107
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3109
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3110
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    .line 3112
    .local v45, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    .line 3113
    .local v72, "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v72

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    .line 3119
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v45    # "enable":Z
    .end local v72    # "serviceClass":I
    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3121
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3122
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3123
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3129
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3131
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3132
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3133
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3139
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3141
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3142
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3143
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3149
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3151
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3152
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3153
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3159
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3162
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v65

    .line 3164
    .local v65, "response":I
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3170
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v65    # "response":I
    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3172
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3173
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v69

    .line 3175
    .local v69, "retry":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3181
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v69    # "retry":I
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3183
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3184
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3185
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3191
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3194
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v54

    .line 3196
    .local v54, "manual":Z
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3202
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v54    # "manual":Z
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3205
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3206
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3212
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3214
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3215
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3216
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3222
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3224
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3225
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3226
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v57

    .line 3227
    .local v57, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3233
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v57    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3235
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3236
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3237
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3243
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3245
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3246
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3247
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3253
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3255
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3256
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v81

    .line 3258
    .local v81, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3264
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v81    # "version":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3266
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3267
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3268
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3274
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3276
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3277
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3278
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3284
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3286
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3287
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    .line 3289
    .restart local v45    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3295
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v45    # "enable":Z
    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3298
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v78

    .line 3300
    .local v78, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3306
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v78    # "status":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3308
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3309
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3310
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v44

    .line 3311
    .local v44, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3317
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v44    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3319
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3320
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3321
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3327
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3329
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3330
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    .line 3332
    .local v49, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3338
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v49    # "index":I
    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3340
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3341
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3342
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3348
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3351
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3352
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3358
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3360
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3361
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v29

    .line 3363
    .local v29, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3369
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v29    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3371
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3372
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 3374
    .local v38, "commandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3380
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v38    # "commandResponse":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3383
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3384
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3390
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3393
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3394
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3400
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3402
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3403
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3404
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3410
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3412
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3413
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3414
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3420
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3422
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3423
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    .line 3425
    .local v60, "nwType":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3431
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v60    # "nwType":I
    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3434
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3435
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v35

    .line 3436
    .local v35, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3442
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v35    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3444
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3445
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3446
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3452
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3454
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3455
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3456
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3462
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3464
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3465
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3466
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3472
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3474
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3475
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v80

    .line 3477
    .local v80, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3483
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v80    # "type":I
    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3485
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3486
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3487
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3493
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3496
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v55

    .line 3498
    .local v55, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3504
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v55    # "mode":I
    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3506
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3507
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3508
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3514
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3516
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3517
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    .line 3519
    .restart local v45    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    .line 3525
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v45    # "enable":Z
    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3527
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3528
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3529
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3535
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3537
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3538
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3539
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3545
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3547
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3548
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3549
    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3550
    .restart local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3551
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3557
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3560
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3561
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3567
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3570
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3571
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v41

    .line 3572
    .local v41, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3578
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v41    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3580
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3581
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3582
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3588
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3591
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3592
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3598
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3600
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3601
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3602
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v40

    .line 3603
    .local v40, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3609
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v40    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3611
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3612
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3613
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3619
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3621
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3622
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3623
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3629
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3632
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3634
    .local v6, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3635
    .local v7, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3636
    .local v8, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3637
    .local v9, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "prl":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 3638
    invoke-virtual/range {v4 .. v10}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3644
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

    .line 3646
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3647
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    .line 3649
    .restart local v49    # "index":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3655
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v49    # "index":I
    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3658
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3659
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3665
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3668
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3670
    .local v13, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3671
    .local v14, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3672
    .local v15, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "meid":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v5

    .line 3673
    invoke-virtual/range {v11 .. v16}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3679
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "imeisv":Ljava/lang/String;
    .end local v15    # "esn":Ljava/lang/String;
    .end local v16    # "meid":Ljava/lang/String;
    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3681
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3682
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3683
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3689
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3691
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3692
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 3694
    .local v76, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3700
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v76    # "smsc":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3702
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3703
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3704
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3710
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3712
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3713
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3714
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3720
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3722
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3723
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3724
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3730
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3733
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v77

    .line 3735
    .local v77, "source":I
    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3741
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v77    # "source":I
    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3743
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3744
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v66

    .line 3746
    .local v66, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3752
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v66    # "response":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3754
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3755
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3756
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3762
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3764
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3765
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3766
    new-instance v47, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3767
    .restart local v47    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3768
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3774
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v47    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3776
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3777
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v61

    .line 3779
    .local v61, "rat":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 3785
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v61    # "rat":I
    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3787
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3788
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3789
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v34

    .line 3790
    .local v34, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3796
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v34    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3798
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3799
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3800
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3806
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3808
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3809
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3810
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3816
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3818
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3819
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v50

    .line 3821
    .local v50, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 3822
    .local v62, "ratFamily":I
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v62

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    .line 3828
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v50    # "isRegistered":Z
    .end local v62    # "ratFamily":I
    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3830
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3831
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3832
    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3833
    .restart local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3834
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    .line 3840
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v75    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3842
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3843
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3844
    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3845
    .local v67, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3846
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3852
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v67    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3855
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v36

    .line 3857
    .local v36, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v70

    .line 3858
    .local v70, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v70

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3864
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v36    # "channelId":I
    .end local v70    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3866
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3867
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3868
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3874
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3877
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3878
    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3879
    .restart local v67    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3880
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3886
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v67    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3888
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3889
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 3891
    .local v68, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3897
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v68    # "result":Ljava/lang/String;
    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3899
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3900
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3901
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3907
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3909
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3910
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3911
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3917
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3919
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3920
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3921
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3927
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3929
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3930
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3931
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3937
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3939
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3940
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3941
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3947
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3950
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3951
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v39

    .line 3952
    .local v39, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3958
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v39    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3960
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3961
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3962
    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3963
    .restart local v67    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3964
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    .line 3970
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v67    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3972
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3973
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3974
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3980
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3983
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3984
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 3990
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3992
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3993
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3994
    new-instance v63, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3995
    .local v63, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3996
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 4002
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v63    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4004
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4005
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4006
    new-instance v63, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4007
    .restart local v63    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4008
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 4014
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v63    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4016
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4017
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4018
    new-instance v79, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v79 .. v79}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4019
    .local v79, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    move-object/from16 v0, v79

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4020
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    .line 4026
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v79    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4029
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4030
    new-instance v79, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v79 .. v79}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4031
    .restart local v79    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    move-object/from16 v0, v79

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4032
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    .line 4038
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v79    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4040
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4041
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4042
    new-instance v51, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v51 .. v51}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4043
    .local v51, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4044
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    .line 4050
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v51    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4052
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4053
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4054
    new-instance v27, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4055
    .local v27, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4056
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    goto/16 :goto_0

    .line 4062
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v27    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4064
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4065
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    .line 4067
    .local v58, "numAllowed":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    .line 4073
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v58    # "numAllowed":I
    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4075
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4076
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v28

    .line 4078
    .local v28, "allAllowed":Z
    new-instance v33, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v33 .. v33}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4079
    .local v33, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4080
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    .line 4086
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v28    # "allAllowed":Z
    .end local v33    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4089
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4090
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4096
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4098
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4099
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4100
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4106
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4108
    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4109
    .restart local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4110
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    .line 4116
    .end local v5    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    .line 4119
    .local v71, "serial":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    goto/16 :goto_0

    .line 4125
    .end local v71    # "serial":I
    :sswitch_82
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4127
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v23

    .line 4128
    .local v23, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4129
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4136
    .end local v23    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_83
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4138
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4145
    :sswitch_84
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4147
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v22

    .line 4148
    .local v22, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4149
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4156
    .end local v22    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_85
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4158
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v24

    .line 4159
    .local v24, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4161
    new-instance v17, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4163
    .local v17, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 4164
    .local v26, "_hidl_vec_size":I
    const-wide/16 v84, 0x8

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4165
    const-wide/16 v84, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4166
    new-instance v37, Landroid/os/HwBlob;

    mul-int/lit8 v4, v26, 0x20

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4167
    .local v37, "childBlob":Landroid/os/HwBlob;
    const/16 v20, 0x0

    .local v20, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 4169
    mul-int/lit8 v4, v20, 0x20

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 4170
    .local v18, "_hidl_array_offset_1":J
    const/16 v21, 0x0

    .local v21, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    .line 4171
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v21

    move-object/from16 v0, v37

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 4172
    const-wide/16 v84, 0x1

    add-long v18, v18, v84

    .line 4170
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 4167
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 4176
    .end local v18    # "_hidl_array_offset_1":J
    .end local v21    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v84, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4178
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4186
    .end local v17    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v20    # "_hidl_index_0":I
    .end local v24    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v26    # "_hidl_vec_size":I
    .end local v37    # "childBlob":Landroid/os/HwBlob;
    :sswitch_86
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4188
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 4204
    :sswitch_87
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v25

    .line 4207
    .local v25, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4208
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4215
    .end local v25    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_88
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4217
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 2731
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
        0xf43484e -> :sswitch_82
        0xf444247 -> :sswitch_83
        0xf445343 -> :sswitch_84
        0xf485348 -> :sswitch_85
        0xf494e54 -> :sswitch_86
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_87
        0xf535953 -> :sswitch_88
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 2688
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 2713
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2714
    return-object p0

    .line 2716
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
    .line 2720
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2721
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 2679
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 2707
    const/4 v0, 0x1

    return v0
.end method
