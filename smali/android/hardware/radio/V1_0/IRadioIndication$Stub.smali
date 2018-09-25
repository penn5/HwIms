.class public abstract Landroid/hardware/radio/V1_0/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 1097
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 1139
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1140
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1141
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1142
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

    .line 1115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 1116
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1117
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1116
    nop

    :array_0
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
    .end array-data

    .line 1117
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
    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1103
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioIndication"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1104
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1102
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 1128
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 1147
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 1148
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 57
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
    .line 1176
    sparse-switch p1, :sswitch_data_0

    .line 1734
    :goto_0
    :sswitch_0
    return-void

    .line 1179
    :sswitch_1
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1182
    .local v52, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v33

    .line 1183
    .local v33, "radioState":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioStateChanged(II)V

    goto :goto_0

    .line 1189
    .end local v33    # "radioState":I
    .end local v52    # "type":I
    :sswitch_2
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1192
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callStateChanged(I)V

    goto :goto_0

    .line 1198
    .end local v52    # "type":I
    :sswitch_3
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1201
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->networkStateChanged(I)V

    goto :goto_0

    .line 1207
    .end local v52    # "type":I
    :sswitch_4
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1210
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v32

    .line 1211
    .local v32, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1217
    .end local v32    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v52    # "type":I
    :sswitch_5
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1220
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v32

    .line 1221
    .restart local v32    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1227
    .end local v32    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v52    # "type":I
    :sswitch_6
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1230
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v40

    .line 1231
    .local v40, "recordNumber":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsOnSim(II)V

    goto/16 :goto_0

    .line 1237
    .end local v40    # "recordNumber":I
    .end local v52    # "type":I
    :sswitch_7
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1240
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    .line 1241
    .local v27, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1242
    .local v29, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v27

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1248
    .end local v27    # "modeType":I
    .end local v29    # "msg":Ljava/lang/String;
    .end local v52    # "type":I
    :sswitch_8
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1251
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1252
    .local v30, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v38

    .line 1253
    .local v38, "receivedTime":J
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v30

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1259
    .end local v30    # "nitzTime":Ljava/lang/String;
    .end local v38    # "receivedTime":J
    .end local v52    # "type":I
    :sswitch_9
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1262
    .restart local v52    # "type":I
    new-instance v44, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v44 .. v44}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1263
    .local v44, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1264
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    .line 1270
    .end local v44    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    .end local v52    # "type":I
    :sswitch_a
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1273
    .restart local v52    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v24

    .line 1274
    .local v24, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1280
    .end local v24    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    .end local v52    # "type":I
    :sswitch_b
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1283
    .restart local v52    # "type":I
    new-instance v49, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct/range {v49 .. v49}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1284
    .local v49, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1285
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    goto/16 :goto_0

    .line 1291
    .end local v49    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    .end local v52    # "type":I
    :sswitch_c
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1294
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkSessionEnd(I)V

    goto/16 :goto_0

    .line 1300
    .end local v52    # "type":I
    :sswitch_d
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1303
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1304
    .local v21, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    .end local v21    # "cmd":Ljava/lang/String;
    .end local v52    # "type":I
    :sswitch_e
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1313
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1314
    .restart local v21    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1320
    .end local v21    # "cmd":Ljava/lang/String;
    .end local v52    # "type":I
    :sswitch_f
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1323
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v50

    .line 1324
    .local v50, "timeout":J
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallSetup(IJ)V

    goto/16 :goto_0

    .line 1330
    .end local v50    # "timeout":J
    .end local v52    # "type":I
    :sswitch_10
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1333
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simSmsStorageFull(I)V

    goto/16 :goto_0

    .line 1339
    .end local v52    # "type":I
    :sswitch_11
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1342
    .restart local v52    # "type":I
    new-instance v43, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1343
    .local v43, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1344
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    goto/16 :goto_0

    .line 1350
    .end local v43    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    .end local v52    # "type":I
    :sswitch_12
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1353
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v25

    .line 1354
    .local v25, "isGsm":Z
    new-instance v37, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct/range {v37 .. v37}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1355
    .local v37, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1356
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v25

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    goto/16 :goto_0

    .line 1362
    .end local v25    # "isGsm":Z
    .end local v37    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    .end local v52    # "type":I
    :sswitch_13
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1365
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->simStatusChanged(I)V

    goto/16 :goto_0

    .line 1371
    .end local v52    # "type":I
    :sswitch_14
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1374
    .restart local v52    # "type":I
    new-instance v28, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v28 .. v28}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1375
    .local v28, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1376
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    .line 1382
    .end local v28    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v52    # "type":I
    :sswitch_15
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1385
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v23

    .line 1386
    .local v23, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1392
    .end local v23    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v52    # "type":I
    :sswitch_16
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1395
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    goto/16 :goto_0

    .line 1401
    .end local v52    # "type":I
    :sswitch_17
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1404
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v47

    .line 1405
    .local v47, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->restrictedStateChanged(II)V

    goto/16 :goto_0

    .line 1411
    .end local v47    # "state":I
    .end local v52    # "type":I
    :sswitch_18
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1414
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 1420
    .end local v52    # "type":I
    :sswitch_19
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1423
    .restart local v52    # "type":I
    new-instance v18, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1424
    .local v18, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1425
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    goto/16 :goto_0

    .line 1431
    .end local v18    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    .end local v52    # "type":I
    :sswitch_1a
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1434
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v48

    .line 1435
    .local v48, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    goto/16 :goto_0

    .line 1441
    .end local v48    # "status":I
    .end local v52    # "type":I
    :sswitch_1b
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1444
    .restart local v52    # "type":I
    new-instance v41, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct/range {v41 .. v41}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1445
    .local v41, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    goto/16 :goto_0

    .line 1452
    .end local v41    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    .end local v52    # "type":I
    :sswitch_1c
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1455
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v46

    .line 1456
    .local v46, "start":Z
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    goto/16 :goto_0

    .line 1462
    .end local v46    # "start":Z
    .end local v52    # "type":I
    :sswitch_1d
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1465
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->resendIncallMute(I)V

    goto/16 :goto_0

    .line 1471
    .end local v52    # "type":I
    :sswitch_1e
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1474
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 1475
    .local v19, "cdmaSource":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    goto/16 :goto_0

    .line 1481
    .end local v19    # "cdmaSource":I
    .end local v52    # "type":I
    :sswitch_1f
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1484
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v53

    .line 1485
    .local v53, "version":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    goto/16 :goto_0

    .line 1491
    .end local v52    # "type":I
    .end local v53    # "version":I
    :sswitch_20
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1494
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 1500
    .end local v52    # "type":I
    :sswitch_21
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1503
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->rilConnected(I)V

    goto/16 :goto_0

    .line 1509
    .end local v52    # "type":I
    :sswitch_22
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1512
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    .line 1513
    .local v34, "rat":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    goto/16 :goto_0

    .line 1519
    .end local v34    # "rat":I
    .end local v52    # "type":I
    :sswitch_23
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1522
    .restart local v52    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v42

    .line 1523
    .local v42, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1529
    .end local v42    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    .end local v52    # "type":I
    :sswitch_24
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1532
    .restart local v52    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    goto/16 :goto_0

    .line 1538
    .end local v52    # "type":I
    :sswitch_25
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1541
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 1542
    .local v16, "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    goto/16 :goto_0

    .line 1548
    .end local v16    # "activate":Z
    .end local v52    # "type":I
    :sswitch_26
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1551
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v47

    .line 1552
    .restart local v47    # "state":I
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->srvccStateNotify(II)V

    goto/16 :goto_0

    .line 1558
    .end local v47    # "state":I
    .end local v52    # "type":I
    :sswitch_27
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1561
    .restart local v52    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1562
    .local v22, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1568
    .end local v22    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    .end local v52    # "type":I
    :sswitch_28
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1571
    .restart local v52    # "type":I
    new-instance v35, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v35 .. v35}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1572
    .local v35, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1573
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 1579
    .end local v35    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    .end local v52    # "type":I
    :sswitch_29
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1582
    .restart local v52    # "type":I
    new-instance v45, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct/range {v45 .. v45}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1583
    .local v45, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1584
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    goto/16 :goto_0

    .line 1590
    .end local v45    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    .end local v52    # "type":I
    :sswitch_2a
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1593
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1594
    .local v17, "alpha":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1600
    .end local v17    # "alpha":Ljava/lang/String;
    .end local v52    # "type":I
    :sswitch_2b
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1603
    .restart local v52    # "type":I
    new-instance v26, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1604
    .local v26, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1605
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    .line 1611
    .end local v26    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    .end local v52    # "type":I
    :sswitch_2c
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1614
    .restart local v52    # "type":I
    new-instance v31, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct/range {v31 .. v31}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1615
    .local v31, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1616
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    goto/16 :goto_0

    .line 1622
    .end local v31    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    .end local v52    # "type":I
    :sswitch_2d
    const-string/jumbo v54, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v52

    .line 1625
    .restart local v52    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 1626
    .local v36, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1632
    .end local v36    # "reason":Ljava/lang/String;
    .end local v52    # "type":I
    :sswitch_2e
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v12

    .line 1635
    .local v12, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v54, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1643
    .end local v12    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2f
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    const/16 v54, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1652
    :sswitch_30
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v11

    .line 1655
    .local v11, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v54, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1663
    .end local v11    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v13

    .line 1666
    .local v13, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v54, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1668
    new-instance v8, Landroid/os/HwBlob;

    const/16 v54, 0x10

    move/from16 v0, v54

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1670
    .local v8, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1671
    .local v15, "_hidl_vec_size":I
    const-wide/16 v54, 0x8

    move-wide/from16 v0, v54

    invoke-virtual {v8, v0, v1, v15}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1672
    const-wide/16 v54, 0xc

    const/16 v56, 0x0

    move-wide/from16 v0, v54

    move/from16 v2, v56

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1673
    new-instance v20, Landroid/os/HwBlob;

    mul-int/lit8 v54, v15, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1674
    .local v20, "childBlob":Landroid/os/HwBlob;
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_1
    if-ge v9, v15, :cond_1

    .line 1676
    mul-int/lit8 v54, v9, 0x20

    move/from16 v0, v54

    int-to-long v6, v0

    .line 1677
    .local v6, "_hidl_array_offset_1":J
    const/4 v10, 0x0

    .local v10, "_hidl_index_1_0":I
    :goto_2
    const/16 v54, 0x20

    move/from16 v0, v54

    if-ge v10, v0, :cond_0

    .line 1678
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, [B

    aget-byte v54, v54, v10

    move-object/from16 v0, v20

    move/from16 v1, v54

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 1679
    const-wide/16 v54, 0x1

    add-long v6, v6, v54

    .line 1677
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1674
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1683
    .end local v6    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v54, 0x0

    move-wide/from16 v0, v54

    move-object/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1685
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1693
    .end local v8    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    .end local v13    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "_hidl_vec_size":I
    .end local v20    # "childBlob":Landroid/os/HwBlob;
    :sswitch_32
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 1711
    :sswitch_33
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v14

    .line 1714
    .local v14, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v54, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1715
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1722
    .end local v14    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_34
    const-string/jumbo v54, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 1176
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
        0xf43484e -> :sswitch_2e
        0xf444247 -> :sswitch_2f
        0xf445343 -> :sswitch_30
        0xf485348 -> :sswitch_31
        0xf494e54 -> :sswitch_32
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_33
        0xf535953 -> :sswitch_34
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 1158
    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    return-object p0

    .line 1161
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
    .line 1165
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 1152
    const/4 v0, 0x1

    return v0
.end method
