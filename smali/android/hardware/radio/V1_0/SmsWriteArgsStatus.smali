.class public final Landroid/hardware/radio/V1_0/SmsWriteArgsStatus;
.super Ljava/lang/Object;
.source "SmsWriteArgsStatus.java"


# static fields
.field public static final REC_READ:I = 0x1

.field public static final REC_UNREAD:I = 0x0

.field public static final STO_SENT:I = 0x3

.field public static final STO_UNSENT:I = 0x2


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
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 28
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 29
    const-string/jumbo v2, "REC_UNREAD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x0

    .line 32
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 33
    const-string/jumbo v2, "REC_READ"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v0, v0, 0x1

    .line 36
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 37
    const-string/jumbo v2, "STO_UNSENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v0, v0, 0x2

    .line 40
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 41
    const-string/jumbo v2, "STO_SENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v0, v0, 0x3

    .line 44
    :cond_3
    if-eq p0, v0, :cond_4

    .line 45
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

    .line 47
    :cond_4
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const-string/jumbo v0, "REC_UNREAD"

    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 14
    const-string/jumbo v0, "REC_READ"

    return-object v0

    .line 16
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 17
    const-string/jumbo v0, "STO_UNSENT"

    return-object v0

    .line 19
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 20
    const-string/jumbo v0, "STO_SENT"

    return-object v0

    .line 22
    :cond_3
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
