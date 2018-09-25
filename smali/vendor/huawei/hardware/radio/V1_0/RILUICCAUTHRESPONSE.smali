.class public final Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
.super Ljava/lang/Object;
.source "RILUICCAUTHRESPONSE.java"


# instance fields
.field public final authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

.field public authStatus:I

.field public final authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    .line 7
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

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
            "Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;>;"
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
    mul-int/lit8 v1, v12, 0x68

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
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;-><init>()V

    .line 73
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
    mul-int/lit8 v1, v9, 0x68

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
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
            "Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 99
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x68

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    mul-int/lit8 v5, v1, 0x68

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 109
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

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    if-eq v1, v2, :cond_2

    .line 18
    return v3

    :cond_2
    move-object v0, p1

    .line 20
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;

    .line 21
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    if-eq v1, v2, :cond_3

    .line 22
    return v3

    .line 24
    :cond_3
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    return v3

    .line 27
    :cond_4
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

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
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

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
    .locals 5
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    .line 84
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    const-wide/16 v2, 0x50

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 56
    const-wide/16 v2, 0x68

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string/jumbo v1, ".authStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSTATUSTYPEENUM;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, ", .authChallenge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v1, ", .authSyncfail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

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
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 114
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    const-wide/16 v2, 0x50

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 89
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILUICCAUTHRESPONSE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 92
    return-void
.end method
