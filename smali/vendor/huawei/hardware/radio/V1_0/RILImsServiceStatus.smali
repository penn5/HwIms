.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
.super Ljava/lang/Object;
.source "RILImsServiceStatus.java"


# instance fields
.field public final acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

.field public callType:I

.field public isValid:I

.field public nAcctechstatus:I

.field public srvStatus:I

.field public final userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

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
            "Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;>;"
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
    mul-int/lit8 v1, v12, 0x40

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
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;-><init>()V

    .line 94
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    mul-int/lit8 v1, v9, 0x40

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 99
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
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
            "Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 131
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 132
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 133
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 134
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    mul-int/lit8 v5, v1, 0x40

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
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

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    if-eq v1, v2, :cond_2

    .line 21
    return v3

    :cond_2
    move-object v0, p1

    .line 23
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;

    .line 24
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    if-eq v1, v2, :cond_3

    .line 25
    return v3

    .line 27
    :cond_3
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    if-eq v1, v2, :cond_4

    .line 28
    return v3

    .line 30
    :cond_4
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    if-eq v1, v2, :cond_5

    .line 31
    return v3

    .line 33
    :cond_5
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    return v3

    .line 36
    :cond_6
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    if-eq v1, v2, :cond_7

    .line 37
    return v3

    .line 39
    :cond_7
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

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
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 53
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

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
    const-wide/16 v6, 0x10

    .line 104
    const-wide/16 v4, 0x0

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    .line 105
    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    .line 106
    const-wide/16 v4, 0x8

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    .line 107
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    add-long v4, p3, v6

    invoke-virtual {v3, p1, p2, v4, v5}, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    const-wide/16 v4, 0x28

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    .line 110
    const-wide/16 v4, 0x2c

    add-long v0, p3, v4

    .line 111
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 112
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    new-instance v4, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    invoke-direct {v4}, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;-><init>()V

    aput-object v4, v3, v2

    .line 113
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    add-long/2addr v0, v6

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 77
    const-wide/16 v2, 0x40

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string/jumbo v1, ".isValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", .callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, ", .srvStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, ", .userData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, ", .nAcctechstatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, ", .acctechstatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    const-wide/16 v6, 0x10

    .line 144
    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->isValid:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    const-wide/16 v4, 0x4

    add-long/2addr v4, p2

    iget v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->callType:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    iget v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->srvStatus:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 147
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;

    add-long v4, p2, v6

    invoke-virtual {v3, p1, v4, v5}, Lvendor/huawei/hardware/radio/V1_0/RILImsUserData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 148
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const-wide/16 v4, 0x2c

    add-long v0, p2, v4

    .line 151
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 152
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0, v1}, Lvendor/huawei/hardware/radio/V1_0/RILImsStatusForAccTech;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    add-long/2addr v0, v6

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 120
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 123
    return-void
.end method
