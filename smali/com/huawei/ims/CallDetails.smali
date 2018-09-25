.class public Lcom/huawei/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/huawei/ims/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/huawei/ims/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 186
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 187
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 192
    iput p1, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 193
    iput p2, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 194
    iput-object p3, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/huawei/ims/CallDetails;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget v0, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 200
    iget v0, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 201
    iget v0, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 202
    iget v0, p1, Lcom/huawei/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 203
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 205
    iget-object v0, p1, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 207
    :cond_0
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;)V
    .locals 1
    .param p1, "imsCallDetails"    # Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callType:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 212
    iget v0, p1, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->callDomain:I

    iput v0, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 214
    :cond_0
    return-void
.end method

.method private addExtra(Ljava/lang/String;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 266
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 272
    return-object v4

    .line 277
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 279
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 280
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 283
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 308
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 309
    aget-object v2, p1, v1

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x1

    aget-object v2, v0, v2

    return-object v2

    .line 307
    .end local v0    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    return-object v4
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    iget v1, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    if-eqz p1, :cond_1

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 321
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 322
    aget-object v2, p1, v1

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 320
    .end local v0    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iput p1, p0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .prologue
    .line 344
    const-string/jumbo v5, ""

    .local v5, "extrasResult":Ljava/lang/String;
    const-string/jumbo v6, ""

    .local v6, "localSrvAbility":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 345
    .local v7, "peerSrvAbility":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v8, v12, v11

    .line 348
    .local v8, "s":Ljava/lang/String;
    const-string/jumbo v14, "numbermarkinfo_number"

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 349
    const-string/jumbo v14, "="

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "before":Ljava/lang/String;
    const-string/jumbo v14, "="

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "after":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 354
    .end local v1    # "after":Ljava/lang/String;
    .end local v3    # "before":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 356
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v11, :cond_5

    .line 360
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 361
    .local v4, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    const/4 v11, 0x0

    array-length v14, v13

    move v12, v11

    :goto_1
    if-ge v12, v14, :cond_4

    aget-object v9, v13, v12

    .line 362
    .local v9, "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v9, :cond_3

    .line 363
    const-string/jumbo v11, "isValid = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-boolean v15, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 364
    const-string/jumbo v15, " type = "

    .line 363
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 364
    iget v15, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 363
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 365
    const-string/jumbo v15, " status = "

    .line 363
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 365
    iget v15, v9, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 363
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 366
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v11, :cond_3

    .line 367
    iget-object v15, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    const/4 v11, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    aget-object v2, v15, v11

    .line 368
    .local v2, "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const-string/jumbo v17, " accTechStatus "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 367
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 361
    .end local v2    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    :cond_3
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 373
    .end local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    if-eqz v11, :cond_8

    .line 377
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v4    # "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    const/4 v11, 0x0

    array-length v14, v13

    move v12, v11

    :goto_3
    if-ge v12, v14, :cond_7

    aget-object v9, v13, v12

    .line 379
    .restart local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    if-eqz v9, :cond_6

    .line 380
    const-string/jumbo v11, "isValid = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-boolean v15, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 381
    const-string/jumbo v15, " type = "

    .line 380
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 381
    iget v15, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 380
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 382
    const-string/jumbo v15, " status = "

    .line 380
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 382
    iget v15, v9, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 380
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 383
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v11, :cond_6

    .line 384
    iget-object v15, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    const/4 v11, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    aget-object v2, v15, v11

    .line 385
    .restart local v2    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const-string/jumbo v17, " accTechStatus "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 378
    .end local v2    # "at":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    :cond_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_3

    .line 390
    .end local v9    # "srv":Lcom/huawei/ims/ServiceStatus;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 394
    const-string/jumbo v12, " "

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 394
    move-object/from16 v0, p0

    iget v12, v0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 395
    const-string/jumbo v12, " "

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 396
    const-string/jumbo v12, " callSubState "

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 396
    move-object/from16 v0, p0

    iget v12, v0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 397
    const-string/jumbo v12, " videoPauseState"

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 397
    move-object/from16 v0, p0

    iget v12, v0, Lcom/huawei/ims/CallDetails;->mVideoPauseState:I

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 398
    const-string/jumbo v12, " mediaId"

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 398
    move-object/from16 v0, p0

    iget v12, v0, Lcom/huawei/ims/CallDetails;->callMediaId:I

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 399
    const-string/jumbo v12, " Local Ability "

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 400
    const-string/jumbo v12, " Peer Ability "

    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public update(Lcom/huawei/ims/CallDetails;)Z
    .locals 9
    .param p1, "update"    # Lcom/huawei/ims/CallDetails;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "hasChanged":Z
    if-nez p1, :cond_0

    .line 219
    return v7

    .line 221
    :cond_0
    iget v4, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    iget v5, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-eq v4, v5, :cond_1

    .line 222
    iget v4, p1, Lcom/huawei/ims/CallDetails;->call_type:I

    iput v4, p0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 223
    const/4 v1, 0x1

    .line 225
    :cond_1
    iget v4, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    iget v5, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    if-eq v4, v5, :cond_2

    .line 226
    iget v4, p1, Lcom/huawei/ims/CallDetails;->call_domain:I

    iput v4, p0, Lcom/huawei/ims/CallDetails;->call_domain:I

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_2
    iget v4, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iget v5, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    if-eq v4, v5, :cond_3

    .line 230
    iget v4, p1, Lcom/huawei/ims/CallDetails;->callsubstate:I

    iput v4, p0, Lcom/huawei/ims/CallDetails;->callsubstate:I

    .line 231
    const/4 v1, 0x1

    .line 234
    :cond_3
    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v4, p0, Lcom/huawei/ims/CallDetails;->localAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 235
    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    iput-object v4, p0, Lcom/huawei/ims/CallDetails;->peerAbility:[Lcom/huawei/ims/ServiceStatus;

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 238
    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "currKeyValuePair":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 240
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v0, v7

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "oldVal":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 242
    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 243
    iget-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v0, v7

    .line 244
    aget-object v6, v0, v8

    .line 243
    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 245
    const/4 v1, 0x1

    .line 237
    .end local v3    # "oldVal":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .restart local v3    # "oldVal":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .line 249
    iget-object v4, p1, Lcom/huawei/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/huawei/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    .end local v0    # "currKeyValuePair":[Ljava/lang/String;
    .end local v3    # "oldVal":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/huawei/ims/CallDetails;->getVideoPauseState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/CallDetails;->setVideoPauseState(I)V

    .line 254
    return v1
.end method
