.class public Lcom/huawei/ims/HiddenPrivacyInfo;
.super Ljava/lang/Object;
.source "HiddenPrivacyInfo.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final GBA_INFO_HIDDEN_BEGIN:I = 0x4

.field private static final GBA_INFO_HIDDEN_END:I = 0xc

.field public static final GBA_INFO_TYPE:I = 0x4

.field private static final GBA_LENGTH_LEAST:I = 0x10

.field public static final IMPI_INFO_TYPE:I = 0x3

.field public static final IMPU_INFO_TYPE:I = 0x2

.field public static final IMSI_INFO_TYPE:I = 0x1

.field private static final INFO_HIDDEN_LENGTH:I = 0x4

.field private static final INFO_RESERVE_BEGIN:I = 0x0

.field private static final INFO_RESERVE_LENGTH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HiddenPrivacyInfo"

.field public static final MMI_INFO_TYPE:I = 0x5

.field public static final OTHER_PRIVACY_INFO_TYPE:I = -0x1

.field public static final TELEPHONE_NUMBER_INFO_TYPE:I

.field private static final TELEPHONE_NUMBER_RESERVE_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 281
    return-void
.end method

.method private static putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 259
    if-nez p0, :cond_0

    .line 260
    const-string/jumbo v3, "telephoneNumber is null, please check it"

    invoke-static {v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 262
    return-object v4

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 267
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x2

    .line 269
    .local v2, "reserveLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\S"

    const-string/jumbo v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\s"

    const-string/jumbo v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 270
    sub-int v4, v1, v2

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method public static putMosaic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string/jumbo v1, "info is null, please check it"

    invoke-static {v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 61
    return-object v2

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 82
    :pswitch_0
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    :pswitch_1
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 72
    .local v0, "key":Ljava/lang/String;
    :pswitch_2
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnImpu_i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 75
    .local v0, "key":Ljava/lang/String;
    :pswitch_3
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 78
    .local v0, "key":Ljava/lang/String;
    :pswitch_4
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static putMosaic([BI)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    const-string/jumbo v1, "byte array is null"

    invoke-static {v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 96
    return-object v2

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "GbaParameter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 191
    const-string/jumbo v4, "GbaParameter is null, please check it"

    invoke-static {v4}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 192
    return-object v5

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 196
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 197
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 199
    .local v2, "key":Ljava/lang/String;
    const/16 v4, 0x10

    if-gt v4, v3, :cond_2

    if-eqz v0, :cond_2

    .line 200
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_1

    .line 201
    const/16 v4, 0x2a

    aput-char v4, v0, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 208
    .end local v1    # "i":I
    .local v2, "key":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 205
    .local v2, "key":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    goto :goto_1
.end method

.method private static putMosaicOnImpu_i(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "impu_i"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string/jumbo v7, "impu_i is null, please check it"

    invoke-static {v7}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 150
    return-object v9

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 156
    .local v5, "length":I
    const-string/jumbo v7, "@"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "atPosition":I
    const/4 v3, 0x0

    .line 159
    .local v3, "key":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne v7, v0, :cond_1

    .line 160
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "key":Ljava/lang/String;
    return-object v3

    .line 165
    .local v3, "key":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x7

    .line 166
    .local v4, "leastNumLen":I
    add-int/lit8 v7, v0, -0x4

    add-int/lit8 v6, v7, -0x3

    .line 167
    .local v6, "offset":I
    const/4 v1, 0x0

    .line 168
    .local v1, "beginKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 165
    .local v2, "endKey":Ljava/lang/String;
    const/4 v7, 0x7

    .line 170
    if-gt v7, v0, :cond_2

    .line 171
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "beginKey":Ljava/lang/String;
    add-int/lit8 v7, v0, -0x3

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "endKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 175
    .local v1, "beginKey":Ljava/lang/String;
    .local v2, "endKey":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "beginKey":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "endKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private static putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mmi"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string/jumbo v4, "mmi is null, please check it"

    invoke-static {v4}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 221
    return-object v6

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 225
    .local v3, "length":I
    const/4 v2, 0x0

    .line 227
    .local v2, "key":Ljava/lang/String;
    if-ge v5, v3, :cond_1

    .line 228
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "beginKey":Ljava/lang/String;
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "endKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .end local v0    # "beginKey":Ljava/lang/String;
    .end local v1    # "endKey":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 233
    .local v2, "key":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .local v2, "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private static putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string/jumbo v3, "telephoneNumber is null, please check it"

    invoke-static {v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 117
    return-object v4

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "length":I
    const/4 v1, 0x4

    .line 123
    .local v1, "leastTeleNumLen":I
    const/4 v0, 0x0

    .line 122
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x4

    .line 125
    if-gt v3, v2, :cond_1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, -0x4

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    const-string/jumbo v4, "****"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    add-int/lit8 v4, v2, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 131
    .local v0, "key":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private static transToMosaic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 244
    if-nez p0, :cond_0

    .line 245
    const-string/jumbo v0, "string is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 247
    return-object v1

    .line 250
    :cond_0
    const-string/jumbo v0, "\\S"

    const-string/jumbo v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s"

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
