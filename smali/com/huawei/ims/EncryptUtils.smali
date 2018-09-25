.class public Lcom/huawei/ims/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final GROUP_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EncryptUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 124
    invoke-static {p0}, Lcom/huawei/ims/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq p1, v5, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v5, "EncryptUtils"

    const-string/jumbo v6, "decodeAESKey error !"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object v7

    .line 130
    :cond_1
    div-int/lit8 v1, p1, 0x4

    .line 131
    .local v1, "groupLength":I
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    .line 132
    .local v0, "charArray":[[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 134
    mul-int v5, v2, v1

    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v6, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 140
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v8, :cond_3

    .line 142
    aget-object v5, v0, v3

    aget-char v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "j":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    .line 157
    invoke-static {p1, v6}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 158
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 161
    :cond_0
    const-string/jumbo v4, "EncryptUtils"

    const-string/jumbo v5, "decodeAESParam error !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-object v7

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-ne v5, v4, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v0, 0x10

    .line 167
    .local v0, "distance":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 169
    mul-int/lit8 v4, v1, 0x10

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v4, v5

    int-to-char v3, v4

    .line 170
    .local v3, "temp":C
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "temp":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 194
    :try_start_0
    new-instance v3, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v3}, Lcom/huawei/ims/HexEncoder;-><init>()V

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v2

    .line 196
    .local v2, "source":[B
    if-nez v2, :cond_0

    .line 197
    return-object v5

    .line 200
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/ims/COMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 207
    .end local v2    # "source":[B
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "EncryptUtils"

    const-string/jumbo v4, "decodeString error2!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v5

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Lcom/huawei/ims/COMException;
    const-string/jumbo v3, "EncryptUtils"

    const-string/jumbo v4, "decodeString error1!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v4, "EncryptUtils"

    const-string/jumbo v5, "scatterAESKey error !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v7

    .line 69
    :cond_1
    new-array v0, v6, [Ljava/lang/StringBuilder;

    .line 70
    .local v0, "group":[Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    div-int/lit8 v5, p1, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v4, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 77
    rem-int/lit8 v4, v1, 0x4

    aget-object v4, v0, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 83
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/ims/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static encodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    .line 97
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v5, "EncryptUtils"

    const-string/jumbo v6, "scatterAESParam error !"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v8

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-ne v6, v5, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v7, v5, :cond_0

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v0, 0x10

    .line 106
    .local v0, "distance":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 108
    mul-int/lit8 v5, v1, 0x10

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-char v4, v5

    .line 109
    .local v4, "temp":C
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v4    # "temp":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/huawei/ims/EncryptUtils;->encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "param":Ljava/lang/String;
    return-object v2
.end method

.method private static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 181
    .local v1, "encrypted":[B
    new-instance v2, Ljava/lang/String;

    new-instance v3, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v3}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 184
    .end local v1    # "encrypted":[B
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EncryptUtils"

    const-string/jumbo v3, "encodeString error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static generateRandomString(I)Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v4, 0x0

    .line 33
    .local v4, "salt":Ljava/lang/String;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 34
    .local v3, "random":Ljava/util/Random;
    new-array v2, p0, [B

    .line 35
    .local v2, "output":[B
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 40
    :try_start_0
    aget-byte v5, v2, v1

    if-gez v5, :cond_0

    .line 42
    aget-byte v5, v2, v1

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance v4, Ljava/lang/String;

    .end local v4    # "salt":Ljava/lang/String;
    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    return-object v4

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "EncryptUtils"

    const-string/jumbo v6, "Unsupported utf-8 Encoding"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v4, 0x0

    .restart local v4    # "salt":Ljava/lang/String;
    goto :goto_1
.end method
