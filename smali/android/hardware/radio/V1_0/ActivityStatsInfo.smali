.class public final Landroid/hardware/radio/V1_0/ActivityStatsInfo;
.super Ljava/lang/Object;
.source "ActivityStatsInfo.java"


# instance fields
.field public idleModeTimeMs:I

.field public rxModeTimeMs:I

.field public sleepModeTimeMs:I

.field public final txmModetimeMs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

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
            "Landroid/hardware/radio/V1_0/ActivityStatsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/ActivityStatsInfo;>;"
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
    mul-int/lit8 v1, v12, 0x20

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
    new-instance v11, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 80
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    mul-int/lit8 v1, v9, 0x20

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
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
            "Landroid/hardware/radio/V1_0/ActivityStatsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/ActivityStatsInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 113
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 114
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 115
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 116
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 117
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    mul-int/lit8 v5, v1, 0x20

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 123
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

    const-class v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    if-eq v1, v2, :cond_2

    .line 19
    return v3

    :cond_2
    move-object v0, p1

    .line 21
    check-cast v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    .line 22
    .local v0, "other":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    iget v2, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    if-eq v1, v2, :cond_3

    .line 23
    return v3

    .line 25
    :cond_3
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    iget v2, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    if-eq v1, v2, :cond_4

    .line 26
    return v3

    .line 28
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    iget-object v2, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    return v3

    .line 31
    :cond_5
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    iget v2, v0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    if-eq v1, v2, :cond_6

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
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    iget-object v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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
    .locals 9
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    const-wide/16 v6, 0x4

    .line 90
    const-wide/16 v4, 0x0

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 91
    add-long v4, p3, v6

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    .line 93
    const-wide/16 v4, 0x8

    add-long v0, p3, v4

    .line 94
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 95
    iget-object v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    aput v4, v3, v2

    .line 96
    add-long/2addr v0, v6

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-wide/16 v4, 0x1c

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    .line 100
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 63
    const-wide/16 v2, 0x20

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string/jumbo v1, ".sleepModeTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, ", .idleModeTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, ", .txmModetimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ", .rxModeTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    const-wide/16 v6, 0x4

    .line 127
    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 128
    add-long v4, p2, v6

    iget v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 130
    const-wide/16 v4, 0x8

    add-long v0, p2, v4

    .line 131
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 132
    iget-object v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 133
    add-long/2addr v0, v6

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const-wide/16 v4, 0x1c

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 137
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 103
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 106
    return-void
.end method
