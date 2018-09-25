.class public final Landroid/hardware/radio/V1_0/SapResultCode;
.super Ljava/lang/Object;
.source "SapResultCode.java"


# static fields
.field public static final CARD_ALREADY_POWERED_OFF:I = 0x3

.field public static final CARD_ALREADY_POWERED_ON:I = 0x5

.field public static final CARD_NOT_ACCESSSIBLE:I = 0x2

.field public static final CARD_REMOVED:I = 0x4

.field public static final DATA_NOT_AVAILABLE:I = 0x6

.field public static final GENERIC_FAILURE:I = 0x1

.field public static final NOT_SUPPORTED:I = 0x7

.field public static final SUCCESS:I


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
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 44
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 45
    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x0

    .line 48
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 49
    const-string/jumbo v2, "GENERIC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v0, v0, 0x1

    .line 52
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 53
    const-string/jumbo v2, "CARD_NOT_ACCESSSIBLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v0, v0, 0x2

    .line 56
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 57
    const-string/jumbo v2, "CARD_ALREADY_POWERED_OFF"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0x3

    .line 60
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 61
    const-string/jumbo v2, "CARD_REMOVED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x4

    .line 64
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 65
    const-string/jumbo v2, "CARD_ALREADY_POWERED_ON"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x5

    .line 68
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 69
    const-string/jumbo v2, "DATA_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x6

    .line 72
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 73
    const-string/jumbo v2, "NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x7

    .line 76
    :cond_7
    if-eq p0, v0, :cond_8

    .line 77
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

    .line 79
    :cond_8
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 18
    const-string/jumbo v0, "GENERIC_FAILURE"

    return-object v0

    .line 20
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 21
    const-string/jumbo v0, "CARD_NOT_ACCESSSIBLE"

    return-object v0

    .line 23
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 24
    const-string/jumbo v0, "CARD_ALREADY_POWERED_OFF"

    return-object v0

    .line 26
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 27
    const-string/jumbo v0, "CARD_REMOVED"

    return-object v0

    .line 29
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 30
    const-string/jumbo v0, "CARD_ALREADY_POWERED_ON"

    return-object v0

    .line 32
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 33
    const-string/jumbo v0, "DATA_NOT_AVAILABLE"

    return-object v0

    .line 35
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 36
    const-string/jumbo v0, "NOT_SUPPORTED"

    return-object v0

    .line 38
    :cond_7
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
