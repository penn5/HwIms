.class public Lcom/huawei/sci/SciSSConfCb;
.super Ljava/lang/Object;
.source "SciSSConfCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfCb$Callback;
    }
.end annotation


# static fields
.field private static bsfSearchResult:I

.field private static bsfThread:Ljava/lang/Runnable;

.field private static callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private static sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 9
    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    .line 14
    new-instance v0, Lcom/huawei/sci/SciSSConfCb$1;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb$1;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 5
    sput p0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    return p0
.end method

.method public static sciCbPostAuthReq(I[B)V
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    const-string/jumbo v0, "SciSSConfCb"

    const-string/jumbo v1, "sciCbPostAuthReq enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setGbaType(I)V

    .line 75
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuthInfo;->setNaf_id([B)V

    .line 77
    invoke-static {p0, p1, v3}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string/jumbo v0, "SciSSConfCb"

    const-string/jumbo v1, "continueSSConfService with failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-array v0, v2, [B

    const-string/jumbo v1, ""

    invoke-static {v2, v2, v3, v1, v0}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    goto :goto_0
.end method

.method public static sciCbPostBsfAuth([B[B)V
    .locals 4
    .param p0, "rand"    # [B
    .param p1, "autn"    # [B

    .prologue
    .line 200
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "sciCbPostBsfAuth enter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setRand([B)V

    .line 210
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;-><init>()V

    .line 211
    .local v0, "akaParams":Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setAuth([B)V

    .line 212
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setRand([B)V

    .line 213
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 215
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I

    .line 216
    return-void

    .line 204
    .end local v0    # "akaParams":Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    .end local v1    # "gbaType":I
    :cond_0
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "sciCbPostBsfAuth the call back interface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public static sciCbPostBsfResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "btid"    # Ljava/lang/String;
    .param p1, "lifeTime"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "sciCbPostBsfResult enter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v2, :cond_0

    .line 234
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;-><init>()V

    .line 235
    .local v0, "gbaParams":Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setBtid(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setLifeTime(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConfAuthInfo;->getRand()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setRand([B)V

    .line 238
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 240
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I

    .line 241
    return-void

    .line 230
    .end local v0    # "gbaParams":Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    .end local v1    # "gbaType":I
    :cond_0
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "sciCbPostBsfResult the call back interface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public static sciGetKsNaf(I[BI)Z
    .locals 7
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    const-string/jumbo v5, "SciSSConfCb"

    const-string/jumbo v6, "sciGetKsNaf enter."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v5, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v5, :cond_0

    .line 100
    sget-object v5, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    invoke-virtual {v5, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    move-result-object v0

    .line 102
    .local v0, "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getStatus()I

    move-result v2

    .line 109
    .local v2, "iStatus":I
    const/4 v1, 0x0

    .line 111
    .local v1, "iResult":I
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 117
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sciGetKsNaf iResult="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SciSSConfCb"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v4

    .line 96
    .end local v0    # "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    .end local v1    # "iResult":I
    .end local v2    # "iStatus":I
    :cond_0
    const-string/jumbo v3, "SciSSConfCb"

    const-string/jumbo v5, "sciGetKsNaf the call back interface is null."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v4

    .line 104
    .restart local v0    # "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    :cond_1
    const-string/jumbo v3, "SciSSConfCb"

    const-string/jumbo v5, "sciGetKsNaf the gbaResult is null."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v4

    .line 113
    .restart local v1    # "iResult":I
    .restart local v2    # "iStatus":I
    :cond_2
    const-string/jumbo v5, "SciSSConfCb"

    const-string/jumbo v6, "sciGetKsNaf the ks_naf is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    goto :goto_0

    .line 120
    :pswitch_0
    const-string/jumbo v5, "SciSSConfCb"

    const-string/jumbo v6, "continueSSConfService with success."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getBtid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v6

    invoke-static {v4, v4, v2, v5, v6}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    move-result v1

    .line 146
    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    return v4

    .line 124
    :pswitch_1
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    :goto_3
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_3

    .line 128
    :pswitch_2
    new-instance v5, Ljava/lang/Thread;

    sget-object v6, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SciSSConfCb.bsfThread.start iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SciSSConfCb"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :pswitch_3
    const/16 v3, 0xa

    if-gt p2, v3, :cond_4

    .line 140
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->waitToGetGBAKsnaf(I[BI)Z

    move-result v3

    return v3

    .line 135
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sciGetKsNaf iResult="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SciSSConfCb"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v4

    :cond_5
    move v4, v3

    .line 146
    goto :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sciSSConfCbPostResult(III)V
    .locals 2
    .param p0, "ssType"    # I
    .param p1, "opType"    # I
    .param p2, "status"    # I

    .prologue
    .line 52
    const-string/jumbo v0, "SciSSConfCb"

    const-string/jumbo v1, "sciSSConfCbPostResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "SciSSConfCb"

    const-string/jumbo v1, "sciSSConfCbPostResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb$Callback;->sciSSConfCbPostResult(III)V

    goto :goto_0
.end method

.method public static sciTriggerGBAKsNAF(I[B)Z
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "sciTriggerGBAKsNAF enter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConfAuthInfo;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "impi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v1

    .line 162
    :cond_0
    const-string/jumbo v2, "SciSSConfCb"

    const-string/jumbo v3, "triggerGBAKsNAF the impi is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v1

    .line 166
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciSSConfCb$Callback;

    .prologue
    .line 30
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 31
    return-void
.end method

.method public static setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V
    .locals 0
    .param p0, "ssconfAuth"    # Lcom/huawei/sci/SciSSConfAuth;

    .prologue
    .line 40
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 41
    return-void
.end method

.method private static waitToGetGBAKsnaf(I[BI)Z
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitTogetGBAKsnaf index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SciSSConfCb"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SciSSConfCb"

    const-string/jumbo v2, "waitTogetGBAKsnaf InterruptedException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
