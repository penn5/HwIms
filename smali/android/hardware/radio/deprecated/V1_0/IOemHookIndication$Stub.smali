.class public abstract Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;
.super Landroid/os/HwBinder;
.source "IOemHookIndication.java"

# interfaces
.implements Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 269
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 311
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 312
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 313
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 314
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

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 288
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 289
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 287
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 288
    nop

    :array_0
    .array-data 1
        0x6t
        -0x7dt
        0x7bt
        0x6dt
        0x7et
        -0x7ct
        0x3ct
        -0x6t
        -0x64t
        -0x2et
        0xft
        -0x13t
        0x40t
        0x70t
        -0x2t
        -0x36t
        0x7at
        -0x65t
        0x5ct
        -0x7ft
        -0x57t
        -0x13t
        0x64t
        0x3bt
        -0x9t
        -0x30t
        0x68t
        0x3t
        0x45t
        0x5at
        -0x68t
        0x16t
    .end array-data

    .line 289
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
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 275
    const-string/jumbo v2, "android.hardware.radio.deprecated@1.0::IOemHookIndication"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 276
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 274
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHookIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 319
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 320
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 18
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
    .line 348
    sparse-switch p1, :sswitch_data_0

    .line 463
    :goto_0
    :sswitch_0
    return-void

    .line 351
    :sswitch_1
    const-string/jumbo v15, "android.hardware.radio.deprecated@1.0::IOemHookIndication"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 354
    .local v14, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 355
    .local v13, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 361
    .end local v13    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v14    # "type":I
    :sswitch_2
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    .line 364
    .local v8, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 365
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 372
    .end local v8    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 381
    :sswitch_4
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 385
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 392
    .end local v7    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    .line 395
    .local v9, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    new-instance v4, Landroid/os/HwBlob;

    const/16 v15, 0x10

    invoke-direct {v4, v15}, Landroid/os/HwBlob;-><init>(I)V

    .line 399
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 400
    .local v11, "_hidl_vec_size":I
    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 401
    const-wide/16 v16, 0xc

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v15}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 402
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v15, v11, 0x20

    invoke-direct {v12, v15}, Landroid/os/HwBlob;-><init>(I)V

    .line 403
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_1
    if-ge v5, v11, :cond_1

    .line 405
    mul-int/lit8 v15, v5, 0x20

    int-to-long v2, v15

    .line 406
    .local v2, "_hidl_array_offset_1":J
    const/4 v6, 0x0

    .local v6, "_hidl_index_1_0":I
    :goto_2
    const/16 v15, 0x20

    if-ge v6, v15, :cond_0

    .line 407
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    aget-byte v15, v15, v6

    invoke-virtual {v12, v2, v3, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 408
    const-wide/16 v16, 0x1

    add-long v2, v2, v16

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 403
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 412
    .end local v2    # "_hidl_array_offset_1":J
    .end local v6    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 414
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 422
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    :sswitch_6
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 440
    :sswitch_7
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    .line 443
    .local v10, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 451
    .end local v10    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_8
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xf43484e -> :sswitch_2
        0xf444247 -> :sswitch_3
        0xf445343 -> :sswitch_4
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_6
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_7
        0xf535953 -> :sswitch_8
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHookIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    return-object p0

    .line 333
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
    .line 337
    invoke-virtual {p0, p1}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 324
    const/4 v0, 0x1

    return v0
.end method
