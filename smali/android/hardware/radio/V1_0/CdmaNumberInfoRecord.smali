.class public final Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
.super Ljava/lang/Object;
.source "CdmaNumberInfoRecord.java"


# instance fields
.field public number:Ljava/lang/String;

.field public numberPlan:B

.field public numberType:B

.field public pi:B

.field public si:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

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
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 79
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 81
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 82
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 84
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 86
    new-instance v11, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;-><init>()V

    .line 87
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    mul-int/lit8 v1, v9, 0x18

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 92
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
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
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 120
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 121
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 122
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 123
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 130
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    return v4

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    return v3

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    if-eq v1, v2, :cond_2

    .line 20
    return v3

    :cond_2
    move-object v0, p1

    .line 22
    check-cast v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    .line 23
    .local v0, "other":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    return v3

    .line 26
    :cond_3
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    if-eq v1, v2, :cond_4

    .line 27
    return v3

    .line 29
    :cond_4
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    if-eq v1, v2, :cond_5

    .line 30
    return v3

    .line 32
    :cond_5
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    if-eq v1, v2, :cond_6

    .line 33
    return v3

    .line 35
    :cond_6
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    if-eq v1, v2, :cond_7

    .line 36
    return v3

    .line 38
    :cond_7
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 47
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
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
    const-wide/16 v6, 0x0

    .line 97
    add-long v0, p3, v6

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 101
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 102
    add-long v0, p3, v6

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 99
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 104
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    .line 105
    const-wide/16 v0, 0x11

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    .line 106
    const-wide/16 v0, 0x12

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    .line 107
    const-wide/16 v0, 0x13

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    .line 108
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 70
    const-wide/16 v2, 0x18

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 71
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 72
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v1, ".number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, ", .numberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, ", .numberPlan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, ", .pi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, ", .si = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 136
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 137
    const-wide/16 v0, 0x11

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 138
    const-wide/16 v0, 0x12

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 139
    const-wide/16 v0, 0x13

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 140
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 111
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 114
    return-void
.end method
