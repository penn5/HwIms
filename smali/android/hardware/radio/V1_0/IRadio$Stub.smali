.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2706
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 2709
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 2751
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2752
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2753
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2754
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

    .line 2727
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 2728
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2729
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2727
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2728
    nop

    :array_0
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

    .line 2729
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
    .line 2714
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2715
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2716
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2714
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2721
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 2740
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 2759
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 2760
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 111
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
    .line 2788
    sparse-switch p1, :sswitch_data_0

    .line 4202
    :goto_0
    :sswitch_0
    return-void

    .line 2791
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v94

    .line 2794
    .local v94, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v93

    .line 2795
    .local v93, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2796
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 2803
    .end local v93    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    .end local v94    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2806
    .local v5, "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_0

    .line 2812
    .end local v5    # "serial":I
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2815
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 2816
    .local v85, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2817
    .local v37, "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2823
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v85    # "pin":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2826
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 2827
    .local v90, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 2828
    .restart local v85    # "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2829
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v85

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2835
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v85    # "pin":Ljava/lang/String;
    .end local v90    # "puk":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2838
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 2839
    .local v86, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2840
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2846
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v86    # "pin2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2849
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 2850
    .local v91, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 2851
    .restart local v86    # "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2852
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v86

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2858
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v86    # "pin2":Ljava/lang/String;
    .end local v91    # "puk2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2861
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v79

    .line 2862
    .local v79, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2863
    .local v74, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2864
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v74

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2870
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v74    # "newPin":Ljava/lang/String;
    .end local v79    # "oldPin":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2873
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v80

    .line 2874
    .local v80, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 2875
    .local v75, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2876
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v75

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2882
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v75    # "newPin2":Ljava/lang/String;
    .end local v80    # "oldPin2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2885
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v72

    .line 2886
    .local v72, "netPin":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2892
    .end local v5    # "serial":I
    .end local v72    # "netPin":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2895
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_0

    .line 2901
    .end local v5    # "serial":I
    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2904
    .restart local v5    # "serial":I
    new-instance v58, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2905
    .local v58, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2906
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_0

    .line 2912
    .end local v5    # "serial":I
    .end local v58    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2915
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2916
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2922
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2925
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 2926
    .local v62, "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    goto/16 :goto_0

    .line 2932
    .end local v5    # "serial":I
    .end local v62    # "gsmIndex":I
    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2935
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_0

    .line 2941
    .end local v5    # "serial":I
    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2944
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_0

    .line 2950
    .end local v5    # "serial":I
    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2953
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_0

    .line 2959
    .end local v5    # "serial":I
    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2962
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    goto/16 :goto_0

    .line 2968
    .end local v5    # "serial":I
    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2971
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_0

    .line 2977
    .end local v5    # "serial":I
    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2980
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_0

    .line 2986
    .end local v5    # "serial":I
    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2989
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_0

    .line 2995
    .end local v5    # "serial":I
    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2998
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_0

    .line 3004
    .end local v5    # "serial":I
    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3007
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_0

    .line 3013
    .end local v5    # "serial":I
    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3016
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_0

    .line 3022
    .end local v5    # "serial":I
    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3025
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v82

    .line 3026
    .local v82, "on":Z
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_0

    .line 3032
    .end local v5    # "serial":I
    .end local v82    # "on":Z
    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3035
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v100

    .line 3036
    .local v100, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3042
    .end local v5    # "serial":I
    .end local v100    # "s":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3045
    .restart local v5    # "serial":I
    new-instance v68, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v68 .. v68}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3046
    .local v68, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3047
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 3053
    .end local v5    # "serial":I
    .end local v68    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3056
    .restart local v5    # "serial":I
    new-instance v68, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v68 .. v68}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3057
    .restart local v68    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3058
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    .line 3064
    .end local v5    # "serial":I
    .end local v68    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3067
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3068
    .local v6, "radioTechnology":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3069
    .local v7, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3070
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 3071
    .local v8, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 3072
    .local v9, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .local v10, "isRoaming":Z
    move-object/from16 v4, p0

    .line 3073
    invoke-virtual/range {v4 .. v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_0

    .line 3079
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

    .line 3081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3082
    .restart local v5    # "serial":I
    new-instance v63, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3083
    .local v63, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3084
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_0

    .line 3090
    .end local v5    # "serial":I
    .end local v63    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3093
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 3094
    .local v110, "ussd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3100
    .end local v5    # "serial":I
    .end local v110    # "ussd":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3103
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    .line 3109
    .end local v5    # "serial":I
    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3112
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    .line 3118
    .end local v5    # "serial":I
    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3121
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v106

    .line 3122
    .local v106, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    goto/16 :goto_0

    .line 3128
    .end local v5    # "serial":I
    .end local v106    # "status":I
    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3131
    .restart local v5    # "serial":I
    new-instance v43, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3132
    .local v43, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3133
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 3139
    .end local v5    # "serial":I
    .end local v43    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3142
    .restart local v5    # "serial":I
    new-instance v43, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3143
    .restart local v43    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3144
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    .line 3150
    .end local v5    # "serial":I
    .end local v43    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3153
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3154
    .local v15, "serviceClass":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    .line 3160
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3163
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    .line 3164
    .local v60, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3165
    .restart local v15    # "serviceClass":I
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1, v15}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_0

    .line 3171
    .end local v5    # "serial":I
    .end local v15    # "serviceClass":I
    .end local v60    # "enable":Z
    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3174
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v107

    .line 3175
    .local v107, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    .line 3176
    .local v45, "cause":I
    move-object/from16 v0, p0

    move/from16 v1, v107

    move/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_0

    .line 3182
    .end local v5    # "serial":I
    .end local v45    # "cause":I
    .end local v107    # "success":Z
    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3185
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_0

    .line 3191
    .end local v5    # "serial":I
    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3194
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v51

    .line 3195
    .local v51, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v97

    .line 3196
    .local v97, "reasonRadioShutDown":Z
    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v97

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_0

    .line 3202
    .end local v5    # "serial":I
    .end local v51    # "cid":I
    .end local v97    # "reasonRadioShutDown":Z
    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3205
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3206
    .local v13, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3207
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3208
    .restart local v15    # "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v11, p0

    move v12, v5

    .line 3209
    invoke-virtual/range {v11 .. v16}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3215
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3218
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3219
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v20

    .line 3220
    .local v20, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3221
    .restart local v14    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3222
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

    .line 3223
    invoke-virtual/range {v17 .. v23}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3229
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

    .line 3231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3232
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3233
    .restart local v13    # "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 3234
    .local v78, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 3235
    .local v73, "newPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v73

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3241
    .end local v5    # "serial":I
    .end local v13    # "facility":Ljava/lang/String;
    .end local v73    # "newPassword":Ljava/lang/String;
    .end local v78    # "oldPassword":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3244
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_0

    .line 3250
    .end local v5    # "serial":I
    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3253
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_0

    .line 3259
    .end local v5    # "serial":I
    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3262
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v83

    .line 3263
    .local v83, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3269
    .end local v5    # "serial":I
    .end local v83    # "operatorNumeric":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3272
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_0

    .line 3278
    .end local v5    # "serial":I
    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3281
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v100

    .line 3282
    .restart local v100    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3288
    .end local v5    # "serial":I
    .end local v100    # "s":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3291
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    .line 3297
    .end local v5    # "serial":I
    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3300
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_0

    .line 3306
    .end local v5    # "serial":I
    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3309
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 3310
    .restart local v62    # "gsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_0

    .line 3316
    .end local v5    # "serial":I
    .end local v62    # "gsmIndex":I
    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3319
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    .line 3320
    .restart local v60    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_0

    .line 3326
    .end local v5    # "serial":I
    .end local v60    # "enable":Z
    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3329
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    goto/16 :goto_0

    .line 3335
    .end local v5    # "serial":I
    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3338
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    .line 3344
    .end local v5    # "serial":I
    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3347
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_0

    .line 3353
    .end local v5    # "serial":I
    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3356
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    .line 3357
    .restart local v60    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_0

    .line 3363
    .end local v5    # "serial":I
    .end local v60    # "enable":Z
    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3366
    .restart local v5    # "serial":I
    new-instance v103, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct/range {v103 .. v103}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3367
    .local v103, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    move-object/from16 v0, v103

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3368
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_0

    .line 3374
    .end local v5    # "serial":I
    .end local v103    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3377
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 3378
    .local v64, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_0

    .line 3384
    .end local v5    # "serial":I
    .end local v64    # "index":I
    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3387
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    .line 3388
    .local v71, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_0

    .line 3394
    .end local v5    # "serial":I
    .end local v71    # "mode":I
    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3397
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_0

    .line 3403
    .end local v5    # "serial":I
    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3406
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 3407
    .local v52, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3413
    .end local v5    # "serial":I
    .end local v52    # "command":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3416
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 3417
    .local v53, "commandResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3423
    .end local v5    # "serial":I
    .end local v53    # "commandResponse":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3426
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v34

    .line 3427
    .local v34, "accept":Z
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_0

    .line 3433
    .end local v5    # "serial":I
    .end local v34    # "accept":Z
    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3436
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_0

    .line 3442
    .end local v5    # "serial":I
    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3445
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v76

    .line 3446
    .local v76, "nwType":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_0

    .line 3452
    .end local v5    # "serial":I
    .end local v76    # "nwType":I
    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3455
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 3461
    .end local v5    # "serial":I
    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3464
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_0

    .line 3470
    .end local v5    # "serial":I
    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3473
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    .line 3474
    .restart local v60    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_0

    .line 3480
    .end local v5    # "serial":I
    .end local v60    # "enable":Z
    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3483
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v47

    .line 3484
    .local v47, "cdmaSub":I
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_0

    .line 3490
    .end local v5    # "serial":I
    .end local v47    # "cdmaSub":I
    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3493
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v108

    .line 3494
    .local v108, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_0

    .line 3500
    .end local v5    # "serial":I
    .end local v108    # "type":I
    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3503
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_0

    .line 3509
    .end local v5    # "serial":I
    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3512
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    .line 3513
    .restart local v71    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_0

    .line 3519
    .end local v5    # "serial":I
    .end local v71    # "mode":I
    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3522
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_0

    .line 3528
    .end local v5    # "serial":I
    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3531
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    .line 3532
    .restart local v60    # "enable":Z
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_0

    .line 3538
    .end local v5    # "serial":I
    .end local v60    # "enable":Z
    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3541
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_0

    .line 3547
    .end local v5    # "serial":I
    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3550
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 3551
    .local v61, "featureCode":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3557
    .end local v5    # "serial":I
    .end local v61    # "featureCode":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3560
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 3561
    .local v59, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v81

    .line 3562
    .local v81, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v77

    .line 3563
    .local v77, "off":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v81

    move/from16 v3, v77

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 3569
    .end local v5    # "serial":I
    .end local v59    # "dtmf":Ljava/lang/String;
    .end local v77    # "off":I
    .end local v81    # "on":I
    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3572
    .restart local v5    # "serial":I
    new-instance v101, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v101 .. v101}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3573
    .local v101, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3574
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    .line 3580
    .end local v5    # "serial":I
    .end local v101    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3583
    .restart local v5    # "serial":I
    new-instance v102, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct/range {v102 .. v102}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3584
    .local v102, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    move-object/from16 v0, v102

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3585
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_0

    .line 3591
    .end local v5    # "serial":I
    .end local v102    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3594
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_0

    .line 3600
    .end local v5    # "serial":I
    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3603
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v55

    .line 3604
    .local v55, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3610
    .end local v5    # "serial":I
    .end local v55    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3613
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v36

    .line 3614
    .local v36, "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 3620
    .end local v5    # "serial":I
    .end local v36    # "activate":Z
    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3623
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_0

    .line 3629
    .end local v5    # "serial":I
    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3632
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v54

    .line 3633
    .local v54, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3639
    .end local v5    # "serial":I
    .end local v54    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3642
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v36

    .line 3643
    .restart local v36    # "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_0

    .line 3649
    .end local v5    # "serial":I
    .end local v36    # "activate":Z
    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3652
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_0

    .line 3658
    .end local v5    # "serial":I
    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3661
    .restart local v5    # "serial":I
    new-instance v46, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct/range {v46 .. v46}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3662
    .local v46, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3663
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_0

    .line 3669
    .end local v5    # "serial":I
    .end local v46    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3672
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    .line 3673
    .restart local v64    # "index":I
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_0

    .line 3679
    .end local v5    # "serial":I
    .end local v64    # "index":I
    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3682
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_0

    .line 3688
    .end local v5    # "serial":I
    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3691
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 3697
    .end local v5    # "serial":I
    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3700
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_0

    .line 3706
    .end local v5    # "serial":I
    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3709
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 3710
    .local v104, "smsc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3716
    .end local v5    # "serial":I
    .end local v104    # "smsc":Ljava/lang/String;
    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3719
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v42

    .line 3720
    .local v42, "available":Z
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_0

    .line 3726
    .end local v5    # "serial":I
    .end local v42    # "available":Z
    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3729
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_0

    .line 3735
    .end local v5    # "serial":I
    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3738
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_0

    .line 3744
    .end local v5    # "serial":I
    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3747
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 3748
    .local v48, "challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3754
    .end local v5    # "serial":I
    .end local v48    # "challenge":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3757
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v107

    .line 3758
    .restart local v107    # "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 3759
    .local v35, "ackPdu":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v107

    move-object/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3765
    .end local v5    # "serial":I
    .end local v35    # "ackPdu":Ljava/lang/String;
    .end local v107    # "success":Z
    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3768
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 3769
    .local v56, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3775
    .end local v5    # "serial":I
    .end local v56    # "contents":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3778
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_0

    .line 3784
    .end local v5    # "serial":I
    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3787
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_0

    .line 3793
    .end local v5    # "serial":I
    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3796
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v95

    .line 3797
    .local v95, "rate":I
    move-object/from16 v0, p0

    move/from16 v1, v95

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_0

    .line 3803
    .end local v5    # "serial":I
    .end local v95    # "rate":I
    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3806
    .restart local v5    # "serial":I
    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3807
    .restart local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 3809
    .restart local v8    # "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 3810
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8, v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_0

    .line 3816
    .end local v5    # "serial":I
    .end local v7    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v8    # "modemCognitive":Z
    .end local v10    # "isRoaming":Z
    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3819
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_0

    .line 3825
    .end local v5    # "serial":I
    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3828
    .restart local v5    # "serial":I
    new-instance v69, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct/range {v69 .. v69}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 3829
    .local v69, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    move-object/from16 v0, v69

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3830
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_0

    .line 3836
    .end local v5    # "serial":I
    .end local v69    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3839
    .restart local v5    # "serial":I
    new-instance v70, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v70 .. v70}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3840
    .local v70, "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v70

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3841
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 3847
    .end local v5    # "serial":I
    .end local v70    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3850
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 3851
    .restart local v37    # "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v84

    .line 3852
    .local v84, "p2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v84

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 3858
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v84    # "p2":I
    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3861
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    .line 3862
    .local v49, "channelId":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_0

    .line 3868
    .end local v5    # "serial":I
    .end local v49    # "channelId":I
    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3870
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3871
    .restart local v5    # "serial":I
    new-instance v70, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v70 .. v70}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3872
    .restart local v70    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    move-object/from16 v0, v70

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    .line 3879
    .end local v5    # "serial":I
    .end local v70    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3882
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v67

    .line 3883
    .local v67, "itemId":I
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_0

    .line 3889
    .end local v5    # "serial":I
    .end local v67    # "itemId":I
    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3892
    .restart local v5    # "serial":I
    new-instance v66, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct/range {v66 .. v66}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 3893
    .local v66, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3894
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_0

    .line 3900
    .end local v5    # "serial":I
    .end local v66    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3902
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3903
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v88

    .line 3904
    .local v88, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3910
    .end local v5    # "serial":I
    .end local v88    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3913
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v99

    .line 3914
    .local v99, "resetType":I
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_0

    .line 3920
    .end local v5    # "serial":I
    .end local v99    # "resetType":I
    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3923
    .restart local v5    # "serial":I
    new-instance v109, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct/range {v109 .. v109}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 3924
    .local v109, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3925
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_0

    .line 3931
    .end local v5    # "serial":I
    .end local v109    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3934
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v39

    .line 3935
    .local v39, "allow":Z
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_0

    .line 3941
    .end local v5    # "serial":I
    .end local v39    # "allow":Z
    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3944
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_0

    .line 3950
    .end local v5    # "serial":I
    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3953
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v40

    .line 3954
    .local v40, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 3955
    .local v41, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 3956
    .restart local v37    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3962
    .end local v5    # "serial":I
    .end local v37    # "aid":Ljava/lang/String;
    .end local v40    # "authContext":I
    .end local v41    # "authData":Ljava/lang/String;
    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3965
    .restart local v5    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v89

    .line 3966
    .local v89, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 3967
    .restart local v10    # "isRoaming":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    invoke-virtual {v0, v5, v1, v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 3973
    .end local v5    # "serial":I
    .end local v10    # "isRoaming":Z
    .end local v89    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3976
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_0

    .line 3982
    .end local v5    # "serial":I
    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3985
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_0

    .line 3991
    .end local v5    # "serial":I
    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3994
    .restart local v5    # "serial":I
    new-instance v96, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v96 .. v96}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3995
    .local v96, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v96

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3996
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 4002
    .end local v5    # "serial":I
    .end local v96    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4005
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v98

    .line 4006
    .local v98, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    .line 4007
    .local v92, "pullMode":Z
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v92

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_0

    .line 4013
    .end local v5    # "serial":I
    .end local v92    # "pullMode":Z
    .end local v98    # "reportInterval":I
    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4016
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_0

    .line 4022
    .end local v5    # "serial":I
    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4025
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_0

    .line 4031
    .end local v5    # "serial":I
    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4034
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_0

    .line 4040
    .end local v5    # "serial":I
    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4043
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    .line 4044
    .local v38, "allAllowed":Z
    new-instance v44, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v44 .. v44}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4045
    .local v44, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4046
    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v44

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    .line 4052
    .end local v5    # "serial":I
    .end local v38    # "allAllowed":Z
    .end local v44    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4055
    .restart local v5    # "serial":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_0

    .line 4061
    .end local v5    # "serial":I
    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4064
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 4065
    .local v57, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v105

    .line 4066
    .local v105, "state":Z
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v105

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_0

    .line 4072
    .end local v5    # "serial":I
    .end local v57    # "deviceStateType":I
    .end local v105    # "state":Z
    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4075
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v65

    .line 4076
    .local v65, "indicationFilter":I
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_0

    .line 4082
    .end local v5    # "serial":I
    .end local v65    # "indicationFilter":I
    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4085
    .restart local v5    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v87

    .line 4086
    .local v87, "powerUp":Z
    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_0

    .line 4092
    .end local v5    # "serial":I
    .end local v87    # "powerUp":Z
    :sswitch_82
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4094
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_0

    .line 4100
    :sswitch_83
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4102
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v30

    .line 4103
    .local v30, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4104
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4111
    .end local v30    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_84
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4120
    :sswitch_85
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v29

    .line 4123
    .local v29, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4124
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4131
    .end local v29    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_86
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4133
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v31

    .line 4134
    .local v31, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4136
    new-instance v26, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4138
    .local v26, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 4139
    .local v33, "_hidl_vec_size":I
    const-wide/16 v18, 0x8

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4140
    const-wide/16 v18, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4141
    new-instance v50, Landroid/os/HwBlob;

    mul-int/lit8 v4, v33, 0x20

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4142
    .local v50, "childBlob":Landroid/os/HwBlob;
    const/16 v27, 0x0

    .local v27, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    .line 4144
    mul-int/lit8 v4, v27, 0x20

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 4145
    .local v24, "_hidl_array_offset_1":J
    const/16 v28, 0x0

    .local v28, "_hidl_index_1_0":I
    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    .line 4146
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v28

    move-object/from16 v0, v50

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 4147
    const-wide/16 v18, 0x1

    add-long v24, v24, v18

    .line 4145
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 4142
    :cond_0
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 4151
    .end local v24    # "_hidl_array_offset_1":J
    .end local v28    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4153
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4161
    .end local v26    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v27    # "_hidl_index_0":I
    .end local v31    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v33    # "_hidl_vec_size":I
    .end local v50    # "childBlob":Landroid/os/HwBlob;
    :sswitch_87
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 4179
    :sswitch_88
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4181
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v32

    .line 4182
    .local v32, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4183
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 4190
    .end local v32    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_89
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4192
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 2788
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
        0xf43484e -> :sswitch_83
        0xf444247 -> :sswitch_84
        0xf445343 -> :sswitch_85
        0xf485348 -> :sswitch_86
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_88
        0xf535953 -> :sswitch_89
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 2745
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 2770
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    return-object p0

    .line 2773
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
    .line 2777
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2778
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 2736
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 2764
    const/4 v0, 0x1

    return v0
.end method
