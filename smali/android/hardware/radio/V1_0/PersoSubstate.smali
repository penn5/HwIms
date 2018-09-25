.class public final Landroid/hardware/radio/V1_0/PersoSubstate;
.super Ljava/lang/Object;
.source "PersoSubstate.java"


# static fields
.field public static final IN_PROGRESS:I = 0x1

.field public static final READY:I = 0x2

.field public static final RUIM_CORPORATE:I = 0x10

.field public static final RUIM_CORPORATE_PUK:I = 0x16

.field public static final RUIM_HRPD:I = 0xf

.field public static final RUIM_HRPD_PUK:I = 0x15

.field public static final RUIM_NETWORK1:I = 0xd

.field public static final RUIM_NETWORK1_PUK:I = 0x13

.field public static final RUIM_NETWORK2:I = 0xe

.field public static final RUIM_NETWORK2_PUK:I = 0x14

.field public static final RUIM_RUIM:I = 0x12

.field public static final RUIM_RUIM_PUK:I = 0x18

.field public static final RUIM_SERVICE_PROVIDER:I = 0x11

.field public static final RUIM_SERVICE_PROVIDER_PUK:I = 0x17

.field public static final SIM_CORPORATE:I = 0x5

.field public static final SIM_CORPORATE_PUK:I = 0xa

.field public static final SIM_NETWORK:I = 0x3

.field public static final SIM_NETWORK_PUK:I = 0x8

.field public static final SIM_NETWORK_SUBSET:I = 0x4

.field public static final SIM_NETWORK_SUBSET_PUK:I = 0x9

.field public static final SIM_SERVICE_PROVIDER:I = 0x6

.field public static final SIM_SERVICE_PROVIDER_PUK:I = 0xb

.field public static final SIM_SIM:I = 0x7

.field public static final SIM_SIM_PUK:I = 0xc

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
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 113
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v0, 0x0

    .line 116
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 117
    const-string/jumbo v2, "IN_PROGRESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v0, v0, 0x1

    .line 120
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 121
    const-string/jumbo v2, "READY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v0, v0, 0x2

    .line 124
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 125
    const-string/jumbo v2, "SIM_NETWORK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v0, v0, 0x3

    .line 128
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 129
    const-string/jumbo v2, "SIM_NETWORK_SUBSET"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v0, v0, 0x4

    .line 132
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 133
    const-string/jumbo v2, "SIM_CORPORATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v0, v0, 0x5

    .line 136
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 137
    const-string/jumbo v2, "SIM_SERVICE_PROVIDER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v0, v0, 0x6

    .line 140
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 141
    const-string/jumbo v2, "SIM_SIM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v0, v0, 0x7

    .line 144
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 145
    const-string/jumbo v2, "SIM_NETWORK_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v0, v0, 0x8

    .line 148
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 149
    const-string/jumbo v2, "SIM_NETWORK_SUBSET_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v0, v0, 0x9

    .line 152
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 153
    const-string/jumbo v2, "SIM_CORPORATE_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v0, v0, 0xa

    .line 156
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 157
    const-string/jumbo v2, "SIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v0, v0, 0xb

    .line 160
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 161
    const-string/jumbo v2, "SIM_SIM_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v0, v0, 0xc

    .line 164
    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 165
    const-string/jumbo v2, "RUIM_NETWORK1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v0, v0, 0xd

    .line 168
    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    .line 169
    const-string/jumbo v2, "RUIM_NETWORK2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v0, v0, 0xe

    .line 172
    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 173
    const-string/jumbo v2, "RUIM_HRPD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v0, v0, 0xf

    .line 176
    :cond_f
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 177
    const-string/jumbo v2, "RUIM_CORPORATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v0, v0, 0x10

    .line 180
    :cond_10
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    .line 181
    const-string/jumbo v2, "RUIM_SERVICE_PROVIDER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v0, v0, 0x11

    .line 184
    :cond_11
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_12

    .line 185
    const-string/jumbo v2, "RUIM_RUIM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v0, v0, 0x12

    .line 188
    :cond_12
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    .line 189
    const-string/jumbo v2, "RUIM_NETWORK1_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v0, v0, 0x13

    .line 192
    :cond_13
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_14

    .line 193
    const-string/jumbo v2, "RUIM_NETWORK2_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v0, v0, 0x14

    .line 196
    :cond_14
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_15

    .line 197
    const-string/jumbo v2, "RUIM_HRPD_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v0, v0, 0x15

    .line 200
    :cond_15
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_16

    .line 201
    const-string/jumbo v2, "RUIM_CORPORATE_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v0, v0, 0x16

    .line 204
    :cond_16
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_17

    .line 205
    const-string/jumbo v2, "RUIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v0, v0, 0x17

    .line 208
    :cond_17
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_18

    .line 209
    const-string/jumbo v2, "RUIM_RUIM_PUK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v0, v0, 0x18

    .line 212
    :cond_18
    if-eq p0, v0, :cond_19

    .line 213
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

    .line 215
    :cond_19
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 35
    const-string/jumbo v0, "IN_PROGRESS"

    return-object v0

    .line 37
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 38
    const-string/jumbo v0, "READY"

    return-object v0

    .line 40
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 41
    const-string/jumbo v0, "SIM_NETWORK"

    return-object v0

    .line 43
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 44
    const-string/jumbo v0, "SIM_NETWORK_SUBSET"

    return-object v0

    .line 46
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 47
    const-string/jumbo v0, "SIM_CORPORATE"

    return-object v0

    .line 49
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 50
    const-string/jumbo v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    .line 52
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 53
    const-string/jumbo v0, "SIM_SIM"

    return-object v0

    .line 55
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 56
    const-string/jumbo v0, "SIM_NETWORK_PUK"

    return-object v0

    .line 58
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 59
    const-string/jumbo v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    .line 61
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 62
    const-string/jumbo v0, "SIM_CORPORATE_PUK"

    return-object v0

    .line 64
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 65
    const-string/jumbo v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 67
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 68
    const-string/jumbo v0, "SIM_SIM_PUK"

    return-object v0

    .line 70
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 71
    const-string/jumbo v0, "RUIM_NETWORK1"

    return-object v0

    .line 73
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 74
    const-string/jumbo v0, "RUIM_NETWORK2"

    return-object v0

    .line 76
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 77
    const-string/jumbo v0, "RUIM_HRPD"

    return-object v0

    .line 79
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 80
    const-string/jumbo v0, "RUIM_CORPORATE"

    return-object v0

    .line 82
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 83
    const-string/jumbo v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    .line 85
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 86
    const-string/jumbo v0, "RUIM_RUIM"

    return-object v0

    .line 88
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 89
    const-string/jumbo v0, "RUIM_NETWORK1_PUK"

    return-object v0

    .line 91
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 92
    const-string/jumbo v0, "RUIM_NETWORK2_PUK"

    return-object v0

    .line 94
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 95
    const-string/jumbo v0, "RUIM_HRPD_PUK"

    return-object v0

    .line 97
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 98
    const-string/jumbo v0, "RUIM_CORPORATE_PUK"

    return-object v0

    .line 100
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 101
    const-string/jumbo v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 103
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 104
    const-string/jumbo v0, "RUIM_RUIM_PUK"

    return-object v0

    .line 106
    :cond_18
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
