.class public final Landroid/hardware/radio/V1_0/RadioTechnology;
.super Ljava/lang/Object;
.source "RadioTechnology.java"


# static fields
.field public static final EDGE:I = 0x2

.field public static final EHRPD:I = 0xd

.field public static final EVDO_0:I = 0x7

.field public static final EVDO_A:I = 0x8

.field public static final EVDO_B:I = 0xc

.field public static final GPRS:I = 0x1

.field public static final GSM:I = 0x10

.field public static final HSDPA:I = 0x9

.field public static final HSPA:I = 0xb

.field public static final HSPAP:I = 0xf

.field public static final HSUPA:I = 0xa

.field public static final IS95A:I = 0x4

.field public static final IS95B:I = 0x5

.field public static final IWLAN:I = 0x12

.field public static final LTE:I = 0xe

.field public static final LTE_CA:I = 0x13

.field public static final ONE_X_RTT:I = 0x6

.field public static final TD_SCDMA:I = 0x11

.field public static final UMTS:I = 0x3

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
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 93
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 97
    const-string/jumbo v2, "GPRS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v0, v0, 0x1

    .line 100
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 101
    const-string/jumbo v2, "EDGE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v0, v0, 0x2

    .line 104
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 105
    const-string/jumbo v2, "UMTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v0, v0, 0x3

    .line 108
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 109
    const-string/jumbo v2, "IS95A"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v0, v0, 0x4

    .line 112
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 113
    const-string/jumbo v2, "IS95B"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v0, v0, 0x5

    .line 116
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 117
    const-string/jumbo v2, "ONE_X_RTT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v0, v0, 0x6

    .line 120
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 121
    const-string/jumbo v2, "EVDO_0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v0, v0, 0x7

    .line 124
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 125
    const-string/jumbo v2, "EVDO_A"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v0, v0, 0x8

    .line 128
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 129
    const-string/jumbo v2, "HSDPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v0, v0, 0x9

    .line 132
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 133
    const-string/jumbo v2, "HSUPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v0, v0, 0xa

    .line 136
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 137
    const-string/jumbo v2, "HSPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v0, v0, 0xb

    .line 140
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 141
    const-string/jumbo v2, "EVDO_B"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v0, v0, 0xc

    .line 144
    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 145
    const-string/jumbo v2, "EHRPD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v0, v0, 0xd

    .line 148
    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    .line 149
    const-string/jumbo v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v0, v0, 0xe

    .line 152
    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 153
    const-string/jumbo v2, "HSPAP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v0, v0, 0xf

    .line 156
    :cond_f
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 157
    const-string/jumbo v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v0, v0, 0x10

    .line 160
    :cond_10
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    .line 161
    const-string/jumbo v2, "TD_SCDMA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v0, v0, 0x11

    .line 164
    :cond_11
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_12

    .line 165
    const-string/jumbo v2, "IWLAN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v0, v0, 0x12

    .line 168
    :cond_12
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    .line 169
    const-string/jumbo v2, "LTE_CA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v0, v0, 0x13

    .line 172
    :cond_13
    if-eq p0, v0, :cond_14

    .line 173
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

    .line 175
    :cond_14
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 30
    const-string/jumbo v0, "GPRS"

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 33
    const-string/jumbo v0, "EDGE"

    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 36
    const-string/jumbo v0, "UMTS"

    return-object v0

    .line 38
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 39
    const-string/jumbo v0, "IS95A"

    return-object v0

    .line 41
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 42
    const-string/jumbo v0, "IS95B"

    return-object v0

    .line 44
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 45
    const-string/jumbo v0, "ONE_X_RTT"

    return-object v0

    .line 47
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 48
    const-string/jumbo v0, "EVDO_0"

    return-object v0

    .line 50
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 51
    const-string/jumbo v0, "EVDO_A"

    return-object v0

    .line 53
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 54
    const-string/jumbo v0, "HSDPA"

    return-object v0

    .line 56
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 57
    const-string/jumbo v0, "HSUPA"

    return-object v0

    .line 59
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 60
    const-string/jumbo v0, "HSPA"

    return-object v0

    .line 62
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 63
    const-string/jumbo v0, "EVDO_B"

    return-object v0

    .line 65
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 66
    const-string/jumbo v0, "EHRPD"

    return-object v0

    .line 68
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 69
    const-string/jumbo v0, "LTE"

    return-object v0

    .line 71
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 72
    const-string/jumbo v0, "HSPAP"

    return-object v0

    .line 74
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 75
    const-string/jumbo v0, "GSM"

    return-object v0

    .line 77
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 78
    const-string/jumbo v0, "TD_SCDMA"

    return-object v0

    .line 80
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 81
    const-string/jumbo v0, "IWLAN"

    return-object v0

    .line 83
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 84
    const-string/jumbo v0, "LTE_CA"

    return-object v0

    .line 86
    :cond_13
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
