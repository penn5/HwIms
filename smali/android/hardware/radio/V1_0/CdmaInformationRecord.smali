.class public final Landroid/hardware/radio/V1_0/CdmaInformationRecord;
.super Ljava/lang/Object;
.source "CdmaInformationRecord.java"


# instance fields
.field public final audioCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final clir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final display:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final lineCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public name:I

.field public final number:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final redir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final signal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
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

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaInformationRecord;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 100
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 102
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x78

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 103
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 101
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 105
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 107
    new-instance v11, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;-><init>()V

    .line 108
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    mul-int/lit8 v1, v9, 0x78

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 113
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaInformationRecord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 222
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 223
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x78

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 226
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 227
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    mul-int/lit8 v5, v1, 0x78

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    return v4

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    return v3

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    if-eq v1, v2, :cond_2

    .line 23
    return v3

    :cond_2
    move-object v0, p1

    .line 25
    check-cast v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 26
    .local v0, "other":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    iget v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    if-eq v1, v2, :cond_3

    .line 27
    return v3

    .line 29
    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 30
    return v3

    .line 32
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 33
    return v3

    .line 35
    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 36
    return v3

    .line 38
    :cond_6
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 39
    return v3

    .line 41
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 42
    return v3

    .line 44
    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 45
    return v3

    .line 47
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 48
    return v3

    .line 50
    :cond_a
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 60
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 61
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 62
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 63
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 25
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 118
    const-wide/16 v6, 0x0

    add-long v6, v6, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 120
    const-wide/16 v6, 0x8

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 122
    .local v20, "_hidl_vec_size":I
    mul-int/lit8 v5, v20, 0x10

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 123
    const-wide/16 v10, 0x8

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 121
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 125
    .local v21, "childBlob":Landroid/os/HwBlob;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_0

    .line 127
    new-instance v13, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    invoke-direct {v13}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;-><init>()V

    .line 128
    .local v13, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;
    mul-int/lit8 v5, v4, 0x10

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 129
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v13    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;
    :cond_0
    const-wide/16 v6, 0x18

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 135
    mul-int/lit8 v5, v20, 0x18

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 136
    const-wide/16 v10, 0x18

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 134
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v4, v0, :cond_1

    .line 140
    new-instance v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    invoke-direct {v15}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;-><init>()V

    .line 141
    .local v15, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    mul-int/lit8 v5, v4, 0x18

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v15    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    :cond_1
    const-wide/16 v6, 0x28

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 148
    mul-int/lit8 v5, v20, 0x4

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 149
    const-wide/16 v10, 0x28

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 147
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 152
    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    .line 153
    new-instance v17, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 154
    .local v17, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    mul-int/lit8 v5, v4, 0x4

    int-to-long v6, v5

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 159
    .end local v17    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :cond_2
    const-wide/16 v6, 0x38

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 161
    mul-int/lit8 v5, v20, 0x20

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 162
    const-wide/16 v10, 0x38

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 160
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 164
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v4, v0, :cond_3

    .line 166
    new-instance v16, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    invoke-direct/range {v16 .. v16}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;-><init>()V

    .line 167
    .local v16, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    mul-int/lit8 v5, v4, 0x20

    int-to-long v6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 172
    .end local v16    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    :cond_3
    const-wide/16 v6, 0x48

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 174
    mul-int/lit8 v5, v20, 0x4

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 175
    const-wide/16 v10, 0x48

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 173
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v4, v0, :cond_4

    .line 179
    new-instance v14, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    invoke-direct {v14}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;-><init>()V

    .line 180
    .local v14, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    mul-int/lit8 v5, v4, 0x4

    int-to-long v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1, v6, v7}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 185
    .end local v14    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    :cond_4
    const-wide/16 v6, 0x58

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 187
    mul-int/lit8 v5, v20, 0x1

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 188
    const-wide/16 v10, 0x58

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 186
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    .line 192
    new-instance v19, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    invoke-direct/range {v19 .. v19}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;-><init>()V

    .line 193
    .local v19, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;
    mul-int/lit8 v5, v4, 0x1

    int-to-long v6, v5

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 198
    .end local v19    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;
    :cond_5
    const-wide/16 v6, 0x68

    add-long v6, v6, p3

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v20

    .line 200
    mul-int/lit8 v5, v20, 0x2

    int-to-long v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    .line 201
    const-wide/16 v10, 0x68

    add-long v10, v10, p3

    const-wide/16 v22, 0x0

    add-long v10, v10, v22

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 199
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v21

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 204
    const/4 v4, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    .line 205
    new-instance v18, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;-><init>()V

    .line 206
    .local v18, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    mul-int/lit8 v5, v4, 0x2

    int-to-long v6, v5

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 210
    .end local v18    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    :cond_6
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 91
    const-wide/16 v2, 0x78

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaInfoRecName;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, ", .display = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, ", .signal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, ", .redir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, ", .lineCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, ", .clir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, ", .audioCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 237
    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 240
    .local v1, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 242
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 243
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 244
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    mul-int/lit8 v4, v0, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 249
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 250
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 254
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    mul-int/lit8 v4, v0, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_1
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 259
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 260
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 263
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 264
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    mul-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 266
    :cond_2
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 269
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 270
    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 271
    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 272
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 273
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 274
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    mul-int/lit8 v4, v0, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 276
    :cond_3
    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 279
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 280
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 281
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 282
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 283
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    .line 284
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    mul-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 286
    :cond_4
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 289
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 290
    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 291
    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 292
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 293
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_5

    .line 294
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    mul-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_5
    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 299
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 302
    new-instance v2, Landroid/os/HwBlob;

    .end local v2    # "childBlob":Landroid/os/HwBlob;
    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    .restart local v2    # "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_6

    .line 304
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    mul-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 306
    :cond_6
    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 308
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 213
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 214
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 216
    return-void
.end method
