.class public final Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
.super Ljava/lang/Object;
.source "CdmaSignalInfoRecord.java"


# instance fields
.field public alertPitch:B

.field public isPresent:Z

.field public signal:B

.field public signalType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;>;"
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
    mul-int/lit8 v1, v12, 0x4

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
    new-instance v11, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 80
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    mul-int/lit8 v1, v9, 0x4

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
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
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 107
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 108
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 109
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    mul-int/lit8 v5, v1, 0x4

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
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

    const-class v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    if-eq v1, v2, :cond_2

    .line 19
    return v3

    :cond_2
    move-object v0, p1

    .line 21
    check-cast v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 22
    .local v0, "other":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iget-boolean v2, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    if-eq v1, v2, :cond_3

    .line 23
    return v3

    .line 25
    :cond_3
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    if-eq v1, v2, :cond_4

    .line 26
    return v3

    .line 28
    :cond_4
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    if-eq v1, v2, :cond_5

    .line 29
    return v3

    .line 31
    :cond_5
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

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
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    .line 91
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    .line 92
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    .line 93
    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    .line 94
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 63
    const-wide/16 v2, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string/jumbo v1, ".isPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, ", .signalType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, ", .alertPitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ", .signal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

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
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 123
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 124
    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 125
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 97
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 100
    return-void
.end method
