.class public abstract Lcom/huawei/sci/SciSSConfAuth;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;,
        Lcom/huawei/sci/SciSSConfAuth$AkaResult;,
        Lcom/huawei/sci/SciSSConfAuth$CallBackData;,
        Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;,
        Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    }
.end annotation


# static fields
.field private static final AKA_ALGORITHM_SUCCESS:I = 0x0

.field private static final AKA_ALGORITHM_SYNC_FAILURE:I = 0x1

.field public static final GBABOOTSTRAP:I = 0x1

.field public static final GBABPUPDATE:I = 0x2

.field public static final GBAKSNAF:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method private procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z
    .locals 7
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    .line 129
    .local v0, "akaResult":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getStatus()I

    move-result v2

    .line 130
    .local v2, "iResult":I
    const/4 v3, 0x0

    .line 131
    .local v3, "res":[B
    const/4 v1, 0x0

    .line 133
    .local v1, "auts":[B
    packed-switch v2, :pswitch_data_0

    .line 142
    const-string/jumbo v5, "SciSSConfAuth"

    const-string/jumbo v6, "procAkaResult operate failed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "auts":[B
    .end local v3    # "res":[B
    :goto_0
    if-eqz v3, :cond_1

    .line 147
    :goto_1
    if-eqz v1, :cond_2

    .line 149
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "continueConfWithAuth: iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SciSSConfAuth"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v4, v4, v2, v3, v1}, Lcom/huawei/sci/SciSSConf;->continueConfWithAuth(III[B[B)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    return v4

    .line 123
    .end local v0    # "akaResult":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    .end local v2    # "iResult":I
    :cond_0
    const-string/jumbo v5, "SciSSConfAuth"

    const-string/jumbo v6, "procAkaResult the AkaResult is error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v4

    .line 136
    .restart local v0    # "akaResult":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    .restart local v1    # "auts":[B
    .restart local v2    # "iResult":I
    .restart local v3    # "res":[B
    :pswitch_0
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v3

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v1

    goto :goto_0

    .line 146
    .end local v1    # "auts":[B
    .end local v3    # "res":[B
    :cond_1
    new-array v3, v4, [B

    .restart local v3    # "res":[B
    goto :goto_1

    .line 147
    .end local v3    # "res":[B
    :cond_2
    new-array v1, v4, [B

    .restart local v1    # "auts":[B
    goto :goto_2

    .line 150
    .end local v1    # "auts":[B
    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V
    .locals 7
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    const-string/jumbo v3, "SciSSConfAuth"

    const-string/jumbo v4, "callBack enter."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 92
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v0

    .line 93
    .local v0, "gbaType":I
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConfAuthInfo;->getNaf_id()[B

    move-result-object v2

    .line 94
    .local v2, "naf_id":[B
    const/4 v1, 0x0

    .line 96
    .local v1, "isSuccess":Z
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 108
    const-string/jumbo v3, "SciSSConfAuth"

    const-string/jumbo v4, "callBackData the asyncSign is error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 82
    .end local v0    # "gbaType":I
    .end local v1    # "isSuccess":Z
    .end local v2    # "naf_id":[B
    :cond_0
    const-string/jumbo v3, "SciSSConfAuth"

    const-string/jumbo v4, "callBackData is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 88
    :cond_1
    const-string/jumbo v3, "SciSSConfAuth"

    const-string/jumbo v4, "callBackData the asyncSign is error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 99
    .restart local v0    # "gbaType":I
    .restart local v1    # "isSuccess":Z
    .restart local v2    # "naf_id":[B
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z

    move-result v1

    .line 112
    :goto_0
    if-eqz v1, :cond_2

    .line 117
    :goto_1
    return-void

    .line 102
    :pswitch_1
    invoke-static {v0, v2}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v1

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {v0, v2, v6}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    goto :goto_0

    .line 114
    :cond_2
    const-string/jumbo v3, "SciSSConfAuth"

    const-string/jumbo v4, "continueSSConfService with failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-array v3, v5, [B

    const-string/jumbo v4, ""

    invoke-static {v5, v5, v6, v4, v3}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;
.end method

.method public abstract triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I
.end method

.method public abstract triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I
.end method

.method public abstract triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I
.end method
