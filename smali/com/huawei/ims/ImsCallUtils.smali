.class public Lcom/huawei/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field private static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field public static final IMS_DOMAIN_LTE:I = 0x0

.field public static final IMS_DOMAIN_UNKNOWN:I = 0x2

.field public static final IMS_DOMAIN_WIFI:I = 0x1

.field public static final IS_DUAL_IMS_AVAILABLE:Z

.field private static final IS_EMUI_LITE:Z

.field public static final IS_TABLET:Z

.field private static final IS_VILTE_ENHANCEMENT_SUPPORTED:Z

.field private static final PRODUCT_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static TAG:Ljava/lang/String;

.field private static final mIsVtLteSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string/jumbo v0, "ImsCallUtils"

    sput-object v0, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 35
    const v0, 0x1

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    .line 39
    const-string/jumbo v0, "ro.config.hw_vtlte_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsVtLteSupported:Z

    .line 40
    const-string/jumbo v0, "ro.config.hw_vilte_enhancement"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    .line 44
    const-string/jumbo v0, "ro.build.hw_emui_lite.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_EMUI_LITE:Z

    .line 50
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_TABLET:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lcom/huawei/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return v0

    .line 196
    :pswitch_1
    const/4 v0, 0x0

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v0, 0x2

    .line 200
    goto :goto_0

    .line 202
    :pswitch_3
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 205
    :pswitch_4
    const/4 v0, 0x3

    .line 206
    goto :goto_0

    .line 209
    :pswitch_5
    const/4 v0, 0x4

    .line 210
    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 3
    .param p0, "error"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 255
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 256
    const/4 v0, 0x4

    return v0

    .line 257
    :cond_0
    if-eqz p0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    .line 258
    :cond_1
    return v1

    .line 260
    :cond_2
    if-ne p0, v1, :cond_3

    .line 261
    const/16 v0, 0x64

    return v0

    .line 262
    :cond_3
    if-ne p0, v2, :cond_4

    .line 263
    const/16 v0, 0x65

    return v0

    .line 264
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 265
    const/16 v0, 0x66

    return v0

    .line 268
    :cond_5
    return v2
.end method

.method public static convertRilCauseCodeToImsCode(I)I
    .locals 1
    .param p0, "causeCode"    # I

    .prologue
    .line 277
    move v0, p0

    .line 279
    .local v0, "cause":I
    sparse-switch p0, :sswitch_data_0

    .line 360
    :goto_0
    return v0

    .line 281
    :sswitch_0
    const/16 v0, 0x1fe

    .line 282
    goto :goto_0

    .line 285
    :sswitch_1
    const/16 v0, 0x14b

    .line 286
    goto :goto_0

    .line 289
    :sswitch_2
    const/16 v0, 0x14c

    .line 290
    goto :goto_0

    .line 293
    :sswitch_3
    const/16 v0, 0x14d

    .line 294
    goto :goto_0

    .line 299
    :sswitch_4
    const/16 v0, 0x154

    .line 300
    goto :goto_0

    .line 303
    :sswitch_5
    const/16 v0, 0x14f

    .line 304
    goto :goto_0

    .line 308
    :sswitch_6
    const/16 v0, 0x155

    .line 309
    goto :goto_0

    .line 314
    :sswitch_7
    const/16 v0, 0x14e

    .line 315
    goto :goto_0

    .line 318
    :sswitch_8
    const/16 v0, 0x150

    .line 319
    goto :goto_0

    .line 322
    :sswitch_9
    const/16 v0, 0x151

    .line 323
    goto :goto_0

    .line 327
    :sswitch_a
    const/16 v0, 0x152

    .line 328
    goto :goto_0

    .line 331
    :sswitch_b
    const/16 v0, 0x153

    .line 332
    goto :goto_0

    .line 335
    :sswitch_c
    const/16 v0, 0x15f

    .line 336
    goto :goto_0

    .line 339
    :sswitch_d
    const/16 v0, 0x160

    .line 340
    goto :goto_0

    .line 343
    :sswitch_e
    const/16 v0, 0x161

    .line 344
    goto :goto_0

    .line 347
    :sswitch_f
    const/16 v0, 0x169

    .line 348
    goto :goto_0

    .line 352
    :sswitch_10
    const/16 v0, 0x15

    .line 353
    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf1 -> :sswitch_10
        0x4990 -> :sswitch_1
        0x4993 -> :sswitch_2
        0x4994 -> :sswitch_3
        0x4996 -> :sswitch_4
        0x4998 -> :sswitch_5
        0x499a -> :sswitch_6
        0x499f -> :sswitch_7
        0x49a0 -> :sswitch_7
        0x49a4 -> :sswitch_7
        0x49e0 -> :sswitch_8
        0x49e4 -> :sswitch_9
        0x49e6 -> :sswitch_a
        0x49e7 -> :sswitch_b
        0x49e8 -> :sswitch_4
        0x49f5 -> :sswitch_c
        0x49f7 -> :sswitch_d
        0x49f8 -> :sswitch_e
        0x4a58 -> :sswitch_a
        0x4a5b -> :sswitch_f
        0x4a5c -> :sswitch_6
        0x4a5e -> :sswitch_4
    .end sparse-switch
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .prologue
    .line 221
    const/16 v0, 0xa

    .line 222
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 241
    :pswitch_0
    sget-object v1, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return v0

    .line 225
    :pswitch_1
    const/4 v0, 0x0

    .line 226
    goto :goto_0

    .line 229
    :pswitch_2
    const/4 v0, 0x3

    .line 230
    goto :goto_0

    .line 232
    :pswitch_3
    const/4 v0, 0x4

    .line 233
    goto :goto_0

    .line 235
    :pswitch_4
    const/4 v0, 0x1

    .line 236
    goto :goto_0

    .line 238
    :pswitch_5
    const/4 v0, 0x2

    .line 239
    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 249
    invoke-static {p0}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 248
    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 251
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    .line 189
    :goto_0
    return v0

    .line 170
    :pswitch_0
    const/4 v0, 0x0

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    const/4 v0, 0x2

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    const/4 v0, 0x1

    .line 177
    goto :goto_0

    .line 179
    :pswitch_3
    const/4 v0, 0x3

    .line 180
    goto :goto_0

    .line 182
    :pswitch_4
    const/4 v0, 0x4

    .line 183
    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSubId(I)I
    .locals 4
    .param p0, "currentSubId"    # I

    .prologue
    .line 377
    const v0, 0x0

    .line 378
    .local v0, "subId":I
    invoke-static {p0}, Lcom/huawei/ims/ImsCallUtils;->isValidSubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    sget-object v1, Lcom/huawei/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId: invalid subId, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v0

    .line 382
    :cond_0
    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 383
    move v0, p0

    .line 385
    :cond_1
    return v0
.end method

.method public static isAvpRetryDialing(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 122
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    .line 123
    .local v0, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v4, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 124
    .local v4, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 126
    .local v3, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_2

    .line 128
    :cond_0
    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    .line 126
    if-eqz v5, :cond_2

    .line 129
    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 130
    .local v2, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v2    # "dialingAvpRetry":Z
    :goto_1
    return v2

    .line 129
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 126
    .end local v2    # "dialingAvpRetry":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 130
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isAvpRetryUpgrade(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 139
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    .line 140
    .local v0, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v6, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v3, v6, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 141
    .local v3, "nextCallType":I
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 143
    .local v2, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    if-nez v1, :cond_1

    .line 144
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 145
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 143
    if-eqz v6, :cond_1

    .line 146
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 147
    .local v4, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsCallModification()Lcom/huawei/ims/ImsCallModification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v4    # "upgradeAvpRetry":Z
    :goto_1
    return v4

    .line 146
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    .line 143
    .end local v4    # "upgradeAvpRetry":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 147
    goto :goto_1
.end method

.method public static isEMUILite()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_EMUI_LITE:Z

    return v0
.end method

.method public static isHwVoWiFiEnabledByPlatform()Z
    .locals 2

    .prologue
    .line 365
    const-string/jumbo v0, "ro.config.hw_vowifi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVTUpgradeCallType(III)Z
    .locals 4
    .param p0, "curCallType"    # I
    .param p1, "destCallType"    # I
    .param p2, "callType"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    if-nez p0, :cond_2

    .line 370
    if-ne p1, v3, :cond_2

    .line 371
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 369
    goto :goto_0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 67
    if-ne p0, v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 69
    if-eqz p0, :cond_0

    .line 70
    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isValidServiceSubIndex(I)Z
    .locals 2
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 395
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidSubId(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 389
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 55
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 56
    if-ne p0, v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 58
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 59
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 60
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 154
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 155
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 163
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoPaused(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 79
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    .line 80
    .local v0, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v6, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v5, v6, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 81
    .local v5, "nextCallType":I
    iget-object v4, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 83
    .local v4, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 85
    invoke-static {v5}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 83
    if-eqz v6, :cond_1

    .line 86
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 87
    .local v3, "isHoldingPaused":Z
    :goto_0
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_3

    .line 89
    invoke-static {v5}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 90
    sget-object v6, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_2

    const/4 v2, 0x1

    .line 91
    .local v2, "isActivePaused":Z
    :goto_1
    if-nez v3, :cond_4

    .end local v2    # "isActivePaused":Z
    :goto_2
    return v2

    .line 86
    .end local v3    # "isHoldingPaused":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 83
    .end local v3    # "isHoldingPaused":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 90
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 87
    .end local v2    # "isActivePaused":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 91
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static isVideoResumed(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 106
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v0

    .line 107
    .local v0, "currCallState":Lcom/huawei/ims/DriverCallIms$State;
    iget-object v5, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v3, v5, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 108
    .local v3, "nextCallType":I
    iget-object v2, p1, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    .line 110
    .local v2, "nextCallState":Lcom/huawei/ims/DriverCallIms$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_0

    .line 112
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 110
    if-eqz v5, :cond_0

    .line 113
    sget-object v5, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_0

    const/4 v4, 0x1

    .line 110
    :cond_0
    return v4
.end method

.method public static isVilteEnhancementSupported()Z
    .locals 1

    .prologue
    .line 400
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->mIsVtLteSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
