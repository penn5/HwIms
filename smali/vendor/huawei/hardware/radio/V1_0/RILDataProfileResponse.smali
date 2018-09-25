.class public final Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;
.super Ljava/lang/Object;
.source "RILDataProfileResponse.java"


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public cid:I

.field public passwd:Ljava/lang/String;

.field public protocol:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

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
            "Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 88
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x50

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 89
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 91
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 93
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;-><init>()V

    .line 94
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;
    mul-int/lit8 v1, v9, 0x50

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 99
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;
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
            "Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 147
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 149
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x50

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 151
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;

    mul-int/lit8 v5, v1, 0x50

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 157
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    return v4

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    return v3

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;

    if-eq v1, v2, :cond_2

    .line 21
    return v3

    :cond_2
    move-object v0, p1

    .line 23
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;

    .line 24
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    return v3

    .line 27
    :cond_3
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    return v3

    .line 30
    :cond_4
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    if-eq v1, v2, :cond_5

    .line 31
    return v3

    .line 33
    :cond_5
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    return v3

    .line 36
    :cond_6
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 37
    return v3

    .line 39
    :cond_7
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    if-eq v1, v2, :cond_8

    .line 40
    return v3

    .line 42
    :cond_8
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 53
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 108
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 109
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 106
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 111
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 115
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 116
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 113
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 118
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    .line 119
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 123
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 124
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 121
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 126
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 130
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 131
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 128
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 133
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    .line 134
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 77
    const-wide/16 v2, 0x50

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, ".protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", .apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, ", .authType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, ", .user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, ", .passwd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 162
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 163
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->authType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 164
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->user:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 165
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->passwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 166
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 167
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 137
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILDataProfileResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    return-void
.end method
