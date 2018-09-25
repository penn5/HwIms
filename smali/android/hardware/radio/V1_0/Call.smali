.class public final Landroid/hardware/radio/V1_0/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field public als:B

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public toa:I

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

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 135
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 137
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x58

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 138
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 136
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 140
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 142
    new-instance v11, Landroid/hardware/radio/V1_0/Call;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/Call;-><init>()V

    .line 143
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/Call;
    mul-int/lit8 v1, v9, 0x58

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/radio/V1_0/Call;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 148
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/Call;
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
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 204
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/Call;

    mul-int/lit8 v5, v1, 0x58

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_0/Call;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    return v4

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    return v3

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/radio/V1_0/Call;

    if-eq v1, v2, :cond_2

    .line 28
    return v3

    :cond_2
    move-object v0, p1

    .line 30
    check-cast v0, Landroid/hardware/radio/V1_0/Call;

    .line 31
    .local v0, "other":Landroid/hardware/radio/V1_0/Call;
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Call;->state:I

    if-eq v1, v2, :cond_3

    .line 32
    return v3

    .line 34
    :cond_3
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Call;->index:I

    if-eq v1, v2, :cond_4

    .line 35
    return v3

    .line 37
    :cond_4
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Call;->toa:I

    if-eq v1, v2, :cond_5

    .line 38
    return v3

    .line 40
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iget-boolean v2, v0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    if-eq v1, v2, :cond_6

    .line 41
    return v3

    .line 43
    :cond_6
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iget-boolean v2, v0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    if-eq v1, v2, :cond_7

    .line 44
    return v3

    .line 46
    :cond_7
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    iget-byte v2, v0, Landroid/hardware/radio/V1_0/Call;->als:B

    if-eq v1, v2, :cond_8

    .line 47
    return v3

    .line 49
    :cond_8
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iget-boolean v2, v0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    if-eq v1, v2, :cond_9

    .line 50
    return v3

    .line 52
    :cond_9
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iget-boolean v2, v0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    if-eq v1, v2, :cond_a

    .line 53
    return v3

    .line 55
    :cond_a
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 56
    return v3

    .line 58
    :cond_b
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    if-eq v1, v2, :cond_c

    .line 59
    return v3

    .line 61
    :cond_c
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 62
    return v3

    .line 64
    :cond_d
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    iget v2, v0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    if-eq v1, v2, :cond_e

    .line 65
    return v3

    .line 67
    :cond_e
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 68
    return v3

    .line 70
    :cond_f
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 79
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 80
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 81
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 82
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 83
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 84
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 85
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 86
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 87
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 88
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 75
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
    .line 153
    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 154
    const-wide/16 v4, 0x4

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 155
    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 156
    const-wide/16 v4, 0xc

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 157
    const-wide/16 v4, 0xd

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 158
    const-wide/16 v4, 0xe

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 159
    const-wide/16 v4, 0xf

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 160
    const-wide/16 v4, 0x10

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 161
    const-wide/16 v4, 0x18

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 166
    const-wide/16 v8, 0x18

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 163
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 168
    const-wide/16 v4, 0x28

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 169
    const-wide/16 v4, 0x30

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 174
    const-wide/16 v8, 0x30

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 171
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 176
    const-wide/16 v4, 0x40

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 178
    const-wide/16 v4, 0x48

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 180
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v3, v12, 0x18

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 181
    const-wide/16 v8, 0x48

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    .line 179
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 183
    .local v13, "childBlob":Landroid/os/HwBlob;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 184
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v12, :cond_0

    .line 185
    new-instance v11, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v11}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 186
    .local v11, "_hidl_vec_element":Landroid/hardware/radio/V1_0/UusInfo;
    mul-int/lit8 v3, v2, 0x18

    int-to-long v4, v3

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13, v4, v5}, Landroid/hardware/radio/V1_0/UusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v11    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/UusInfo;
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 126
    const-wide/16 v2, 0x58

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 127
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/radio/V1_0/Call;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 128
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, ", .uusInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 217
    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 218
    const-wide/16 v4, 0x4

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 219
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 220
    const-wide/16 v4, 0xc

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 221
    const-wide/16 v4, 0xd

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 222
    const-wide/16 v4, 0xe

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 223
    const-wide/16 v4, 0xf

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 224
    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-object v3, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 226
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    const-wide/16 v4, 0x30

    add-long/2addr v4, p2

    iget-object v3, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 228
    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 230
    iget-object v3, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 231
    .local v1, "_hidl_vec_size":I
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 232
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 233
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 234
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v3, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/UusInfo;

    mul-int/lit8 v4, v0, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/radio/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const-wide/16 v4, 0x48

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 193
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 194
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/radio/V1_0/Call;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 196
    return-void
.end method
