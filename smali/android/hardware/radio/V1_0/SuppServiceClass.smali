.class public final Landroid/hardware/radio/V1_0/SuppServiceClass;
.super Ljava/lang/Object;
.source "SuppServiceClass.java"


# static fields
.field public static final DATA:I = 0x2

.field public static final DATA_ASYNC:I = 0x20

.field public static final DATA_SYNC:I = 0x10

.field public static final FAX:I = 0x4

.field public static final MAX:I = 0x80

.field public static final NONE:I = 0x0

.field public static final PACKET:I = 0x40

.field public static final PAD:I = 0x80

.field public static final SMS:I = 0x8

.field public static final VOICE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # I

    .prologue
    const/16 v4, 0x80

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 53
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const/4 v0, 0x0

    .line 56
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 57
    const-string/jumbo v2, "VOICE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0x1

    .line 60
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 61
    const-string/jumbo v2, "DATA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x2

    .line 64
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 65
    const-string/jumbo v2, "FAX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x4

    .line 68
    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 69
    const-string/jumbo v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x8

    .line 72
    :cond_4
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 73
    const-string/jumbo v2, "DATA_SYNC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x10

    .line 76
    :cond_5
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 77
    const-string/jumbo v2, "DATA_ASYNC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0x20

    .line 80
    :cond_6
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 81
    const-string/jumbo v2, "PACKET"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x40

    .line 84
    :cond_7
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v4, :cond_8

    .line 85
    const-string/jumbo v2, "PAD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit16 v0, v0, 0x80

    .line 88
    :cond_8
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v4, :cond_9

    .line 89
    const-string/jumbo v2, "MAX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit16 v0, v0, 0x80

    .line 92
    :cond_9
    if-eq p0, v0, :cond_a

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_a
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    const/16 v1, 0x80

    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 20
    const-string/jumbo v0, "VOICE"

    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 23
    const-string/jumbo v0, "DATA"

    return-object v0

    .line 25
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 26
    const-string/jumbo v0, "FAX"

    return-object v0

    .line 28
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 29
    const-string/jumbo v0, "SMS"

    return-object v0

    .line 31
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 32
    const-string/jumbo v0, "DATA_SYNC"

    return-object v0

    .line 34
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 35
    const-string/jumbo v0, "DATA_ASYNC"

    return-object v0

    .line 37
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 38
    const-string/jumbo v0, "PACKET"

    return-object v0

    .line 40
    :cond_7
    if-ne p0, v1, :cond_8

    .line 41
    const-string/jumbo v0, "PAD"

    return-object v0

    .line 43
    :cond_8
    if-ne p0, v1, :cond_9

    .line 44
    const-string/jumbo v0, "MAX"

    return-object v0

    .line 46
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
