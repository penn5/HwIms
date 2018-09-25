.class public final Landroid/hardware/radio/V1_0/RegState;
.super Ljava/lang/Object;
.source "RegState.java"


# static fields
.field public static final NOT_REG_MT_NOT_SEARCHING_OP:I = 0x0

.field public static final NOT_REG_MT_NOT_SEARCHING_OP_EM:I = 0xa

.field public static final NOT_REG_MT_SEARCHING_OP:I = 0x2

.field public static final NOT_REG_MT_SEARCHING_OP_EM:I = 0xc

.field public static final REG_DENIED:I = 0x3

.field public static final REG_DENIED_EM:I = 0xd

.field public static final REG_HOME:I = 0x1

.field public static final REG_ROAMING:I = 0x5

.field public static final UNKNOWN:I = 0x4

.field public static final UNKNOWN_EM:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .prologue
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
    const-string/jumbo v2, "NOT_REG_MT_NOT_SEARCHING_OP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const/4 v0, 0x0

    .line 56
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 57
    const-string/jumbo v2, "REG_HOME"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0x1

    .line 60
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 61
    const-string/jumbo v2, "NOT_REG_MT_SEARCHING_OP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x2

    .line 64
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 65
    const-string/jumbo v2, "REG_DENIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x3

    .line 68
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 69
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x4

    .line 72
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 73
    const-string/jumbo v2, "REG_ROAMING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x5

    .line 76
    :cond_5
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 77
    const-string/jumbo v2, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0xa

    .line 80
    :cond_6
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 81
    const-string/jumbo v2, "NOT_REG_MT_SEARCHING_OP_EM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0xc

    .line 84
    :cond_7
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    .line 85
    const-string/jumbo v2, "REG_DENIED_EM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, 0xd

    .line 88
    :cond_8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_9

    .line 89
    const-string/jumbo v2, "UNKNOWN_EM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, 0xe

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
    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string/jumbo v0, "NOT_REG_MT_NOT_SEARCHING_OP"

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 20
    const-string/jumbo v0, "REG_HOME"

    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 23
    const-string/jumbo v0, "NOT_REG_MT_SEARCHING_OP"

    return-object v0

    .line 25
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 26
    const-string/jumbo v0, "REG_DENIED"

    return-object v0

    .line 28
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 29
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 31
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 32
    const-string/jumbo v0, "REG_ROAMING"

    return-object v0

    .line 34
    :cond_5
    const/16 v0, 0xa

    if-ne p0, v0, :cond_6

    .line 35
    const-string/jumbo v0, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    return-object v0

    .line 37
    :cond_6
    const/16 v0, 0xc

    if-ne p0, v0, :cond_7

    .line 38
    const-string/jumbo v0, "NOT_REG_MT_SEARCHING_OP_EM"

    return-object v0

    .line 40
    :cond_7
    const/16 v0, 0xd

    if-ne p0, v0, :cond_8

    .line 41
    const-string/jumbo v0, "REG_DENIED_EM"

    return-object v0

    .line 43
    :cond_8
    const/16 v0, 0xe

    if-ne p0, v0, :cond_9

    .line 44
    const-string/jumbo v0, "UNKNOWN_EM"

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
