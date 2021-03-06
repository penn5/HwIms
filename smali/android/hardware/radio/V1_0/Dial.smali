.class public final Landroid/hardware/radio/V1_0/Dial;
.super Ljava/lang/Object;
.source "Dial.java"


# instance fields
.field public address:Ljava/lang/String;

.field public clir:I

.field public final uusInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/UusInfo;",
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

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/Dial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Dial;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 65
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 67
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x28

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 68
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 66
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 70
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 72
    new-instance v11, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 73
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/Dial;
    mul-int/lit8 v1, v9, 0x28

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/Dial;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/Dial;
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
            "Landroid/hardware/radio/V1_0/Dial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Dial;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 116
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 118
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 119
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x28

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 120
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/Dial;

    mul-int/lit8 v5, v1, 0x28

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/Dial;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    return v4

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    return v3

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/V1_0/Dial;

    if-eq v1, v2, :cond_2

    .line 18
    return v3

    :cond_2
    move-object v0, p1

    .line 20
    check-cast v0, Landroid/hardware/radio/V1_0/Dial;

    .line 21
    .local v0, "other":Landroid/hardware/radio/V1_0/Dial;
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    return v3

    .line 24
    :cond_3
    iget v1, p0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eq v1, v2, :cond_4

    .line 25
    return v3

    .line 27
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 28
    return v3

    .line 30
    :cond_5
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    iget v1, p0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 83
    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 88
    const-wide/16 v8, 0x0

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 85
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 90
    const-wide/16 v4, 0x10

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    .line 92
    const-wide/16 v4, 0x18

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 94
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v3, v12, 0x18

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 95
    const-wide/16 v8, 0x18

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    .line 93
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 97
    .local v13, "childBlob":Landroid/os/HwBlob;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v12, :cond_0

    .line 99
    new-instance v11, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 100
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/UusInfo;
    mul-int/lit8 v3, v2, 0x18

    int-to-long v4, v3

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13, v4, v5}, Landroid/hardware/radio/V1_0/UusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 56
    const-wide/16 v2, 0x28

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/Dial;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, ".address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, ", .clir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/Clir;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, ", .uusInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x18

    .line 131
    add-long v4, p2, v10

    iget-object v3, p0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 132
    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 134
    iget-object v3, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "_hidl_vec_size":I
    add-long v4, p2, v8

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    add-long v4, p2, v8

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 139
    iget-object v3, p0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/UusInfo;

    mul-int/lit8 v4, v0, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    add-long v4, p2, v8

    add-long/2addr v4, v10

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 143
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 107
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/Dial;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 110
    return-void
.end method
