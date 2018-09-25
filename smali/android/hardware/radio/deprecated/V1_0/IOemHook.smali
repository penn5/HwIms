.class public interface abstract Landroid/hardware/radio/deprecated/V1_0/IOemHook;
.super Ljava/lang/Object;
.source "IOemHook.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/deprecated/V1_0/IOemHook$Proxy;,
        Landroid/hardware/radio/deprecated/V1_0/IOemHook$Stub;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.radio.deprecated@1.0::IOemHook"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .prologue
    const/4 v6, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v6

    .line 12
    :cond_0
    const-string/jumbo v5, "android.hardware.radio.deprecated@1.0::IOemHook"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    .line 14
    .local v3, "iface":Landroid/os/IHwInterface;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-eqz v5, :cond_1

    .line 15
    check-cast v3, Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    .end local v3    # "iface":Landroid/os/IHwInterface;
    return-object v3

    .line 18
    .restart local v3    # "iface":Landroid/os/IHwInterface;
    :cond_1
    new-instance v4, Landroid/hardware/radio/deprecated/V1_0/IOemHook$Proxy;

    invoke-direct {v4, p0}, Landroid/hardware/radio/deprecated/V1_0/IOemHook$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v4, "proxy":Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    :try_start_0
    invoke-interface {v4}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    .local v0, "descriptor":Ljava/lang/String;
    const-string/jumbo v5, "android.hardware.radio.deprecated@1.0::IOemHook"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    return-object v4

    .line 26
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptor$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 29
    :cond_3
    return-object v6
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    goto :goto_0
.end method

.method public static getService()Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHook"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string/jumbo v0, "android.hardware.radio.deprecated@1.0::IOemHook"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendRequestRaw(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendRequestStrings(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResponseFunctions(Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse;Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
