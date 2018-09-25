.class public final Landroid/hardware/radio/V1_0/CdmaRedirectingReason;
.super Ljava/lang/Object;
.source "CdmaRedirectingReason.java"


# static fields
.field public static final CALLED_DTE_OUT_OF_ORDER:I = 0x9

.field public static final CALL_FORWARDING_BUSY:I = 0x1

.field public static final CALL_FORWARDING_BY_THE_CALLED_DTE:I = 0xa

.field public static final CALL_FORWARDING_NO_REPLY:I = 0x2

.field public static final CALL_FORWARDING_UNCONDITIONAL:I = 0xf

.field public static final RESERVED:I = 0x10

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
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 41
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v0, 0x0

    .line 44
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 45
    const-string/jumbo v2, "CALL_FORWARDING_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v0, v0, 0x1

    .line 48
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 49
    const-string/jumbo v2, "CALL_FORWARDING_NO_REPLY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v0, v0, 0x2

    .line 52
    :cond_2
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 53
    const-string/jumbo v2, "CALLED_DTE_OUT_OF_ORDER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v0, v0, 0x9

    .line 56
    :cond_3
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 57
    const-string/jumbo v2, "CALL_FORWARDING_BY_THE_CALLED_DTE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0xa

    .line 60
    :cond_4
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_5

    .line 61
    const-string/jumbo v2, "CALL_FORWARDING_UNCONDITIONAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0xf

    .line 64
    :cond_5
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 65
    const-string/jumbo v2, "RESERVED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x10

    .line 68
    :cond_6
    if-eq p0, v0, :cond_7

    .line 69
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

    .line 71
    :cond_7
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 17
    const-string/jumbo v0, "CALL_FORWARDING_BUSY"

    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 20
    const-string/jumbo v0, "CALL_FORWARDING_NO_REPLY"

    return-object v0

    .line 22
    :cond_2
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    .line 23
    const-string/jumbo v0, "CALLED_DTE_OUT_OF_ORDER"

    return-object v0

    .line 25
    :cond_3
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4

    .line 26
    const-string/jumbo v0, "CALL_FORWARDING_BY_THE_CALLED_DTE"

    return-object v0

    .line 28
    :cond_4
    const/16 v0, 0xf

    if-ne p0, v0, :cond_5

    .line 29
    const-string/jumbo v0, "CALL_FORWARDING_UNCONDITIONAL"

    return-object v0

    .line 31
    :cond_5
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6

    .line 32
    const-string/jumbo v0, "RESERVED"

    return-object v0

    .line 34
    :cond_6
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
