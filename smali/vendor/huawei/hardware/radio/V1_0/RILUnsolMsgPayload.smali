.class public final Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
.super Ljava/lang/Object;
.source "RILUnsolMsgPayload.java"


# instance fields
.field public nData:I

.field public final nDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public strData:Ljava/lang/String;

.field public final strDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    .line 4
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 72
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 74
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x38

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 75
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 73
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 77
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 79
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;-><init>()V

    .line 80
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
    mul-int/lit8 v1, v9, 0x38

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
    :cond_0
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 143
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    mul-int/lit8 v5, v1, 0x38

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    return v4

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    return v3

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    if-eq v1, v2, :cond_2

    .line 19
    return v3

    :cond_2
    move-object v0, p1

    .line 21
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;

    .line 22
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    if-eq v1, v2, :cond_3

    .line 23
    return v3

    .line 25
    :cond_3
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 26
    return v3

    .line 28
    :cond_4
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    return v3

    .line 31
    :cond_5
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 32
    return v3

    .line 34
    :cond_6
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 90
    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    .line 92
    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 94
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x4

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 95
    const-wide/16 v8, 0x8

    add-long v8, v8, p3

    const-wide/16 v16, 0x0

    add-long v8, v8, v16

    const/4 v10, 0x1

    move-object/from16 v3, p1

    .line 93
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v14

    .line 97
    .local v14, "childBlob":Landroid/os/HwBlob;
    move-object/from16 v0, p0

    iget-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v13, :cond_0

    .line 100
    mul-int/lit8 v3, v2, 0x4

    int-to-long v4, v3

    invoke-virtual {v14, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 101
    .local v11, "_hidl_vec_element":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v11    # "_hidl_vec_element":I
    :cond_0
    const-wide/16 v4, 0x18

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 109
    const-wide/16 v8, 0x18

    add-long v8, v8, p3

    const-wide/16 v16, 0x0

    add-long v8, v8, v16

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 106
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 112
    const-wide/16 v4, 0x28

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 114
    mul-int/lit8 v3, v13, 0x10

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 115
    const-wide/16 v8, 0x28

    add-long v8, v8, p3

    const-wide/16 v16, 0x0

    add-long v8, v8, v16

    const/4 v10, 0x1

    move-object/from16 v3, p1

    .line 113
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v14

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_1

    .line 119
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 120
    .local v12, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v3, v2, 0x10

    int-to-long v4, v3

    invoke-virtual {v14, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    .line 124
    invoke-virtual {v14}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 125
    mul-int/lit8 v3, v2, 0x10

    add-int/lit8 v3, v3, 0x0

    int-to-long v8, v3

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 122
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v12    # "_hidl_vec_element":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 63
    const-wide/16 v2, 0x38

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, ".nData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, ", .nDatas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, ", .strData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ", .strDatas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 157
    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nData:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .local v1, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 161
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 163
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 164
    mul-int/lit8 v3, v0, 0x4

    int-to-long v4, v3

    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 170
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 173
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 174
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 175
    mul-int/lit8 v3, v0, 0x10

    int-to-long v4, v3

    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 179
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 133
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUnsolMsgPayload;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 136
    return-void
.end method
