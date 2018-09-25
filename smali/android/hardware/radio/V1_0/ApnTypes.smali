.class public final Landroid/hardware/radio/V1_0/ApnTypes;
.super Ljava/lang/Object;
.source "ApnTypes.java"


# static fields
.field public static final ALL:I = 0x3ff

.field public static final CBS:I = 0x80

.field public static final DEFAULT:I = 0x1

.field public static final DUN:I = 0x8

.field public static final EMERGENCY:I = 0x200

.field public static final FOTA:I = 0x20

.field public static final HIPRI:I = 0x10

.field public static final IA:I = 0x100

.field public static final IMS:I = 0x40

.field public static final MMS:I = 0x2

.field public static final NONE:I = 0x0

.field public static final SUPL:I = 0x4


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
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x0

    .line 64
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 65
    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x1

    .line 68
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 69
    const-string/jumbo v2, "MMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x2

    .line 72
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 73
    const-string/jumbo v2, "SUPL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x4

    .line 76
    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 77
    const-string/jumbo v2, "DUN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0x8

    .line 80
    :cond_4
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 81
    const-string/jumbo v2, "HIPRI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x10

    .line 84
    :cond_5
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 85
    const-string/jumbo v2, "FOTA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, 0x20

    .line 88
    :cond_6
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 89
    const-string/jumbo v2, "IMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, 0x40

    .line 92
    :cond_7
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 93
    const-string/jumbo v2, "CBS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit16 v0, v0, 0x80

    .line 96
    :cond_8
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 97
    const-string/jumbo v2, "IA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v0, v0, 0x100

    .line 100
    :cond_9
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 101
    const-string/jumbo v2, "EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v0, v0, 0x200

    .line 104
    :cond_a
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_b

    .line 105
    const-string/jumbo v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit16 v0, v0, 0x3ff

    .line 108
    :cond_b
    if-eq p0, v0, :cond_c

    .line 109
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

    .line 111
    :cond_c
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 22
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    .line 24
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 25
    const-string/jumbo v0, "MMS"

    return-object v0

    .line 27
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 28
    const-string/jumbo v0, "SUPL"

    return-object v0

    .line 30
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 31
    const-string/jumbo v0, "DUN"

    return-object v0

    .line 33
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 34
    const-string/jumbo v0, "HIPRI"

    return-object v0

    .line 36
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 37
    const-string/jumbo v0, "FOTA"

    return-object v0

    .line 39
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 40
    const-string/jumbo v0, "IMS"

    return-object v0

    .line 42
    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    .line 43
    const-string/jumbo v0, "CBS"

    return-object v0

    .line 45
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 46
    const-string/jumbo v0, "IA"

    return-object v0

    .line 48
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 49
    const-string/jumbo v0, "EMERGENCY"

    return-object v0

    .line 51
    :cond_a
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_b

    .line 52
    const-string/jumbo v0, "ALL"

    return-object v0

    .line 54
    :cond_b
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
