.class public final Landroid/hardware/radio/V1_0/CdmaInfoRecName;
.super Ljava/lang/Object;
.source "CdmaInfoRecName.java"


# static fields
.field public static final CALLED_PARTY_NUMBER:I = 0x1

.field public static final CALLING_PARTY_NUMBER:I = 0x2

.field public static final CONNECTED_NUMBER:I = 0x3

.field public static final DISPLAY:I = 0x0

.field public static final EXTENDED_DISPLAY:I = 0x7

.field public static final LINE_CONTROL:I = 0x6

.field public static final REDIRECTING_NUMBER:I = 0x5

.field public static final SIGNAL:I = 0x4

.field public static final T53_AUDIO_CONTROL:I = 0xa

.field public static final T53_CLIR:I = 0x8

.field public static final T53_RELEASE:I = 0x9


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
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 57
    const-string/jumbo v2, "DISPLAY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x0

    .line 60
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 61
    const-string/jumbo v2, "CALLED_PARTY_NUMBER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x1

    .line 64
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 65
    const-string/jumbo v2, "CALLING_PARTY_NUMBER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x2

    .line 68
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 69
    const-string/jumbo v2, "CONNECTED_NUMBER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x3

    .line 72
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 73
    const-string/jumbo v2, "SIGNAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x4

    .line 76
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 77
    const-string/jumbo v2, "REDIRECTING_NUMBER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0x5

    .line 80
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 81
    const-string/jumbo v2, "LINE_CONTROL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x6

    .line 84
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 85
    const-string/jumbo v2, "EXTENDED_DISPLAY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, 0x7

    .line 88
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 89
    const-string/jumbo v2, "T53_CLIR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, 0x8

    .line 92
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 93
    const-string/jumbo v2, "T53_RELEASE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v0, v0, 0x9

    .line 96
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 97
    const-string/jumbo v2, "T53_AUDIO_CONTROL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v0, v0, 0xa

    .line 100
    :cond_a
    if-eq p0, v0, :cond_b

    .line 101
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

    .line 103
    :cond_b
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const-string/jumbo v0, "DISPLAY"

    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 21
    const-string/jumbo v0, "CALLED_PARTY_NUMBER"

    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 24
    const-string/jumbo v0, "CALLING_PARTY_NUMBER"

    return-object v0

    .line 26
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 27
    const-string/jumbo v0, "CONNECTED_NUMBER"

    return-object v0

    .line 29
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 30
    const-string/jumbo v0, "SIGNAL"

    return-object v0

    .line 32
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 33
    const-string/jumbo v0, "REDIRECTING_NUMBER"

    return-object v0

    .line 35
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 36
    const-string/jumbo v0, "LINE_CONTROL"

    return-object v0

    .line 38
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 39
    const-string/jumbo v0, "EXTENDED_DISPLAY"

    return-object v0

    .line 41
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 42
    const-string/jumbo v0, "T53_CLIR"

    return-object v0

    .line 44
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 45
    const-string/jumbo v0, "T53_RELEASE"

    return-object v0

    .line 47
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 48
    const-string/jumbo v0, "T53_AUDIO_CONTROL"

    return-object v0

    .line 50
    :cond_a
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
