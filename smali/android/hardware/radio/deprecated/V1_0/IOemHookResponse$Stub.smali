.class public abstract Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;
.super Landroid/os/HwBinder;
.source "IOemHookResponse.java"

# interfaces
.implements Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .prologue
    .line 288
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .prologue
    .line 330
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 331
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 332
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 333
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

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 307
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 308
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 306
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 307
    nop

    :array_0
    .array-data 1
        0x6ft
        -0x2ct
        -0x79t
        0x4ft
        0xet
        -0x23t
        -0x2ct
        0x62t
        0x6at
        0x27t
        0x65t
        -0x71t
        -0x27t
        0x4ft
        -0x53t
        0x52t
        0x6ct
        0x31t
        0x7ft
        0x35t
        0x63t
        0x43t
        -0x62t
        0x79t
        0x71t
        -0x75t
        -0x25t
        0x1at
        0x3at
        0x23t
        0x9t
        -0x2bt
    .end array-data

    .line 308
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
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 294
    const-string/jumbo v2, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 295
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .prologue
    .line 338
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 339
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
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
    .line 367
    sparse-switch p1, :sswitch_data_0

    .line 494
    :goto_0
    :sswitch_0
    return-void

    .line 370
    :sswitch_1
    const-string/jumbo v18, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    new-instance v17, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 373
    .local v17, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 375
    .local v15, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 381
    .end local v15    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v17    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2
    const-string/jumbo v18, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    new-instance v17, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 384
    .restart local v17    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v16

    .line 386
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 392
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    .line 395
    .local v10, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 396
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 403
    .end local v10    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    .line 412
    :sswitch_5
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 415
    .local v9, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 423
    .end local v9    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    .line 426
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    new-instance v6, Landroid/os/HwBlob;

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 430
    .local v6, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 431
    .local v13, "_hidl_vec_size":I
    const-wide/16 v18, 0x8

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 432
    const-wide/16 v18, 0xc

    const/16 v20, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 433
    new-instance v14, Landroid/os/HwBlob;

    mul-int/lit8 v18, v13, 0x20

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 434
    .local v14, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_1
    if-ge v7, v13, :cond_1

    .line 436
    mul-int/lit8 v18, v7, 0x20

    move/from16 v0, v18

    int-to-long v4, v0

    .line 437
    .local v4, "_hidl_array_offset_1":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_1_0":I
    :goto_2
    const/16 v18, 0x20

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 438
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    aget-byte v18, v18, v8

    move/from16 v0, v18

    invoke-virtual {v14, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 439
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    .line 437
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 434
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 443
    .end local v4    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_index_1_0":I
    :cond_1
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1, v14}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 445
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 453
    .end local v6    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "_hidl_vec_size":I
    .end local v14    # "childBlob":Landroid/os/HwBlob;
    :sswitch_7
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    .line 471
    :sswitch_8
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    .line 474
    .local v12, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    .line 482
    .end local v12    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_9
    const-string/jumbo v18, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf43484e -> :sswitch_3
        0xf444247 -> :sswitch_4
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_7
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_8
        0xf535953 -> :sswitch_9
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    return-object p0

    .line 352
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
    .line 356
    invoke-virtual {p0, p1}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 343
    const/4 v0, 0x1

    return v0
.end method
