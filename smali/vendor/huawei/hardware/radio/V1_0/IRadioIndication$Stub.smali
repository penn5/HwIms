.class public abstract Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/V1_0/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1234
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 1237
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 1281
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1282
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1283
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1284
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

    .line 1256
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    .line 1257
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1258
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1259
    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1256
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1257
    nop

    :array_0
    .array-data 1
        0xat
        0x2t
        -0xft
        -0x73t
        -0x7ft
        0x34t
        0x61t
        0x65t
        -0x2t
        -0xat
        -0x4dt
        0x4bt
        0x5bt
        -0x12t
        -0x79t
        -0x26t
        -0x2t
        -0xct
        -0x64t
        -0x59t
        0x2dt
        -0x46t
        -0x3dt
        -0x41t
        -0x32t
        -0x66t
        0x27t
        -0x2et
        -0x2dt
        0x9t
        0x1dt
        -0xft
    .end array-data

    .line 1258
    :array_1
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

    .line 1259
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
    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1243
    const-string/jumbo v2, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1244
    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioIndication"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1245
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1242
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1250
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 1270
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 1289
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 1290
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 69
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
    .line 1318
    sparse-switch p1, :sswitch_data_0

    .line 2008
    :goto_0
    :sswitch_0
    return-void

    .line 1321
    :sswitch_1
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1324
    .local v62, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v43

    .line 1325
    .local v43, "radioState":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->radioStateChanged(II)V

    goto :goto_0

    .line 1331
    .end local v43    # "radioState":I
    .end local v62    # "type":I
    :sswitch_2
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1334
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->callStateChanged(I)V

    goto :goto_0

    .line 1340
    .end local v62    # "type":I
    :sswitch_3
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1343
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->networkStateChanged(I)V

    goto :goto_0

    .line 1349
    .end local v62    # "type":I
    :sswitch_4
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1352
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v42

    .line 1353
    .local v42, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1359
    .end local v42    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v62    # "type":I
    :sswitch_5
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1362
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v42

    .line 1363
    .restart local v42    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1369
    .end local v42    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v62    # "type":I
    :sswitch_6
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1372
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v50

    .line 1373
    .local v50, "recordNumber":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->newSmsOnSim(II)V

    goto/16 :goto_0

    .line 1379
    .end local v50    # "recordNumber":I
    .end local v62    # "type":I
    :sswitch_7
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1382
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v35

    .line 1383
    .local v35, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1384
    .local v37, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v35

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1390
    .end local v35    # "modeType":I
    .end local v37    # "msg":Ljava/lang/String;
    .end local v62    # "type":I
    :sswitch_8
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1393
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1394
    .local v39, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v48

    .line 1395
    .local v48, "receivedTime":J
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v39

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1401
    .end local v39    # "nitzTime":Ljava/lang/String;
    .end local v48    # "receivedTime":J
    .end local v62    # "type":I
    :sswitch_9
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1404
    .restart local v62    # "type":I
    new-instance v54, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v54 .. v54}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1405
    .local v54, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1406
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    .line 1412
    .end local v54    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    .end local v62    # "type":I
    :sswitch_a
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1415
    .restart local v62    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1416
    .local v26, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1422
    .end local v26    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    .end local v62    # "type":I
    :sswitch_b
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1425
    .restart local v62    # "type":I
    new-instance v59, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct/range {v59 .. v59}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1426
    .local v59, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1427
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    goto/16 :goto_0

    .line 1433
    .end local v59    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    .end local v62    # "type":I
    :sswitch_c
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1436
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->stkSessionEnd(I)V

    goto/16 :goto_0

    .line 1442
    .end local v62    # "type":I
    :sswitch_d
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1445
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1446
    .local v23, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    .end local v23    # "cmd":Ljava/lang/String;
    .end local v62    # "type":I
    :sswitch_e
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1455
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1456
    .restart local v23    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1462
    .end local v23    # "cmd":Ljava/lang/String;
    .end local v62    # "type":I
    :sswitch_f
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1465
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v60

    .line 1466
    .local v60, "timeout":J
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallSetup(IJ)V

    goto/16 :goto_0

    .line 1472
    .end local v60    # "timeout":J
    .end local v62    # "type":I
    :sswitch_10
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1475
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->simSmsStorageFull(I)V

    goto/16 :goto_0

    .line 1481
    .end local v62    # "type":I
    :sswitch_11
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1484
    .restart local v62    # "type":I
    new-instance v53, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct/range {v53 .. v53}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1485
    .local v53, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    move-object/from16 v0, v53

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1486
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    goto/16 :goto_0

    .line 1492
    .end local v53    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    .end local v62    # "type":I
    :sswitch_12
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1495
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v33

    .line 1496
    .local v33, "isGsm":Z
    new-instance v47, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1497
    .local v47, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1498
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v33

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    goto/16 :goto_0

    .line 1504
    .end local v33    # "isGsm":Z
    .end local v47    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    .end local v62    # "type":I
    :sswitch_13
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1507
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->simStatusChanged(I)V

    goto/16 :goto_0

    .line 1513
    .end local v62    # "type":I
    :sswitch_14
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1516
    .restart local v62    # "type":I
    new-instance v36, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v36 .. v36}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1517
    .local v36, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1518
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    .line 1524
    .end local v36    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .end local v62    # "type":I
    :sswitch_15
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1527
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v25

    .line 1528
    .local v25, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1534
    .end local v25    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v62    # "type":I
    :sswitch_16
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1537
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    goto/16 :goto_0

    .line 1543
    .end local v62    # "type":I
    :sswitch_17
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1546
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 1547
    .local v57, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->restrictedStateChanged(II)V

    goto/16 :goto_0

    .line 1553
    .end local v57    # "state":I
    .end local v62    # "type":I
    :sswitch_18
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1556
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 1562
    .end local v62    # "type":I
    :sswitch_19
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1565
    .restart local v62    # "type":I
    new-instance v20, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct/range {v20 .. v20}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1566
    .local v20, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1567
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    goto/16 :goto_0

    .line 1573
    .end local v20    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    .end local v62    # "type":I
    :sswitch_1a
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1576
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    .line 1577
    .local v58, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    goto/16 :goto_0

    .line 1583
    .end local v58    # "status":I
    .end local v62    # "type":I
    :sswitch_1b
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1586
    .restart local v62    # "type":I
    new-instance v51, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct/range {v51 .. v51}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1587
    .local v51, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1588
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    goto/16 :goto_0

    .line 1594
    .end local v51    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    .end local v62    # "type":I
    :sswitch_1c
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1597
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v56

    .line 1598
    .local v56, "start":Z
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    goto/16 :goto_0

    .line 1604
    .end local v56    # "start":Z
    .end local v62    # "type":I
    :sswitch_1d
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1607
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->resendIncallMute(I)V

    goto/16 :goto_0

    .line 1613
    .end local v62    # "type":I
    :sswitch_1e
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1616
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v21

    .line 1617
    .local v21, "cdmaSource":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    goto/16 :goto_0

    .line 1623
    .end local v21    # "cdmaSource":I
    .end local v62    # "type":I
    :sswitch_1f
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1626
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v63

    .line 1627
    .local v63, "version":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    goto/16 :goto_0

    .line 1633
    .end local v62    # "type":I
    .end local v63    # "version":I
    :sswitch_20
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1636
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 1642
    .end local v62    # "type":I
    :sswitch_21
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1645
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->rilConnected(I)V

    goto/16 :goto_0

    .line 1651
    .end local v62    # "type":I
    :sswitch_22
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1654
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v44

    .line 1655
    .local v44, "rat":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    goto/16 :goto_0

    .line 1661
    .end local v44    # "rat":I
    .end local v62    # "type":I
    :sswitch_23
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1664
    .restart local v62    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v52

    .line 1665
    .local v52, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1671
    .end local v52    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    .end local v62    # "type":I
    :sswitch_24
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1674
    .restart local v62    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    goto/16 :goto_0

    .line 1680
    .end local v62    # "type":I
    :sswitch_25
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1683
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 1684
    .local v17, "activate":Z
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    goto/16 :goto_0

    .line 1690
    .end local v17    # "activate":Z
    .end local v62    # "type":I
    :sswitch_26
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1693
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    .line 1694
    .restart local v57    # "state":I
    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->srvccStateNotify(II)V

    goto/16 :goto_0

    .line 1700
    .end local v57    # "state":I
    .end local v62    # "type":I
    :sswitch_27
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1703
    .restart local v62    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v24

    .line 1704
    .local v24, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1710
    .end local v24    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    .end local v62    # "type":I
    :sswitch_28
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1713
    .restart local v62    # "type":I
    new-instance v45, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v45 .. v45}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1714
    .local v45, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1715
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    .line 1721
    .end local v45    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    .end local v62    # "type":I
    :sswitch_29
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1724
    .restart local v62    # "type":I
    new-instance v55, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct/range {v55 .. v55}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1725
    .local v55, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    move-object/from16 v0, v55

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1726
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    goto/16 :goto_0

    .line 1732
    .end local v55    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    .end local v62    # "type":I
    :sswitch_2a
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1735
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1736
    .local v18, "alpha":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1742
    .end local v18    # "alpha":Ljava/lang/String;
    .end local v62    # "type":I
    :sswitch_2b
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1745
    .restart local v62    # "type":I
    new-instance v34, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v34 .. v34}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1746
    .local v34, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1747
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    .line 1753
    .end local v34    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    .end local v62    # "type":I
    :sswitch_2c
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1756
    .restart local v62    # "type":I
    new-instance v41, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct/range {v41 .. v41}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1757
    .local v41, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1758
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    goto/16 :goto_0

    .line 1764
    .end local v41    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    .end local v62    # "type":I
    :sswitch_2d
    const-string/jumbo v66, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1767
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1768
    .local v46, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1774
    .end local v46    # "reason":Ljava/lang/String;
    .end local v62    # "type":I
    :sswitch_2e
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1777
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 1778
    .local v6, "MsgId":I
    new-instance v40, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    invoke-direct/range {v40 .. v40}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;-><init>()V

    .line 1779
    .local v40, "payload":Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1780
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v6, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->UnsolMsg(IILvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;)V

    goto/16 :goto_0

    .line 1786
    .end local v6    # "MsgId":I
    .end local v40    # "payload":Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
    .end local v62    # "type":I
    :sswitch_2f
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1789
    .restart local v62    # "type":I
    new-instance v19, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;

    invoke-direct/range {v19 .. v19}, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;-><init>()V

    .line 1790
    .local v19, "apDsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1791
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->apDsFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;)V

    goto/16 :goto_0

    .line 1797
    .end local v19    # "apDsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;
    .end local v62    # "type":I
    :sswitch_30
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1800
    .restart local v62    # "type":I
    new-instance v19, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;

    invoke-direct/range {v19 .. v19}, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;-><init>()V

    .line 1801
    .restart local v19    # "apDsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1802
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->dsFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;)V

    goto/16 :goto_0

    .line 1808
    .end local v19    # "apDsFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILAPDsFlowInfoReport;
    .end local v62    # "type":I
    :sswitch_31
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1811
    .restart local v62    # "type":I
    new-instance v64, Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;

    invoke-direct/range {v64 .. v64}, Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;-><init>()V

    .line 1812
    .local v64, "vsimOtaSms":Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;
    move-object/from16 v0, v64

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1813
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->vsimOtaSmsReport(ILvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;)V

    goto/16 :goto_0

    .line 1819
    .end local v62    # "type":I
    .end local v64    # "vsimOtaSms":Lvendor/huawei/hardware/radio/V1_0/RILVsimOtaSmsResponse;
    :sswitch_32
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1822
    .restart local v62    # "type":I
    new-instance v29, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;

    invoke-direct/range {v29 .. v29}, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;-><init>()V

    .line 1823
    .local v29, "imsHandover":Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1824
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsHandoverInd(ILvendor/huawei/hardware/radio/V1_0/RILImsHandover;)V

    goto/16 :goto_0

    .line 1830
    .end local v29    # "imsHandover":Lvendor/huawei/hardware/radio/V1_0/RILImsHandover;
    .end local v62    # "type":I
    :sswitch_33
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1833
    .restart local v62    # "type":I
    new-instance v30, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;

    invoke-direct/range {v30 .. v30}, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;-><init>()V

    .line 1834
    .local v30, "imsHandover":Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1835
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsSrvStatusInd(ILvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;)V

    goto/16 :goto_0

    .line 1841
    .end local v30    # "imsHandover":Lvendor/huawei/hardware/radio/V1_0/RILImsSrvstatusList;
    .end local v62    # "type":I
    :sswitch_34
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1844
    .restart local v62    # "type":I
    new-instance v32, Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;

    invoke-direct/range {v32 .. v32}, Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;-><init>()V

    .line 1845
    .local v32, "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1846
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsSuppSrvInd(ILvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;)V

    goto/16 :goto_0

    .line 1852
    .end local v32    # "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/V1_0/RILImsSuppSvcNotification;
    .end local v62    # "type":I
    :sswitch_35
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1855
    .restart local v62    # "type":I
    new-instance v27, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct/range {v27 .. v27}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 1856
    .local v27, "imsCallModify":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1857
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsCallModifyInd(ILvendor/huawei/hardware/radio/V1_0/RILImsCallModify;)V

    goto/16 :goto_0

    .line 1863
    .end local v27    # "imsCallModify":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    .end local v62    # "type":I
    :sswitch_36
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1866
    .restart local v62    # "type":I
    new-instance v31, Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;

    invoke-direct/range {v31 .. v31}, Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;-><init>()V

    .line 1867
    .local v31, "imsModifyEndCause":Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1868
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;)V

    goto/16 :goto_0

    .line 1874
    .end local v31    # "imsModifyEndCause":Lvendor/huawei/hardware/radio/V1_0/RILImsModifyEndCause;
    .end local v62    # "type":I
    :sswitch_37
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1877
    .restart local v62    # "type":I
    new-instance v28, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;

    invoke-direct/range {v28 .. v28}, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;-><init>()V

    .line 1878
    .local v28, "imsCallMtStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1879
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsCallMtStatusInd(ILvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;)V

    goto/16 :goto_0

    .line 1885
    .end local v28    # "imsCallMtStatus":Lvendor/huawei/hardware/radio/V1_0/RILImsMtStatusReport;
    .end local v62    # "type":I
    :sswitch_38
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1888
    .restart local v62    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v38

    .line 1889
    .local v38, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->imsaToVowifiMsg(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1895
    .end local v38    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v62    # "type":I
    :sswitch_39
    const-string/jumbo v66, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    .line 1898
    .restart local v62    # "type":I
    new-instance v65, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;

    invoke-direct/range {v65 .. v65}, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;-><init>()V

    .line 1899
    .local v65, "vtFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;
    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1900
    move-object/from16 v0, p0

    move/from16 v1, v62

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->vtFlowInfoReport(ILvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;)V

    goto/16 :goto_0

    .line 1906
    .end local v62    # "type":I
    .end local v65    # "vtFlowInfo":Lvendor/huawei/hardware/radio/V1_0/RILVtFlowInfoReport;
    :sswitch_3a
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v13

    .line 1909
    .local v13, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v66, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1910
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1917
    .end local v13    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3b
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    const/16 v66, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1926
    :sswitch_3c
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v12

    .line 1929
    .local v12, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v66, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1930
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1937
    .end local v12    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v14

    .line 1940
    .local v14, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v66, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1942
    new-instance v7, Landroid/os/HwBlob;

    const/16 v66, 0x10

    move/from16 v0, v66

    invoke-direct {v7, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1944
    .local v7, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1945
    .local v16, "_hidl_vec_size":I
    const-wide/16 v66, 0x8

    move-wide/from16 v0, v66

    move/from16 v2, v16

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1946
    const-wide/16 v66, 0xc

    const/16 v68, 0x0

    move-wide/from16 v0, v66

    move/from16 v2, v68

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1947
    new-instance v22, Landroid/os/HwBlob;

    mul-int/lit8 v66, v16, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1948
    .local v22, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_1

    .line 1950
    mul-int/lit8 v66, v10, 0x20

    move/from16 v0, v66

    int-to-long v8, v0

    .line 1951
    .local v8, "_hidl_array_offset_1":J
    const/4 v11, 0x0

    .local v11, "_hidl_index_1_0":I
    :goto_2
    const/16 v66, 0x20

    move/from16 v0, v66

    if-ge v11, v0, :cond_0

    .line 1952
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, [B

    aget-byte v66, v66, v11

    move-object/from16 v0, v22

    move/from16 v1, v66

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 1953
    const-wide/16 v66, 0x1

    add-long v8, v8, v66

    .line 1951
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1948
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1957
    .end local v8    # "_hidl_array_offset_1":J
    .end local v11    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v66, 0x0

    move-wide/from16 v0, v66

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1959
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1967
    .end local v7    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v14    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v16    # "_hidl_vec_size":I
    .end local v22    # "childBlob":Landroid/os/HwBlob;
    :sswitch_3e
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 1985
    :sswitch_3f
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v15

    .line 1988
    .local v15, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v66, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1989
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 1996
    .end local v15    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_40
    const-string/jumbo v66, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 1318
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
        0xf43484e -> :sswitch_3a
        0xf444247 -> :sswitch_3b
        0xf445343 -> :sswitch_3c
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_3e
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_3f
        0xf535953 -> :sswitch_40
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 1300
    const-string/jumbo v0, "vendor.huawei.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    return-object p0

    .line 1303
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
    .line 1307
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/V1_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 1294
    const/4 v0, 0x1

    return v0
.end method
