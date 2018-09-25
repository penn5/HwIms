.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsCall;
.super Ljava/lang/Object;
.source "RILImsCall.java"


# instance fields
.field public als:B

.field public final callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

.field public index:I

.field public isECOnference:I

.field public isMT:B

.field public isMpty:B

.field public isVoice:B

.field public isVoicePrivacy:B

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public peerVideoSupport:I

.field public state:I

.field public toa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

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
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 149
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 151
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x58

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 152
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 150
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 154
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 156
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;-><init>()V

    .line 157
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsCall;
    mul-int/lit8 v1, v9, 0x58

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 158
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 162
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsCall;
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
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCall;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 208
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 210
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    mul-int/lit8 v5, v1, 0x58

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 216
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 217
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    return v4

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    return v3

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    if-eq v1, v2, :cond_2

    .line 30
    return v3

    :cond_2
    move-object v0, p1

    .line 32
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;

    .line 33
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILImsCall;
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    if-eq v1, v2, :cond_3

    .line 34
    return v3

    .line 36
    :cond_3
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    if-eq v1, v2, :cond_4

    .line 37
    return v3

    .line 39
    :cond_4
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    if-eq v1, v2, :cond_5

    .line 40
    return v3

    .line 42
    :cond_5
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    iget-byte v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    if-eq v1, v2, :cond_6

    .line 43
    return v3

    .line 45
    :cond_6
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    iget-byte v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    if-eq v1, v2, :cond_7

    .line 46
    return v3

    .line 48
    :cond_7
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    iget-byte v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    if-eq v1, v2, :cond_8

    .line 49
    return v3

    .line 51
    :cond_8
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    iget-byte v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    if-eq v1, v2, :cond_9

    .line 52
    return v3

    .line 54
    :cond_9
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    iget-byte v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    if-eq v1, v2, :cond_a

    .line 55
    return v3

    .line 57
    :cond_a
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 58
    return v3

    .line 60
    :cond_b
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    if-eq v1, v2, :cond_c

    .line 61
    return v3

    .line 63
    :cond_c
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 64
    return v3

    .line 66
    :cond_d
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    if-eq v1, v2, :cond_e

    .line 67
    return v3

    .line 69
    :cond_e
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 70
    return v3

    .line 72
    :cond_f
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    if-eq v1, v2, :cond_10

    .line 73
    return v3

    .line 75
    :cond_10
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    if-eq v1, v2, :cond_11

    .line 76
    return v3

    .line 78
    :cond_11
    return v4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 85
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 86
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 87
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 88
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 89
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 90
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 91
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 92
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 93
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 94
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 95
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 96
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 97
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 98
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 83
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
    .line 167
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    .line 168
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    .line 169
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    .line 170
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    .line 171
    const-wide/16 v0, 0xd

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    .line 172
    const-wide/16 v0, 0xe

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    .line 173
    const-wide/16 v0, 0xf

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    .line 174
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    .line 175
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 179
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 180
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 177
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 182
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    .line 183
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 187
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 188
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    .line 185
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 190
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    .line 191
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0x44

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    .line 193
    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    .line 194
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 140
    const-wide/16 v2, 0x58

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 141
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, ", .isECOnference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, ", .peerVideoSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 221
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 222
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMpty:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 225
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 226
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->als:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 227
    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoice:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 228
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 229
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 230
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 232
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 233
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0x44

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 234
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->isECOnference:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 235
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->peerVideoSupport:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 236
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 197
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 198
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 200
    return-void
.end method
