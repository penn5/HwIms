.class public final Landroid/hardware/radio/V1_0/CdmaSmsNumberPlan;
.super Ljava/lang/Object;
.source "CdmaSmsNumberPlan.java"


# static fields
.field public static final DATA:I = 0x3

.field public static final PRIVATE:I = 0x9

.field public static final RESERVED_10:I = 0xa

.field public static final RESERVED_11:I = 0xb

.field public static final RESERVED_12:I = 0xc

.field public static final RESERVED_13:I = 0xd

.field public static final RESERVED_14:I = 0xe

.field public static final RESERVED_15:I = 0xf

.field public static final RESERVED_2:I = 0x2

.field public static final RESERVED_5:I = 0x5

.field public static final RESERVED_6:I = 0x6

.field public static final RESERVED_7:I = 0x7

.field public static final RESERVED_8:I = 0x8

.field public static final TELEPHONY:I = 0x1

.field public static final TELEX:I = 0x4

.field public static final UNKNOWN:I


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
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 77
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    .line 80
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 81
    const-string/jumbo v2, "TELEPHONY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x1

    .line 84
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 85
    const-string/jumbo v2, "RESERVED_2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, 0x2

    .line 88
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 89
    const-string/jumbo v2, "DATA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, 0x3

    .line 92
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 93
    const-string/jumbo v2, "TELEX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v0, v0, 0x4

    .line 96
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 97
    const-string/jumbo v2, "RESERVED_5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v0, v0, 0x5

    .line 100
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 101
    const-string/jumbo v2, "RESERVED_6"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v0, v0, 0x6

    .line 104
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 105
    const-string/jumbo v2, "RESERVED_7"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v0, v0, 0x7

    .line 108
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 109
    const-string/jumbo v2, "RESERVED_8"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v0, v0, 0x8

    .line 112
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 113
    const-string/jumbo v2, "PRIVATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v0, v0, 0x9

    .line 116
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 117
    const-string/jumbo v2, "RESERVED_10"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v0, v0, 0xa

    .line 120
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 121
    const-string/jumbo v2, "RESERVED_11"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v0, v0, 0xb

    .line 124
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 125
    const-string/jumbo v2, "RESERVED_12"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v0, v0, 0xc

    .line 128
    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 129
    const-string/jumbo v2, "RESERVED_13"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v0, v0, 0xd

    .line 132
    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    .line 133
    const-string/jumbo v2, "RESERVED_14"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v0, v0, 0xe

    .line 136
    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 137
    const-string/jumbo v2, "RESERVED_15"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v0, v0, 0xf

    .line 140
    :cond_f
    if-eq p0, v0, :cond_10

    .line 141
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

    .line 143
    :cond_10
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 26
    const-string/jumbo v0, "TELEPHONY"

    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 29
    const-string/jumbo v0, "RESERVED_2"

    return-object v0

    .line 31
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 32
    const-string/jumbo v0, "DATA"

    return-object v0

    .line 34
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 35
    const-string/jumbo v0, "TELEX"

    return-object v0

    .line 37
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 38
    const-string/jumbo v0, "RESERVED_5"

    return-object v0

    .line 40
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 41
    const-string/jumbo v0, "RESERVED_6"

    return-object v0

    .line 43
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 44
    const-string/jumbo v0, "RESERVED_7"

    return-object v0

    .line 46
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 47
    const-string/jumbo v0, "RESERVED_8"

    return-object v0

    .line 49
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 50
    const-string/jumbo v0, "PRIVATE"

    return-object v0

    .line 52
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 53
    const-string/jumbo v0, "RESERVED_10"

    return-object v0

    .line 55
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 56
    const-string/jumbo v0, "RESERVED_11"

    return-object v0

    .line 58
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 59
    const-string/jumbo v0, "RESERVED_12"

    return-object v0

    .line 61
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 62
    const-string/jumbo v0, "RESERVED_13"

    return-object v0

    .line 64
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 65
    const-string/jumbo v0, "RESERVED_14"

    return-object v0

    .line 67
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 68
    const-string/jumbo v0, "RESERVED_15"

    return-object v0

    .line 70
    :cond_f
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
