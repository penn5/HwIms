.class public Lcom/huawei/sci/SciSSConf;
.super Ljava/lang/Object;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConf$SSCONFParamType;,
        Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;,
        Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;,
        Lcom/huawei/sci/SciSSConf$SSConfOpType;,
        Lcom/huawei/sci/SciSSConf$SSConfSSType;
    }
.end annotation


# static fields
.field public static final CF_ACTION_ACTIVE:Ljava/lang/String; = "active"

.field public static final CF_ACTION_DEACTIVE:Ljava/lang/String; = "deactive"

.field public static final CF_ACTION_ERASURE:Ljava/lang/String; = "erasure"

.field public static final CF_ACTION_REGISTRATION:Ljava/lang/String; = "registration"

.field public static final INVALID_NO_REPLY_TIMER:I = -0x1

.field public static final MEDIA_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "video"

.field public static final OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final OIR_DEFAULT_BEHAVIOR_RESTRICTED:Ljava/lang/String; = "presentation-restricted"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 98
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v4, "arm64-v8a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLibPath()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 106
    :cond_0
    const-string/jumbo v3, "ut"

    invoke-static {v3}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v3, "sci_ssconf"

    invoke-static {v3}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 99
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "ut"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v3, "sci_ssconf"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .restart local v0    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/libut.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "str1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/libsci_ssconf.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "str2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "str1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SciSSConf"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "str2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SciSSConf"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static native continueConfWithAuth(III[B[B)I
.end method

.method public static native continueSSConfService(IIILjava/lang/String;[B)I
.end method

.method public static native destroy()I
.end method

.method public static enabledSSConf(IZ)I
    .locals 3
    .param p0, "ssType"    # I
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    const-string/jumbo v0, "true"

    .line 148
    .local v0, "activeValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 153
    :goto_0
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v2

    invoke-static {p0, v1, v2, v0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const/4 v1, 0x1

    return v1

    .line 150
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 157
    :cond_1
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    invoke-static {p0, v1}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v1

    return v1
.end method

.method public static native getChrUtDefeatReason()I
.end method

.method public static native getChrUtFailPhaseReport()I
.end method

.method public static native getChrUtInnerErrID()I
.end method

.method public static native getChrUtSendMessageType()I
.end method

.method public static native getChrUtServiceType()I
.end method

.method public static getSSConfEnabled(I)Ljava/lang/Boolean;
    .locals 5
    .param p0, "ssType"    # I

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, "isEnabled":Ljava/lang/Boolean;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 173
    .local v1, "strArray":[Ljava/lang/String;
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v2

    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(III[Ljava/lang/String;)I

    .line 176
    aget-object v2, v1, v4

    if-nez v2, :cond_0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static native getSSConfParam(III[Ljava/lang/String;)I
.end method

.method public static getSSConfParam(II)Ljava/lang/String;
    .locals 4
    .param p0, "ssType"    # I
    .param p1, "paramType"    # I

    .prologue
    const/4 v3, 0x0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "paramValue":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 195
    .local v1, "strArray":[Ljava/lang/String;
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v2

    invoke-static {p0, v2, p1, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(III[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    .end local v0    # "paramValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 198
    .restart local v0    # "paramValue":Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 200
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method public static native getSSConflictPhrase([Ljava/lang/String;)I
.end method

.method public static getSSConflictPhraseText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "paramValue":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 225
    .local v1, "strArray":[Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/sci/SciSSConf;->getSSConflictPhrase([Ljava/lang/String;)I

    .line 227
    aget-object v2, v1, v3

    if-nez v2, :cond_0

    .line 232
    .end local v0    # "paramValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "paramValue":Ljava/lang/String;
    :cond_0
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method public static native init()I
.end method

.method public static querySSConf(I)I
    .locals 3
    .param p0, "ssType"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v0

    return v0
.end method

.method public static native reset(I)V
.end method

.method public static native setAuthUserName(Ljava/lang/String;)I
.end method

.method public static native setBsfAddr(Ljava/lang/String;IZ)I
.end method

.method public static native setContentType(Z)I
.end method

.method public static native setExtensionalParam(IZLjava/lang/String;)I
.end method

.method public static native setHomeDomainName(Ljava/lang/String;)I
.end method

.method public static native setHostIp([Ljava/lang/String;I)I
.end method

.method public static native setHostName(Ljava/lang/String;)I
.end method

.method public static native setLocalUserName(Ljava/lang/String;)I
.end method

.method public static native setNafAddr(Ljava/lang/String;IZ)I
.end method

.method public static native setParamsCfg(ILjava/lang/String;)I
.end method

.method public static native setSSConfParam(IIILjava/lang/String;)I
.end method

.method public static native setSupportGBAType(I)I
.end method

.method public static native setSupportNodeSelector(Z)I
.end method

.method public static native setSupportTmpi(Z)I
.end method

.method public static native setSupportXcapNamespace(Z)I
.end method

.method public static native setTmpi(Ljava/lang/String;)I
.end method

.method public static native setTrustCaPath(Ljava/lang/String;)I
.end method

.method public static native setX3gppIntendId(Ljava/lang/String;)I
.end method

.method public static native setXcapRootUri(Ljava/lang/String;)I
.end method

.method public static native startBsfAuthRequest()I
.end method

.method public static native startConf(II)I
.end method
